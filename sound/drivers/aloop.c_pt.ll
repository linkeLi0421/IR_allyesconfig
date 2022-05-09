; ModuleID = '/llk/IR_all_yes/sound/drivers/aloop.c_pt.bc'
source_filename = "../sound/drivers/aloop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.loopback_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.loopback = type { ptr, %struct.mutex, [8 x [2 x ptr]], [2 x ptr], [8 x [2 x %struct.loopback_setup]], ptr }
%struct.loopback_setup = type { i8, i32, i32, i32, i32, %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.loopback_pcm = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, %struct.timer_list }
%struct.loopback_cable = type { %struct.spinlock, [2 x ptr], %struct.snd_pcm_hardware, i32, i32, i32, ptr, %struct.anon.83 }
%struct.anon.83 = type { i32, %struct.snd_timer_id, %struct.work_struct, ptr }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_timer_instance = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
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
%struct.snd_pcm_mmap_status = type { i32, i32, [4 x i8], i32, [0 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.72, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author238 = internal constant [50 x i8] c"snd_aloop.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [43 x i8] c"snd_aloop.description=A loopback soundcard\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [39 x i8] c"snd_aloop.file=sound/drivers/snd-aloop\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"snd_aloop.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_aloop.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype242 = internal constant [38 x i8] c"snd_aloop.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index243 = internal constant [57 x i8] c"snd_aloop.parm=index:Index value for loopback soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_aloop.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype244 = internal constant [37 x i8] c"snd_aloop.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id245 = internal constant [52 x i8] c"snd_aloop.parm=id:ID string for loopback soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_aloop.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype246 = internal constant [40 x i8] c"snd_aloop.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable247 = internal constant [54 x i8] c"snd_aloop.parm=enable:Enable this loopback soundcard.\00", section ".modinfo", align 1
@__param_str_pcm_substreams = internal constant [25 x i8] c"snd_aloop.pcm_substreams\00", align 1
@__param_arr_pcm_substreams = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pcm_substreams }, align 4
@__param_pcm_substreams = internal constant %struct.kernel_param { ptr @__param_str_pcm_substreams, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_pcm_substreams } }, section "__param", align 4
@__UNIQUE_ID_pcm_substreamstype248 = internal constant [47 x i8] c"snd_aloop.parmtype=pcm_substreams:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_substreams249 = internal constant [74 x i8] c"snd_aloop.parm=pcm_substreams:PCM substreams # (1-8) for loopback driver.\00", section ".modinfo", align 1
@__param_str_pcm_notify = internal constant [21 x i8] c"snd_aloop.pcm_notify\00", align 1
@__param_arr_pcm_notify = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pcm_notify }, align 4
@__param_pcm_notify = internal constant %struct.kernel_param { ptr @__param_str_pcm_notify, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_pcm_notify } }, section "__param", align 4
@__UNIQUE_ID_pcm_notifytype250 = internal constant [43 x i8] c"snd_aloop.parmtype=pcm_notify:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_notify251 = internal constant [79 x i8] c"snd_aloop.parm=pcm_notify:Break capture when PCM format/rate/channels changes.\00", section ".modinfo", align 1
@__param_str_timer_source = internal constant [23 x i8] c"snd_aloop.timer_source\00", align 1
@__param_arr_timer_source = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @timer_source }, align 4
@__param_timer_source = internal constant %struct.kernel_param { ptr @__param_str_timer_source, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_timer_source } }, section "__param", align 4
@__UNIQUE_ID_timer_sourcetype252 = internal constant [47 x i8] c"snd_aloop.parmtype=timer_source:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_timer_source253 = internal constant [145 x i8] c"snd_aloop.parm=timer_source:Sound card name or number and device/subdevice number of timer to be used. Empty string for jiffies timer [default].\00", section ".modinfo", align 1
@__initcall__kmod_snd_aloop__254_1835_alsa_card_loopback_init6 = internal global ptr @alsa_card_loopback_init, section ".initcall6.init", align 4
@__exitcall_alsa_card_loopback_exit = internal global ptr @alsa_card_loopback_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { <{ i8, [31 x i8] }>, [32 x i8] } { <{ i8, [31 x i8] }> <{ i8 1, [31 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@pcm_substreams = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@pcm_notify = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@timer_source = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@loopback_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @loopback_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @loopback_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_aloop\00", [22 x i8] zeroinitializer }, align 32
@loopback_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @loopback_suspend, ptr @loopback_resume, ptr @loopback_suspend, ptr @loopback_resume, ptr @loopback_suspend, ptr @loopback_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@loopback_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&loopback->cable_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Loopback\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loopback %i\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Loopback PCM\00", [19 x i8] zeroinitializer }, align 32
@loopback_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @loopback_open, ptr @loopback_close, ptr null, ptr null, ptr @loopback_hw_free, ptr @loopback_prepare, ptr @loopback_trigger, ptr null, ptr @loopback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@loopback_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cable->lock\00", [19 x i8] zeroinitializer }, align 32
@loopback_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786691, i64 12884954316, i32 1073750014, i32 8000, i32 192000, i32 1, i32 32, i32 2097152, i32 64, i32 1048576, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@loopback_snd_timer_ops = internal constant { %struct.loopback_ops, [32 x i8] } { %struct.loopback_ops { ptr @loopback_snd_timer_open, ptr @loopback_snd_timer_start, ptr @loopback_snd_timer_stop, ptr null, ptr null, ptr @loopback_snd_timer_close_cable, ptr null, ptr @loopback_snd_timer_dpcm_info }, [32 x i8] zeroinitializer }, align 32
@loopback_jiffies_timer_ops = internal constant { %struct.loopback_ops, [32 x i8] } { %struct.loopback_ops { ptr @loopback_jiffies_timer_open, ptr @loopback_jiffies_timer_start, ptr @loopback_jiffies_timer_stop, ptr @loopback_jiffies_timer_stop_sync, ptr @loopback_jiffies_timer_stop_sync, ptr null, ptr @loopback_jiffies_timer_pos_update, ptr @loopback_jiffies_timer_dpcm_info }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@loopback_snd_timer_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1114, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Parsing timer source '%s' failed with %d\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"loopback_snd_timer_open\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/drivers/aloop.c\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@loopback_snd_timer_open._entry_ptr = internal global ptr @loopback_snd_timer_open._entry, section ".printk_index", align 4
@loopback_snd_timer_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&cable->snd_timer.event_work)\00", [48 x i8] zeroinitializer }, align 32
@loopback_snd_timer_open._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 1160, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"snd_timer_open (%d,%d,%d) failed with %d\00", [55 x i8] zeroinitializer }, align 32
@loopback_snd_timer_open._entry_ptr.15 = internal global ptr @loopback_snd_timer_open._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".,\00", [29 x i8] zeroinitializer }, align 32
@snd_ecards_limit = external dso_local local_unnamed_addr global i32, align 4
@loopback_snd_timer_check_resolution._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 703, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [184 x i8], [40 x i8] } { [184 x i8] c"Period size (%lu frames) of loopback device is not corresponding to timer resolution (%lu nsec = %lu frames) of card timer %d,%d,%d. Use period size of %lu frames for loopback device.\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"loopback_snd_timer_check_resolution\00", [60 x i8] zeroinitializer }, align 32
@loopback_snd_timer_check_resolution._entry_ptr = internal global ptr @loopback_snd_timer_check_resolution._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@loopback_snd_timer_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 250, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"snd_timer_start(%d,%d,%d) failed with %d\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"loopback_snd_timer_start\00", [39 x i8] zeroinitializer }, align 32
@loopback_snd_timer_start._entry_ptr = internal global ptr @loopback_snd_timer_start._entry, section ".printk_index", align 4
@loopback_snd_timer_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.9, i32 282, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"snd_timer_stop(%d,%d,%d) failed with %d\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"loopback_snd_timer_stop\00", [40 x i8] zeroinitializer }, align 32
@loopback_snd_timer_stop._entry_ptr = internal global ptr @loopback_snd_timer_stop._entry, section ".printk_index", align 4
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"    sound timer:\09hw:%d,%d,%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    timer open:\09\09%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"playback\00", [23 x i8] zeroinitializer }, align 32
@loopback_jiffies_timer_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&dpcm->timer)\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"    update_pending:\09%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"    irq_pos:\09\09%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    period_frac:\09%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"    last_jiffies:\09%lu (%lu)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"    timer_expires:\09%lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Loopback Mixer\00", [17 x i8] zeroinitializer }, align 32
@loopback_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @loopback_rate_shift_info, ptr @loopback_rate_shift_get, ptr @loopback_rate_shift_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @loopback_notify_get, ptr @loopback_notify_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.37, i32 0, i32 1, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @loopback_active_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.38, i32 0, i32 1, i32 0, ptr @loopback_format_info, ptr @loopback_format_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.39, i32 0, i32 1, i32 0, ptr @loopback_rate_info, ptr @loopback_rate_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.40, i32 0, i32 1, i32 0, ptr @loopback_channels_info, ptr @loopback_channels_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }], [64 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCM Rate Shift 100000\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCM Notify\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCM Slave Active\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCM Slave Format\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM Slave Rate\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Slave Channels\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cable#%d\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cable %i substream %i:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  inactive\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  valid: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  running: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  pause: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"  %s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"    inactive\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    buffer_size:\09%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    buffer_pos:\09\09%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    silent_size:\09%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    period_size:\09%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    bytes_per_sec:\09%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    sample_align:\09%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    rate_shift:\09\09%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_source\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 39, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 40, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 41, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"pcm_substreams\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 42, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"pcm_notify\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 43, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"timer_source\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 44, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 163, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"loopback_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1778, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1781, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"loopback_pm\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1770, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1729, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1743, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1745, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1312, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"loopback_pcm_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1297, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1207, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"loopback_pcm_hardware\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 876, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"loopback_snd_timer_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1174, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"loopback_jiffies_timer_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1023, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1112, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1140, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1155, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1037, i32 31 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 697, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 245, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 277, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 853, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 857, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1018, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 839, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 841, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 842, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 843, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 845, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1554, i32 26 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"loopback_controls\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1497, i32 38 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1500, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1507, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1516, i32 18 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1524, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1532, i32 18 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1540, i32 18 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1661, i32 31 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1631, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1633, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1636, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1637, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1638, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1639, i32 45 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1640, i32 45 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1608, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1610, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1613, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1614, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1615, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1616, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1617, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1618, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1619, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1703, i32 46 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [25 x i8] c"../sound/drivers/aloop.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1684, i32 2 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_enable247, ptr @__UNIQUE_ID_enabletype246, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_id245, ptr @__UNIQUE_ID_idtype244, ptr @__UNIQUE_ID_index243, ptr @__UNIQUE_ID_indextype242, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_pcm_notify251, ptr @__UNIQUE_ID_pcm_notifytype250, ptr @__UNIQUE_ID_pcm_substreams249, ptr @__UNIQUE_ID_pcm_substreamstype248, ptr @__UNIQUE_ID_timer_source253, ptr @__UNIQUE_ID_timer_sourcetype252, ptr @__exitcall_alsa_card_loopback_exit, ptr @__initcall__kmod_snd_aloop__254_1835_alsa_card_loopback_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_pcm_notify, ptr @__param_pcm_substreams, ptr @__param_timer_source, ptr @alsa_card_loopback_exit, ptr @loopback_snd_timer_check_resolution._entry, ptr @loopback_snd_timer_check_resolution._entry_ptr, ptr @loopback_snd_timer_open._entry, ptr @loopback_snd_timer_open._entry.13, ptr @loopback_snd_timer_open._entry_ptr, ptr @loopback_snd_timer_open._entry_ptr.15, ptr @loopback_snd_timer_start._entry, ptr @loopback_snd_timer_start._entry_ptr, ptr @loopback_snd_timer_stop._entry, ptr @loopback_snd_timer_stop._entry_ptr, ptr @index, ptr @id, ptr @enable, ptr @pcm_substreams, ptr @pcm_notify, ptr @timer_source, ptr @devices, ptr @loopback_driver, ptr @.str, ptr @loopback_pm, ptr @loopback_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @loopback_pcm_ops, ptr @loopback_open.__key, ptr @.str.6, ptr @loopback_pcm_hardware, ptr @loopback_snd_timer_ops, ptr @loopback_jiffies_timer_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @loopback_snd_timer_open.__key, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @loopback_jiffies_timer_open.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @loopback_controls, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_substreams to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_notify to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_source to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_snd_timer_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_jiffies_timer_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_snd_timer_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_snd_timer_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_snd_timer_open._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_snd_timer_check_resolution._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_snd_timer_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_snd_timer_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_jiffies_timer_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_card_loopback_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @loopback_unregister_all()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @loopback_unregister_all() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #14
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @loopback_driver) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_card_loopback_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @loopback_driver, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup17_crit_edge, label %for.cond.preheader

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup17

for.cond.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %cards.031 = phi i32 [ 0, %for.cond.preheader ], [ %cards.1, %cleanup.for.body_crit_edge ]
  %i.029 = phi i32 [ 0, %for.cond.preheader ], [ %inc13, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %i.029
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #14
  %3 = call ptr @memset(ptr %0, i32 255, i32 48)
  %4 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %5 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fwnode.i.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 8
  %7 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name2.i.i, align 4
  %8 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.029, ptr %id3.i.i, align 8
  %9 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %dma_mask.i.i, align 8
  %10 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %properties.i.i, align 8
  %11 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #14
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  call void @platform_device_unregister(ptr noundef %call.i.i) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx12 = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.029
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %arrayidx12, align 4
  %inc = add i32 %cards.031, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.end3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %cards.1 = phi i32 [ %inc, %if.end11 ], [ %cards.031, %if.then10 ], [ %cards.031, %for.body.cleanup_crit_edge ], [ %cards.031, %if.end3.cleanup_crit_edge ]
  %inc13 = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc13, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cards.1)
  %tobool14.not = icmp eq i32 %cards.1, 0
  br i1 %tobool14.not, label %if.then15, label %for.end.cleanup17_crit_edge

for.end.cleanup17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup17

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @loopback_unregister_all()
  br label %cleanup17

cleanup17:                                        ; preds = %if.then15, %for.end.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.0 = phi i32 [ -19, %if.then15 ], [ %call, %entry.cleanup17_crit_edge ], [ 0, %for.end.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_probe(ptr noundef %devptr) #1 align 64 {
entry:
  %name.i77 = alloca [32 x i8], align 1
  %name.i = alloca [32 x i8], align 1
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #14
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !212
  %id = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3
  %arrayidx = getelementptr [32 x i32], ptr @index, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev1, i32 noundef %4, ptr noundef %6, ptr noundef null, i32 noundef 4588, ptr noundef nonnull %card) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 8
  %arrayidx3 = getelementptr [32 x i32], ptr @pcm_substreams, i32 0, i32 %2
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp4 = icmp slt i32 %12, 1
  br i1 %cmp4, label %if.end.if.end12.sink.split_crit_edge, label %if.end7

if.end.if.end12.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.sink.split

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp9 = icmp ugt i32 %12, 8
  br i1 %cmp9, label %if.end7.if.end12.sink.split_crit_edge, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end7.if.end12.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.end7.if.end12.sink.split_crit_edge, %if.end.if.end12.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end.if.end12.sink.split_crit_edge ], [ 8, %if.end7.if.end12.sink.split_crit_edge ]
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %arrayidx3, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.end7.if.end12_crit_edge
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %10, align 4
  %arrayidx14 = getelementptr [32 x ptr], ptr @timer_source, i32 0, i32 %2
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14, align 4
  %timer_source.i = getelementptr inbounds %struct.loopback, ptr %10, i32 0, i32 5
  %17 = ptrtoint ptr %timer_source.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %timer_source.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end12.if.end.i_crit_edge, label %if.then.i

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  call void @devm_kfree(ptr noundef %20, ptr noundef nonnull %18) #14
  %21 = ptrtoint ptr %timer_source.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %timer_source.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end12.if.end.i_crit_edge
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %if.end.i.loopback_set_timer_source.exit_crit_edge, label %land.lhs.true.i

if.end.i.loopback_set_timer_source.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %loopback_set_timer_source.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not.i = icmp eq i8 %23, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.loopback_set_timer_source.exit_crit_edge, label %if.then5.i

land.lhs.true.i.loopback_set_timer_source.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %loopback_set_timer_source.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 4
  %dev7.i = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev7.i, align 8
  %call.i = call noalias ptr @devm_kstrdup(ptr noundef %27, ptr noundef nonnull %16, i32 noundef 3264) #14
  %28 = ptrtoint ptr %timer_source.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %timer_source.i, align 4
  br label %loopback_set_timer_source.exit

loopback_set_timer_source.exit:                   ; preds = %if.then5.i, %land.lhs.true.i.loopback_set_timer_source.exit_crit_edge, %if.end.i.loopback_set_timer_source.exit_crit_edge
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %10, i32 0, i32 1
  call void @__mutex_init(ptr noundef %cable_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @loopback_probe.__key) #14
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3, align 4
  %call16 = call fastcc i32 @loopback_pcm_new(ptr noundef %10, i32 noundef 0, i32 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %loopback_set_timer_source.exit.cleanup_crit_edge, label %if.end19

loopback_set_timer_source.exit.cleanup_crit_edge: ; preds = %loopback_set_timer_source.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %loopback_set_timer_source.exit
  %31 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3, align 4
  %call21 = call fastcc i32 @loopback_pcm_new(ptr noundef %10, i32 noundef 1, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %arrayidx25 = getelementptr [32 x i32], ptr @pcm_notify, i32 0, i32 %2
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.not = icmp eq i32 %34, 0
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %10, align 4
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 6
  %37 = call ptr @memcpy(ptr %mixername.i, ptr @.str.34, i32 15)
  %bf.shl.i = select i1 %tobool.not.not, i8 0, i8 -128
  %arrayidx.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 3, i32 0
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %substream_count.i = getelementptr %struct.snd_pcm, ptr %39, i32 0, i32 8, i32 1, i32 2
  %40 = ptrtoint ptr %substream_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %substream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp573.i = icmp sgt i32 %41, 0
  br i1 %cmp573.i, label %if.end24.for.body6.i_crit_edge, label %if.end24.for.inc30.i_crit_edge

if.end24.for.inc30.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc30.i

if.end24.for.body6.i_crit_edge:                   ; preds = %if.end24
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc27.i.for.body6.i_crit_edge, %if.end24.for.body6.i_crit_edge
  %substr.074.i = phi i32 [ %inc28.i, %for.inc27.i.for.body6.i_crit_edge ], [ 0, %if.end24.for.body6.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0
  %42 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %arrayidx9.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %arrayidx9.i, align 4
  %rate_shift.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0, i32 1
  %43 = ptrtoint ptr %rate_shift.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 100000, ptr %rate_shift.i, align 4
  %format.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0, i32 2
  %44 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %format.i, align 4
  %rate.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0, i32 3
  %45 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 48000, ptr %rate.i, align 4
  %channels.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0, i32 4
  %46 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %channels.i, align 4
  %channels_id.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0, i32 8
  %rate_id.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0, i32 7
  %format_id.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0, i32 6
  %active_id.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.i, i32 0, i32 5
  %call14.i86 = call ptr @snd_ctl_new1(ptr noundef nonnull @loopback_controls, ptr noundef %10) #14
  %tobool.not.i7487 = icmp eq ptr %call14.i86, null
  br i1 %tobool.not.i7487, label %for.body6.i.cleanup_crit_edge, label %if.end.i75.preheader

for.body6.i.cleanup_crit_edge:                    ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i75.preheader:                             ; preds = %for.body6.i
  %device.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i86, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %device.i, align 4
  %subdevice.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i86, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %substr.074.i, ptr %subdevice.i, align 4
  %call16.i = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.i86) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end.i75.preheader.cleanup_crit_edge, label %for.inc.i

if.end.i75.preheader.cleanup_crit_edge:           ; preds = %if.end.i75.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i75.preheader
  %call14.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 1), ptr noundef %10) #14
  %tobool.not.i74 = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i74, label %for.inc.i.cleanup_crit_edge, label %if.end.i75.1

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i75.1:                                     ; preds = %for.inc.i
  %device.i.1 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %device.i.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %device.i.1, align 4
  %subdevice.i.1 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %subdevice.i.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %substr.074.i, ptr %subdevice.i.1, align 4
  %call16.i.1 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %cmp17.i.1 = icmp slt i32 %call16.i.1, 0
  br i1 %cmp17.i.1, label %if.end.i75.1.cleanup_crit_edge, label %for.inc.i.1

if.end.i75.1.cleanup_crit_edge:                   ; preds = %if.end.i75.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i.1:                                      ; preds = %if.end.i75.1
  %call14.i.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 2), ptr noundef %10) #14
  %tobool.not.i74.1 = icmp eq ptr %call14.i.1, null
  br i1 %tobool.not.i74.1, label %for.inc.i.1.cleanup_crit_edge, label %if.end.i75.2

for.inc.i.1.cleanup_crit_edge:                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i75.2:                                     ; preds = %for.inc.i.1
  %device.i.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.1, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %device.i.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %device.i.2, align 4
  %subdevice.i.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.1, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %subdevice.i.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %substr.074.i, ptr %subdevice.i.2, align 4
  %call16.i.2 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.i.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.2)
  %cmp17.i.2 = icmp slt i32 %call16.i.2, 0
  br i1 %cmp17.i.2, label %if.end.i75.2.cleanup_crit_edge, label %for.inc.i.2

if.end.i75.2.cleanup_crit_edge:                   ; preds = %if.end.i75.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i.2:                                      ; preds = %if.end.i75.2
  %id.i.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.1, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %active_id.i, ptr %id.i.2, i32 64)
  %call14.i.2 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 3), ptr noundef %10) #14
  %tobool.not.i74.2 = icmp eq ptr %call14.i.2, null
  br i1 %tobool.not.i74.2, label %for.inc.i.2.cleanup_crit_edge, label %if.end.i75.3

for.inc.i.2.cleanup_crit_edge:                    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i75.3:                                     ; preds = %for.inc.i.2
  %device.i.3 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.2, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %device.i.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %device.i.3, align 4
  %subdevice.i.3 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.2, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %subdevice.i.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %substr.074.i, ptr %subdevice.i.3, align 4
  %call16.i.3 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.i.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.3)
  %cmp17.i.3 = icmp slt i32 %call16.i.3, 0
  br i1 %cmp17.i.3, label %if.end.i75.3.cleanup_crit_edge, label %for.inc.i.3

if.end.i75.3.cleanup_crit_edge:                   ; preds = %if.end.i75.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i.3:                                      ; preds = %if.end.i75.3
  %id.i.3 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.2, i32 0, i32 1
  %56 = call ptr @memcpy(ptr %format_id.i, ptr %id.i.3, i32 64)
  %call14.i.3 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 4), ptr noundef %10) #14
  %tobool.not.i74.3 = icmp eq ptr %call14.i.3, null
  br i1 %tobool.not.i74.3, label %for.inc.i.3.cleanup_crit_edge, label %if.end.i75.4

for.inc.i.3.cleanup_crit_edge:                    ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i75.4:                                     ; preds = %for.inc.i.3
  %device.i.4 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.3, i32 0, i32 1, i32 2
  %57 = ptrtoint ptr %device.i.4 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %device.i.4, align 4
  %subdevice.i.4 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.3, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %subdevice.i.4 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %substr.074.i, ptr %subdevice.i.4, align 4
  %call16.i.4 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.i.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.4)
  %cmp17.i.4 = icmp slt i32 %call16.i.4, 0
  br i1 %cmp17.i.4, label %if.end.i75.4.cleanup_crit_edge, label %for.inc.i.4

if.end.i75.4.cleanup_crit_edge:                   ; preds = %if.end.i75.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.i.4:                                      ; preds = %if.end.i75.4
  %id.i.4 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.3, i32 0, i32 1
  %59 = call ptr @memcpy(ptr %rate_id.i, ptr %id.i.4, i32 64)
  %call14.i.4 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 5), ptr noundef %10) #14
  %tobool.not.i74.4 = icmp eq ptr %call14.i.4, null
  br i1 %tobool.not.i74.4, label %for.inc.i.4.cleanup_crit_edge, label %if.end.i75.5

for.inc.i.4.cleanup_crit_edge:                    ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i75.5:                                     ; preds = %for.inc.i.4
  %device.i.5 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.4, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %device.i.5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %device.i.5, align 4
  %subdevice.i.5 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.4, i32 0, i32 1, i32 3
  %61 = ptrtoint ptr %subdevice.i.5 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %substr.074.i, ptr %subdevice.i.5, align 4
  %call16.i.5 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.i.4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.5)
  %cmp17.i.5 = icmp slt i32 %call16.i.5, 0
  br i1 %cmp17.i.5, label %if.end.i75.5.cleanup_crit_edge, label %for.inc27.i

if.end.i75.5.cleanup_crit_edge:                   ; preds = %if.end.i75.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc27.i:                                      ; preds = %if.end.i75.5
  %id.i.5 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.i.4, i32 0, i32 1
  %62 = call ptr @memcpy(ptr %channels_id.i, ptr %id.i.5, i32 64)
  %inc28.i = add nuw nsw i32 %substr.074.i, 1
  %exitcond78.not.i = icmp eq i32 %inc28.i, %41
  br i1 %exitcond78.not.i, label %for.inc27.i.for.inc30.i_crit_edge, label %for.inc27.i.for.body6.i_crit_edge

for.inc27.i.for.body6.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.i

for.inc27.i.for.inc30.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc27.i.for.inc30.i_crit_edge, %if.end24.for.inc30.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.1.i, align 4
  %substream_count.1.i = getelementptr %struct.snd_pcm, ptr %64, i32 0, i32 8, i32 1, i32 2
  %65 = ptrtoint ptr %substream_count.1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %substream_count.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp573.1.i = icmp sgt i32 %66, 0
  br i1 %cmp573.1.i, label %for.inc30.i.for.body6.1.i_crit_edge, label %for.inc30.i.if.end29_crit_edge

for.inc30.i.if.end29_crit_edge:                   ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

for.inc30.i.for.body6.1.i_crit_edge:              ; preds = %for.inc30.i
  br label %for.body6.1.i

for.body6.1.i:                                    ; preds = %for.inc27.1.i.for.body6.1.i_crit_edge, %for.inc30.i.for.body6.1.i_crit_edge
  %substr.074.1.i = phi i32 [ %inc28.1.i, %for.inc27.1.i.for.body6.1.i_crit_edge ], [ 0, %for.inc30.i.for.body6.1.i_crit_edge ]
  %arrayidx9.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1
  %67 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.1.i = load i8, ptr %arrayidx9.1.i, align 4
  %bf.clear.1.i = and i8 %bf.load.1.i, 127
  %bf.set.1.i = or i8 %bf.clear.1.i, %bf.shl.i
  store i8 %bf.set.1.i, ptr %arrayidx9.1.i, align 4
  %rate_shift.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1, i32 1
  %68 = ptrtoint ptr %rate_shift.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 100000, ptr %rate_shift.1.i, align 4
  %format.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1, i32 2
  %69 = ptrtoint ptr %format.1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %format.1.i, align 4
  %rate.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1, i32 3
  %70 = ptrtoint ptr %rate.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 48000, ptr %rate.1.i, align 4
  %channels.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1, i32 4
  %71 = ptrtoint ptr %channels.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %channels.1.i, align 4
  %channels_id.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1, i32 8
  %rate_id.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1, i32 7
  %format_id.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1, i32 6
  %active_id.1.i = getelementptr %struct.loopback, ptr %10, i32 0, i32 4, i32 %substr.074.1.i, i32 1, i32 5
  %call14.1.i92 = call ptr @snd_ctl_new1(ptr noundef nonnull @loopback_controls, ptr noundef %10) #14
  %tobool.not.1.i93 = icmp eq ptr %call14.1.i92, null
  br i1 %tobool.not.1.i93, label %for.body6.1.i.cleanup_crit_edge, label %if.end.1.i.preheader

for.body6.1.i.cleanup_crit_edge:                  ; preds = %for.body6.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1.i.preheader:                             ; preds = %for.body6.1.i
  %device.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i92, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %device.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %device.1.i, align 4
  %subdevice.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i92, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %subdevice.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %substr.074.1.i, ptr %subdevice.1.i, align 4
  %call16.1.i = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.1.i92) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i)
  %cmp17.1.i = icmp slt i32 %call16.1.i, 0
  br i1 %cmp17.1.i, label %if.end.1.i.preheader.cleanup_crit_edge, label %for.inc.1.i

if.end.1.i.preheader.cleanup_crit_edge:           ; preds = %if.end.1.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.1.i:                                      ; preds = %if.end.1.i.preheader
  %call14.1.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 1), ptr noundef %10) #14
  %tobool.not.1.i = icmp eq ptr %call14.1.i, null
  br i1 %tobool.not.1.i, label %for.inc.1.i.cleanup_crit_edge, label %if.end.1.i.1

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1.i.1:                                     ; preds = %for.inc.1.i
  %device.1.i.1 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %device.1.i.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %device.1.i.1, align 4
  %subdevice.1.i.1 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i, i32 0, i32 1, i32 3
  %75 = ptrtoint ptr %subdevice.1.i.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %substr.074.1.i, ptr %subdevice.1.i.1, align 4
  %call16.1.i.1 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.1.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i.1)
  %cmp17.1.i.1 = icmp slt i32 %call16.1.i.1, 0
  br i1 %cmp17.1.i.1, label %if.end.1.i.1.cleanup_crit_edge, label %for.inc.1.i.1

if.end.1.i.1.cleanup_crit_edge:                   ; preds = %if.end.1.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.1.i.1:                                    ; preds = %if.end.1.i.1
  %call14.1.i.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 2), ptr noundef %10) #14
  %tobool.not.1.i.1 = icmp eq ptr %call14.1.i.1, null
  br i1 %tobool.not.1.i.1, label %for.inc.1.i.1.cleanup_crit_edge, label %if.end.1.i.2

for.inc.1.i.1.cleanup_crit_edge:                  ; preds = %for.inc.1.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1.i.2:                                     ; preds = %for.inc.1.i.1
  %device.1.i.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.1, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %device.1.i.2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %device.1.i.2, align 4
  %subdevice.1.i.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.1, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %subdevice.1.i.2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %substr.074.1.i, ptr %subdevice.1.i.2, align 4
  %call16.1.i.2 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.1.i.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i.2)
  %cmp17.1.i.2 = icmp slt i32 %call16.1.i.2, 0
  br i1 %cmp17.1.i.2, label %if.end.1.i.2.cleanup_crit_edge, label %for.inc.1.i.2

if.end.1.i.2.cleanup_crit_edge:                   ; preds = %if.end.1.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.1.i.2:                                    ; preds = %if.end.1.i.2
  %id.1.i.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.1, i32 0, i32 1
  %78 = call ptr @memcpy(ptr %active_id.1.i, ptr %id.1.i.2, i32 64)
  %call14.1.i.2 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 3), ptr noundef %10) #14
  %tobool.not.1.i.2 = icmp eq ptr %call14.1.i.2, null
  br i1 %tobool.not.1.i.2, label %for.inc.1.i.2.cleanup_crit_edge, label %if.end.1.i.3

for.inc.1.i.2.cleanup_crit_edge:                  ; preds = %for.inc.1.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1.i.3:                                     ; preds = %for.inc.1.i.2
  %device.1.i.3 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.2, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %device.1.i.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %device.1.i.3, align 4
  %subdevice.1.i.3 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.2, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %subdevice.1.i.3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %substr.074.1.i, ptr %subdevice.1.i.3, align 4
  %call16.1.i.3 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.1.i.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i.3)
  %cmp17.1.i.3 = icmp slt i32 %call16.1.i.3, 0
  br i1 %cmp17.1.i.3, label %if.end.1.i.3.cleanup_crit_edge, label %for.inc.1.i.3

if.end.1.i.3.cleanup_crit_edge:                   ; preds = %if.end.1.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.1.i.3:                                    ; preds = %if.end.1.i.3
  %id.1.i.3 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.2, i32 0, i32 1
  %81 = call ptr @memcpy(ptr %format_id.1.i, ptr %id.1.i.3, i32 64)
  %call14.1.i.3 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 4), ptr noundef %10) #14
  %tobool.not.1.i.3 = icmp eq ptr %call14.1.i.3, null
  br i1 %tobool.not.1.i.3, label %for.inc.1.i.3.cleanup_crit_edge, label %if.end.1.i.4

for.inc.1.i.3.cleanup_crit_edge:                  ; preds = %for.inc.1.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1.i.4:                                     ; preds = %for.inc.1.i.3
  %device.1.i.4 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.3, i32 0, i32 1, i32 2
  %82 = ptrtoint ptr %device.1.i.4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %device.1.i.4, align 4
  %subdevice.1.i.4 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.3, i32 0, i32 1, i32 3
  %83 = ptrtoint ptr %subdevice.1.i.4 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %substr.074.1.i, ptr %subdevice.1.i.4, align 4
  %call16.1.i.4 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.1.i.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i.4)
  %cmp17.1.i.4 = icmp slt i32 %call16.1.i.4, 0
  br i1 %cmp17.1.i.4, label %if.end.1.i.4.cleanup_crit_edge, label %for.inc.1.i.4

if.end.1.i.4.cleanup_crit_edge:                   ; preds = %if.end.1.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.1.i.4:                                    ; preds = %if.end.1.i.4
  %id.1.i.4 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.3, i32 0, i32 1
  %84 = call ptr @memcpy(ptr %rate_id.1.i, ptr %id.1.i.4, i32 64)
  %call14.1.i.4 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @loopback_controls, i32 0, i32 5), ptr noundef %10) #14
  %tobool.not.1.i.4 = icmp eq ptr %call14.1.i.4, null
  br i1 %tobool.not.1.i.4, label %for.inc.1.i.4.cleanup_crit_edge, label %if.end.1.i.5

for.inc.1.i.4.cleanup_crit_edge:                  ; preds = %for.inc.1.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1.i.5:                                     ; preds = %for.inc.1.i.4
  %device.1.i.5 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.4, i32 0, i32 1, i32 2
  %85 = ptrtoint ptr %device.1.i.5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %device.1.i.5, align 4
  %subdevice.1.i.5 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.4, i32 0, i32 1, i32 3
  %86 = ptrtoint ptr %subdevice.1.i.5 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %substr.074.1.i, ptr %subdevice.1.i.5, align 4
  %call16.1.i.5 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call14.1.i.4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i.5)
  %cmp17.1.i.5 = icmp slt i32 %call16.1.i.5, 0
  br i1 %cmp17.1.i.5, label %if.end.1.i.5.cleanup_crit_edge, label %for.inc27.1.i

if.end.1.i.5.cleanup_crit_edge:                   ; preds = %if.end.1.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc27.1.i:                                    ; preds = %if.end.1.i.5
  %id.1.i.5 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14.1.i.4, i32 0, i32 1
  %87 = call ptr @memcpy(ptr %channels_id.1.i, ptr %id.1.i.5, i32 64)
  %inc28.1.i = add nuw nsw i32 %substr.074.1.i, 1
  %exitcond78.1.not.i = icmp eq i32 %inc28.1.i, %66
  br i1 %exitcond78.1.not.i, label %for.inc27.1.i.if.end29_crit_edge, label %for.inc27.1.i.for.body6.1.i_crit_edge

for.inc27.1.i.for.body6.1.i_crit_edge:            ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.1.i

for.inc27.1.i.if.end29_crit_edge:                 ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end29:                                         ; preds = %for.inc27.1.i.if.end29_crit_edge, %for.inc30.i.if.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #14
  %88 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %call.i76 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.41, i32 noundef 0) #14
  %89 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %10, align 4
  %call.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %90, ptr noundef nonnull %name.i, ptr noundef %10, ptr noundef nonnull @print_cable_info, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i77) #14
  %91 = call ptr @memset(ptr %name.i77, i32 255, i32 32)
  %call.i78 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i77, i32 noundef 32, ptr noundef nonnull @.str.41, i32 noundef 1) #14
  %92 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %10, align 4
  %call.i.i79 = call i32 @snd_card_rw_proc_new(ptr noundef %93, ptr noundef nonnull %name.i77, ptr noundef %10, ptr noundef nonnull @print_cable_info, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i77) #14
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %10, align 4
  %call.i80 = call i32 @snd_card_rw_proc_new(ptr noundef %95, ptr noundef nonnull @.str.58, ptr noundef %10, ptr noundef nonnull @print_timer_source_info, ptr noundef nonnull @change_timer_source_info) #14
  %96 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %97, i32 0, i32 2
  %98 = call ptr @memcpy(ptr %driver, ptr @.str.3, i32 9)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %97, i32 0, i32 3
  %99 = call ptr @memcpy(ptr %shortname, ptr @.str.3, i32 9)
  %longname = getelementptr inbounds %struct.snd_card, ptr %97, i32 0, i32 4
  %add = add i32 %2, 1
  %call37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.4, i32 noundef %add)
  %100 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %card, align 4
  %call38 = call i32 @snd_card_register(ptr noundef %101) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end29.cleanup_crit_edge, label %if.end41

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %102 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3, i32 8
  %104 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end29.cleanup_crit_edge, %if.end.1.i.5.cleanup_crit_edge, %for.inc.1.i.4.cleanup_crit_edge, %if.end.1.i.4.cleanup_crit_edge, %for.inc.1.i.3.cleanup_crit_edge, %if.end.1.i.3.cleanup_crit_edge, %for.inc.1.i.2.cleanup_crit_edge, %if.end.1.i.2.cleanup_crit_edge, %for.inc.1.i.1.cleanup_crit_edge, %if.end.1.i.1.cleanup_crit_edge, %for.inc.1.i.cleanup_crit_edge, %if.end.1.i.preheader.cleanup_crit_edge, %for.body6.1.i.cleanup_crit_edge, %if.end.i75.5.cleanup_crit_edge, %for.inc.i.4.cleanup_crit_edge, %if.end.i75.4.cleanup_crit_edge, %for.inc.i.3.cleanup_crit_edge, %if.end.i75.3.cleanup_crit_edge, %for.inc.i.2.cleanup_crit_edge, %if.end.i75.2.cleanup_crit_edge, %for.inc.i.1.cleanup_crit_edge, %if.end.i75.1.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.i75.preheader.cleanup_crit_edge, %for.body6.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %loopback_set_timer_source.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call, %entry.cleanup_crit_edge ], [ %call16, %loopback_set_timer_source.exit.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %call38, %if.end29.cleanup_crit_edge ], [ -12, %for.body6.1.i.cleanup_crit_edge ], [ %call16.1.i, %if.end.1.i.preheader.cleanup_crit_edge ], [ -12, %for.inc.1.i.cleanup_crit_edge ], [ %call16.1.i.1, %if.end.1.i.1.cleanup_crit_edge ], [ -12, %for.inc.1.i.1.cleanup_crit_edge ], [ %call16.1.i.2, %if.end.1.i.2.cleanup_crit_edge ], [ -12, %for.inc.1.i.2.cleanup_crit_edge ], [ %call16.1.i.3, %if.end.1.i.3.cleanup_crit_edge ], [ -12, %for.inc.1.i.3.cleanup_crit_edge ], [ %call16.1.i.4, %if.end.1.i.4.cleanup_crit_edge ], [ -12, %for.inc.1.i.4.cleanup_crit_edge ], [ %call16.1.i.5, %if.end.1.i.5.cleanup_crit_edge ], [ -12, %for.body6.i.cleanup_crit_edge ], [ %call16.i, %if.end.i75.preheader.cleanup_crit_edge ], [ -12, %for.inc.i.cleanup_crit_edge ], [ %call16.i.1, %if.end.i75.1.cleanup_crit_edge ], [ -12, %for.inc.i.1.cleanup_crit_edge ], [ %call16.i.2, %if.end.i75.2.cleanup_crit_edge ], [ -12, %for.inc.i.2.cleanup_crit_edge ], [ %call16.i.3, %if.end.i75.3.cleanup_crit_edge ], [ -12, %for.inc.i.3.cleanup_crit_edge ], [ %call16.i.4, %if.end.i75.4.cleanup_crit_edge ], [ -12, %for.inc.i.4.cleanup_crit_edge ], [ %call16.i.5, %if.end.i75.5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @loopback_pcm_new(ptr noundef %loopback, i32 noundef %device, i32 noundef %substreams) unnamed_addr #1 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #14
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !212
  %1 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %loopback, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %device, i32 noundef %substreams, i32 noundef %substreams, ptr noundef nonnull %pcm) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @loopback_pcm_ops) #14
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @loopback_pcm_ops) #14
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  %call1 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %8, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #14
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %loopback, ptr %private_data, align 8
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %name, ptr @.str.5, i32 13)
  %arrayidx = getelementptr %struct.loopback, ptr %loopback, i32 0, i32 3, i32 %device
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_open(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %device.i = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  %retval.0.i = select i1 %tobool.not.i, i32 %9, i32 %lnot.ext.i
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 108) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.then65_crit_edge, label %if.end

entry.if.then65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %call7.i.i, align 8
  %substream4 = getelementptr inbounds %struct.loopback_pcm, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %substream4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %substream, ptr %substream4, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  %arrayidx5 = getelementptr %struct.loopback, ptr %3, i32 0, i32 2, i32 %14, i32 %retval.0.i
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then7:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i122 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 208) #17
  %tobool9.not = icmp eq ptr %call7.i.i122, null
  br i1 %tobool9.not, label %if.then7.if.then65_crit_edge, label %do.body

if.then7.if.then65_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

do.body:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i122, ptr noundef nonnull @.str.6, ptr noundef nonnull @loopback_open.__key, i16 noundef signext 3) #14
  %hw = getelementptr inbounds %struct.loopback_cable, ptr %call7.i.i122, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %hw, ptr @loopback_pcm_hardware, i32 64)
  %timer_source = getelementptr inbounds %struct.loopback, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %timer_source to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timer_source, align 4
  %tobool13.not = icmp eq ptr %20, null
  %spec.select = select i1 %tobool13.not, ptr @loopback_jiffies_timer_ops, ptr @loopback_snd_timer_ops
  %21 = getelementptr inbounds %struct.loopback_cable, ptr %call7.i.i122, i32 0, i32 6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.select, ptr %21, align 4
  %23 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number, align 4
  %arrayidx20 = getelementptr %struct.loopback, ptr %3, i32 0, i32 2, i32 %24, i32 %retval.0.i
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i122, ptr %arrayidx20, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.body, %if.end.if.end21_crit_edge
  %cable.0 = phi ptr [ %16, %if.end.if.end21_crit_edge ], [ %call7.i.i122, %do.body ]
  %cable22 = getelementptr inbounds %struct.loopback_pcm, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %cable22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cable.0, ptr %cable22, align 8
  %private_data23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %27 = ptrtoint ptr %private_data23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %private_data23, align 8
  %ops24 = getelementptr inbounds %struct.loopback_cable, ptr %cable.0, i32 0, i32 6
  %28 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops24, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool25.not = icmp eq ptr %31, null
  br i1 %tobool25.not, label %if.end21.if.end32_crit_edge, label %if.then26

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then26:                                        ; preds = %if.end21
  %call29 = tail call i32 %31(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.then26.if.then65_crit_edge, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then26.if.then65_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %call33 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #14
  %call34 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @rule_format, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end32.if.then65_crit_edge, label %if.end37

if.end32.if.then65_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.end37:                                         ; preds = %if.end32
  %call38 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @rule_rate, ptr noundef nonnull %call7.i.i, i32 noundef 11, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.if.then65_crit_edge, label %if.end41

if.end37.if.then65_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %1, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @rule_channels, ptr noundef nonnull %call7.i.i, i32 noundef 10, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.if.then65_crit_edge, label %if.end45

if.end41.if.then65_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.end45:                                         ; preds = %if.end41
  %instance = getelementptr inbounds %struct.loopback_cable, ptr %cable.0, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %instance, align 4
  %tobool46.not = icmp eq ptr %33, null
  br i1 %tobool46.not, label %if.end45.if.end52_crit_edge, label %if.then47

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then47:                                        ; preds = %if.end45
  %call48 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %1, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @rule_period_bytes, ptr noundef nonnull %call7.i.i, i32 noundef 14, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then47.if.then65_crit_edge, label %if.then47.if.end52_crit_edge

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then47.if.then65_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %if.end45.if.end52_crit_edge
  %err.0 = phi i32 [ %call48, %if.then47.if.end52_crit_edge ], [ %call42, %if.end45.if.end52_crit_edge ]
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 45
  %34 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @loopback_runtime_free, ptr %private_free, align 4
  %35 = ptrtoint ptr %substream4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %substream4, align 4
  %pstr.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %pstr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pstr.i.i, align 4
  %pcm.i.i = getelementptr inbounds %struct.snd_pcm_str, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcm.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.snd_pcm, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %device1.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %36, i32 0, i32 5
  %43 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 0
  %xor.i.i = zext i1 %cmp.i.i to i32
  %spec.select.i.i = xor i32 %42, %xor.i.i
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %number.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %36, i32 0, i32 3
  %47 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %number.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.loopback, ptr %46, i32 0, i32 4, i32 %48, i32 %spec.select.i.i
  %49 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i = load i8, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool54.not = icmp sgt i8 %bf.load.i, -1
  %hw58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  br i1 %tobool54.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %50 = call ptr @memcpy(ptr %hw58, ptr @loopback_pcm_hardware, i32 64)
  br label %unlock

if.else57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %hw59 = getelementptr inbounds %struct.loopback_cable, ptr %cable.0, i32 0, i32 2
  %51 = call ptr @memcpy(ptr %hw58, ptr %hw59, i32 64)
  br label %unlock

unlock:                                           ; preds = %if.else57, %if.then55
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %cable.0) #14
  %52 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stream.i, align 4
  %arrayidx62 = getelementptr %struct.loopback_cable, ptr %cable.0, i32 0, i32 1, i32 %53
  %54 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %arrayidx62, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull %cable.0) #14
  br label %if.end66

if.then65:                                        ; preds = %if.then47.if.then65_crit_edge, %if.end41.if.then65_crit_edge, %if.end37.if.then65_crit_edge, %if.end32.if.then65_crit_edge, %if.then26.if.then65_crit_edge, %if.then7.if.then65_crit_edge, %entry.if.then65_crit_edge
  %err.1.ph = phi i32 [ -12, %if.then7.if.then65_crit_edge ], [ -12, %entry.if.then65_crit_edge ], [ %call48, %if.then47.if.then65_crit_edge ], [ %call42, %if.end41.if.then65_crit_edge ], [ %call38, %if.end37.if.then65_crit_edge ], [ %call34, %if.end32.if.then65_crit_edge ], [ %call29, %if.then26.if.then65_crit_edge ]
  tail call fastcc void @free_cable(ptr noundef %substream)
  tail call void @kfree(ptr noundef %call7.i.i) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %unlock
  %err.1125 = phi i32 [ %err.1.ph, %if.then65 ], [ %err.0, %unlock ]
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret i32 %err.1125
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_close(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %cable = getelementptr inbounds %struct.loopback_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cable, align 4
  %ops = getelementptr inbounds %struct.loopback_cable, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %close_substream = getelementptr inbounds %struct.loopback_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %close_substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %close_substream, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %11(ptr noundef %5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  tail call fastcc void @free_cable(ptr noundef %substream)
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_hw_free(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cable2 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cable2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cable2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %9
  %neg = xor i32 %shl, -1
  %valid = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %valid, align 8
  %and = and i32 %11, %neg
  store i32 %and, ptr %valid, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %cable_lock4 = getelementptr inbounds %struct.loopback, ptr %13, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %cable_lock4) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_prepare(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cable2 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cable2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cable2, align 4
  %ops = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %stop_sync = getelementptr inbounds %struct.loopback_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %stop_sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop_sync, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 %9(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  %call7 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %11) #14
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 8
  %mul = mul i32 %13, %call7
  %div80 = lshr i32 %mul, 3
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate, align 4
  %mul8 = mul i32 %div80, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul8)
  %cmp9 = icmp slt i32 %mul8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul)
  %cmp10 = icmp ult i32 %mul, 8
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %buf_pos = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %buf_pos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buf_pos, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %20, %18
  %div1.i = lshr i32 %mul.i, 3
  %pcm_buffer_size = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %pcm_buffer_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div1.i, ptr %pcm_buffer_size, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp14 = icmp eq i32 %23, 1
  br i1 %cmp14, label %if.then15, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %silent_size = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %silent_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div1.i, ptr %silent_size, align 4
  %25 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %27 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_area, align 4
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size, align 4
  %31 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channels, align 8
  %mul20 = mul i32 %32, %30
  %call21 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %26, ptr noundef %28, i32 noundef %mul20) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.end12.if.end22_crit_edge
  %irq_pos = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %irq_pos to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %irq_pos, align 4
  %period_update_pending = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 10
  %34 = ptrtoint ptr %period_update_pending to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %period_update_pending, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %period_update_pending, align 4
  %pcm_bps = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %pcm_bps to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul8, ptr %pcm_bps, align 4
  %pcm_salign = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 8
  %36 = ptrtoint ptr %pcm_salign to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div80, ptr %pcm_salign, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %period_size, align 4
  %39 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %frame_bits.i, align 8
  %mul.i82 = mul i32 %40, %38
  %div1.i83 = lshr i32 %mul.i82, 3
  %pcm_period_size = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %pcm_period_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div1.i83, ptr %pcm_period_size, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %43, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %valid = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 3
  %44 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %valid, align 8
  %46 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %47
  %neg = xor i32 %shl, -1
  %and = and i32 %45, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end22.if.then32_crit_edge, label %lor.lhs.false26

if.end22.if.then32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32

lor.lhs.false26:                                  ; preds = %if.end22
  %substream.i = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %substream.i, align 4
  %pstr.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pstr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pstr.i, align 4
  %pcm.i = getelementptr inbounds %struct.snd_pcm_str, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcm.i, align 4
  %device1.i = getelementptr inbounds %struct.snd_pcm, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %device1.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %49, i32 0, i32 5
  %56 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i = icmp eq i32 %57, 0
  %xor.i = zext i1 %cmp.i to i32
  %spec.select.i = xor i32 %55, %xor.i
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 4
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %49, i32 0, i32 3
  %60 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %number.i, align 4
  %arrayidx4.i = getelementptr %struct.loopback, ptr %59, i32 0, i32 4, i32 %61, i32 %spec.select.i
  %62 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load28 = load i8, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load28)
  %tobool29.not = icmp slt i8 %bf.load28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp31 = icmp eq i32 %47, 0
  %or.cond84 = select i1 %tobool29.not, i1 %cmp31, i1 false
  br i1 %or.cond84, label %lor.lhs.false26.if.then32_crit_edge, label %lor.lhs.false26.if.end33_crit_edge

lor.lhs.false26.if.end33_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

lor.lhs.false26.if.then32_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false26.if.then32_crit_edge, %if.end22.if.then32_crit_edge
  %63 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %runtime1, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %64, i32 0, i32 44
  %65 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %private_data.i, align 8
  %cable2.i = getelementptr inbounds %struct.loopback_pcm, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %cable2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cable2.i, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %64, i32 0, i32 12
  %69 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %format.i, align 4
  %sh_prom.i.i = zext i32 %70 to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %formats.i = getelementptr inbounds %struct.loopback_cable, ptr %68, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %formats.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %shl.i.i, ptr %formats.i, align 8
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %64, i32 0, i32 14
  %72 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rate.i, align 4
  %rate_min.i = getelementptr inbounds %struct.loopback_cable, ptr %68, i32 0, i32 2, i32 3
  %74 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rate_min.i, align 4
  %75 = load i32, ptr %rate.i, align 4
  %rate_max.i = getelementptr inbounds %struct.loopback_cable, ptr %68, i32 0, i32 2, i32 4
  %76 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rate_max.i, align 8
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %64, i32 0, i32 15
  %77 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %channels.i, align 8
  %channels_min.i = getelementptr inbounds %struct.loopback_cable, ptr %68, i32 0, i32 2, i32 5
  %79 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %channels_min.i, align 4
  %80 = load i32, ptr %channels.i, align 8
  %channels_max.i = getelementptr inbounds %struct.loopback_cable, ptr %68, i32 0, i32 2, i32 6
  %81 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %channels_max.i, align 8
  %instance.i = getelementptr inbounds %struct.loopback_cable, ptr %68, i32 0, i32 7, i32 3
  %82 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %instance.i, align 4
  %tobool.not.i = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %if.then32.if.end33_crit_edge, label %if.then.i

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %64, i32 0, i32 16
  %84 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %64, i32 0, i32 21
  %86 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %87, %85
  %div1.i.i = lshr i32 %mul.i.i, 3
  %period_bytes_min.i = getelementptr inbounds %struct.loopback_cable, ptr %68, i32 0, i32 2, i32 8
  %88 = ptrtoint ptr %period_bytes_min.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %div1.i.i, ptr %period_bytes_min.i, align 8
  %period_bytes_max.i = getelementptr inbounds %struct.loopback_cable, ptr %68, i32 0, i32 2, i32 9
  %89 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div1.i.i, ptr %period_bytes_max.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then.i, %if.then32.if.end33_crit_edge, %lor.lhs.false26.if.end33_crit_edge
  %90 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %stream, align 4
  %shl35 = shl nuw i32 1, %91
  %92 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %valid, align 8
  %or = or i32 %93, %shl35
  store i32 %or, ptr %valid, align 8
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 4
  %cable_lock38 = getelementptr inbounds %struct.loopback, ptr %95, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %cable_lock38) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call, %if.then.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cable2 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cable2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cable2, align 4
  %stream3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream3, align 4
  %shl = shl nuw i32 1, %7
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb11
    i32 3, label %entry.sw.bb26_crit_edge
    i32 5, label %entry.sw.bb26_crit_edge149
    i32 4, label %entry.sw.bb38_crit_edge
    i32 6, label %entry.sw.bb38_crit_edge150
  ]

entry.sw.bb38_crit_edge150:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

entry.sw.bb38_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

entry.sw.bb26_crit_edge149:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb26

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %valid.i = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %valid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 3
  br i1 %cmp.not.i, label %if.end3.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %if.then.i.__notify.i_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.__notify.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__notify.i

if.end3.i:                                        ; preds = %sw.bb
  %streams.i = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %streams.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %streams.i, align 4
  %substream.i = getelementptr inbounds %struct.loopback_pcm, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %substream.i, align 4
  %runtime4.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %runtime4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime4.i, align 4
  %arrayidx6.i = getelementptr %struct.loopback_cable, ptr %5, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx6.i, align 4
  %substream7.i = getelementptr inbounds %struct.loopback_pcm, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %substream7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %substream7.i, align 4
  %runtime8.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %runtime8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime8.i, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 12
  %23 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format.i, align 4
  %format9.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 12
  %25 = ptrtoint ptr %format9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp10.not.i = icmp eq i32 %24, %26
  br i1 %cmp10.not.i, label %lor.lhs.false.i, label %if.end3.i.if.end16.i_crit_edge

if.end3.i.if.end16.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 14
  %27 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate.i, align 4
  %rate11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 14
  %29 = ptrtoint ptr %rate11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp12.not.i = icmp eq i32 %28, %30
  br i1 %cmp12.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end16.i_crit_edge

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 15
  %31 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channels.i, align 8
  %channels13.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 15
  %33 = ptrtoint ptr %channels13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channels13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp14.not.i = icmp eq i32 %32, %34
  br i1 %cmp14.not.i, label %lor.rhs.i.if.end_crit_edge, label %lor.rhs.i.if.end16.i_crit_edge

lor.rhs.i.if.end16.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end16.i:                                       ; preds = %lor.rhs.i.if.end16.i_crit_edge, %lor.lhs.false.i.if.end16.i_crit_edge, %if.end3.i.if.end16.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp17.i = icmp eq i32 %7, 1
  br i1 %cmp17.i, label %if.end16.i.cleanup_crit_edge, label %if.else.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @snd_pcm_stop(ptr noundef %20, i32 noundef 5) #14
  br label %__notify.i

__notify.i:                                       ; preds = %if.else.i, %if.then.i.__notify.i_crit_edge
  %streams22.i = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 1
  %35 = ptrtoint ptr %streams22.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %streams22.i, align 4
  %substream24.i = getelementptr inbounds %struct.loopback_pcm, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %substream24.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %substream24.i, align 4
  %runtime25.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %runtime25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %runtime25.i, align 4
  %pstr.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %pstr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pstr.i.i, align 4
  %pcm.i.i = getelementptr inbounds %struct.snd_pcm_str, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcm.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.snd_pcm, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %device1.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %38, i32 0, i32 5
  %47 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i = icmp eq i32 %48, 0
  %xor.i.i = zext i1 %cmp.i.i to i32
  %spec.select.i.i = xor i32 %46, %xor.i.i
  %49 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %36, align 4
  %number.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %38, i32 0, i32 3
  %51 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %number.i.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %format32.i = getelementptr %struct.loopback, ptr %50, i32 0, i32 4, i32 %52, i32 %spec.select.i.i, i32 2
  %55 = ptrtoint ptr %format32.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %format32.i, align 4
  %format33.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %40, i32 0, i32 12
  %57 = ptrtoint ptr %format33.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %format33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp34.not.i = icmp eq i32 %56, %58
  br i1 %cmp34.not.i, label %__notify.i.if.end38.i_crit_edge, label %if.then35.i

__notify.i.if.end38.i_crit_edge:                  ; preds = %__notify.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then35.i:                                      ; preds = %__notify.i
  call void @__sanitizer_cov_trace_pc() #16
  %format_id.i = getelementptr %struct.loopback, ptr %50, i32 0, i32 4, i32 %52, i32 %spec.select.i.i, i32 6
  tail call void @snd_ctl_notify(ptr noundef %54, i32 noundef 1, ptr noundef %format_id.i) #14
  %59 = ptrtoint ptr %format33.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %format33.i, align 4
  %61 = ptrtoint ptr %format32.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %format32.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %__notify.i.if.end38.i_crit_edge
  %rate39.i = getelementptr %struct.loopback, ptr %50, i32 0, i32 4, i32 %52, i32 %spec.select.i.i, i32 3
  %62 = ptrtoint ptr %rate39.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rate39.i, align 4
  %rate40.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %40, i32 0, i32 14
  %64 = ptrtoint ptr %rate40.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rate40.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp41.not.i = icmp eq i32 %63, %65
  br i1 %cmp41.not.i, label %if.end38.i.if.end45.i_crit_edge, label %if.then42.i

if.end38.i.if.end45.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  %rate_id.i = getelementptr %struct.loopback, ptr %50, i32 0, i32 4, i32 %52, i32 %spec.select.i.i, i32 7
  tail call void @snd_ctl_notify(ptr noundef %54, i32 noundef 1, ptr noundef %rate_id.i) #14
  %66 = ptrtoint ptr %rate40.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rate40.i, align 4
  %68 = ptrtoint ptr %rate39.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %rate39.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %if.end38.i.if.end45.i_crit_edge
  %channels46.i = getelementptr %struct.loopback, ptr %50, i32 0, i32 4, i32 %52, i32 %spec.select.i.i, i32 4
  %69 = ptrtoint ptr %channels46.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %channels46.i, align 4
  %channels47.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %40, i32 0, i32 15
  %71 = ptrtoint ptr %channels47.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %channels47.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp48.not.i = icmp eq i32 %70, %72
  br i1 %cmp48.not.i, label %if.end45.i.if.end_crit_edge, label %if.then49.i

if.end45.i.if.end_crit_edge:                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then49.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  %channels_id.i = getelementptr %struct.loopback, ptr %50, i32 0, i32 4, i32 %52, i32 %spec.select.i.i, i32 8
  tail call void @snd_ctl_notify(ptr noundef %54, i32 noundef 1, ptr noundef %channels_id.i) #14
  %73 = ptrtoint ptr %channels47.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %channels47.i, align 8
  %75 = ptrtoint ptr %channels46.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %channels46.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then49.i, %if.end45.i.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 14
  %77 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %last_jiffies, align 4
  %pcm_rate_shift = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 9
  %78 = ptrtoint ptr %pcm_rate_shift to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %pcm_rate_shift, align 4
  %last_drift = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 13
  %79 = ptrtoint ptr %last_drift to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %last_drift, align 4
  tail call void @_raw_spin_lock(ptr noundef %5) #14
  %running = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 4
  %80 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %running, align 4
  %or = or i32 %81, %shl
  store i32 %or, ptr %running, align 4
  %neg = xor i32 %shl, -1
  %pause = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 5
  %82 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pause, align 8
  %and = and i32 %83, %neg
  store i32 %and, ptr %pause, align 8
  %ops = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 6
  %84 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops, align 4
  %start = getelementptr inbounds %struct.loopback_ops, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %start, align 4
  %call5 = tail call i32 %87(ptr noundef %3) #14
  tail call void @_raw_spin_unlock(ptr noundef %5) #14
  %88 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %stream3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp8 = icmp eq i32 %89, 0
  br i1 %cmp8, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %5) #14
  %neg13 = xor i32 %shl, -1
  %running14 = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 4
  %90 = ptrtoint ptr %running14 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %running14, align 4
  %and15 = and i32 %91, %neg13
  store i32 %and15, ptr %running14, align 4
  %pause17 = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 5
  %92 = ptrtoint ptr %pause17 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pause17, align 8
  %and18 = and i32 %93, %neg13
  store i32 %and18, ptr %pause17, align 8
  %ops19 = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 6
  %94 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops19, align 4
  %stop = getelementptr inbounds %struct.loopback_ops, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %stop, align 4
  %call20 = tail call i32 %97(ptr noundef %3) #14
  tail call void @_raw_spin_unlock(ptr noundef %5) #14
  %98 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stream3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp23 = icmp eq i32 %99, 0
  br i1 %cmp23, label %sw.bb11.cleanup.sink.split_crit_edge, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb11.cleanup.sink.split_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge149
  tail call void @_raw_spin_lock(ptr noundef %5) #14
  %pause28 = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 5
  %100 = ptrtoint ptr %pause28 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pause28, align 8
  %or29 = or i32 %101, %shl
  store i32 %or29, ptr %pause28, align 8
  %ops30 = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 6
  %102 = ptrtoint ptr %ops30 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops30, align 4
  %stop31 = getelementptr inbounds %struct.loopback_ops, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %stop31 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %stop31, align 4
  %call32 = tail call i32 %105(ptr noundef %3) #14
  tail call void @_raw_spin_unlock(ptr noundef %5) #14
  %106 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %stream3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp35 = icmp eq i32 %107, 0
  br i1 %cmp35, label %sw.bb26.cleanup.sink.split_crit_edge, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb26.cleanup.sink.split_crit_edge:             ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb38:                                          ; preds = %entry.sw.bb38_crit_edge, %entry.sw.bb38_crit_edge150
  tail call void @_raw_spin_lock(ptr noundef %5) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies40 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 14
  %109 = ptrtoint ptr %last_jiffies40 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %last_jiffies40, align 4
  %neg41 = xor i32 %shl, -1
  %pause42 = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 5
  %110 = ptrtoint ptr %pause42 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pause42, align 8
  %and43 = and i32 %111, %neg41
  store i32 %and43, ptr %pause42, align 8
  %ops44 = getelementptr inbounds %struct.loopback_cable, ptr %5, i32 0, i32 6
  %112 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops44, align 4
  %start45 = getelementptr inbounds %struct.loopback_ops, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %start45 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %start45, align 4
  %call46 = tail call i32 %115(ptr noundef %3) #14
  tail call void @_raw_spin_unlock(ptr noundef %5) #14
  %116 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %stream3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp49 = icmp eq i32 %117, 0
  br i1 %cmp49, label %sw.bb38.cleanup.sink.split_crit_edge, label %sw.bb38.cleanup_crit_edge

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb38.cleanup.sink.split_crit_edge:             ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb38.cleanup.sink.split_crit_edge, %sw.bb26.cleanup.sink.split_crit_edge, %sw.bb11.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end.cleanup.sink.split_crit_edge ], [ %call20, %sw.bb11.cleanup.sink.split_crit_edge ], [ %call32, %sw.bb26.cleanup.sink.split_crit_edge ], [ %call46, %sw.bb38.cleanup.sink.split_crit_edge ]
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %.sink148 = load ptr, ptr %3, align 4
  %119 = ptrtoint ptr %.sink148 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %.sink148, align 4
  %substream.i.i127 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 1
  %121 = ptrtoint ptr %substream.i.i127 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %substream.i.i127, align 4
  %pstr.i.i99 = getelementptr inbounds %struct.snd_pcm_substream, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %pstr.i.i99 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pstr.i.i99, align 4
  %pcm.i.i100 = getelementptr inbounds %struct.snd_pcm_str, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %pcm.i.i100 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pcm.i.i100, align 4
  %device1.i.i101 = getelementptr inbounds %struct.snd_pcm, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %device1.i.i101 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %device1.i.i101, align 4
  %stream.i.i102 = getelementptr inbounds %struct.snd_pcm_substream, ptr %122, i32 0, i32 5
  %129 = ptrtoint ptr %stream.i.i102 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %stream.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp.i.i103 = icmp eq i32 %130, 0
  %xor.i.i104 = zext i1 %cmp.i.i103 to i32
  %spec.select.i.i105 = xor i32 %128, %xor.i.i104
  %number.i.i106 = getelementptr inbounds %struct.snd_pcm_substream, ptr %122, i32 0, i32 3
  %131 = ptrtoint ptr %number.i.i106 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %number.i.i106, align 4
  %active_id.i = getelementptr %struct.loopback, ptr %.sink148, i32 0, i32 4, i32 %132, i32 %spec.select.i.i105, i32 5
  tail call void @snd_ctl_notify(ptr noundef %120, i32 noundef 1, ptr noundef %active_id.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb38.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call46, %sw.bb38.cleanup_crit_edge ], [ %call32, %sw.bb26.cleanup_crit_edge ], [ %call20, %sw.bb11.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -5, %if.end16.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_pointer(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cable = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cable, align 4
  tail call void @_raw_spin_lock(ptr noundef %5) #14
  %6 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cable, align 4
  %ops = getelementptr inbounds %struct.loopback_cable, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %pos_update = getelementptr inbounds %struct.loopback_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %pos_update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pos_update, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %11(ptr noundef %7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buf_pos = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %buf_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_pos, align 4
  %14 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cable, align 4
  tail call void @_raw_spin_unlock(ptr noundef %15) #14
  %mul.i = shl i32 %13, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rule_format(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #1 align 64 {
entry:
  %old.i = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cable1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %formats = getelementptr inbounds %struct.loopback_cable, ptr %3, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %formats, align 8
  %conv = trunc i64 %7 to i32
  %shr = lshr i64 %7, 32
  %conv4 = trunc i64 %shr to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cable_lock8 = getelementptr inbounds %struct.loopback, ptr %9, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %cable_lock8) #14
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %10 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #14
  %12 = call ptr @memcpy(ptr %old.i, ptr %arrayidx.i, i32 32)
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %14, %conv
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  %arrayidx2.1.i.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.1.i.i, align 4
  %and.1.i.i = and i32 %16, %conv4
  store i32 %and.1.i.i, ptr %arrayidx2.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 %tobool.not.1.i.not.i, i1 false
  br i1 %or.cond.i, label %entry.snd_mask_refine.exit_crit_edge, label %if.end.i

entry.snd_mask_refine.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_mask_refine.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i, ptr noundef nonnull dereferenceable(8) %old.i, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i7.i = icmp ne i32 %bcmp.i.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i7.i to i32
  br label %snd_mask_refine.exit

snd_mask_refine.exit:                             ; preds = %if.end.i, %entry.snd_mask_refine.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end.i ], [ -22, %entry.snd_mask_refine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #1 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cable1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #14
  %4 = getelementptr inbounds i8, ptr %t, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %rate_min = getelementptr inbounds %struct.loopback_cable, ptr %3, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %rate_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate_min, align 4
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %t, align 4
  %rate_max = getelementptr inbounds %struct.loopback_cable, ptr %3, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate_max, align 8
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %cable_lock4 = getelementptr inbounds %struct.loopback, ptr %15, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %cable_lock4) #14
  %openmax = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %openmax to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 31, ptr %openmax, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %17 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %var, align 4
  %sub.i = add i32 %18, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call11 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #14
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rule_channels(ptr noundef %params, ptr nocapture noundef readonly %rule) #1 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cable1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #14
  %4 = getelementptr inbounds i8, ptr %t, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %channels_min = getelementptr inbounds %struct.loopback_cable, ptr %3, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %channels_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels_min, align 4
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %t, align 4
  %channels_max = getelementptr inbounds %struct.loopback_cable, ptr %3, i32 0, i32 2, i32 6
  %11 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channels_max, align 8
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %cable_lock4 = getelementptr inbounds %struct.loopback, ptr %15, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %cable_lock4) #14
  %openmax = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %openmax to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 31, ptr %openmax, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %17 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %var, align 4
  %sub.i = add i32 %18, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call11 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #14
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rule_period_bytes(ptr noundef %params, ptr nocapture noundef readonly %rule) #1 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cable1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #14
  %4 = getelementptr inbounds i8, ptr %t, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %period_bytes_min = getelementptr inbounds %struct.loopback_cable, ptr %3, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_bytes_min, align 8
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %t, align 4
  %period_bytes_max = getelementptr inbounds %struct.loopback_cable, ptr %3, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %period_bytes_max, align 4
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %cable_lock4 = getelementptr inbounds %struct.loopback, ptr %15, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %cable_lock4) #14
  %openmin = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %openmin to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 31, ptr %openmin, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %17 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %var, align 4
  %sub.i = add i32 %18, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call11 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #14
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_runtime_free(ptr nocapture noundef readonly %runtime) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_cable(ptr nocapture noundef readonly %substream) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %device.i = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  %retval.0.i = select i1 %tobool.not.i, i32 %7, i32 %lnot.ext.i
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %arrayidx1 = getelementptr %struct.loopback, ptr %1, i32 0, i32 2, i32 %9, i32 %retval.0.i
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.loopback_cable, ptr %11, i32 0, i32 1, i32 %lnot.ext.i
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %11) #14
  %14 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream.i, align 4
  %arrayidx8 = getelementptr %struct.loopback_cable, ptr %11, i32 0, i32 1, i32 %15
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx8, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull %11) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %17 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime, align 4
  %private_data10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %private_data10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data10, align 8
  %ops = getelementptr inbounds %struct.loopback_cable, ptr %11, i32 0, i32 6
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %tobool11.not = icmp eq ptr %22, null
  br i1 %tobool11.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %close_cable = getelementptr inbounds %struct.loopback_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %close_cable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %close_cable, align 4
  %tobool13.not = icmp eq ptr %24, null
  %tobool15.not = icmp eq ptr %20, null
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %land.lhs.true.if.end20_crit_edge, label %if.then16

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 %24(ptr noundef nonnull %20) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge
  %25 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %number, align 4
  %arrayidx24 = getelementptr %struct.loopback, ptr %1, i32 0, i32 2, i32 %26, i32 %retval.0.i
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx24, align 4
  tail call void @kfree(ptr noundef nonnull %11) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_snd_timer_open(ptr nocapture noundef readonly %dpcm) #1 align 64 {
entry:
  %card_idx.i = alloca i32, align 4
  %dev.i = alloca i32, align 4
  %subdev.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 2
  %0 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cable1, align 4
  %snd_timer = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7
  %instance = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dpcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dpcm, align 4
  %timer_source = getelementptr inbounds %struct.loopback, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %timer_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer_source, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card_idx.i) #14
  %8 = ptrtoint ptr %card_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %card_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev.i) #14
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subdev.i) #14
  %10 = ptrtoint ptr %subdev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %subdev.i, align 4
  %strchr.i = tail call ptr @strchr(ptr noundef %7, i32 58) #14
  %tobool.not.i = icmp eq ptr %strchr.i, null
  %add.ptr.i = getelementptr i8, ptr %strchr.i, i32 1
  %spec.select.i = select i1 %tobool.not.i, ptr %7, ptr %add.ptr.i
  %call1.i = tail call ptr @strpbrk(ptr noundef %spec.select.i, ptr noundef nonnull @.str.16) #14
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.if.end4.i_crit_edge, label %if.then3.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call1.i, align 1
  store i8 0, ptr %call1.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.if.end4.i_crit_edge
  %save.0.i = phi i8 [ %12, %if.then3.i ], [ 0, %if.end.if.end4.i_crit_edge ]
  %call5.i = call i32 @kstrtoint(ptr noundef %spec.select.i, i32 noundef 0, ptr noundef nonnull %card_idx.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, -22
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end4.i.if.end19.i_crit_edge

if.end4.i.if.end19.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

for.cond.preheader.i:                             ; preds = %if.end4.i
  %13 = ptrtoint ptr %card_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %card_idx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_ecards_limit to i32))
  %14 = load i32, ptr @snd_ecards_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp796.i = icmp sgt i32 %14, 0
  br i1 %cmp796.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end19.i_crit_edge

for.cond.preheader.i.if.end19.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %storemerge97.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call8.i = call ptr @snd_card_ref(i32 noundef %storemerge97.i) #14
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  %id.i = getelementptr inbounds %struct.snd_card, ptr %call8.i, i32 0, i32 1
  %call11.i = call i32 @strcmp(ptr noundef %id.i, ptr noundef %spec.select.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %card_dev.i.i = getelementptr inbounds %struct.snd_card, ptr %call8.i, i32 0, i32 28
  call void @put_device(ptr noundef %card_dev.i.i) #14
  br i1 %tobool12.not.i, label %if.end19.thread.i, label %if.then10.i.for.inc.i_crit_edge

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %15 = ptrtoint ptr %card_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %card_idx.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %card_idx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_ecards_limit to i32))
  %17 = load i32, ptr @snd_ecards_limit, align 4
  %cmp7.i = icmp slt i32 %inc.i, %17
  br i1 %cmp7.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end19.i_crit_edge

for.inc.i.if.end19.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end19.i:                                       ; preds = %for.inc.i.if.end19.i_crit_edge, %for.cond.preheader.i.if.end19.i_crit_edge, %if.end4.i.if.end19.i_crit_edge
  %err.3.i = phi i32 [ %call5.i, %if.end4.i.if.end19.i_crit_edge ], [ -22, %for.cond.preheader.i.if.end19.i_crit_edge ], [ -22, %for.inc.i.if.end19.i_crit_edge ]
  br i1 %tobool2.not.i, label %if.end19.i.if.end40.i_crit_edge, label %if.then21.i

if.end19.i.if.end40.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

if.end19.thread.i:                                ; preds = %if.then10.i
  br i1 %tobool2.not.i, label %if.end19.thread.i.loopback_parse_timer_id.exit.thread_crit_edge, label %if.then21.thread.i

if.end19.thread.i.loopback_parse_timer_id.exit.thread_crit_edge: ; preds = %if.end19.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %loopback_parse_timer_id.exit.thread

if.then21.thread.i:                               ; preds = %if.end19.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %save.0.i, ptr %call1.i, align 1
  br label %if.then23.i

if.then21.i:                                      ; preds = %if.end19.i
  %19 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %save.0.i, ptr %call1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3.i)
  %tobool22.not.i = icmp eq i32 %err.3.i, 0
  br i1 %tobool22.not.i, label %if.then21.i.if.then23.i_crit_edge, label %if.then21.i.loopback_parse_timer_id.exit_crit_edge

if.then21.i.loopback_parse_timer_id.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %loopback_parse_timer_id.exit

if.then21.i.if.then23.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23.i

if.then23.i:                                      ; preds = %if.then21.i.if.then23.i_crit_edge, %if.then21.thread.i
  %add.ptr24.i = getelementptr i8, ptr %call1.i, i32 1
  %call25.i = call ptr @strpbrk(ptr noundef %add.ptr24.i, ptr noundef nonnull @.str.16) #14
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end28.thread.i, label %if.then32.i

if.end28.thread.i:                                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3090.i = call i32 @kstrtoint(ptr noundef %add.ptr24.i, i32 noundef 0, ptr noundef nonnull %dev.i) #14
  br label %if.end40.i

if.then32.i:                                      ; preds = %if.then23.i
  %20 = ptrtoint ptr %call25.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call25.i, align 1
  store i8 0, ptr %call25.i, align 1
  %call30.i = call i32 @kstrtoint(ptr noundef %add.ptr24.i, i32 noundef 0, ptr noundef nonnull %dev.i) #14
  %22 = ptrtoint ptr %call25.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %call25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool33.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.then32.i.loopback_parse_timer_id.exit_crit_edge

if.then32.i.loopback_parse_timer_id.exit_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %loopback_parse_timer_id.exit

if.then34.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr35.i = getelementptr i8, ptr %call25.i, i32 1
  %call36.i = call i32 @kstrtoint(ptr noundef %add.ptr35.i, i32 noundef 0, ptr noundef nonnull %subdev.i) #14
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then34.i, %if.end28.thread.i, %if.end19.i.if.end40.i_crit_edge
  %err.5.i = phi i32 [ %err.3.i, %if.end19.i.if.end40.i_crit_edge ], [ %call36.i, %if.then34.i ], [ %call3090.i, %if.end28.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.i)
  %tobool41.not.i.not = icmp eq i32 %err.5.i, 0
  br i1 %tobool41.not.i.not, label %if.end40.i.loopback_parse_timer_id.exit.thread_crit_edge, label %if.end40.i.loopback_parse_timer_id.exit_crit_edge

if.end40.i.loopback_parse_timer_id.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %loopback_parse_timer_id.exit

if.end40.i.loopback_parse_timer_id.exit.thread_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %loopback_parse_timer_id.exit.thread

loopback_parse_timer_id.exit.thread:              ; preds = %if.end40.i.loopback_parse_timer_id.exit.thread_crit_edge, %if.end19.thread.i.loopback_parse_timer_id.exit.thread_crit_edge
  %23 = ptrtoint ptr %card_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %card_idx.i, align 4
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev.i, align 4
  %27 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subdev.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subdev.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card_idx.i) #14
  br label %if.end5

loopback_parse_timer_id.exit:                     ; preds = %if.end40.i.loopback_parse_timer_id.exit_crit_edge, %if.then32.i.loopback_parse_timer_id.exit_crit_edge, %if.then21.i.loopback_parse_timer_id.exit_crit_edge
  %err.595.i = phi i32 [ %err.5.i, %if.end40.i.loopback_parse_timer_id.exit_crit_edge ], [ %call30.i, %if.then32.i.loopback_parse_timer_id.exit_crit_edge ], [ %err.3.i, %if.then21.i.loopback_parse_timer_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subdev.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card_idx.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.595.i)
  %cmp = icmp slt i32 %err.595.i, 0
  br i1 %cmp, label %do.end, label %loopback_parse_timer_id.exit.if.end5_crit_edge

loopback_parse_timer_id.exit.if.end5_crit_edge:   ; preds = %loopback_parse_timer_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

do.end:                                           ; preds = %loopback_parse_timer_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  %substream = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 1
  %29 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %substream, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %37 = ptrtoint ptr %dpcm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dpcm, align 4
  %timer_source4 = getelementptr inbounds %struct.loopback, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %timer_source4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %timer_source4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.7, ptr noundef %40, i32 noundef %err.595.i) #19
  br label %exit

if.end5:                                          ; preds = %loopback_parse_timer_id.exit.if.end5_crit_edge, %loopback_parse_timer_id.exit.thread
  %tid.sroa.4.095 = phi i32 [ %24, %loopback_parse_timer_id.exit.thread ], [ 0, %loopback_parse_timer_id.exit.if.end5_crit_edge ]
  %tid.sroa.5.094 = phi i32 [ %26, %loopback_parse_timer_id.exit.thread ], [ 0, %loopback_parse_timer_id.exit.if.end5_crit_edge ]
  %tid.sroa.6.093 = phi i32 [ %28, %loopback_parse_timer_id.exit.thread ], [ 0, %loopback_parse_timer_id.exit.if.end5_crit_edge ]
  %substream6 = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 1
  %41 = ptrtoint ptr %substream6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %substream6, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stream, align 4
  %45 = ptrtoint ptr %snd_timer to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %snd_timer, align 8
  %id = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 12884901889, ptr %id, align 4
  %tid.sroa.4.0.id.sroa_idx = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 2
  %47 = ptrtoint ptr %tid.sroa.4.0.id.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %tid.sroa.4.095, ptr %tid.sroa.4.0.id.sroa_idx, align 4
  %tid.sroa.5.0.id.sroa_idx = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 3
  %48 = ptrtoint ptr %tid.sroa.5.0.id.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %tid.sroa.5.094, ptr %tid.sroa.5.0.id.sroa_idx, align 4
  %tid.sroa.6.0.id.sroa_idx = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 4
  %49 = ptrtoint ptr %tid.sroa.6.0.id.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %tid.sroa.6.093, ptr %tid.sroa.6.0.id.sroa_idx, align 4
  %50 = ptrtoint ptr %dpcm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dpcm, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %id12 = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 1
  %call13 = call ptr @snd_timer_instance_new(ptr noundef %id12) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end5.exit_crit_edge, label %if.end16

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end16:                                         ; preds = %if.end5
  %flags = getelementptr inbounds %struct.snd_timer_instance, ptr %call13, i32 0, i32 2
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %or = or i32 %55, 8
  store i32 %or, ptr %flags, align 4
  %callback = getelementptr inbounds %struct.snd_timer_instance, ptr %call13, i32 0, i32 5
  %56 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @loopback_snd_timer_function, ptr %callback, align 4
  %callback_data = getelementptr inbounds %struct.snd_timer_instance, ptr %call13, i32 0, i32 8
  %57 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %1, ptr %callback_data, align 4
  %ccallback = getelementptr inbounds %struct.snd_timer_instance, ptr %call13, i32 0, i32 6
  %58 = ptrtoint ptr %ccallback to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @loopback_snd_timer_event, ptr %ccallback, align 4
  %event_work = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 2
  call void @__init_work(ptr noundef %event_work, i32 noundef 0) #14
  %59 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -64, ptr %event_work, align 8
  %lockdep_map = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @loopback_snd_timer_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry25 = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 2, i32 1
  %60 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 2, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 2, i32 2
  %62 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @loopback_snd_timer_work, ptr %func, align 4
  %63 = call i32 @llvm.read_register.i32(metadata !201) #14
  %and.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid, align 8
  %call33 = call i32 @snd_timer_open(ptr noundef nonnull %call13, ptr noundef %id, i32 noundef %68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end50

do.end38:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %substream6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %substream6, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %dev42 = getelementptr inbounds %struct.snd_card, ptr %74, i32 0, i32 27
  %75 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev42, align 8
  %77 = ptrtoint ptr %tid.sroa.4.0.id.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tid.sroa.4.0.id.sroa_idx, align 4
  %79 = ptrtoint ptr %tid.sroa.5.0.id.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tid.sroa.5.0.id.sroa_idx, align 4
  %81 = ptrtoint ptr %tid.sroa.6.0.id.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tid.sroa.6.0.id.sroa_idx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.14, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %call33) #19
  call void @snd_timer_instance_free(ptr noundef nonnull %call13) #14
  br label %exit

if.end50:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call13, ptr %instance, align 4
  br label %exit

exit:                                             ; preds = %if.end50, %do.end38, %if.end5.exit_crit_edge, %do.end, %entry.exit_crit_edge
  %err.0 = phi i32 [ 0, %entry.exit_crit_edge ], [ %err.595.i, %do.end ], [ %call33, %do.end38 ], [ %call33, %if.end50 ], [ -12, %if.end5.exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_snd_timer_start(ptr nocapture noundef readonly %dpcm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 2
  %0 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cable1, align 4
  %instance = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 4
  %call = tail call i32 @snd_timer_start(ptr noundef %3, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call)
  %cmp2 = icmp eq i32 %call, -16
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %substream = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 1
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %card5 = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 2
  %12 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %card5, align 4
  %device = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 3
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 4
  %16 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %subdevice, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %call) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_snd_timer_stop(ptr nocapture noundef readonly %dpcm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 2
  %0 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cable1, align 4
  %running = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  %pause = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pause, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %tobool.not = icmp eq i32 %3, %5
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %instance = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instance, align 4
  %call = tail call i32 @snd_timer_stop(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %substream = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 1
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %card4 = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 2
  %16 = ptrtoint ptr %card4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %card4, align 4
  %device = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 3
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 4
  %20 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %subdevice, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %call) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_snd_timer_close_cable(ptr nocapture noundef readonly %dpcm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 2
  %0 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cable1, align 4
  %instance = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %snd_timer = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7
  tail call void @snd_timer_close(ptr noundef nonnull %3) #14
  %event_work = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 2
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %event_work) #14
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instance, align 4
  tail call void @snd_timer_instance_free(ptr noundef %5) #14
  %6 = call ptr @memset(ptr %snd_timer, i32 0, i32 72)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_snd_timer_dpcm_info(ptr nocapture noundef readonly %dpcm, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cable1 = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 2
  %0 = ptrtoint ptr %cable1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cable1, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %snd_timer = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7
  %card = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 2
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %card, align 4
  %device = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 3
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 1, i32 4
  %8 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subdevice, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %5, i32 noundef %7, i32 noundef %9) #14
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = ptrtoint ptr %snd_timer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  %cond = select i1 %cmp, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_timer_instance_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_snd_timer_function(ptr nocapture noundef readonly %timeri, i32 noundef %resolution, i32 noundef %ticks) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_data = getelementptr inbounds %struct.snd_timer_instance, ptr %timeri, i32 0, i32 8
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback_data, align 4
  tail call fastcc void @loopback_snd_timer_period_elapsed(ptr noundef %1, i32 noundef 1, i32 noundef %resolution)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_snd_timer_event(ptr nocapture noundef readonly %timeri, i32 noundef %event, ptr nocapture noundef readnone %tstamp, i32 noundef %resolution) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %event)
  %cmp = icmp eq i32 %event, 13
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %callback_data = getelementptr inbounds %struct.snd_timer_instance, ptr %timeri, i32 0, i32 8
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback_data, align 4
  %event_work = getelementptr inbounds %struct.loopback_cable, ptr %1, i32 0, i32 7, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %event_work) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_snd_timer_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -160
  tail call fastcc void @loopback_snd_timer_period_elapsed(ptr noundef %add.ptr, i32 noundef 13, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_instance_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_card_ref(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @loopback_snd_timer_period_elapsed(ptr noundef %cable, i32 noundef %event, i32 noundef %resolution) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cable) #14
  %running5 = getelementptr inbounds %struct.loopback_cable, ptr %cable, i32 0, i32 4
  %0 = ptrtoint ptr %running5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %running5, align 4
  %pause = getelementptr inbounds %struct.loopback_cable, ptr %cable, i32 0, i32 5
  %2 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pause, align 8
  %xor = xor i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cable, i32 noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %streams = getelementptr inbounds %struct.loopback_cable, ptr %cable, i32 0, i32 1
  %4 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %streams, align 4
  %arrayidx8 = getelementptr %struct.loopback_cable, ptr %cable, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %event)
  %cmp9 = icmp eq i32 %event, 13
  br i1 %cmp9, label %if.then11, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then11:                                        ; preds = %if.end
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.then11.if.then15_crit_edge, label %lor.lhs.false

if.then11.if.then15_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.then11
  %substream = getelementptr inbounds %struct.loopback_pcm, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 37
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %status, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp13.not = icmp eq i32 %15, 5
  br i1 %cmp13.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.then11.if.then15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cable, i32 noundef %call2) #14
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %and = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.cond.end_crit_edge, label %cond.true

if.end18.cond.end_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %substream20 = getelementptr inbounds %struct.loopback_pcm, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %substream20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end18.cond.end_crit_edge
  %cond = phi ptr [ %17, %cond.true ], [ null, %if.end18.cond.end_crit_edge ]
  %and21 = and i32 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.end26_crit_edge, label %cond.true23

cond.end.cond.end26_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end26

cond.true23:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %substream24 = getelementptr inbounds %struct.loopback_pcm, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %substream24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream24, align 4
  br label %cond.end26

cond.end26:                                       ; preds = %cond.true23, %cond.end.cond.end26_crit_edge
  %cond27 = phi ptr [ %19, %cond.true23 ], [ null, %cond.end.cond.end26_crit_edge ]
  %. = select i1 %tobool19.not, ptr %7, ptr %5
  %.pn.in = getelementptr inbounds %struct.loopback_pcm, ptr %., i32 0, i32 1
  %20 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cond37.in = getelementptr inbounds %struct.snd_pcm_substream, ptr %.pn, i32 0, i32 11
  %21 = ptrtoint ptr %cond37.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %cond37 = load ptr, ptr %cond37.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp38 = icmp eq i32 %event, 1
  br i1 %cmp38, label %if.then40, label %cond.end26.if.end55_crit_edge

cond.end26.if.end55_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then40:                                        ; preds = %cond.end26
  %timer_resolution.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond37, i32 0, i32 48
  %22 = ptrtoint ptr %timer_resolution.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timer_resolution.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %resolution)
  %cmp.not.i = icmp eq i32 %23, %resolution
  br i1 %cmp.not.i, label %if.then40.if.end55_crit_edge, label %if.then44

if.then40.if.end55_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then44:                                        ; preds = %if.then40
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond37, i32 0, i32 44
  %24 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data.i, align 8
  %cable1.i = getelementptr inbounds %struct.loopback_pcm, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %cable1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cable1.i, align 4
  %div.i = udiv i32 %resolution, 1000
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond37, i32 0, i32 14
  %28 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rate.i, align 4
  %mul.i = mul i32 %29, %div.i
  %add.i = add i32 %mul.i, 500000
  %div2.i = udiv i32 %add.i, 1000000
  %substream.i = getelementptr inbounds %struct.loopback_pcm, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %substream.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  %period_size3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond37, i32 0, i32 16
  %38 = ptrtoint ptr %period_size3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %period_size3.i, align 4
  %card4.i = getelementptr inbounds %struct.loopback_cable, ptr %27, i32 0, i32 7, i32 1, i32 2
  %40 = ptrtoint ptr %card4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %card4.i, align 4
  %device.i = getelementptr inbounds %struct.loopback_cable, ptr %27, i32 0, i32 7, i32 1, i32 3
  %42 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device.i, align 4
  %subdevice.i = getelementptr inbounds %struct.loopback_cable, ptr %27, i32 0, i32 7, i32 1, i32 4
  %44 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %subdevice.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.18, i32 noundef %39, i32 noundef %resolution, i32 noundef %div2.i, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %div2.i) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cable, i32 noundef %call2) #14
  %tobool46.not = icmp eq ptr %cond, null
  br i1 %tobool46.not, label %if.then44.if.end49_crit_edge, label %if.then47

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %cond) #14
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then44.if.end49_crit_edge
  %tobool50.not = icmp eq ptr %cond27, null
  br i1 %tobool50.not, label %if.end49.cleanup_crit_edge, label %if.then51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %call52 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %cond27) #14
  br label %cleanup

if.end55:                                         ; preds = %if.then40.if.end55_crit_edge, %cond.end26.if.end55_crit_edge
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond37, i32 0, i32 16
  %46 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond37, i32 0, i32 21
  %48 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frame_bits.i, align 8
  %mul.i130 = mul i32 %49, %47
  %div1.i = lshr i32 %mul.i130, 3
  %50 = and i32 %xor, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %.not = icmp eq i32 %50, 3
  br i1 %.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @copy_play_buf(ptr noundef %5, ptr noundef %7, i32 noundef %div1.i)
  %buf_pos.i = getelementptr inbounds %struct.loopback_pcm, ptr %5, i32 0, i32 4
  %51 = ptrtoint ptr %buf_pos.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_pos.i, align 4
  %add.i131 = add i32 %52, %div1.i
  %pcm_buffer_size.i = getelementptr inbounds %struct.loopback_pcm, ptr %5, i32 0, i32 3
  %53 = ptrtoint ptr %pcm_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pcm_buffer_size.i, align 4
  %rem.i = urem i32 %add.i131, %54
  store i32 %rem.i, ptr %buf_pos.i, align 4
  br label %if.end71.sink.split

if.else:                                          ; preds = %if.end55
  br i1 %tobool19.not, label %if.else65, label %if.else.if.end71.sink.split_crit_edge

if.else.if.end71.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.sink.split

if.else65:                                        ; preds = %if.else
  br i1 %tobool22.not, label %if.else65.if.end71_crit_edge, label %if.then68

if.else65.if.end71_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then68:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @clear_capture_buf(ptr noundef %7, i32 noundef %div1.i)
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %if.then68, %if.else.if.end71.sink.split_crit_edge, %if.then61
  %.sink148 = phi ptr [ %7, %if.then61 ], [ %7, %if.then68 ], [ %5, %if.else.if.end71.sink.split_crit_edge ]
  %buf_pos.i132 = getelementptr inbounds %struct.loopback_pcm, ptr %.sink148, i32 0, i32 4
  %55 = ptrtoint ptr %buf_pos.i132 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_pos.i132, align 4
  %add.i137 = add i32 %56, %div1.i
  %pcm_buffer_size.i138 = getelementptr inbounds %struct.loopback_pcm, ptr %.sink148, i32 0, i32 3
  %57 = ptrtoint ptr %pcm_buffer_size.i138 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pcm_buffer_size.i138, align 4
  %rem.i139 = urem i32 %add.i137, %58
  store i32 %rem.i139, ptr %buf_pos.i132, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.else65.if.end71_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cable, i32 noundef %call2) #14
  %tobool73.not = icmp eq ptr %cond, null
  br i1 %tobool73.not, label %if.end71.if.end75_crit_edge, label %if.then74

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %cond) #14
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end71.if.end75_crit_edge
  %tobool76.not = icmp eq ptr %cond27, null
  br i1 %tobool76.not, label %if.end75.cleanup_crit_edge, label %if.then77

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %cond27) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end75.cleanup_crit_edge, %if.then51, %if.end49.cleanup_crit_edge, %if.then15, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_play_buf(ptr nocapture noundef readonly %play, ptr nocapture noundef %capt, i32 noundef %bytes) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.loopback_pcm, ptr %play, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %substream2 = getelementptr inbounds %struct.loopback_pcm, ptr %capt, i32 0, i32 1
  %6 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream2, align 4
  %runtime3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime3, align 4
  %dma_area4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 50
  %10 = ptrtoint ptr %dma_area4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_area4, align 4
  %buf_pos = getelementptr inbounds %struct.loopback_pcm, ptr %play, i32 0, i32 4
  %12 = ptrtoint ptr %buf_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_pos, align 4
  %buf_pos5 = getelementptr inbounds %struct.loopback_pcm, ptr %capt, i32 0, i32 4
  %14 = ptrtoint ptr %buf_pos5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_pos5, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %status, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp = icmp eq i32 %19, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %20 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buffer_size.i, align 4
  %hw_ptr.i.i = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %hw_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_ptr.i.i, align 4
  %add.i.i = add i32 %23, %21
  %control.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 38
  %24 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %control.i.i, align 8
  %appl_ptr.i.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %appl_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %appl_ptr.i.i, align 4
  %sub.i.i = sub i32 %add.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %boundary.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 33
  %28 = ptrtoint ptr %boundary.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %boundary.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %29)
  %cmp3.not.i.i = icmp ult i32 %sub.i.i, %29
  %sub6.i.i = select i1 %cmp3.not.i.i, i32 0, i32 %29
  %30 = sub i32 0, %sub6.i.i
  %avail.0.p.i.i = select i1 %cmp.i.i, i32 %29, i32 %30
  %31 = add i32 %sub.i.i, %avail.0.p.i.i
  %sub.i = sub i32 %21, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %21)
  %cmp6 = icmp ult i32 %sub.i, %21
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %rem = urem i32 %27, %21
  %sub = sub i32 %27, %rem
  %pcm_salign = getelementptr inbounds %struct.loopback_pcm, ptr %play, i32 0, i32 8
  %32 = ptrtoint ptr %pcm_salign to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pcm_salign, align 4
  %div = udiv i32 %13, %33
  %add = add i32 %div, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add)
  %cmp10 = icmp ult i32 %27, %add
  %sub13 = select i1 %cmp10, i32 %21, i32 0
  %spec.select.neg = sub i32 %27, %add
  %sub14 = add i32 %spec.select.neg, %sub13
  %mul = mul i32 %sub14, %33
  %34 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %bytes)
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %bytes, i32 %mul)
  br label %if.end20

if.end20:                                         ; preds = %if.then, %land.lhs.true.if.end20_crit_edge, %entry.if.end20_crit_edge
  %bytes.addr.1 = phi i32 [ %34, %if.then ], [ %bytes, %land.lhs.true.if.end20_crit_edge ], [ %bytes, %entry.if.end20_crit_edge ]
  %clear_bytes.1 = phi i32 [ %35, %if.then ], [ 0, %land.lhs.true.if.end20_crit_edge ], [ 0, %entry.if.end20_crit_edge ]
  %pcm_buffer_size = getelementptr inbounds %struct.loopback_pcm, ptr %play, i32 0, i32 3
  %pcm_buffer_size28 = getelementptr inbounds %struct.loopback_pcm, ptr %capt, i32 0, i32 3
  %silent_size = getelementptr inbounds %struct.loopback_pcm, ptr %capt, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end20
  %bytes.addr.2 = phi i32 [ %bytes.addr.1, %if.end20 ], [ %sub35, %cleanup ]
  %src_off.0 = phi i32 [ %13, %if.end20 ], [ %rem40, %cleanup ]
  %dst_off.0 = phi i32 [ %15, %if.end20 ], [ %rem43, %cleanup ]
  %add21 = add i32 %src_off.0, %bytes.addr.2
  %36 = ptrtoint ptr %pcm_buffer_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pcm_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %37)
  %cmp22 = icmp ugt i32 %add21, %37
  %sub25 = sub i32 %37, %src_off.0
  %spec.select94 = select i1 %cmp22, i32 %sub25, i32 %bytes.addr.2
  %add27 = add i32 %spec.select94, %dst_off.0
  %38 = ptrtoint ptr %pcm_buffer_size28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcm_buffer_size28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %39)
  %cmp29 = icmp ugt i32 %add27, %39
  %sub32 = sub i32 %39, %dst_off.0
  %size.1 = select i1 %cmp29, i32 %sub32, i32 %spec.select94
  %add.ptr = getelementptr i8, ptr %11, i32 %dst_off.0
  %add.ptr34 = getelementptr i8, ptr %5, i32 %src_off.0
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr34, i32 %size.1)
  %41 = ptrtoint ptr %silent_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %silent_size, align 4
  %sub35 = sub i32 %bytes.addr.2, %size.1
  %tobool.not = icmp eq i32 %sub35, 0
  br i1 %tobool.not, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %add38 = add i32 %size.1, %src_off.0
  %42 = ptrtoint ptr %pcm_buffer_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pcm_buffer_size, align 4
  %rem40 = urem i32 %add38, %43
  %add41 = add i32 %size.1, %dst_off.0
  %44 = ptrtoint ptr %pcm_buffer_size28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcm_buffer_size28, align 4
  %rem43 = urem i32 %add41, %45
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear_bytes.1)
  %cmp44.not = icmp eq i32 %clear_bytes.1, 0
  br i1 %cmp44.not, label %for.end.if.end47_crit_edge, label %if.then45

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @clear_capture_buf(ptr noundef %capt, i32 noundef %clear_bytes.1)
  %46 = ptrtoint ptr %silent_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %silent_size, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.end.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_capture_buf(ptr nocapture noundef %dpcm, i32 noundef %bytes) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %silent_size = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 5
  %6 = ptrtoint ptr %silent_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %silent_size, align 4
  %pcm_buffer_size = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 3
  %8 = ptrtoint ptr %pcm_buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not = icmp ugt i32 %9, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup22_crit_edge

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22

if.end:                                           ; preds = %entry
  %buf_pos = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 4
  %10 = ptrtoint ptr %buf_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_pos, align 4
  %add = add i32 %7, %bytes
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp4 = icmp ugt i32 %add, %9
  %sub = sub i32 %9, %7
  %spec.select = select i1 %cmp4, i32 %sub, i32 %bytes
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %add9.peel = add i32 %11, %spec.select
  %12 = ptrtoint ptr %pcm_buffer_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.peel, i32 %13)
  %cmp11.peel = icmp ugt i32 %add9.peel, %13
  %sub14.peel = sub i32 %13, %11
  %spec.select50.peel = select i1 %cmp11.peel, i32 %sub14.peel, i32 %spec.select
  %14 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format, align 4
  %add.ptr.peel = getelementptr i8, ptr %5, i32 %11
  %mul.i.peel = shl i32 %spec.select50.peel, 3
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i.peel = udiv i32 %mul.i.peel, %17
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 8
  %mul.peel = mul i32 %19, %div.i.peel
  %call16.peel = tail call i32 @snd_pcm_format_set_silence(i32 noundef %15, ptr noundef %add.ptr.peel, i32 noundef %mul.peel) #14
  %20 = ptrtoint ptr %silent_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %silent_size, align 4
  %add18.peel = add i32 %21, %spec.select50.peel
  store i32 %add18.peel, ptr %silent_size, align 4
  %sub19.peel = sub i32 %spec.select, %spec.select50.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.peel)
  %tobool.not.peel = icmp eq i32 %sub19.peel, 0
  br i1 %tobool.not.peel, label %if.end.cleanup22_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.cleanup22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %bytes.addr.1 = phi i32 [ %sub19, %for.cond.for.cond_crit_edge ], [ %sub19.peel, %if.end.for.cond_crit_edge ]
  %22 = ptrtoint ptr %pcm_buffer_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcm_buffer_size, align 4
  %24 = call i32 @llvm.umin.i32(i32 %bytes.addr.1, i32 %23)
  %25 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format, align 4
  %mul.i = shl i32 %24, 3
  %27 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %28
  %29 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channels, align 8
  %mul = mul i32 %30, %div.i
  %call16 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %26, ptr noundef %5, i32 noundef %mul) #14
  %31 = ptrtoint ptr %silent_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %silent_size, align 4
  %add18 = add i32 %32, %24
  store i32 %add18, ptr %silent_size, align 4
  %sub19 = sub i32 %bytes.addr.1, %24
  %tobool.not = icmp eq i32 %sub19, 0
  br i1 %tobool.not, label %for.cond.cleanup22_crit_edge, label %for.cond.for.cond_crit_edge, !llvm.loop !213

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.cond.cleanup22_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22

cleanup22:                                        ; preds = %for.cond.cleanup22_crit_edge, %if.end.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_set_silence(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_jiffies_timer_open(ptr noundef %dpcm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @loopback_jiffies_timer_function, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @loopback_jiffies_timer_open.__key) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_jiffies_timer_start(ptr noundef %dpcm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %substream.i.i = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 1
  %0 = ptrtoint ptr %substream.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream.i.i, align 4
  %pstr.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pstr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pstr.i.i, align 4
  %pcm.i.i = getelementptr inbounds %struct.snd_pcm_str, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device1.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  %xor.i.i = zext i1 %cmp.i.i to i32
  %spec.select.i.i = xor i32 %7, %xor.i.i
  %10 = ptrtoint ptr %dpcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dpcm, align 4
  %number.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %number.i.i, align 4
  %rate_shift.i = getelementptr %struct.loopback, ptr %11, i32 0, i32 4, i32 %13, i32 %spec.select.i.i, i32 1
  %14 = ptrtoint ptr %rate_shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate_shift.i, align 4
  %pcm_rate_shift = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 9
  %16 = ptrtoint ptr %pcm_rate_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcm_rate_shift, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp eq i32 %15, %17
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %18 = ptrtoint ptr %pcm_rate_shift to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %pcm_rate_shift, align 4
  %pcm_period_size = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 6
  %19 = ptrtoint ptr %pcm_period_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcm_period_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %15)
  %cmp.i = icmp eq i32 %15, 100000
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul i32 %20, 100
  br label %frac_pos.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = zext i32 %15 to i64
  %conv2.i = zext i32 %20 to i64
  %mul3.i = mul nuw nsw i64 %conv.i, 100
  %mul4.i = mul i64 %mul3.i, %conv2.i
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %mul4.i, i32 0) #20, !srcloc !215
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %21, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %21, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %mul4.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #20, !srcloc !216
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %22, 0
  %div158.i.i9.i = lshr i64 %asmresult10.i.i.i.i, 16
  %conv5.i = trunc i64 %div158.i.i9.i to i32
  br label %frac_pos.exit

frac_pos.exit:                                    ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %mul.i, %if.then.i ], [ %conv5.i, %if.else.i ]
  %period_size_frac = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 12
  %23 = ptrtoint ptr %period_size_frac to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %period_size_frac, align 4
  br label %if.end

if.end:                                           ; preds = %frac_pos.exit, %entry.if.end_crit_edge
  %period_size_frac3 = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 12
  %24 = ptrtoint ptr %period_size_frac3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %period_size_frac3, align 4
  %irq_pos = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 11
  %26 = ptrtoint ptr %irq_pos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp4.not = icmp ugt i32 %25, %27
  br i1 %cmp4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rem = urem i32 %27, %25
  %28 = ptrtoint ptr %irq_pos to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rem, ptr %irq_pos, align 4
  %period_update_pending = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 10
  %29 = ptrtoint ptr %period_update_pending to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %period_update_pending, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %period_update_pending, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %30 = ptrtoint ptr %irq_pos to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_pos, align 4
  %pcm_bps = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 7
  %32 = ptrtoint ptr %pcm_bps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pcm_bps, align 4
  %34 = xor i32 %31, -1
  %add = add i32 %25, %34
  %sub11 = add i32 %add, %33
  %div = udiv i32 %sub11, %33
  %timer = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add13 = add i32 %35, %div
  %call14 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add13) #14
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_jiffies_timer_stop(ptr noundef %dpcm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %timer = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 15
  %call = tail call i32 @del_timer(ptr noundef %timer) #14
  %expires = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %expires, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_jiffies_timer_stop_sync(ptr noundef %dpcm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %timer = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 15
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_jiffies_timer_pos_update(ptr nocapture noundef readonly %cable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %streams = getelementptr inbounds %struct.loopback_cable, ptr %cable, i32 0, i32 1
  %0 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %streams, align 4
  %arrayidx2 = getelementptr %struct.loopback_cable, ptr %cable, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %running3 = getelementptr inbounds %struct.loopback_cable, ptr %cable, i32 0, i32 4
  %4 = ptrtoint ptr %running3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %running3, align 4
  %pause = getelementptr inbounds %struct.loopback_cable, ptr %cable, i32 0, i32 5
  %6 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pause, align 8
  %xor = xor i32 %7, %5
  %and = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_jiffies, align 4
  %sub = sub i32 %8, %10
  store i32 %8, ptr %last_jiffies, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %delta_play.0 = phi i32 [ %sub, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and5 = and i32 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies8 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %last_jiffies8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_jiffies8, align 4
  %sub9 = sub i32 %11, %13
  store i32 %11, ptr %last_jiffies8, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %delta_capt.0 = phi i32 [ %sub9, %if.then7 ], [ 0, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta_play.0)
  %cmp = icmp eq i32 %delta_play.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta_capt.0)
  %cmp13 = icmp eq i32 %delta_capt.0, 0
  %or.cond = select i1 %cmp, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.end12.unlock_crit_edge, label %if.end15

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %delta_play.0, i32 %delta_capt.0)
  %cmp16 = icmp ugt i32 %delta_play.0, %delta_capt.0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %sub18 = sub i32 %delta_play.0, %delta_capt.0
  %irq_pos.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %irq_pos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_pos.i, align 4
  %pcm_rate_shift.i.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %pcm_rate_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcm_rate_shift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 100000
  br i1 %cmp.i.i, label %if.then.i33.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then17
  %conv.i.i = zext i32 %15 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 100000
  %mul3.i.i = mul i32 %17, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %mul.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !217

if.then168.i.i.i.i:                               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i = trunc i64 %mul.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %mul3.i.i
  br label %if.else.i38.i

if.else174.i.i.i.i:                               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i, i64 %mul.i.i) #20, !srcloc !218
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %18, 1
  %extract.t12.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %if.else.i38.i

if.then.i33.i:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %div.i.i = udiv i32 %15, 100
  %pcm_salign.i.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %pcm_salign.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcm_salign.i.i, align 4
  %pcm_bps.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %pcm_bps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcm_bps.i, align 4
  %mul.i = mul i32 %22, %sub18
  %add.i = add i32 %mul.i, %15
  %23 = ptrtoint ptr %irq_pos.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %irq_pos.i, align 4
  %div.i32.i = udiv i32 %add.i, 100
  br label %byte_pos.exit154.i

if.else.i38.i:                                    ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %x.addr.0.i.ph.i = phi i32 [ %extract.t12.i.i, %if.else174.i.i.i.i ], [ %div172.i.i.i.i, %if.then168.i.i.i.i ]
  %pcm_salign.i156.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %pcm_salign.i156.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcm_salign.i156.i, align 4
  %pcm_bps157.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %pcm_bps157.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcm_bps157.i, align 4
  %mul158.i = mul i32 %27, %sub18
  %add159.i = add i32 %mul158.i, %15
  %28 = ptrtoint ptr %irq_pos.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add159.i, ptr %irq_pos.i, align 4
  %conv.i34.i = zext i32 %add159.i to i64
  %mul.i35.i = mul nuw nsw i64 %conv.i34.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i35.i)
  %cmp164.i.i.i142.i = icmp ult i64 %mul.i35.i, 4294967296
  br i1 %cmp164.i.i.i142.i, label %if.then168.i.i.i146.i, label %if.else174.i.i.i149.i, !prof !217

if.then168.i.i.i146.i:                            ; preds = %if.else.i38.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i144.i = trunc i64 %mul.i35.i to i32
  %div172.i.i.i145.i = udiv i32 %conv169.i.i.i144.i, %mul3.i.i
  br label %byte_pos.exit154.i

if.else174.i.i.i149.i:                            ; preds = %if.else.i38.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i, i64 %mul.i35.i) #20, !srcloc !218
  %asmresult1.i.i.i.i147.i = extractvalue { i64, i64 } %29, 1
  %extract.t12.i148.i = trunc i64 %asmresult1.i.i.i.i147.i to i32
  br label %byte_pos.exit154.i

byte_pos.exit154.i:                               ; preds = %if.else174.i.i.i149.i, %if.then168.i.i.i146.i, %if.then.i33.i
  %add163.i = phi i32 [ %add.i, %if.then.i33.i ], [ %add159.i, %if.then168.i.i.i146.i ], [ %add159.i, %if.else174.i.i.i149.i ]
  %30 = phi i32 [ %20, %if.then.i33.i ], [ %25, %if.then168.i.i.i146.i ], [ %25, %if.else174.i.i.i149.i ]
  %x.addr.0.i160.i = phi i32 [ %div.i.i, %if.then.i33.i ], [ %x.addr.0.i.ph.i, %if.then168.i.i.i146.i ], [ %x.addr.0.i.ph.i, %if.else174.i.i.i149.i ]
  %x.addr.0.i150.i = phi i32 [ %div.i32.i, %if.then.i33.i ], [ %div172.i.i.i145.i, %if.then168.i.i.i146.i ], [ %extract.t12.i148.i, %if.else174.i.i.i149.i ]
  %last_drift.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %last_drift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_drift.i, align 4
  store i32 0, ptr %last_drift.i, align 4
  %period_size_frac.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %period_size_frac.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %period_size_frac.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add163.i, i32 %34)
  %cmp8.not.i = icmp ult i32 %add163.i, %34
  br i1 %cmp8.not.i, label %byte_pos.exit154.i.bytepos_delta.exit_crit_edge, label %if.then9.i

byte_pos.exit154.i.bytepos_delta.exit_crit_edge:  ; preds = %byte_pos.exit154.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bytepos_delta.exit

if.then9.i:                                       ; preds = %byte_pos.exit154.i
  call void @__sanitizer_cov_trace_pc() #16
  %rem.i = urem i32 %add163.i, %34
  %35 = ptrtoint ptr %irq_pos.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rem.i, ptr %irq_pos.i, align 4
  %period_update_pending.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %period_update_pending.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %period_update_pending.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %period_update_pending.i, align 4
  br label %bytepos_delta.exit

bytepos_delta.exit:                               ; preds = %if.then9.i, %byte_pos.exit154.i.bytepos_delta.exit_crit_edge
  %rem.i.i = urem i32 %x.addr.0.i160.i, %30
  %sub.i.neg.i = sub i32 %rem.i.i, %x.addr.0.i160.i
  %rem.i152.i = urem i32 %x.addr.0.i150.i, %30
  %sub.i153.i = sub i32 %x.addr.0.i150.i, %rem.i152.i
  %sub.i = add i32 %sub.i153.i, %sub.i.neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %32)
  %cmp.not.i = icmp ult i32 %sub.i, %32
  %sub5.i = select i1 %cmp.not.i, i32 0, i32 %32
  %buf_pos.i = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %buf_pos.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_pos.i, align 4
  %spec.select.i = add i32 %sub.i, %38
  %add.i92 = sub i32 %spec.select.i, %sub5.i
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %delta_play.0, i32 %delta_capt.0)
  %cmp19 = icmp ult i32 %delta_play.0, %delta_capt.0
  br i1 %cmp19, label %if.then20, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then20:                                        ; preds = %if.else
  %sub21 = sub i32 %delta_capt.0, %delta_play.0
  %irq_pos.i94 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 11
  %39 = ptrtoint ptr %irq_pos.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_pos.i94, align 4
  %pcm_rate_shift.i.i95 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 9
  %41 = ptrtoint ptr %pcm_rate_shift.i.i95 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pcm_rate_shift.i.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %42)
  %cmp.i.i96 = icmp eq i32 %42, 100000
  br i1 %cmp.i.i96, label %if.then.i33.i219, label %if.else.i.i101

if.else.i.i101:                                   ; preds = %if.then20
  %conv.i.i97 = zext i32 %40 to i64
  %mul.i.i98 = mul nuw nsw i64 %conv.i.i97, 100000
  %mul3.i.i99 = mul i32 %42, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i98)
  %cmp164.i.i.i.i205 = icmp ult i64 %mul.i.i98, 4294967296
  br i1 %cmp164.i.i.i.i205, label %if.then168.i.i.i.i209, label %if.else174.i.i.i.i212, !prof !217

if.then168.i.i.i.i209:                            ; preds = %if.else.i.i101
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i207 = trunc i64 %mul.i.i98 to i32
  %div172.i.i.i.i208 = udiv i32 %conv169.i.i.i.i207, %mul3.i.i99
  br label %if.else.i38.i229

if.else174.i.i.i.i212:                            ; preds = %if.else.i.i101
  call void @__sanitizer_cov_trace_pc() #16
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i99, i64 %mul.i.i98) #20, !srcloc !218
  %asmresult1.i.i.i.i.i210 = extractvalue { i64, i64 } %43, 1
  %extract.t12.i.i211 = trunc i64 %asmresult1.i.i.i.i.i210 to i32
  br label %if.else.i38.i229

if.then.i33.i219:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %div.i.i213 = udiv i32 %40, 100
  %pcm_salign.i.i214 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %pcm_salign.i.i214 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcm_salign.i.i214, align 4
  %pcm_bps.i215 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 7
  %46 = ptrtoint ptr %pcm_bps.i215 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pcm_bps.i215, align 4
  %mul.i216 = mul i32 %47, %sub21
  %add.i217 = add i32 %mul.i216, %40
  %48 = ptrtoint ptr %irq_pos.i94 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i217, ptr %irq_pos.i94, align 4
  %div.i32.i218 = udiv i32 %add.i217, 100
  br label %byte_pos.exit154.i347

if.else.i38.i229:                                 ; preds = %if.else174.i.i.i.i212, %if.then168.i.i.i.i209
  %x.addr.0.i.ph.i220 = phi i32 [ %extract.t12.i.i211, %if.else174.i.i.i.i212 ], [ %div172.i.i.i.i208, %if.then168.i.i.i.i209 ]
  %pcm_salign.i156.i221 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 8
  %49 = ptrtoint ptr %pcm_salign.i156.i221 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pcm_salign.i156.i221, align 4
  %pcm_bps157.i222 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 7
  %51 = ptrtoint ptr %pcm_bps157.i222 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pcm_bps157.i222, align 4
  %mul158.i223 = mul i32 %52, %sub21
  %add159.i224 = add i32 %mul158.i223, %40
  %53 = ptrtoint ptr %irq_pos.i94 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add159.i224, ptr %irq_pos.i94, align 4
  %conv.i34.i225 = zext i32 %add159.i224 to i64
  %mul.i35.i226 = mul nuw nsw i64 %conv.i34.i225, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i35.i226)
  %cmp164.i.i.i142.i333 = icmp ult i64 %mul.i35.i226, 4294967296
  br i1 %cmp164.i.i.i142.i333, label %if.then168.i.i.i146.i337, label %if.else174.i.i.i149.i340, !prof !217

if.then168.i.i.i146.i337:                         ; preds = %if.else.i38.i229
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i144.i335 = trunc i64 %mul.i35.i226 to i32
  %div172.i.i.i145.i336 = udiv i32 %conv169.i.i.i144.i335, %mul3.i.i99
  br label %byte_pos.exit154.i347

if.else174.i.i.i149.i340:                         ; preds = %if.else.i38.i229
  call void @__sanitizer_cov_trace_pc() #16
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i99, i64 %mul.i35.i226) #20, !srcloc !218
  %asmresult1.i.i.i.i147.i338 = extractvalue { i64, i64 } %54, 1
  %extract.t12.i148.i339 = trunc i64 %asmresult1.i.i.i.i147.i338 to i32
  br label %byte_pos.exit154.i347

byte_pos.exit154.i347:                            ; preds = %if.else174.i.i.i149.i340, %if.then168.i.i.i146.i337, %if.then.i33.i219
  %add163.i341 = phi i32 [ %add.i217, %if.then.i33.i219 ], [ %add159.i224, %if.then168.i.i.i146.i337 ], [ %add159.i224, %if.else174.i.i.i149.i340 ]
  %55 = phi i32 [ %45, %if.then.i33.i219 ], [ %50, %if.then168.i.i.i146.i337 ], [ %50, %if.else174.i.i.i149.i340 ]
  %x.addr.0.i160.i342 = phi i32 [ %div.i.i213, %if.then.i33.i219 ], [ %x.addr.0.i.ph.i220, %if.then168.i.i.i146.i337 ], [ %x.addr.0.i.ph.i220, %if.else174.i.i.i149.i340 ]
  %x.addr.0.i150.i343 = phi i32 [ %div.i32.i218, %if.then.i33.i219 ], [ %div172.i.i.i145.i336, %if.then168.i.i.i146.i337 ], [ %extract.t12.i148.i339, %if.else174.i.i.i149.i340 ]
  %last_drift.i344 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 13
  %56 = ptrtoint ptr %last_drift.i344 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %last_drift.i344, align 4
  store i32 0, ptr %last_drift.i344, align 4
  %period_size_frac.i345 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 12
  %58 = ptrtoint ptr %period_size_frac.i345 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %period_size_frac.i345, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add163.i341, i32 %59)
  %cmp8.not.i346 = icmp ult i32 %add163.i341, %59
  br i1 %cmp8.not.i346, label %byte_pos.exit154.i347.bytepos_delta.exit361_crit_edge, label %if.then9.i352

byte_pos.exit154.i347.bytepos_delta.exit361_crit_edge: ; preds = %byte_pos.exit154.i347
  call void @__sanitizer_cov_trace_pc() #16
  br label %bytepos_delta.exit361

if.then9.i352:                                    ; preds = %byte_pos.exit154.i347
  call void @__sanitizer_cov_trace_pc() #16
  %rem.i348 = urem i32 %add163.i341, %59
  %60 = ptrtoint ptr %irq_pos.i94 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %rem.i348, ptr %irq_pos.i94, align 4
  %period_update_pending.i349 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 10
  %61 = ptrtoint ptr %period_update_pending.i349 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i350 = load i8, ptr %period_update_pending.i349, align 4
  %bf.set.i351 = or i8 %bf.load.i350, -128
  store i8 %bf.set.i351, ptr %period_update_pending.i349, align 4
  br label %bytepos_delta.exit361

bytepos_delta.exit361:                            ; preds = %if.then9.i352, %byte_pos.exit154.i347.bytepos_delta.exit361_crit_edge
  %rem.i.i353 = urem i32 %x.addr.0.i160.i342, %55
  %sub.i.neg.i354 = sub i32 %rem.i.i353, %x.addr.0.i160.i342
  %rem.i152.i355 = urem i32 %x.addr.0.i150.i343, %55
  %sub.i153.i356 = sub i32 %x.addr.0.i150.i343, %rem.i152.i355
  %sub.i357 = add i32 %sub.i153.i356, %sub.i.neg.i354
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i357, i32 %57)
  %cmp.not.i358 = icmp ult i32 %sub.i357, %57
  %sub5.i359 = select i1 %cmp.not.i358, i32 0, i32 %57
  %spec.select.i360 = sub i32 %sub.i357, %sub5.i359
  tail call fastcc void @clear_capture_buf(ptr noundef %3, i32 noundef %spec.select.i360)
  %buf_pos.i362 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %buf_pos.i362 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_pos.i362, align 4
  %add.i363 = add i32 %spec.select.i360, %63
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %bytepos_delta.exit361, %bytepos_delta.exit
  %.sink = phi ptr [ %3, %bytepos_delta.exit361 ], [ %1, %bytepos_delta.exit ]
  %add.i363.sink = phi i32 [ %add.i363, %bytepos_delta.exit361 ], [ %add.i92, %bytepos_delta.exit ]
  %buf_pos.i362.sink = phi ptr [ %buf_pos.i362, %bytepos_delta.exit361 ], [ %buf_pos.i, %bytepos_delta.exit ]
  %delta_play.1.ph = phi i32 [ %delta_play.0, %bytepos_delta.exit361 ], [ %delta_capt.0, %bytepos_delta.exit ]
  %pcm_buffer_size.i364 = getelementptr inbounds %struct.loopback_pcm, ptr %.sink, i32 0, i32 3
  %64 = ptrtoint ptr %pcm_buffer_size.i364 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pcm_buffer_size.i364, align 4
  %rem.i365 = urem i32 %add.i363.sink, %65
  %66 = ptrtoint ptr %buf_pos.i362.sink to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %rem.i365, ptr %buf_pos.i362.sink, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else.if.end24_crit_edge
  %delta_play.1 = phi i32 [ %delta_play.0, %if.else.if.end24_crit_edge ], [ %delta_play.1.ph, %if.end24.sink.split ]
  %delta_capt.1 = phi i32 [ %delta_capt.0, %if.else.if.end24_crit_edge ], [ %delta_play.1.ph, %if.end24.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta_play.1)
  %cmp25 = icmp eq i32 %delta_play.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta_capt.1)
  %cmp27 = icmp eq i32 %delta_capt.1, 0
  %or.cond91 = select i1 %cmp25, i1 %cmp27, i1 false
  br i1 %or.cond91, label %if.end24.unlock_crit_edge, label %if.end29

if.end24.unlock_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end29:                                         ; preds = %if.end24
  %irq_pos.i366 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 11
  %67 = ptrtoint ptr %irq_pos.i366 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq_pos.i366, align 4
  %pcm_rate_shift.i.i367 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 9
  %69 = ptrtoint ptr %pcm_rate_shift.i.i367 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pcm_rate_shift.i.i367, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %70)
  %cmp.i.i368 = icmp eq i32 %70, 100000
  br i1 %cmp.i.i368, label %if.then.i33.i491, label %if.else.i.i373

if.else.i.i373:                                   ; preds = %if.end29
  %conv.i.i369 = zext i32 %68 to i64
  %mul.i.i370 = mul nuw nsw i64 %conv.i.i369, 100000
  %mul3.i.i371 = mul i32 %70, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i370)
  %cmp164.i.i.i.i477 = icmp ult i64 %mul.i.i370, 4294967296
  br i1 %cmp164.i.i.i.i477, label %if.then168.i.i.i.i481, label %if.else174.i.i.i.i484, !prof !217

if.then168.i.i.i.i481:                            ; preds = %if.else.i.i373
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i479 = trunc i64 %mul.i.i370 to i32
  %div172.i.i.i.i480 = udiv i32 %conv169.i.i.i.i479, %mul3.i.i371
  br label %if.else.i38.i501

if.else174.i.i.i.i484:                            ; preds = %if.else.i.i373
  call void @__sanitizer_cov_trace_pc() #16
  %71 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i371, i64 %mul.i.i370) #20, !srcloc !218
  %asmresult1.i.i.i.i.i482 = extractvalue { i64, i64 } %71, 1
  %extract.t12.i.i483 = trunc i64 %asmresult1.i.i.i.i.i482 to i32
  br label %if.else.i38.i501

if.then.i33.i491:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %div.i.i485 = udiv i32 %68, 100
  %pcm_salign.i.i486 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 8
  %72 = ptrtoint ptr %pcm_salign.i.i486 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pcm_salign.i.i486, align 4
  %pcm_bps.i487 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %pcm_bps.i487 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pcm_bps.i487, align 4
  %mul.i488 = mul i32 %75, %delta_play.1
  %add.i489 = add i32 %mul.i488, %68
  %76 = ptrtoint ptr %irq_pos.i366 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i489, ptr %irq_pos.i366, align 4
  %div.i32.i490 = udiv i32 %add.i489, 100
  br label %byte_pos.exit154.i619

if.else.i38.i501:                                 ; preds = %if.else174.i.i.i.i484, %if.then168.i.i.i.i481
  %x.addr.0.i.ph.i492 = phi i32 [ %extract.t12.i.i483, %if.else174.i.i.i.i484 ], [ %div172.i.i.i.i480, %if.then168.i.i.i.i481 ]
  %pcm_salign.i156.i493 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 8
  %77 = ptrtoint ptr %pcm_salign.i156.i493 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pcm_salign.i156.i493, align 4
  %pcm_bps157.i494 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 7
  %79 = ptrtoint ptr %pcm_bps157.i494 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pcm_bps157.i494, align 4
  %mul158.i495 = mul i32 %80, %delta_play.1
  %add159.i496 = add i32 %mul158.i495, %68
  %81 = ptrtoint ptr %irq_pos.i366 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add159.i496, ptr %irq_pos.i366, align 4
  %conv.i34.i497 = zext i32 %add159.i496 to i64
  %mul.i35.i498 = mul nuw nsw i64 %conv.i34.i497, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i35.i498)
  %cmp164.i.i.i142.i605 = icmp ult i64 %mul.i35.i498, 4294967296
  br i1 %cmp164.i.i.i142.i605, label %if.then168.i.i.i146.i609, label %if.else174.i.i.i149.i612, !prof !217

if.then168.i.i.i146.i609:                         ; preds = %if.else.i38.i501
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i144.i607 = trunc i64 %mul.i35.i498 to i32
  %div172.i.i.i145.i608 = udiv i32 %conv169.i.i.i144.i607, %mul3.i.i371
  br label %byte_pos.exit154.i619

if.else174.i.i.i149.i612:                         ; preds = %if.else.i38.i501
  call void @__sanitizer_cov_trace_pc() #16
  %82 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i371, i64 %mul.i35.i498) #20, !srcloc !218
  %asmresult1.i.i.i.i147.i610 = extractvalue { i64, i64 } %82, 1
  %extract.t12.i148.i611 = trunc i64 %asmresult1.i.i.i.i147.i610 to i32
  br label %byte_pos.exit154.i619

byte_pos.exit154.i619:                            ; preds = %if.else174.i.i.i149.i612, %if.then168.i.i.i146.i609, %if.then.i33.i491
  %add163.i613 = phi i32 [ %add.i489, %if.then.i33.i491 ], [ %add159.i496, %if.then168.i.i.i146.i609 ], [ %add159.i496, %if.else174.i.i.i149.i612 ]
  %83 = phi i32 [ %73, %if.then.i33.i491 ], [ %78, %if.then168.i.i.i146.i609 ], [ %78, %if.else174.i.i.i149.i612 ]
  %x.addr.0.i160.i614 = phi i32 [ %div.i.i485, %if.then.i33.i491 ], [ %x.addr.0.i.ph.i492, %if.then168.i.i.i146.i609 ], [ %x.addr.0.i.ph.i492, %if.else174.i.i.i149.i612 ]
  %x.addr.0.i150.i615 = phi i32 [ %div.i32.i490, %if.then.i33.i491 ], [ %div172.i.i.i145.i608, %if.then168.i.i.i146.i609 ], [ %extract.t12.i148.i611, %if.else174.i.i.i149.i612 ]
  %last_drift.i616 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 13
  %84 = ptrtoint ptr %last_drift.i616 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %last_drift.i616, align 4
  store i32 0, ptr %last_drift.i616, align 4
  %period_size_frac.i617 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 12
  %86 = ptrtoint ptr %period_size_frac.i617 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %period_size_frac.i617, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add163.i613, i32 %87)
  %cmp8.not.i618 = icmp ult i32 %add163.i613, %87
  br i1 %cmp8.not.i618, label %byte_pos.exit154.i619.bytepos_delta.exit633_crit_edge, label %if.then9.i624

byte_pos.exit154.i619.bytepos_delta.exit633_crit_edge: ; preds = %byte_pos.exit154.i619
  call void @__sanitizer_cov_trace_pc() #16
  br label %bytepos_delta.exit633

if.then9.i624:                                    ; preds = %byte_pos.exit154.i619
  call void @__sanitizer_cov_trace_pc() #16
  %rem.i620 = urem i32 %add163.i613, %87
  %88 = ptrtoint ptr %irq_pos.i366 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %rem.i620, ptr %irq_pos.i366, align 4
  %period_update_pending.i621 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 10
  %89 = ptrtoint ptr %period_update_pending.i621 to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i622 = load i8, ptr %period_update_pending.i621, align 4
  %bf.set.i623 = or i8 %bf.load.i622, -128
  store i8 %bf.set.i623, ptr %period_update_pending.i621, align 4
  br label %bytepos_delta.exit633

bytepos_delta.exit633:                            ; preds = %if.then9.i624, %byte_pos.exit154.i619.bytepos_delta.exit633_crit_edge
  %rem.i.i625 = urem i32 %x.addr.0.i160.i614, %83
  %sub.i.neg.i626 = sub i32 %rem.i.i625, %x.addr.0.i160.i614
  %rem.i152.i627 = urem i32 %x.addr.0.i150.i615, %83
  %sub.i153.i628 = sub i32 %x.addr.0.i150.i615, %rem.i152.i627
  %sub.i629 = add i32 %sub.i153.i628, %sub.i.neg.i626
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i629, i32 %85)
  %cmp.not.i630 = icmp ult i32 %sub.i629, %85
  %sub5.i631 = select i1 %cmp.not.i630, i32 0, i32 %85
  %spec.select.i632 = sub i32 %sub.i629, %sub5.i631
  %irq_pos.i634 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 11
  %90 = ptrtoint ptr %irq_pos.i634 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq_pos.i634, align 4
  %pcm_rate_shift.i.i635 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 9
  %92 = ptrtoint ptr %pcm_rate_shift.i.i635 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pcm_rate_shift.i.i635, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %93)
  %cmp.i.i636 = icmp eq i32 %93, 100000
  br i1 %cmp.i.i636, label %if.then.i33.i759, label %if.else.i.i641

if.else.i.i641:                                   ; preds = %bytepos_delta.exit633
  %conv.i.i637 = zext i32 %91 to i64
  %mul.i.i638 = mul nuw nsw i64 %conv.i.i637, 100000
  %mul3.i.i639 = mul i32 %93, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i638)
  %cmp164.i.i.i.i745 = icmp ult i64 %mul.i.i638, 4294967296
  br i1 %cmp164.i.i.i.i745, label %if.then168.i.i.i.i749, label %if.else174.i.i.i.i752, !prof !217

if.then168.i.i.i.i749:                            ; preds = %if.else.i.i641
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i747 = trunc i64 %mul.i.i638 to i32
  %div172.i.i.i.i748 = udiv i32 %conv169.i.i.i.i747, %mul3.i.i639
  br label %if.else.i38.i769

if.else174.i.i.i.i752:                            ; preds = %if.else.i.i641
  call void @__sanitizer_cov_trace_pc() #16
  %94 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i639, i64 %mul.i.i638) #20, !srcloc !218
  %asmresult1.i.i.i.i.i750 = extractvalue { i64, i64 } %94, 1
  %extract.t12.i.i751 = trunc i64 %asmresult1.i.i.i.i.i750 to i32
  br label %if.else.i38.i769

if.then.i33.i759:                                 ; preds = %bytepos_delta.exit633
  call void @__sanitizer_cov_trace_pc() #16
  %div.i.i753 = udiv i32 %91, 100
  %pcm_salign.i.i754 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 8
  %95 = ptrtoint ptr %pcm_salign.i.i754 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pcm_salign.i.i754, align 4
  %pcm_bps.i755 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 7
  %97 = ptrtoint ptr %pcm_bps.i755 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pcm_bps.i755, align 4
  %mul.i756 = mul i32 %98, %delta_capt.1
  %add.i757 = add i32 %mul.i756, %91
  %99 = ptrtoint ptr %irq_pos.i634 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add.i757, ptr %irq_pos.i634, align 4
  %div.i32.i758 = udiv i32 %add.i757, 100
  br label %byte_pos.exit154.i887

if.else.i38.i769:                                 ; preds = %if.else174.i.i.i.i752, %if.then168.i.i.i.i749
  %x.addr.0.i.ph.i760 = phi i32 [ %extract.t12.i.i751, %if.else174.i.i.i.i752 ], [ %div172.i.i.i.i748, %if.then168.i.i.i.i749 ]
  %pcm_salign.i156.i761 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 8
  %100 = ptrtoint ptr %pcm_salign.i156.i761 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pcm_salign.i156.i761, align 4
  %pcm_bps157.i762 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 7
  %102 = ptrtoint ptr %pcm_bps157.i762 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pcm_bps157.i762, align 4
  %mul158.i763 = mul i32 %103, %delta_capt.1
  %add159.i764 = add i32 %mul158.i763, %91
  %104 = ptrtoint ptr %irq_pos.i634 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add159.i764, ptr %irq_pos.i634, align 4
  %conv.i34.i765 = zext i32 %add159.i764 to i64
  %mul.i35.i766 = mul nuw nsw i64 %conv.i34.i765, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i35.i766)
  %cmp164.i.i.i142.i873 = icmp ult i64 %mul.i35.i766, 4294967296
  br i1 %cmp164.i.i.i142.i873, label %if.then168.i.i.i146.i877, label %if.else174.i.i.i149.i880, !prof !217

if.then168.i.i.i146.i877:                         ; preds = %if.else.i38.i769
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i144.i875 = trunc i64 %mul.i35.i766 to i32
  %div172.i.i.i145.i876 = udiv i32 %conv169.i.i.i144.i875, %mul3.i.i639
  br label %byte_pos.exit154.i887

if.else174.i.i.i149.i880:                         ; preds = %if.else.i38.i769
  call void @__sanitizer_cov_trace_pc() #16
  %105 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i.i639, i64 %mul.i35.i766) #20, !srcloc !218
  %asmresult1.i.i.i.i147.i878 = extractvalue { i64, i64 } %105, 1
  %extract.t12.i148.i879 = trunc i64 %asmresult1.i.i.i.i147.i878 to i32
  br label %byte_pos.exit154.i887

byte_pos.exit154.i887:                            ; preds = %if.else174.i.i.i149.i880, %if.then168.i.i.i146.i877, %if.then.i33.i759
  %add163.i881 = phi i32 [ %add.i757, %if.then.i33.i759 ], [ %add159.i764, %if.then168.i.i.i146.i877 ], [ %add159.i764, %if.else174.i.i.i149.i880 ]
  %106 = phi i32 [ %96, %if.then.i33.i759 ], [ %101, %if.then168.i.i.i146.i877 ], [ %101, %if.else174.i.i.i149.i880 ]
  %x.addr.0.i160.i882 = phi i32 [ %div.i.i753, %if.then.i33.i759 ], [ %x.addr.0.i.ph.i760, %if.then168.i.i.i146.i877 ], [ %x.addr.0.i.ph.i760, %if.else174.i.i.i149.i880 ]
  %x.addr.0.i150.i883 = phi i32 [ %div.i32.i758, %if.then.i33.i759 ], [ %div172.i.i.i145.i876, %if.then168.i.i.i146.i877 ], [ %extract.t12.i148.i879, %if.else174.i.i.i149.i880 ]
  %last_drift.i884 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 13
  %107 = ptrtoint ptr %last_drift.i884 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %last_drift.i884, align 4
  store i32 0, ptr %last_drift.i884, align 4
  %period_size_frac.i885 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 12
  %109 = ptrtoint ptr %period_size_frac.i885 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %period_size_frac.i885, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add163.i881, i32 %110)
  %cmp8.not.i886 = icmp ult i32 %add163.i881, %110
  br i1 %cmp8.not.i886, label %byte_pos.exit154.i887.bytepos_delta.exit901_crit_edge, label %if.then9.i892

byte_pos.exit154.i887.bytepos_delta.exit901_crit_edge: ; preds = %byte_pos.exit154.i887
  call void @__sanitizer_cov_trace_pc() #16
  br label %bytepos_delta.exit901

if.then9.i892:                                    ; preds = %byte_pos.exit154.i887
  call void @__sanitizer_cov_trace_pc() #16
  %rem.i888 = urem i32 %add163.i881, %110
  %111 = ptrtoint ptr %irq_pos.i634 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %rem.i888, ptr %irq_pos.i634, align 4
  %period_update_pending.i889 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 10
  %112 = ptrtoint ptr %period_update_pending.i889 to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load.i890 = load i8, ptr %period_update_pending.i889, align 4
  %bf.set.i891 = or i8 %bf.load.i890, -128
  store i8 %bf.set.i891, ptr %period_update_pending.i889, align 4
  br label %bytepos_delta.exit901

bytepos_delta.exit901:                            ; preds = %if.then9.i892, %byte_pos.exit154.i887.bytepos_delta.exit901_crit_edge
  %rem.i.i893 = urem i32 %x.addr.0.i160.i882, %106
  %sub.i.neg.i894 = sub i32 %rem.i.i893, %x.addr.0.i160.i882
  %rem.i152.i895 = urem i32 %x.addr.0.i150.i883, %106
  %sub.i153.i896 = sub i32 %x.addr.0.i150.i883, %rem.i152.i895
  %sub.i897 = add i32 %sub.i153.i896, %sub.i.neg.i894
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i897, i32 %108)
  %cmp.not.i898 = icmp ult i32 %sub.i897, %108
  %sub5.i899 = select i1 %cmp.not.i898, i32 0, i32 %108
  %spec.select.i900 = sub i32 %sub.i897, %sub5.i899
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i632, i32 %spec.select.i900)
  %cmp32 = icmp ult i32 %spec.select.i632, %spec.select.i900
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %bytepos_delta.exit901
  call void @__sanitizer_cov_trace_pc() #16
  %sub34 = sub i32 %spec.select.i900, %spec.select.i632
  %113 = ptrtoint ptr %last_drift.i884 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %sub34, ptr %last_drift.i884, align 4
  br label %if.end41

if.else35:                                        ; preds = %bytepos_delta.exit901
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i632, i32 %spec.select.i900)
  %cmp36 = icmp ugt i32 %spec.select.i632, %spec.select.i900
  br i1 %cmp36, label %if.then37, label %if.else35.if.end41_crit_edge

if.else35.if.end41_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then37:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #16
  %sub38 = sub i32 %spec.select.i632, %spec.select.i900
  %114 = ptrtoint ptr %last_drift.i616 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %sub38, ptr %last_drift.i616, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.else35.if.end41_crit_edge, %if.then33
  %count1.0 = phi i32 [ %spec.select.i900, %if.then33 ], [ %spec.select.i632, %if.then37 ], [ %spec.select.i632, %if.else35.if.end41_crit_edge ]
  tail call fastcc void @copy_play_buf(ptr noundef %1, ptr noundef %3, i32 noundef %count1.0)
  %buf_pos.i902 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 4
  %115 = ptrtoint ptr %buf_pos.i902 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %buf_pos.i902, align 4
  %add.i903 = add i32 %116, %count1.0
  %pcm_buffer_size.i904 = getelementptr inbounds %struct.loopback_pcm, ptr %1, i32 0, i32 3
  %117 = ptrtoint ptr %pcm_buffer_size.i904 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pcm_buffer_size.i904, align 4
  %rem.i905 = urem i32 %add.i903, %118
  store i32 %rem.i905, ptr %buf_pos.i902, align 4
  %buf_pos.i906 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 4
  %119 = ptrtoint ptr %buf_pos.i906 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %buf_pos.i906, align 4
  %add.i907 = add i32 %120, %count1.0
  %pcm_buffer_size.i908 = getelementptr inbounds %struct.loopback_pcm, ptr %3, i32 0, i32 3
  %121 = ptrtoint ptr %pcm_buffer_size.i908 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pcm_buffer_size.i908, align 4
  %rem.i909 = urem i32 %add.i907, %122
  store i32 %rem.i909, ptr %buf_pos.i906, align 4
  br label %unlock

unlock:                                           ; preds = %if.end41, %if.end24.unlock_crit_edge, %if.end12.unlock_crit_edge
  ret i32 %xor
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_jiffies_timer_dpcm_info(ptr nocapture noundef readonly %dpcm, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %period_update_pending = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 10
  %2 = ptrtoint ptr %period_update_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %period_update_pending, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %bf.cast) #14
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %irq_pos = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 11
  %5 = ptrtoint ptr %irq_pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_pos, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef %6) #14
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %period_size_frac = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 12
  %9 = ptrtoint ptr %period_size_frac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %period_size_frac, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef %10) #14
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %last_jiffies = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 14
  %13 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.32, i32 noundef %14, i32 noundef %15) #14
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %expires = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %expires, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.33, i32 noundef %19) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_jiffies_timer_function(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cable = getelementptr i8, ptr %t, i32 -52
  %0 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cable, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %2 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cable, align 4
  %call7 = tail call i32 @loopback_jiffies_timer_pos_update(ptr noundef %3)
  %substream = getelementptr i8, ptr %t, i32 -56
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %shl, %call7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -60
  %call8 = tail call i32 @loopback_jiffies_timer_start(ptr noundef %add.ptr)
  %period_update_pending = getelementptr i8, ptr %t, i32 -20
  %8 = ptrtoint ptr %period_update_pending to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %period_update_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool9.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool9.not, label %if.then.if.end16_crit_edge, label %if.then10

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear = and i8 %bf.load, 127
  %9 = ptrtoint ptr %period_update_pending to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear, ptr %period_update_pending, align 4
  %10 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cable, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call3) #14
  %12 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %13) #14
  br label %cleanup

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %14 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cable, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @loopback_rate_shift_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  store i32 80000, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 120000, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_rate_shift_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %rate_shift = getelementptr %struct.loopback, ptr %1, i32 0, i32 4, i32 %3, i32 %5, i32 1
  %6 = ptrtoint ptr %rate_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate_shift, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_rate_shift_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 80000)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 120000)
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subdevice, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device, align 4
  %rate_shift = getelementptr %struct.loopback, ptr %1, i32 0, i32 4, i32 %7, i32 %9, i32 1
  %10 = ptrtoint ptr %rate_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate_shift, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp7.not = icmp eq i32 %5, %11
  br i1 %cmp7.not, label %entry.if.end17_crit_edge, label %if.then8

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %rate_shift to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %rate_shift, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %entry.if.end17_crit_edge
  %change.0 = phi i32 [ 1, %if.then8 ], [ 0, %entry.if.end17_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret i32 %change.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_notify_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %arrayidx2 = getelementptr %struct.loopback, ptr %1, i32 0, i32 4, i32 %3, i32 %5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %arrayidx2, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_notify_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subdevice, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %arrayidx3 = getelementptr %struct.loopback, ptr %1, i32 0, i32 4, i32 %5, i32 %7
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %arrayidx3, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %9 = zext i1 %tobool.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %9)
  %cmp.not = icmp eq i8 %bf.lshr, %9
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bf.shl = select i1 %tobool.not, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set, ptr %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %change.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret i32 %change.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_active_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %xor = xor i32 %5, 1
  %arrayidx2 = getelementptr %struct.loopback, ptr %1, i32 0, i32 2, i32 %3, i32 %xor
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %running3 = getelementptr inbounds %struct.loopback_cable, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %running3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %running3, align 4
  %pause = getelementptr inbounds %struct.loopback_cable, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pause, align 8
  %xor4 = xor i32 %11, %9
  %and = and i32 %xor4, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %and, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %val.0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @loopback_format_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  store i32 52, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @loopback_format_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %format = getelementptr %struct.loopback, ptr %1, i32 0, i32 4, i32 %3, i32 %5, i32 2
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @loopback_rate_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  store i32 192000, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_rate_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %rate = getelementptr %struct.loopback, ptr %1, i32 0, i32 4, i32 %3, i32 %5, i32 3
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @loopback_channels_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  store i32 1, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1024, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_channels_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %channels = getelementptr %struct.loopback, ptr %1, i32 0, i32 4, i32 %3, i32 %5, i32 4
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @print_cable_info(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #21
  %sub3 = add i32 %call, -1
  %arrayidx = getelementptr i8, ptr %3, i32 %sub3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %cmp = icmp ne i8 %5, 48
  %cond = zext i1 %cmp to i32
  br label %for.body

for.body:                                         ; preds = %print_substream_info.exit.for.body_crit_edge, %entry
  %sub.015 = phi i32 [ 0, %entry ], [ %inc, %print_substream_info.exit.for.body_crit_edge ]
  %arrayidx1.i = getelementptr %struct.loopback, ptr %1, i32 0, i32 2, i32 %sub.015, i32 %cond
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i, align 4
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.42, i32 noundef %cond, i32 noundef %sub.015) #14
  %cmp.i = icmp eq ptr %7, null
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.43) #14
  br label %print_substream_info.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %valid.i = getelementptr inbounds %struct.loopback_cable, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %valid.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.44, i32 noundef %13) #14
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %running.i = getelementptr inbounds %struct.loopback_cable, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %running.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef %17) #14
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %pause.i = getelementptr inbounds %struct.loopback_cable, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pause.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.46, i32 noundef %21) #14
  %streams.i = getelementptr inbounds %struct.loopback_cable, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %streams.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %streams.i, align 4
  tail call fastcc void @print_dpcm_info(ptr noundef %buffer, ptr noundef %23, ptr noundef nonnull @.str.47) #14
  %arrayidx9.i = getelementptr %struct.loopback_cable, ptr %7, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9.i, align 4
  tail call fastcc void @print_dpcm_info(ptr noundef %buffer, ptr noundef %25, ptr noundef nonnull @.str.48) #14
  br label %print_substream_info.exit

print_substream_info.exit:                        ; preds = %if.end.i, %if.then.i
  %inc = add nuw nsw i32 %sub.015, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %print_substream_info.exit.for.body_crit_edge

print_substream_info.exit.for.body_crit_edge:     ; preds = %print_substream_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %print_substream_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_dpcm_info(ptr noundef %buffer, ptr noundef %dpcm, ptr noundef %id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef %id) #14
  %cmp = icmp eq ptr %dpcm, null
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.50) #14
  br label %if.end14

if.end:                                           ; preds = %entry
  %pcm_buffer_size = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 3
  %4 = ptrtoint ptr %pcm_buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcm_buffer_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.51, i32 noundef %5) #14
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %buf_pos = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 4
  %8 = ptrtoint ptr %buf_pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_pos, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.52, i32 noundef %9) #14
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %silent_size = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 5
  %12 = ptrtoint ptr %silent_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %silent_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.53, i32 noundef %13) #14
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %pcm_period_size = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 6
  %16 = ptrtoint ptr %pcm_period_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcm_period_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.54, i32 noundef %17) #14
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %pcm_bps = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 7
  %20 = ptrtoint ptr %pcm_bps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcm_bps, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.55, i32 noundef %21) #14
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %pcm_salign = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 8
  %24 = ptrtoint ptr %pcm_salign to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcm_salign, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.56, i32 noundef %25) #14
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %pcm_rate_shift = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 9
  %28 = ptrtoint ptr %pcm_rate_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pcm_rate_shift, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.57, i32 noundef %29) #14
  %cable = getelementptr inbounds %struct.loopback_pcm, ptr %dpcm, i32 0, i32 2
  %30 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cable, align 4
  %ops = getelementptr inbounds %struct.loopback_cable, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %dpcm_info = getelementptr inbounds %struct.loopback_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %dpcm_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dpcm_info, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %35(ptr noundef nonnull %dpcm, ptr noundef %buffer) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @print_timer_source_info(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %timer_source = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %timer_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timer_source, align 4
  %tobool.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not, ptr @.str.60, ptr %5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.59, ptr noundef nonnull %spec.select) #14
  tail call void @mutex_unlock(ptr noundef %cable_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @change_timer_source_info(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #1 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #14
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  %cable_lock = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cable_lock, i32 noundef 0) #14
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %call3 = call ptr @strim(ptr noundef nonnull %line) #14
  %timer_source.i = getelementptr inbounds %struct.loopback, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %timer_source.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer_source.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  call void @devm_kfree(ptr noundef %8, ptr noundef nonnull %4) #14
  %9 = ptrtoint ptr %timer_source.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %timer_source.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %tobool3.not.i = icmp eq ptr %call3, null
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not.i = icmp eq i8 %11, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then5.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev7.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7.i, align 8
  %call.i = call noalias ptr @devm_kstrdup(ptr noundef %15, ptr noundef nonnull %call3, i32 noundef 3264) #14
  %16 = ptrtoint ptr %timer_source.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %timer_source.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %cable_lock) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_suspend(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_resume(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @strchr(ptr, i32) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !92, !93, !94, !95, !96, !97, !99, !100, !102, !103, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !127, !128, !129, !131, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199}
!llvm.named.register.sp = !{!201}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/drivers/aloop.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/drivers/aloop.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/drivers/aloop.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/drivers/aloop.c", i32 46, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype242, !8, !"__UNIQUE_ID_indextype242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index243, !11, !"__UNIQUE_ID_index243", i1 false, i1 false}
!11 = !{!"../sound/drivers/aloop.c", i32 47, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/drivers/aloop.c", i32 48, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype244, !13, !"__UNIQUE_ID_idtype244", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id245, !16, !"__UNIQUE_ID_id245", i1 false, i1 false}
!16 = !{!"../sound/drivers/aloop.c", i32 49, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/drivers/aloop.c", i32 50, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype246, !18, !"__UNIQUE_ID_enabletype246", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable247, !21, !"__UNIQUE_ID_enable247", i1 false, i1 false}
!21 = !{!"../sound/drivers/aloop.c", i32 51, i32 1}
!22 = !{ptr @__param_pcm_substreams, !23, !"__param_pcm_substreams", i1 false, i1 false}
!23 = !{!"../sound/drivers/aloop.c", i32 52, i32 1}
!24 = !{ptr @__UNIQUE_ID_pcm_substreamstype248, !23, !"__UNIQUE_ID_pcm_substreamstype248", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_pcm_substreams249, !26, !"__UNIQUE_ID_pcm_substreams249", i1 false, i1 false}
!26 = !{!"../sound/drivers/aloop.c", i32 53, i32 1}
!27 = !{ptr @__param_pcm_notify, !28, !"__param_pcm_notify", i1 false, i1 false}
!28 = !{!"../sound/drivers/aloop.c", i32 54, i32 1}
!29 = !{ptr @__UNIQUE_ID_pcm_notifytype250, !28, !"__UNIQUE_ID_pcm_notifytype250", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_pcm_notify251, !31, !"__UNIQUE_ID_pcm_notify251", i1 false, i1 false}
!31 = !{!"../sound/drivers/aloop.c", i32 55, i32 1}
!32 = !{ptr @__param_timer_source, !33, !"__param_timer_source", i1 false, i1 false}
!33 = !{!"../sound/drivers/aloop.c", i32 56, i32 1}
!34 = !{ptr @__UNIQUE_ID_timer_sourcetype252, !33, !"__UNIQUE_ID_timer_sourcetype252", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_timer_source253, !36, !"__UNIQUE_ID_timer_source253", i1 false, i1 false}
!36 = !{!"../sound/drivers/aloop.c", i32 57, i32 1}
!37 = !{ptr @__initcall__kmod_snd_aloop__254_1835_alsa_card_loopback_init6, !38, !"__initcall__kmod_snd_aloop__254_1835_alsa_card_loopback_init6", i1 false, i1 false}
!38 = !{!"../sound/drivers/aloop.c", i32 1835, i32 1}
!39 = !{ptr @__exitcall_alsa_card_loopback_exit, !40, !"__exitcall_alsa_card_loopback_exit", i1 false, i1 false}
!40 = !{!"../sound/drivers/aloop.c", i32 1836, i32 1}
!41 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!42 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!43 = !{ptr @index, !44, !"index", i1 false, i1 false}
!44 = !{!"../sound/drivers/aloop.c", i32 39, i32 12}
!45 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!46 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!47 = !{ptr @id, !48, !"id", i1 false, i1 false}
!48 = !{!"../sound/drivers/aloop.c", i32 40, i32 14}
!49 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!50 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!51 = !{ptr @enable, !52, !"enable", i1 false, i1 false}
!52 = !{!"../sound/drivers/aloop.c", i32 41, i32 13}
!53 = !{ptr @__param_str_pcm_substreams, !23, !"__param_str_pcm_substreams", i1 false, i1 false}
!54 = !{ptr @__param_arr_pcm_substreams, !23, !"__param_arr_pcm_substreams", i1 false, i1 false}
!55 = !{ptr @pcm_substreams, !56, !"pcm_substreams", i1 false, i1 false}
!56 = !{!"../sound/drivers/aloop.c", i32 42, i32 12}
!57 = !{ptr @__param_str_pcm_notify, !28, !"__param_str_pcm_notify", i1 false, i1 false}
!58 = !{ptr @__param_arr_pcm_notify, !28, !"__param_arr_pcm_notify", i1 false, i1 false}
!59 = !{ptr @pcm_notify, !60, !"pcm_notify", i1 false, i1 false}
!60 = !{!"../sound/drivers/aloop.c", i32 43, i32 12}
!61 = !{ptr @__param_str_timer_source, !33, !"__param_str_timer_source", i1 false, i1 false}
!62 = !{ptr @__param_arr_timer_source, !33, !"__param_arr_timer_source", i1 false, i1 false}
!63 = !{ptr @timer_source, !64, !"timer_source", i1 false, i1 false}
!64 = !{!"../sound/drivers/aloop.c", i32 44, i32 14}
!65 = !{ptr @devices, !66, !"devices", i1 false, i1 false}
!66 = !{!"../sound/drivers/aloop.c", i32 163, i32 32}
!67 = !{ptr @.str, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/drivers/aloop.c", i32 1781, i32 11}
!69 = !{ptr @loopback_driver, !70, !"loopback_driver", i1 false, i1 false}
!70 = !{!"../sound/drivers/aloop.c", i32 1778, i32 31}
!71 = !{ptr @loopback_probe.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../sound/drivers/aloop.c", i32 1729, i32 2}
!73 = !{ptr @.str.2, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.3, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/drivers/aloop.c", i32 1743, i32 23}
!76 = !{ptr @.str.4, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/drivers/aloop.c", i32 1745, i32 26}
!78 = !{ptr @.str.5, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/drivers/aloop.c", i32 1312, i32 36}
!80 = !{ptr @loopback_pcm_ops, !81, !"loopback_pcm_ops", i1 false, i1 false}
!81 = !{!"../sound/drivers/aloop.c", i32 1297, i32 33}
!82 = !{ptr @loopback_open.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../sound/drivers/aloop.c", i32 1207, i32 3}
!84 = !{ptr @.str.6, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @loopback_pcm_hardware, !86, !"loopback_pcm_hardware", i1 false, i1 false}
!86 = !{!"../sound/drivers/aloop.c", i32 876, i32 38}
!87 = !{ptr @loopback_snd_timer_ops, !88, !"loopback_snd_timer_ops", i1 false, i1 false}
!88 = !{!"../sound/drivers/aloop.c", i32 1174, i32 34}
!89 = !{ptr @.str.7, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/drivers/aloop.c", i32 1112, i32 3}
!91 = !{ptr @.str.8, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.9, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.10, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.11, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @loopback_snd_timer_open._entry, !90, !"_entry", i1 false, i1 false}
!96 = !{ptr @loopback_snd_timer_open._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @loopback_snd_timer_open.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../sound/drivers/aloop.c", i32 1140, i32 2}
!99 = !{ptr @.str.12, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.14, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/drivers/aloop.c", i32 1155, i32 3}
!102 = !{ptr @loopback_snd_timer_open._entry.13, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @loopback_snd_timer_open._entry_ptr.15, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.16, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/drivers/aloop.c", i32 1037, i32 31}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/drivers/aloop.c", i32 1038, i32 32}
!108 = !{ptr @.str.18, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/drivers/aloop.c", i32 697, i32 3}
!110 = !{ptr @.str.19, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @loopback_snd_timer_check_resolution._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @loopback_snd_timer_check_resolution._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.20, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/drivers/aloop.c", i32 245, i32 3}
!115 = !{ptr @.str.21, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @loopback_snd_timer_start._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @loopback_snd_timer_start._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.22, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/drivers/aloop.c", i32 277, i32 3}
!120 = !{ptr @.str.23, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @loopback_snd_timer_stop._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @loopback_snd_timer_stop._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.24, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/drivers/aloop.c", i32 853, i32 2}
!125 = !{ptr @.str.25, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/drivers/aloop.c", i32 857, i32 2}
!127 = !{ptr @.str.26, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.27, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @loopback_jiffies_timer_ops, !130, !"loopback_jiffies_timer_ops", i1 false, i1 false}
!130 = !{!"../sound/drivers/aloop.c", i32 1023, i32 34}
!131 = !{ptr @loopback_jiffies_timer_open.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../sound/drivers/aloop.c", i32 1018, i32 2}
!133 = !{ptr @.str.28, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.29, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/drivers/aloop.c", i32 839, i32 2}
!136 = !{ptr @.str.30, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/drivers/aloop.c", i32 841, i32 2}
!138 = !{ptr @.str.31, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/drivers/aloop.c", i32 842, i32 2}
!140 = !{ptr @.str.32, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/drivers/aloop.c", i32 843, i32 2}
!142 = !{ptr @.str.33, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/drivers/aloop.c", i32 845, i32 2}
!144 = !{ptr @.str.34, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/drivers/aloop.c", i32 1554, i32 26}
!146 = !{ptr @.str.35, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/drivers/aloop.c", i32 1500, i32 18}
!148 = !{ptr @.str.36, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/drivers/aloop.c", i32 1507, i32 18}
!150 = !{ptr @.str.37, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/drivers/aloop.c", i32 1516, i32 18}
!152 = !{ptr @.str.38, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/drivers/aloop.c", i32 1524, i32 18}
!154 = !{ptr @.str.39, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/drivers/aloop.c", i32 1532, i32 18}
!156 = !{ptr @.str.40, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/drivers/aloop.c", i32 1540, i32 18}
!158 = !{ptr @loopback_controls, !159, !"loopback_controls", i1 false, i1 false}
!159 = !{!"../sound/drivers/aloop.c", i32 1497, i32 38}
!160 = !{ptr @.str.41, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/drivers/aloop.c", i32 1661, i32 31}
!162 = !{ptr @.str.42, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/drivers/aloop.c", i32 1631, i32 2}
!164 = !{ptr @.str.43, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/drivers/aloop.c", i32 1633, i32 3}
!166 = !{ptr @.str.44, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/drivers/aloop.c", i32 1636, i32 2}
!168 = !{ptr @.str.45, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/drivers/aloop.c", i32 1637, i32 2}
!170 = !{ptr @.str.46, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/drivers/aloop.c", i32 1638, i32 2}
!172 = !{ptr @.str.47, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/drivers/aloop.c", i32 1639, i32 45}
!174 = !{ptr @.str.48, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/drivers/aloop.c", i32 1640, i32 45}
!176 = !{ptr @.str.49, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/drivers/aloop.c", i32 1608, i32 2}
!178 = !{ptr @.str.50, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/drivers/aloop.c", i32 1610, i32 3}
!180 = !{ptr @.str.51, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/drivers/aloop.c", i32 1613, i32 2}
!182 = !{ptr @.str.52, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/drivers/aloop.c", i32 1614, i32 2}
!184 = !{ptr @.str.53, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/drivers/aloop.c", i32 1615, i32 2}
!186 = !{ptr @.str.54, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/drivers/aloop.c", i32 1616, i32 2}
!188 = !{ptr @.str.55, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/drivers/aloop.c", i32 1617, i32 2}
!190 = !{ptr @.str.56, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/drivers/aloop.c", i32 1618, i32 2}
!192 = !{ptr @.str.57, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/drivers/aloop.c", i32 1619, i32 2}
!194 = !{ptr @.str.58, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/drivers/aloop.c", i32 1703, i32 46}
!196 = !{ptr @.str.59, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/drivers/aloop.c", i32 1684, i32 2}
!198 = !{ptr @.str.60, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @loopback_pm, !200, !"loopback_pm", i1 false, i1 false}
!200 = !{!"../sound/drivers/aloop.c", i32 1770, i32 8}
!201 = !{!"sp"}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"min_enum_size", i32 4}
!204 = !{i32 8, !"branch-target-enforcement", i32 0}
!205 = !{i32 8, !"sign-return-address", i32 0}
!206 = !{i32 8, !"sign-return-address-all", i32 0}
!207 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!211 = !{i8 0, i8 2}
!212 = !{!"auto-init"}
!213 = distinct !{!213, !214}
!214 = !{!"llvm.loop.peeled.count", i32 1}
!215 = !{i64 625455, i64 625482, i64 625504, i64 625532}
!216 = !{i64 625863, i64 625890, i64 625923, i64 625944, i64 625971, i64 625997}
!217 = !{!"branch_weights", i32 2000, i32 1}
!218 = !{i64 2148110999, i64 2148111279, i64 2148111613, i64 2148111947}
