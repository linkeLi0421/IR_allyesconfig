; ModuleID = '/llk/IR_all_yes/sound/usb/line6/pcm.c_pt.bc'
source_filename = "../sound/usb/line6/pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+line6_pcm_acquire\22, \22a\22\09"
module asm "\09.weak\09__crc_line6_pcm_acquire\09\09\09\09"
module asm "\09.long\09__crc_line6_pcm_acquire\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_line6_pcm_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22line6_pcm_acquire\22\09\09\09\09\09"
module asm "__kstrtabns_line6_pcm_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+line6_pcm_release\22, \22a\22\09"
module asm "\09.weak\09__crc_line6_pcm_release\09\09\09\09"
module asm "\09.long\09__crc_line6_pcm_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_line6_pcm_release:\09\09\09\09\09"
module asm "\09.asciz \09\22line6_pcm_release\22\09\09\09\09\09"
module asm "__kstrtabns_line6_pcm_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+line6_init_pcm\22, \22a\22\09"
module asm "\09.weak\09__crc_line6_init_pcm\09\09\09\09"
module asm "\09.long\09__crc_line6_init_pcm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_line6_init_pcm:\09\09\09\09\09"
module asm "\09.asciz \09\22line6_init_pcm\22\09\09\09\09\09"
module asm "__kstrtabns_line6_init_pcm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_line6_pcm = type { ptr, ptr, ptr, %struct.mutex, %struct.line6_pcm_stream, %struct.line6_pcm_stream, ptr, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.line6_pcm_stream = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32 }
%struct.usb_line6 = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.anon.82, %struct.delayed_work, ptr, ptr, ptr }
%struct.anon.82 = type { %struct.mutex, %struct.wait_queue_head, i8, %struct.anon.83 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.83 = type { %union.anon.84, [8192 x i8] }
%union.anon.84 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.line6_properties = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }

@__kstrtab_line6_pcm_acquire = external dso_local constant [0 x i8], align 1
@__kstrtabns_line6_pcm_acquire = external dso_local constant [0 x i8], align 1
@__ksymtab_line6_pcm_acquire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @line6_pcm_acquire to i32), ptr @__kstrtab_line6_pcm_acquire, ptr @__kstrtabns_line6_pcm_acquire }, section "___ksymtab_gpl+line6_pcm_acquire", align 4
@__kstrtab_line6_pcm_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_line6_pcm_release = external dso_local constant [0 x i8], align 1
@__ksymtab_line6_pcm_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @line6_pcm_release to i32), ptr @__kstrtab_line6_pcm_release, ptr @__kstrtabns_line6_pcm_release }, section "___ksymtab_gpl+line6_pcm_release", align 4
@line6_init_pcm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&line6pcm->state_mutex\00", [41 x i8] zeroinitializer }, align 32
@line6_init_pcm.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&line6pcm->out.lock\00", [44 x i8] zeroinitializer }, align 32
@line6_init_pcm.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&line6pcm->in.lock\00", [45 x i8] zeroinitializer }, align 32
@line6_init_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 561, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot get proper max packet size\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"line6_init_pcm\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/usb/line6/pcm.c\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@line6_init_pcm._entry_ptr = internal global ptr @line6_init_pcm._entry, section ".printk_index", align 4
@line6_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_line6_control_playback_info, ptr @snd_line6_control_playback_get, ptr @snd_line6_control_playback_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_line6_impulse_volume_info, ptr @snd_line6_impulse_volume_get, ptr @snd_line6_impulse_volume_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_line6_impulse_period_info, ptr @snd_line6_impulse_period_get, ptr @snd_line6_impulse_period_put, %union.anon.85 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@__kstrtab_line6_init_pcm = external dso_local constant [0 x i8], align 1
@__kstrtabns_line6_init_pcm = external dso_local constant [0 x i8], align 1
@__ksymtab_line6_init_pcm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @line6_init_pcm to i32), ptr @__kstrtab_line6_init_pcm, ptr @__kstrtabns_line6_init_pcm }, section "___ksymtab_gpl+line6_init_pcm", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@line6_wait_clear_audio_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 134, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout: still %d active urbs..\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"line6_wait_clear_audio_urbs\00", [36 x i8] zeroinitializer }, align 32
@line6_wait_clear_audio_urbs._entry_ptr = internal global ptr @line6_wait_clear_audio_urbs._entry, section ".printk_index", align 4
@snd_line6_playback_ops = external dso_local constant %struct.snd_pcm_ops, align 4
@snd_line6_capture_ops = external dso_local constant %struct.snd_pcm_ops, align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Impulse Response Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Impulse Response Period\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 537, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 544, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 545, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 560, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"line6_controls\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 424, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 133, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 427, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 434, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [25 x i8] c"../sound/usb/line6/pcm.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 441, i32 11 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_line6_init_pcm, ptr @__ksymtab_line6_pcm_acquire, ptr @__ksymtab_line6_pcm_release, ptr @line6_init_pcm._entry, ptr @line6_init_pcm._entry_ptr, ptr @line6_wait_clear_audio_urbs._entry, ptr @line6_wait_clear_audio_urbs._entry_ptr, ptr @line6_init_pcm.__key, ptr @.str, ptr @line6_init_pcm.__key.1, ptr @.str.2, ptr @line6_init_pcm.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @line6_controls, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_init_pcm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_init_pcm.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_init_pcm.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_init_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_wait_clear_audio_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_line6_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn72 = load ptr, ptr %substreams, align 4
  %cmp.not74 = icmp eq ptr %.pn72, %substreams
  br i1 %cmp.not74, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %lock.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 9
  %running.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 11
  %active_urbs.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 7
  %unlink_urbs.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 8
  %count.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn75 = phi ptr [ %.pn72, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %s.0 = getelementptr i8, ptr %.pn75, i32 -140
  %5 = ptrtoint ptr %s.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s.0, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substream, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %cmp5.not = icmp eq ptr %8, %12
  br i1 %cmp5.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge80
    i32 0, label %if.end.sw.bb17_crit_edge
    i32 5, label %if.end.sw.bb17_crit_edge81
    i32 3, label %sw.bb29
    i32 4, label %sw.bb35
  ]

if.end.sw.bb17_crit_edge81:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

if.end.sw.bb_crit_edge80:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge80
  %stream = getelementptr i8, ptr %.pn75, i32 -92
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp6 = icmp eq i32 %15, 1
  br i1 %cmp6, label %land.lhs.true, label %sw.bb.if.end11_crit_edge

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %sw.bb
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %properties = getelementptr inbounds %struct.usb_line6, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %properties, align 4
  %capabilities = getelementptr inbounds %struct.line6_properties, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %capabilities, align 4
  %and = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %running.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then7.line6_stream_start.exit.thread_crit_edge

if.then7.line6_stream_start.exit.thread_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_stream_start.exit.thread

land.lhs.true.i:                                  ; preds = %if.then7
  %22 = ptrtoint ptr %active_urbs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not.i = icmp eq i32 %23, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.line6_stream_start.exit.thread_crit_edge

land.lhs.true.i.line6_stream_start.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_stream_start.exit.thread

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %24 = ptrtoint ptr %unlink_urbs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unlink_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.i = icmp eq i32 %25, 0
  br i1 %tobool8.not.i, label %if.then.i, label %lor.lhs.false.i.line6_stream_start.exit.thread_crit_edge

lor.lhs.false.i.line6_stream_start.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_stream_start.exit.thread

if.then.i:                                        ; preds = %lor.lhs.false.i
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %count.i, align 4
  %call12.i = tail call i32 @line6_submit_audio_out_all_urbs(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp15.i = icmp slt i32 %call12.i, 0
  br i1 %cmp15.i, label %line6_stream_start.exit, label %if.then.i.line6_stream_start.exit.thread_crit_edge

if.then.i.line6_stream_start.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_stream_start.exit.thread

line6_stream_start.exit.thread:                   ; preds = %if.then.i.line6_stream_start.exit.thread_crit_edge, %lor.lhs.false.i.line6_stream_start.exit.thread_crit_edge, %land.lhs.true.i.line6_stream_start.exit.thread_crit_edge, %if.then7.line6_stream_start.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #13
  br label %if.end11

line6_stream_start.exit:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %running.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #13
  br label %cleanup

if.end11:                                         ; preds = %line6_stream_start.exit.thread, %land.lhs.true.if.end11_crit_edge, %sw.bb.if.end11_crit_edge
  %27 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream, align 4
  %call13 = tail call fastcc i32 @line6_stream_start(ptr noundef %1, i32 noundef %28, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge81
  %stream18 = getelementptr i8, ptr %.pn75, i32 -92
  %29 = ptrtoint ptr %stream18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stream18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp19 = icmp eq i32 %30, 1
  br i1 %cmp19, label %land.lhs.true20, label %sw.bb17.if.end27_crit_edge

sw.bb17.if.end27_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true20:                                  ; preds = %sw.bb17
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %properties22 = getelementptr inbounds %struct.usb_line6, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %properties22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %properties22, align 4
  %capabilities23 = getelementptr inbounds %struct.line6_properties, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %capabilities23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %capabilities23, align 4
  %and24 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true20.if.end27_crit_edge, label %if.then26

land.lhs.true20.if.end27_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @line6_stream_stop(ptr noundef %1, i32 noundef 0, i32 noundef 3)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true20.if.end27_crit_edge, %sw.bb17.if.end27_crit_edge
  %37 = ptrtoint ptr %stream18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stream18, align 4
  tail call fastcc void @line6_stream_stop(ptr noundef %1, i32 noundef %38, i32 noundef 0)
  br label %for.inc

sw.bb29:                                          ; preds = %if.end
  %stream30 = getelementptr i8, ptr %.pn75, i32 -92
  %39 = ptrtoint ptr %stream30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stream30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp31.not = icmp eq i32 %40, 0
  br i1 %cmp31.not, label %if.end33, label %sw.bb29.cleanup_crit_edge

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %for.inc

sw.bb35:                                          ; preds = %if.end
  %stream36 = getelementptr i8, ptr %.pn75, i32 -92
  %41 = ptrtoint ptr %stream36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stream36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp37.not = icmp eq i32 %42, 0
  br i1 %cmp37.not, label %if.end39, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %if.end33, %if.end27, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %43 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn75, align 4
  %44 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %group, align 4
  %substreams2 = getelementptr inbounds %struct.snd_pcm_group, ptr %45, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams2
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb35.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %line6_stream_start.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12.i, %line6_stream_start.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ -22, %sw.bb29.cleanup_crit_edge ], [ -22, %sw.bb35.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @line6_stream_start(ptr noundef %line6pcm, i32 noundef %direction, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 0
  %out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5
  %in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %out.i, ptr %in.i
  %lock = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %running = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 11
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef %type, ptr noundef %running) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %active_urbs = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 7
  %0 = ptrtoint ptr %active_urbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

lor.lhs.false:                                    ; preds = %land.lhs.true
  %unlink_urbs = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 8
  %2 = ptrtoint ptr %unlink_urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unlink_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then:                                          ; preds = %lor.lhs.false
  %count = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %count, align 4
  br i1 %cmp.i, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @line6_submit_audio_out_all_urbs(ptr noundef %line6pcm) #13
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 @line6_submit_audio_in_all_urbs(ptr noundef %line6pcm) #13
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ %call13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp15 = icmp slt i32 %ret.0, 0
  br i1 %cmp15, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef %type, ptr noundef %running) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge, %lor.lhs.false.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %ret.034 = phi i32 [ %ret.0, %if.then17 ], [ %ret.0, %if.end14.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ], [ 0, %land.lhs.true.if.end19_crit_edge ], [ 0, %lor.lhs.false.if.end19_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret i32 %ret.034
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @line6_stream_stop(ptr noundef %line6pcm, i32 noundef %direction, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 0
  %out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5
  %in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %out.i, ptr %in.i
  %lock = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %running = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef %type, ptr noundef %running) #13
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %2 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %line6pcm, align 4
  %iso_buffers12.i = getelementptr inbounds %struct.usb_line6, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %iso_buffers12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iso_buffers12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.i = icmp sgt i32 %5, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %if.then.line6_unlink_audio_urbs.exit_crit_edge

if.then.line6_unlink_audio_urbs.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_unlink_audio_urbs.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %active_urbs.i = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 7
  %unlink_urbs.i = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.014.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %active_urbs.i, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.014.i, 31
  %8 = shl nuw i32 1, %and.i.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %i.014.i, ptr noundef %unlink_urbs.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cond.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.014.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call4.i = tail call i32 @usb_unlink_urb(ptr noundef %13) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %14 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %line6pcm, align 4
  %iso_buffers.i = getelementptr inbounds %struct.usb_line6, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %iso_buffers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iso_buffers.i, align 4
  %cmp.i38 = icmp slt i32 %inc.i, %17
  br i1 %cmp.i38, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.line6_unlink_audio_urbs.exit_crit_edge

for.inc.i.line6_unlink_audio_urbs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_unlink_audio_urbs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

line6_unlink_audio_urbs.exit:                     ; preds = %for.inc.i.line6_unlink_audio_urbs.exit_crit_edge, %if.then.line6_unlink_audio_urbs.exit_crit_edge
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp22 = icmp eq i32 %direction, 1
  br i1 %cmp22, label %if.then24, label %line6_unlink_audio_urbs.exit.if.end25_crit_edge

line6_unlink_audio_urbs.exit.if.end25_crit_edge:  ; preds = %line6_unlink_audio_urbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %line6_unlink_audio_urbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev_fbuf = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 6
  %18 = ptrtoint ptr %prev_fbuf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %prev_fbuf, align 4
  %prev_fsize = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 7
  %19 = ptrtoint ptr %prev_fsize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %prev_fsize, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %line6_unlink_audio_urbs.exit.if.end25_crit_edge, %entry.if.end25_crit_edge
  %flags.0 = phi i32 [ %call3, %entry.if.end25_crit_edge ], [ %call17, %if.then24 ], [ %call17, %line6_unlink_audio_urbs.exit.if.end25_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_line6_pointer(ptr nocapture noundef readonly %substream) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5
  %in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %out.i, ptr %in.i
  %pos_done = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 6
  %4 = ptrtoint ptr %pos_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos_done, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @line6_pcm_acquire(ptr noundef %line6pcm, i32 noundef %type, i1 noundef zeroext %start) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state_mutex = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #13
  %out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5
  %in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4
  %max_packet_size_out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 9
  %max_packet_size_in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 8
  %0 = ptrtoint ptr %max_packet_size_out.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond.i42 = load i32, ptr %max_packet_size_out.i, align 4
  %opened.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 10
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %type, ptr noundef %opened.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %buffer.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %if.end8.i.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end8.i.i:                                      ; preds = %land.lhs.true.i
  %3 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %line6pcm, align 4
  %iso_buffers.i = getelementptr inbounds %struct.usb_line6, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %iso_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iso_buffers.i, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 %cond.i42) #13
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i.i = select i1 %8, i32 -1, i32 %9
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i, i32 noundef 3264) #16
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i, ptr %buffer.i, align 4
  %tobool6.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not.i, label %if.end8.i.i.if.then20_crit_edge, label %if.end8.i.i.if.end_crit_edge

if.end8.i.i.if.end_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end8.i.i.if.then20_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.end:                                           ; preds = %if.end8.i.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %running = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 11
  %11 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @line6_wait_clear_audio_urbs(ptr noundef %line6pcm, ptr noundef %out.i)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.end.for.inc_crit_edge
  %13 = ptrtoint ptr %max_packet_size_in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond.i42.1 = load i32, ptr %max_packet_size_in.i, align 4
  %opened.i.1 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 10
  %call.i.1 = tail call i32 @_test_and_set_bit(i32 noundef %type, ptr noundef %opened.i.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %land.lhs.true.i.1, label %for.inc.if.end.1_crit_edge

for.inc.if.end.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

land.lhs.true.i.1:                                ; preds = %for.inc
  %buffer.i.1 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %buffer.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i.1, align 4
  %tobool1.not.i.1 = icmp eq ptr %15, null
  br i1 %tobool1.not.i.1, label %if.end8.i.i.1, label %land.lhs.true.i.1.if.end.1_crit_edge

land.lhs.true.i.1.if.end.1_crit_edge:             ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

if.end8.i.i.1:                                    ; preds = %land.lhs.true.i.1
  %16 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %line6pcm, align 4
  %iso_buffers.i.1 = getelementptr inbounds %struct.usb_line6, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %iso_buffers.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iso_buffers.i.1, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 %cond.i42.1) #13
  %21 = extractvalue { i32, i1 } %20, 1
  %22 = extractvalue { i32, i1 } %20, 0
  %spec.select.i.i.1 = select i1 %21, i32 -1, i32 %22
  %call9.i.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i.1, i32 noundef 3264) #16
  %23 = ptrtoint ptr %buffer.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i.1, ptr %buffer.i.1, align 4
  %tobool6.not.i.1 = icmp eq ptr %call9.i.i.1, null
  br i1 %tobool6.not.i.1, label %if.end8.i.i.1.if.then20_crit_edge, label %if.end8.i.i.1.if.end.1_crit_edge

if.end8.i.i.1.if.end.1_crit_edge:                 ; preds = %if.end8.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

if.end8.i.i.1.if.then20_crit_edge:                ; preds = %if.end8.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.end.1:                                         ; preds = %if.end8.i.i.1.if.end.1_crit_edge, %land.lhs.true.i.1.if.end.1_crit_edge, %for.inc.if.end.1_crit_edge
  %running.1 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 11
  %24 = ptrtoint ptr %running.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %running.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.1 = icmp eq i32 %25, 0
  br i1 %tobool.not.1, label %if.then3.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then3.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @line6_wait_clear_audio_urbs(ptr noundef %line6pcm, ptr noundef %in.i)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %if.end.1.for.inc.1_crit_edge
  br i1 %start, label %for.body9.preheader, label %for.inc.1.error_crit_edge

for.inc.1.error_crit_edge:                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

for.body9.preheader:                              ; preds = %for.inc.1
  %call10 = tail call fastcc i32 @line6_stream_start(ptr noundef %line6pcm, i32 noundef 0, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %for.body9.preheader.if.then20_crit_edge, label %for.cond7

for.body9.preheader.if.then20_crit_edge:          ; preds = %for.body9.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

for.cond7:                                        ; preds = %for.body9.preheader
  %call10.1 = tail call fastcc i32 @line6_stream_start(ptr noundef %line6pcm, i32 noundef 1, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cmp11.1 = icmp slt i32 %call10.1, 0
  br i1 %cmp11.1, label %for.cond7.if.then20_crit_edge, label %for.cond7.error_crit_edge

for.cond7.error_crit_edge:                        ; preds = %for.cond7
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

for.cond7.if.then20_crit_edge:                    ; preds = %for.cond7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

error:                                            ; preds = %for.cond7.error_crit_edge, %for.inc.1.error_crit_edge
  %ret.2 = phi i32 [ 0, %for.inc.1.error_crit_edge ], [ %call10.1, %for.cond7.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_mutex) #13
  br label %if.end21

if.then20:                                        ; preds = %for.cond7.if.then20_crit_edge, %for.body9.preheader.if.then20_crit_edge, %if.end8.i.i.1.if.then20_crit_edge, %if.end8.i.i.if.then20_crit_edge
  %ret.2.ph = phi i32 [ %call10, %for.body9.preheader.if.then20_crit_edge ], [ %call10.1, %for.cond7.if.then20_crit_edge ], [ -12, %if.end8.i.i.1.if.then20_crit_edge ], [ -12, %if.end8.i.i.if.then20_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_mutex) #13
  tail call void @line6_pcm_release(ptr noundef %line6pcm, i32 noundef %type)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %error
  %ret.247 = phi i32 [ %ret.2.ph, %if.then20 ], [ %ret.2, %error ]
  ret i32 %ret.247
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @line6_wait_clear_audio_urbs(ptr nocapture noundef readonly %line6pcm, ptr noundef %pcms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %active_urbs = getelementptr inbounds %struct.line6_pcm_stream, ptr %pcms, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %__here.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 100, %entry ], [ %dec, %__here.do.body_crit_edge ]
  %0 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line6pcm, align 4
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iso_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp90 = icmp sgt i32 %3, 0
  br i1 %cmp90, label %do.body.for.body_crit_edge, label %do.body.if.end79_crit_edge

do.body.if.end79_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.092 = phi i32 [ %inc1, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %alive.091 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %div3.i = lshr i32 %i.092, 5
  %arrayidx.i = getelementptr i32, ptr %active_urbs, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.092, 31
  %6 = lshr i32 %5, %and.i
  %7 = and i32 %6, 1
  %spec.select = add i32 %7, %alive.091
  %inc1 = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc1, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool2.not = icmp eq i32 %spec.select, 0
  br i1 %tobool2.not, label %for.end.if.end79_crit_edge, label %__here

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

__here:                                           ; preds = %for.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i88 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i88 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@line6_wait_clear_audio_urbs, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 2, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !50
  %call69 = tail call i32 @schedule_timeout(i32 noundef 1) #13
  %dec = add nsw i32 %timeout.0, -1
  %cmp71.not = icmp eq i32 %dec, 0
  br i1 %cmp71.not, label %do.end77.critedge, label %__here.do.body_crit_edge

__here.do.body_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end77.critedge:                                ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %line6pcm, align 4
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ifcdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.10, i32 noundef %spec.select) #17
  br label %if.end79

if.end79:                                         ; preds = %do.end77.critedge, %for.end.if.end79_crit_edge, %do.body.if.end79_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @line6_pcm_release(ptr noundef %line6pcm, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state_mutex = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #13
  tail call fastcc void @line6_stream_stop(ptr noundef %line6pcm, i32 noundef 0, i32 noundef %type)
  tail call fastcc void @line6_stream_stop(ptr noundef %line6pcm, i32 noundef 1, i32 noundef %type)
  %in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4
  %opened.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 10
  tail call void @_clear_bit(i32 noundef %type, ptr noundef %opened.i) #13
  %0 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.line6_buffer_release.exit_crit_edge

entry.line6_buffer_release.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_buffer_release.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5
  tail call fastcc void @line6_wait_clear_audio_urbs(ptr noundef %line6pcm, ptr noundef %out.i) #13
  %buffer.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buffer.i, align 4
  br label %line6_buffer_release.exit

line6_buffer_release.exit:                        ; preds = %if.then.i, %entry.line6_buffer_release.exit_crit_edge
  %opened.i.1 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 10
  tail call void @_clear_bit(i32 noundef %type, ptr noundef %opened.i.1) #13
  %5 = ptrtoint ptr %opened.i.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opened.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.1 = icmp eq i32 %6, 0
  br i1 %tobool.not.i.1, label %if.then.i.1, label %line6_buffer_release.exit.line6_buffer_release.exit.1_crit_edge

line6_buffer_release.exit.line6_buffer_release.exit.1_crit_edge: ; preds = %line6_buffer_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_buffer_release.exit.1

if.then.i.1:                                      ; preds = %line6_buffer_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @line6_wait_clear_audio_urbs(ptr noundef %line6pcm, ptr noundef %in.i) #13
  %buffer.i.1 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %buffer.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer.i.1, align 4
  tail call void @kfree(ptr noundef %8) #13
  %9 = ptrtoint ptr %buffer.i.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %buffer.i.1, align 4
  br label %line6_buffer_release.exit.1

line6_buffer_release.exit.1:                      ; preds = %if.then.i.1, %line6_buffer_release.exit.line6_buffer_release.exit.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_line6_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5
  %in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %out.i, ptr %in.i
  %state_mutex = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #13
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i12 = icmp eq i32 %5, 0
  %max_packet_size_out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 9
  %max_packet_size_in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i12, ptr %max_packet_size_out.i, ptr %max_packet_size_in.i
  %6 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond.i13 = load i32, ptr %cond.in.i, align 4
  %opened.i = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 10
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %opened.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %buffer.i = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 1
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.end8.i.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end8.i.i:                                      ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %iso_buffers.i = getelementptr inbounds %struct.usb_line6, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %iso_buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iso_buffers.i, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 %cond.i13) #13
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i.i = select i1 %14, i32 -1, i32 %15
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i, i32 noundef 3264) #16
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %buffer.i, align 4
  %tobool6.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not.i, label %if.end8.i.i.error_crit_edge, label %if.end8.i.i.if.end_crit_edge

if.end8.i.i.if.end_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end8.i.i.error_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end:                                           ; preds = %if.end8.i.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %period = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 5
  %19 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %period, align 4
  br label %error

error:                                            ; preds = %if.end, %if.end8.i.i.error_crit_edge
  %retval.0.i16 = phi i32 [ 0, %if.end ], [ -12, %if.end8.i.i.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_mutex) #13
  ret i32 %retval.0.i16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_line6_hw_free(ptr nocapture noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5
  %in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %out.i, ptr %in.i
  %state_mutex = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #13
  %opened.i = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %opened.i) #13
  %4 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.line6_buffer_release.exit_crit_edge

entry.line6_buffer_release.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_buffer_release.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @line6_wait_clear_audio_urbs(ptr noundef %1, ptr noundef %cond.i) #13
  %buffer.i = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 1
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %buffer.i, align 4
  br label %line6_buffer_release.exit

line6_buffer_release.exit:                        ; preds = %if.then.i, %entry.line6_buffer_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @line6_pcm_disconnect(ptr noundef %line6pcm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %out = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5
  %0 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line6pcm, align 4
  %iso_buffers12.i = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iso_buffers12.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iso_buffers12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.i = icmp sgt i32 %3, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %entry.line6_unlink_audio_urbs.exit_crit_edge

entry.line6_unlink_audio_urbs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_unlink_audio_urbs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %active_urbs.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 7
  %unlink_urbs.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 5, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.014.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %active_urbs.i, i32 %div3.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.014.i, 31
  %6 = shl nuw i32 1, %and.i.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %i.014.i, ptr noundef %unlink_urbs.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.014.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call4.i = tail call i32 @usb_unlink_urb(ptr noundef %11) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %12 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %line6pcm, align 4
  %iso_buffers.i = getelementptr inbounds %struct.usb_line6, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %iso_buffers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iso_buffers.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.line6_unlink_audio_urbs.exit_crit_edge

for.inc.i.line6_unlink_audio_urbs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_unlink_audio_urbs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

line6_unlink_audio_urbs.exit:                     ; preds = %for.inc.i.line6_unlink_audio_urbs.exit_crit_edge, %entry.line6_unlink_audio_urbs.exit_crit_edge
  %in = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4
  %16 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %line6pcm, align 4
  %iso_buffers12.i10 = getelementptr inbounds %struct.usb_line6, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %iso_buffers12.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iso_buffers12.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp13.i11 = icmp sgt i32 %19, 0
  br i1 %cmp13.i11, label %for.body.lr.ph.i14, label %line6_unlink_audio_urbs.exit.line6_unlink_audio_urbs.exit31_crit_edge

line6_unlink_audio_urbs.exit.line6_unlink_audio_urbs.exit31_crit_edge: ; preds = %line6_unlink_audio_urbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_unlink_audio_urbs.exit31

for.body.lr.ph.i14:                               ; preds = %line6_unlink_audio_urbs.exit
  %active_urbs.i12 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 7
  %unlink_urbs.i13 = getelementptr inbounds %struct.snd_line6_pcm, ptr %line6pcm, i32 0, i32 4, i32 8
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.inc.i30.for.body.i20_crit_edge, %for.body.lr.ph.i14
  %i.014.i15 = phi i32 [ 0, %for.body.lr.ph.i14 ], [ %inc.i27, %for.inc.i30.for.body.i20_crit_edge ]
  %div3.i.i16 = lshr i32 %i.014.i15, 5
  %arrayidx.i.i17 = getelementptr i32, ptr %active_urbs.i12, i32 %div3.i.i16
  %20 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i17, align 4
  %and.i.i18 = and i32 %i.014.i15, 31
  %22 = shl nuw i32 1, %and.i.i18
  %23 = and i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i19 = icmp eq i32 %23, 0
  br i1 %tobool.not.i19, label %for.body.i20.for.inc.i30_crit_edge, label %if.then.i23

for.body.i20.for.inc.i30_crit_edge:               ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i30

if.then.i23:                                      ; preds = %for.body.i20
  %call1.i21 = tail call i32 @_test_and_set_bit(i32 noundef %i.014.i15, ptr noundef %unlink_urbs.i13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool2.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool2.not.i22, label %if.then3.i26, label %if.then.i23.for.inc.i30_crit_edge

if.then.i23.for.inc.i30_crit_edge:                ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i30

if.then3.i26:                                     ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in, align 4
  %arrayidx.i24 = getelementptr ptr, ptr %25, i32 %i.014.i15
  %26 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i24, align 4
  %call4.i25 = tail call i32 @usb_unlink_urb(ptr noundef %27) #13
  br label %for.inc.i30

for.inc.i30:                                      ; preds = %if.then3.i26, %if.then.i23.for.inc.i30_crit_edge, %for.body.i20.for.inc.i30_crit_edge
  %inc.i27 = add nuw nsw i32 %i.014.i15, 1
  %28 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %line6pcm, align 4
  %iso_buffers.i28 = getelementptr inbounds %struct.usb_line6, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %iso_buffers.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iso_buffers.i28, align 4
  %cmp.i29 = icmp slt i32 %inc.i27, %31
  br i1 %cmp.i29, label %for.inc.i30.for.body.i20_crit_edge, label %for.inc.i30.line6_unlink_audio_urbs.exit31_crit_edge

for.inc.i30.line6_unlink_audio_urbs.exit31_crit_edge: ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #15
  br label %line6_unlink_audio_urbs.exit31

for.inc.i30.for.body.i20_crit_edge:               ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i20

line6_unlink_audio_urbs.exit31:                   ; preds = %for.inc.i30.line6_unlink_audio_urbs.exit31_crit_edge, %line6_unlink_audio_urbs.exit.line6_unlink_audio_urbs.exit31_crit_edge
  tail call fastcc void @line6_wait_clear_audio_urbs(ptr noundef %line6pcm, ptr noundef %out)
  tail call fastcc void @line6_wait_clear_audio_urbs(ptr noundef %line6pcm, ptr noundef %in)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @line6_init_pcm(ptr noundef %line6, ptr noundef %properties) #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %properties1 = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 1
  %0 = ptrtoint ptr %properties1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties1, align 4
  %ep_audio_r = getelementptr inbounds %struct.line6_properties, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ep_audio_r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep_audio_r, align 4
  %ep_audio_w = getelementptr inbounds %struct.line6_properties, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ep_audio_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep_audio_w, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #13
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !51
  %capabilities = getelementptr inbounds %struct.line6_properties, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capabilities, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %card.i = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 7
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %name.i = getelementptr inbounds %struct.line6_properties, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  %call.i = call i32 @snd_pcm_new(ptr noundef %10, ptr noundef %12, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm, align 4
  %name1.i = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %properties1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %properties1, align 4
  %name3.i = getelementptr inbounds %struct.line6_properties, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name3.i, align 4
  %call4.i = call ptr @strcpy(ptr noundef %name1.i, ptr noundef %18) #18
  call void @snd_pcm_set_ops(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @snd_line6_playback_ops) #13
  call void @snd_pcm_set_ops(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @snd_line6_capture_ops) #13
  %call5.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %14, i32 noundef 1, ptr noundef null, i32 noundef 65536, i32 noundef 131072) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 332) #19
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end5
  %state_mutex = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %state_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @line6_init_pcm.__key) #13
  %20 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcm, align 4
  %pcm10 = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %pcm10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %pcm10, align 8
  %properties11 = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %properties11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %properties, ptr %properties11, align 4
  %volume_playback = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 10
  %arrayidx = getelementptr %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 255, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %volume_playback to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 255, ptr %volume_playback, align 8
  %volume_monitor = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 11
  %26 = ptrtoint ptr %volume_monitor to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 255, ptr %volume_monitor, align 8
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %line6, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 5, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @line6_init_pcm.__key.1, i16 noundef signext 3) #13
  %lock20 = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 4, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock20, ptr noundef nonnull @.str.4, ptr noundef nonnull @line6_init_pcm.__key.3, i16 noundef signext 3) #13
  %impulse_period = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 13
  %28 = ptrtoint ptr %impulse_period to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 100, ptr %impulse_period, align 8
  %line6pcm24 = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 8
  %29 = ptrtoint ptr %line6pcm24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %line6pcm24, align 4
  %30 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm, ptr %31, i32 0, i32 12
  %33 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @line6_cleanup_pcm, ptr %private_free, align 4
  %34 = ptrtoint ptr %line6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %line6, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i = shl i32 %37, 8
  %shl1.i = shl i32 %3, 15
  %or.i = or i32 %shl.i, %shl1.i
  %38 = lshr i32 %or.i, 15
  %and.i = and i32 %38, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %35, i32 0, i32 21, i32 %and.i
  %39 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %ep.0.i = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %do.body.usb_maxpacket.exit_crit_edge, label %if.end61.i

do.body.usb_maxpacket.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %40 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %42 = and i16 %41, -249
  %43 = call i16 @llvm.bswap.i16(i16 %42) #13
  %phi.cast = zext i16 %43 to i32
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %do.body.usb_maxpacket.exit_crit_edge
  %retval.0.i108 = phi i32 [ %phi.cast, %if.end61.i ], [ 0, %do.body.usb_maxpacket.exit_crit_edge ]
  %max_packet_size_in = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %max_packet_size_in to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i108, ptr %max_packet_size_in, align 8
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %35, align 8
  %shl.i109 = shl i32 %46, 8
  %shl1.i110 = shl i32 %5, 15
  %or.i111 = or i32 %shl.i109, %shl1.i110
  %47 = lshr i32 %or.i111, 15
  %and.i112 = and i32 %47, 15
  %arrayidx.i = getelementptr %struct.usb_device, ptr %35, i32 0, i32 22, i32 %and.i112
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %ep.0.i114 = load ptr, ptr %arrayidx.i, align 4
  %tobool59.not.i115 = icmp eq ptr %ep.0.i114, null
  br i1 %tobool59.not.i115, label %usb_maxpacket.exit119.thread, label %usb_maxpacket.exit119

usb_maxpacket.exit119.thread:                     ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #15
  %max_packet_size_out124 = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %max_packet_size_out124 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %max_packet_size_out124, align 4
  br label %do.end42

usb_maxpacket.exit119:                            ; preds = %usb_maxpacket.exit
  %wMaxPacketSize.i.i116 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i114, i32 0, i32 4
  %50 = ptrtoint ptr %wMaxPacketSize.i.i116 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %wMaxPacketSize.i.i116, align 1
  %52 = and i16 %51, -249
  %53 = call i16 @llvm.bswap.i16(i16 %52) #13
  %conv34 = zext i16 %53 to i32
  %max_packet_size_out = getelementptr inbounds %struct.snd_line6_pcm, ptr %call7.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %max_packet_size_out to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv34, ptr %max_packet_size_out, align 4
  %55 = ptrtoint ptr %max_packet_size_in to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_packet_size_in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool36.not = icmp eq i32 %56, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool38.not = icmp eq i16 %52, 0
  %or.cond = select i1 %tobool36.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %usb_maxpacket.exit119.do.end42_crit_edge, label %if.end44

usb_maxpacket.exit119.do.end42_crit_edge:         ; preds = %usb_maxpacket.exit119
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

do.end42:                                         ; preds = %usb_maxpacket.exit119.do.end42_crit_edge, %usb_maxpacket.exit119.thread
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call7.i.i, align 8
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ifcdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.5) #17
  br label %cleanup

if.end44:                                         ; preds = %usb_maxpacket.exit119
  %call45 = call i32 @line6_create_audio_out_urbs(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %call50 = call i32 @line6_create_audio_in_urbs(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.cleanup_crit_edge, label %for.body.preheader

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %if.end49
  %61 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card.i, align 4
  %call58 = call ptr @snd_ctl_new1(ptr noundef nonnull @line6_controls, ptr noundef nonnull %call7.i.i) #13
  %call59 = call i32 @snd_ctl_add(ptr noundef %62, ptr noundef %call58) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %63 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card.i, align 4
  %call58.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @line6_controls, i32 0, i32 1), ptr noundef nonnull %call7.i.i) #13
  %call59.1 = call i32 @snd_ctl_add(ptr noundef %64, ptr noundef %call58.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.1)
  %cmp60.1 = icmp slt i32 %call59.1, 0
  br i1 %cmp60.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %card.i, align 4
  %call58.2 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @line6_controls, i32 0, i32 2), ptr noundef nonnull %call7.i.i) #13
  %call59.2 = call i32 @snd_ctl_add(ptr noundef %66, ptr noundef %call58.2) #13
  %67 = call i32 @llvm.smin.i32(i32 %call59.2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end42, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end42 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call59, %for.body.preheader.cleanup_crit_edge ], [ %call59.1, %for.cond.cleanup_crit_edge ], [ %67, %for.cond.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @line6_cleanup_pcm(ptr nocapture noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %out = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %iso_buffers = getelementptr inbounds %struct.usb_line6, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %iso_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iso_buffers, align 4
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %entry.cleanup_urbs.exit_crit_edge, label %for.cond.preheader.i

entry.cleanup_urbs.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_urbs.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp120.i = icmp sgt i32 %5, 0
  br i1 %cmp120.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.021.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #13
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out, align 4
  %arrayidx7.i = getelementptr ptr, ptr %13, i32 %i.021.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7.i, align 4
  tail call void @usb_free_urb(ptr noundef %15) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out, align 4
  tail call void @kfree(ptr noundef %17) #13
  %18 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %out, align 4
  br label %cleanup_urbs.exit

cleanup_urbs.exit:                                ; preds = %for.end.i, %entry.cleanup_urbs.exit_crit_edge
  %in = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %iso_buffers2 = getelementptr inbounds %struct.usb_line6, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %iso_buffers2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iso_buffers2, align 4
  %23 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in, align 4
  %cmp.i7 = icmp eq ptr %24, null
  br i1 %cmp.i7, label %cleanup_urbs.exit.cleanup_urbs.exit20_crit_edge, label %for.cond.preheader.i9

cleanup_urbs.exit.cleanup_urbs.exit20_crit_edge:  ; preds = %cleanup_urbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_urbs.exit20

for.cond.preheader.i9:                            ; preds = %cleanup_urbs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp120.i8 = icmp sgt i32 %22, 0
  br i1 %cmp120.i8, label %for.cond.preheader.i9.for.body.i13_crit_edge, label %for.cond.preheader.i9.for.end.i19_crit_edge

for.cond.preheader.i9.for.end.i19_crit_edge:      ; preds = %for.cond.preheader.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i19

for.cond.preheader.i9.for.body.i13_crit_edge:     ; preds = %for.cond.preheader.i9
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.inc.i18.for.body.i13_crit_edge, %for.cond.preheader.i9.for.body.i13_crit_edge
  %i.021.i10 = phi i32 [ %inc.i16, %for.inc.i18.for.body.i13_crit_edge ], [ 0, %for.cond.preheader.i9.for.body.i13_crit_edge ]
  %25 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in, align 4
  %arrayidx.i11 = getelementptr ptr, ptr %26, i32 %i.021.i10
  %27 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i11, align 4
  %tobool.not.i12 = icmp eq ptr %28, null
  br i1 %tobool.not.i12, label %for.body.i13.for.inc.i18_crit_edge, label %if.then3.i15

for.body.i13.for.inc.i18_crit_edge:               ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i18

if.then3.i15:                                     ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_kill_urb(ptr noundef nonnull %28) #13
  %29 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %in, align 4
  %arrayidx7.i14 = getelementptr ptr, ptr %30, i32 %i.021.i10
  %31 = ptrtoint ptr %arrayidx7.i14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx7.i14, align 4
  tail call void @usb_free_urb(ptr noundef %32) #13
  br label %for.inc.i18

for.inc.i18:                                      ; preds = %if.then3.i15, %for.body.i13.for.inc.i18_crit_edge
  %inc.i16 = add nuw nsw i32 %i.021.i10, 1
  %exitcond.not.i17 = icmp eq i32 %inc.i16, %22
  br i1 %exitcond.not.i17, label %for.inc.i18.for.end.i19_crit_edge, label %for.inc.i18.for.body.i13_crit_edge

for.inc.i18.for.body.i13_crit_edge:               ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i13

for.inc.i18.for.end.i19_crit_edge:                ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i19

for.end.i19:                                      ; preds = %for.inc.i18.for.end.i19_crit_edge, %for.cond.preheader.i9.for.end.i19_crit_edge
  %33 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %in, align 4
  tail call void @kfree(ptr noundef %34) #13
  %35 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %in, align 4
  br label %cleanup_urbs.exit20

cleanup_urbs.exit20:                              ; preds = %for.end.i19, %cleanup_urbs.exit.cleanup_urbs.exit20_crit_edge
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_create_audio_out_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_create_audio_in_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_line6_prepare(ptr nocapture noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %out.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5
  %in.i = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %out.i, ptr %in.i
  %state_mutex = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #13
  %running = getelementptr inbounds %struct.line6_pcm_stream, ptr %cond.i, i32 0, i32 11
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @line6_wait_clear_audio_urbs(ptr noundef %1, ptr noundef %cond.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 15
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %count = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %count, align 4
  %pos = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pos, align 4
  %pos_done = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 6
  %8 = ptrtoint ptr %pos_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pos_done, align 4
  %bytes = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %bytes, align 4
  %count7 = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %count7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %count7, align 4
  %pos_done9 = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %pos_done9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pos_done9, align 4
  %bytes11 = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %bytes11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bytes11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then3, %if.end.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_submit_audio_out_all_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_submit_audio_in_all_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_line6_control_playback_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_line6_control_playback_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_line6_pcm, ptr %1, i32 0, i32 10, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 4
  %arrayidx.1 = getelementptr %struct.snd_line6_pcm, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx1.1, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_line6_control_playback_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_line6_pcm, ptr %1, i32 0, i32 10, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp eq i32 %3, %5
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %changed.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.snd_line6_pcm, ptr %1, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp2.not.1 = icmp eq i32 %8, %10
  br i1 %cmp2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %changed.1.1 = phi i32 [ 1, %if.then.1 ], [ %changed.1, %for.inc.for.inc.1_crit_edge ]
  ret i32 %changed.1.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_line6_impulse_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_line6_impulse_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %impulse_volume = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %impulse_volume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %impulse_volume, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_line6_impulse_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %impulse_volume = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %impulse_volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %impulse_volume, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp eq i32 %5, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %impulse_volume to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %impulse_volume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call = tail call i32 @line6_pcm_acquire(ptr noundef %1, i32 noundef 2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %impulse_volume to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %impulse_volume, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @line6_pcm_release(ptr noundef %1, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4.cleanup_crit_edge ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_line6_impulse_period_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2000, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_line6_impulse_period_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %impulse_period = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %impulse_period to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %impulse_period, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_line6_impulse_period_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %impulse_period = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %impulse_period to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %impulse_period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp eq i32 %5, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %impulse_period to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %impulse_period, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__ksymtab_line6_pcm_acquire, !1, !"__ksymtab_line6_pcm_acquire", i1 false, i1 false}
!1 = !{!"../sound/usb/line6/pcm.c", i32 329, i32 1}
!2 = !{ptr @__ksymtab_line6_pcm_release, !3, !"__ksymtab_line6_pcm_release", i1 false, i1 false}
!3 = !{!"../sound/usb/line6/pcm.c", i32 346, i32 1}
!4 = !{ptr @line6_init_pcm.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../sound/usb/line6/pcm.c", i32 537, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @line6_init_pcm.__key.1, !8, !"__key", i1 false, i1 false}
!8 = !{!"../sound/usb/line6/pcm.c", i32 544, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @line6_init_pcm.__key.3, !11, !"__key", i1 false, i1 false}
!11 = !{!"../sound/usb/line6/pcm.c", i32 545, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/usb/line6/pcm.c", i32 560, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @line6_init_pcm._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @line6_init_pcm._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_line6_init_pcm, !22, !"__ksymtab_line6_init_pcm", i1 false, i1 false}
!22 = !{!"../sound/usb/line6/pcm.c", i32 583, i32 1}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../sound/usb/line6/pcm.c", i32 129, i32 3}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/usb/line6/pcm.c", i32 133, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @line6_wait_clear_audio_urbs._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @line6_wait_clear_audio_urbs._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/line6/pcm.c", i32 427, i32 11}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/usb/line6/pcm.c", i32 434, i32 11}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/line6/pcm.c", i32 441, i32 11}
!38 = !{ptr @line6_controls, !39, !"line6_controls", i1 false, i1 false}
!39 = !{!"../sound/usb/line6/pcm.c", i32 424, i32 38}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2154545897}
!51 = !{!"auto-init"}
