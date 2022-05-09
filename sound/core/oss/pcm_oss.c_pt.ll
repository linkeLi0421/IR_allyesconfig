; ModuleID = '/llk/IR_all_yes/sound/core/oss/pcm_oss.c_pt.bc'
source_filename = "../sound/core/oss/pcm_oss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.snd_pcm_notify = type { ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_plugin = type { ptr, i32, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [0 x i8] }
%struct.snd_pcm_plugin_format = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
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
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.75, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.75 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_pcm_oss_file = type { [2 x ptr] }
%struct.snd_pcm_mmap_status = type { i32, i32, [4 x i8], i32, [0 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_pcm_sw_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [56 x i8] }
%struct.audio_buf_info = type { i32, i32, i32, i32 }
%struct.count_info = type { i32, i32, i32 }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author232 = internal constant [94 x i8] c"snd_pcm_oss.author=Jaroslav Kysela <perex@perex.cz>, Abramo Bagnara <abramo@alsa-project.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [52 x i8] c"snd_pcm_oss.description=PCM OSS emulation for ALSA.\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [44 x i8] c"snd_pcm_oss.file=sound/core/oss/snd-pcm-oss\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [24 x i8] c"snd_pcm_oss.license=GPL\00", section ".modinfo", align 1
@__param_str_dsp_map = internal constant [20 x i8] c"snd_pcm_oss.dsp_map\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_dsp_map = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @dsp_map }, align 4
@__param_dsp_map = internal constant %struct.kernel_param { ptr @__param_str_dsp_map, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_dsp_map } }, section "__param", align 4
@__UNIQUE_ID_dsp_maptype236 = internal constant [42 x i8] c"snd_pcm_oss.parmtype=dsp_map:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_dsp_map237 = internal constant [71 x i8] c"snd_pcm_oss.parm=dsp_map:PCM device number assigned to 1st OSS device.\00", section ".modinfo", align 1
@__param_str_adsp_map = internal constant [21 x i8] c"snd_pcm_oss.adsp_map\00", align 1
@__param_arr_adsp_map = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @adsp_map }, align 4
@__param_adsp_map = internal constant %struct.kernel_param { ptr @__param_str_adsp_map, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_adsp_map } }, section "__param", align 4
@__UNIQUE_ID_adsp_maptype238 = internal constant [43 x i8] c"snd_pcm_oss.parmtype=adsp_map:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_adsp_map239 = internal constant [72 x i8] c"snd_pcm_oss.parm=adsp_map:PCM device number assigned to 2nd OSS device.\00", section ".modinfo", align 1
@__param_str_nonblock_open = internal constant [26 x i8] c"snd_pcm_oss.nonblock_open\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nonblock_open = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nonblock_open = internal constant %struct.kernel_param { ptr @__param_str_nonblock_open, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @nonblock_open } }, section "__param", align 4
@__UNIQUE_ID_nonblock_opentype240 = internal constant [40 x i8] c"snd_pcm_oss.parmtype=nonblock_open:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nonblock_open241 = internal constant [69 x i8] c"snd_pcm_oss.parm=nonblock_open:Don't block opening busy PCM devices.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [36 x i8] c"snd_pcm_oss.alias=sound-service-?-3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [37 x i8] c"snd_pcm_oss.alias=sound-service-?-12\00", section ".modinfo", align 1
@snd_pcm_oss_notify = internal global { %struct.snd_pcm_notify, [44 x i8] } { %struct.snd_pcm_notify { ptr @snd_pcm_oss_register_minor, ptr @snd_pcm_oss_disconnect_minor, ptr @snd_pcm_oss_unregister_minor, %struct.list_head zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_pcm_oss__255_3237_alsa_pcm_oss_init6 = internal global ptr @alsa_pcm_oss_init, section ".initcall6.init", align 4
@__exitcall_alsa_pcm_oss_exit = internal global ptr @alsa_pcm_oss_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dsp_map = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@adsp_map = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_pcm_oss\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_pcm_oss_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/core/oss/pcm_oss.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"snd_pcm_oss_prepare: SNDRV_PCM_IOCTL_PREPARE failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" (DUPLEX)\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@snd_pcm_oss_f_reg = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @snd_pcm_oss_read, ptr @snd_pcm_oss_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_pcm_oss_poll, ptr @snd_pcm_oss_ioctl, ptr null, ptr @snd_pcm_oss_mmap, i32 0, ptr @snd_pcm_oss_open, ptr null, ptr @snd_pcm_oss_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@register_oss_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 3136, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to register OSS PCM device %i:%i\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"register_oss_dsp\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@register_oss_dsp._entry_ptr = internal global ptr @register_oss_dsp._entry, section ".printk_index", align 4
@snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_pcm_oss_change_params_locked\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No usable accesses\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot find a format!!!\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW_PARAMS failed: %i\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"snd_pcm_plug_format_plugins failed: %i\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"snd_pcm_plugin_build_io failed: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.17, i8 1, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SW_PARAMS failed: %i\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_pcm_oss_ioctl.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 2, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_pcm_oss_ioctl\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcm_oss: unknown command = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_pcm_oss_sync1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1639, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OSS sync error - DMA timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_pcm_oss_sync1\00", [46 x i8] zeroinitializer }, align 32
@snd_pcm_oss_sync1._entry_ptr = internal global ptr @snd_pcm_oss_sync1._entry, section ".printk_index", align 4
@snd_pcm_oss_init_substream.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&runtime->oss.params_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oss\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %u %u%s%s%s%s%s%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" disable\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" direct\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" block\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" non-block\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" partial-frag\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" no-silence\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erase\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"block\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"non-block\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"partial-frag\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no-silence\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"buggy-ptr\00", [22 x i8] zeroinitializer }, align 32
@alsa_pcm_oss_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 3217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ALSA: pcm_oss: invalid dsp_map[%d] = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alsa_pcm_oss_init\00", [46 x i8] zeroinitializer }, align 32
@alsa_pcm_oss_init._entry_ptr = internal global ptr @alsa_pcm_oss_init._entry, section ".printk_index", align 4
@alsa_pcm_oss_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 3222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ALSA: pcm_oss: invalid adsp_map[%d] = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@alsa_pcm_oss_init._entry_ptr.48 = internal global ptr @alsa_pcm_oss_init._entry.46, section ".printk_index", align 4
@switch.table.snd_pcm_oss_format_to = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 64, i32 8, i32 16, i32 32, i32 128, i32 256, i32 32768, i32 65536, i32 -22, i32 -22, i32 4096, i32 8192, i32 -22, i32 -22, i32 -22, i32 16384, i32 -22, i32 -22, i32 -22, i32 131072, i32 1, i32 2, i32 4, i32 512, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 262144], [60 x i8] zeroinitializer }, align 32
@switch.table.snd_pcm_oss_get_formats = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 64, i32 8, i32 16, i32 32, i32 128, i32 256, i32 32768, i32 65536, i32 1, i32 1, i32 4096, i32 8192, i32 1, i32 1, i32 1, i32 16384, i32 1, i32 1, i32 1, i32 131072, i32 1, i32 2, i32 4, i32 512], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 4294967210, i64 4294967264]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4294967210, i64 4294967264]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 4294967210, i64 4294967264]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 7]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 4294967210, i64 4294967264]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2147765622, i64 2147765753]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 77, i64 80]
@__sancov_gen_cov_switch_values.59 = internal global [32 x i64] [i64 30, i64 32, i64 20480, i64 20481, i64 20488, i64 20494, i64 20501, i64 20502, i64 1074024464, i64 1074024471, i64 2147766274, i64 2147766277, i64 2147766278, i64 2147766279, i64 2147766283, i64 2147766287, i64 2147766288, i64 2147766295, i64 2148028435, i64 2148028436, i64 2148290577, i64 2148290578, i64 2148552716, i64 2148552717, i64 3221508098, i64 3221508099, i64 3221508100, i64 3221508101, i64 3221508102, i64 3221508103, i64 3221508105, i64 3221508106]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.63 = internal global [19 x i64] [i64 17, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144]
@__sancov_gen_cov_switch_values.64 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 11, i64 15, i64 19, i64 20, i64 21, i64 22, i64 23, i64 32]
@__sancov_gen_cov_switch_values.65 = internal global [19 x i64] [i64 17, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144]
@__sancov_gen_cov_switch_values.66 = internal global [19 x i64] [i64 17, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967210, i64 4294967264]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967210, i64 4294967264]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"nonblock_open\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 37, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"snd_pcm_oss_notify\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3201, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"dsp_map\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 35, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [9 x i8] c"adsp_map\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 36, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1144, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3150, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3150, i32 45 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3150, i32 59 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"snd_pcm_oss_f_reg\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3116, i32 37 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3135, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 883, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 912, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 962, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 973, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 982, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1029, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 230, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 214, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 174, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2751, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1638, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2380, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3077, i32 49 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2963, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3004, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3004, i32 57 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3026, i32 21 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3028, i32 28 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3030, i32 28 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3032, i32 28 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3034, i32 28 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3036, i32 28 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3038, i32 28 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3216, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [28 x i8] c"../sound/core/oss/pcm_oss.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 3221, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [35 x i8] c"switch.table.snd_pcm_oss_format_to\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [37 x i8] c"switch.table.snd_pcm_oss_get_formats\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_adsp_map239, ptr @__UNIQUE_ID_adsp_maptype238, ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_dsp_map237, ptr @__UNIQUE_ID_dsp_maptype236, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_nonblock_open241, ptr @__UNIQUE_ID_nonblock_opentype240, ptr @__exitcall_alsa_pcm_oss_exit, ptr @__initcall__kmod_snd_pcm_oss__255_3237_alsa_pcm_oss_init6, ptr @__param_adsp_map, ptr @__param_dsp_map, ptr @__param_nonblock_open, ptr @alsa_pcm_oss_exit, ptr @alsa_pcm_oss_init._entry, ptr @alsa_pcm_oss_init._entry.46, ptr @alsa_pcm_oss_init._entry_ptr, ptr @alsa_pcm_oss_init._entry_ptr.48, ptr @register_oss_dsp._entry, ptr @register_oss_dsp._entry_ptr, ptr @snd_pcm_oss_sync1._entry, ptr @snd_pcm_oss_sync1._entry_ptr, ptr @nonblock_open, ptr @snd_pcm_oss_notify, ptr @dsp_map, ptr @adsp_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @snd_pcm_oss_f_reg, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @snd_pcm_oss_init_substream.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @switch.table.snd_pcm_oss_format_to, ptr @switch.table.snd_pcm_oss_get_formats], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nonblock_open to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_oss_notify to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_map to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_map to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_oss_f_reg to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_oss_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_oss_sync1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_oss_init_substream.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_pcm_oss_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_pcm_oss_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_pcm_oss_format_to to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_pcm_oss_get_formats to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_plugin_append(ptr noundef %plugin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %plug = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 14
  %0 = ptrtoint ptr %plug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plug, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %next = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 13
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %next, align 4
  %plugin_last = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 19
  %5 = ptrtoint ptr %plugin_last to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plugin_last, align 4
  %prev = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 12
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %prev, align 4
  %8 = load ptr, ptr %plugin_last, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %next6 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %next6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %plugin, ptr %next6, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 18
  %10 = ptrtoint ptr %plugin_first to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %plugin, ptr %plugin_first, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = ptrtoint ptr %plugin_last to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %plugin, ptr %plugin_last, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_oss_write3(ptr noundef %substream, ptr noundef %ptr, i32 noundef %frames, i32 noundef %in_kernel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 37
  %params_lock = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_kernel)
  %tobool = icmp ne i32 %in_kernel, 0
  br label %while.cond

while.cond:                                       ; preds = %if.end14.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %while.cond.if.end7_crit_edge [
    i32 4, label %while.cond.if.then_crit_edge
    i32 7, label %while.cond.if.then_crit_edge35
  ]

while.cond.if.then_crit_edge35:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

while.cond.if.end7_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.cond.if.then_crit_edge35
  %7 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime1, align 4
  %call.i = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16704, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %snd_pcm_oss_prepare.exit.thread32

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_write3, %snd_pcm_oss_prepare.exit.thread)) #18
          to label %cleanup [label %snd_pcm_oss_prepare.exit.thread], !srcloc !155

snd_pcm_oss_prepare.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substream, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, ptr noundef %14, ptr noundef nonnull @.str.3) #18
  br label %cleanup

snd_pcm_oss_prepare.exit.thread32:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %oss.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59
  %15 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %oss.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %oss.i, align 8
  %prev_hw_ptr_period.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 20
  %16 = ptrtoint ptr %prev_hw_ptr_period.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %prev_hw_ptr_period.i, align 8
  %period_ptr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 9
  %17 = ptrtoint ptr %period_ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %period_ptr.i, align 4
  %buffer_used.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 15
  %18 = ptrtoint ptr %buffer_used.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buffer_used.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %snd_pcm_oss_prepare.exit.thread32, %while.cond.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  %call8 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef %substream, ptr noundef %ptr, i1 noundef zeroext true, i32 noundef %frames, i1 noundef zeroext %tobool) #18
  tail call void @mutex_lock_nested(ptr noundef %params_lock, i32 noundef 0) #18
  %19 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call8, label %if.end7.cleanup_crit_edge [
    i32 -32, label %if.end7.if.end14_crit_edge
    i32 -86, label %if.end7.if.end14_crit_edge36
  ]

if.end7.if.end14_crit_edge36:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.end7.if.end14_crit_edge, %if.end7.if.end14_crit_edge36
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %status, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %cmp17 = icmp eq i32 %23, 2
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end14.while.cond_crit_edge

if.end14.while.cond_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %snd_pcm_oss_prepare.exit.thread, %do.body.i
  %retval.0 = phi i32 [ %call.i, %snd_pcm_oss_prepare.exit.thread ], [ %call.i, %do.body.i ], [ %call8, %if.end7.cleanup_crit_edge ], [ -11, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_pcm_lib_xfer(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_oss_read3(ptr noundef %substream, ptr noundef %ptr, i32 noundef %frames, i32 noundef %in_kernel) local_unnamed_addr #2 align 64 {
entry:
  %frames.i = alloca i32, align 4
  %delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay) #18
  %2 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %delay, align 4, !annotation !156
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 37
  %params_lock = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_kernel)
  %tobool = icmp ne i32 %in_kernel, 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %status, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %6, label %while.cond.if.end16_crit_edge [
    i32 4, label %while.cond.if.then_crit_edge
    i32 7, label %while.cond.if.then_crit_edge65
    i32 1, label %if.then10
  ]

while.cond.if.then_crit_edge65:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

while.cond.if.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.cond.if.then_crit_edge65
  %call = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16708, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.while.end_crit_edge, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.then10:                                        ; preds = %while.cond
  %8 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1, align 4
  %call.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16704, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %snd_pcm_oss_prepare.exit.thread60

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_read3, %snd_pcm_oss_prepare.exit.thread)) #18
          to label %while.end [label %snd_pcm_oss_prepare.exit.thread], !srcloc !155

snd_pcm_oss_prepare.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, ptr noundef %15, ptr noundef nonnull @.str.3) #18
  br label %while.end

snd_pcm_oss_prepare.exit.thread60:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %oss.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59
  %16 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %oss.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %oss.i, align 8
  %prev_hw_ptr_period.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 20
  %17 = ptrtoint ptr %prev_hw_ptr_period.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %prev_hw_ptr_period.i, align 8
  %period_ptr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 9
  %18 = ptrtoint ptr %period_ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %period_ptr.i, align 4
  %buffer_used.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 15
  %19 = ptrtoint ptr %buffer_used.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %buffer_used.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %snd_pcm_oss_prepare.exit.thread60, %if.then.if.end16_crit_edge, %while.cond.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frames.i) #18
  %20 = ptrtoint ptr %frames.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %frames.i, align 4, !annotation !156
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %if.end16
  %call.i56 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef -2147204831, ptr noundef nonnull %delay) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %while.cond.i.snd_pcm_oss_capture_position_fixup.exit.thread_crit_edge, label %if.end.i

while.cond.i.snd_pcm_oss_capture_position_fixup.exit.thread_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_position_fixup.exit.thread

if.end.i:                                         ; preds = %while.cond.i
  %21 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime1, align 4
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 18
  %25 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp2.not.i = icmp sgt i32 %24, %26
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end20

if.end4.i:                                        ; preds = %if.end.i
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 16
  %27 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %period_size.i, align 4
  %29 = xor i32 %26, -1
  %add.i = add i32 %24, %29
  %sub6.i = add i32 %add.i, %28
  %30 = urem i32 %sub6.i, %28
  %mul.i = sub i32 %sub6.i, %30
  %31 = ptrtoint ptr %frames.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i, ptr %frames.i, align 4
  %call9.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 1074020681, ptr noundef nonnull %frames.i) #18
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end4.i.snd_pcm_oss_capture_position_fixup.exit.thread_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

if.end4.i.snd_pcm_oss_capture_position_fixup.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_position_fixup.exit.thread

snd_pcm_oss_capture_position_fixup.exit.thread:   ; preds = %if.end4.i.snd_pcm_oss_capture_position_fixup.exit.thread_crit_edge, %while.cond.i.snd_pcm_oss_capture_position_fixup.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ %call9.i, %if.end4.i.snd_pcm_oss_capture_position_fixup.exit.thread_crit_edge ], [ %call.i56, %while.cond.i.snd_pcm_oss_capture_position_fixup.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frames.i) #18
  br label %while.end

if.end20:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frames.i) #18
  call void @mutex_unlock(ptr noundef %params_lock) #18
  %call21 = call i32 @__snd_pcm_lib_xfer(ptr noundef %substream, ptr noundef %ptr, i1 noundef zeroext true, i32 noundef %frames, i1 noundef zeroext %tobool) #18
  call void @mutex_lock_nested(ptr noundef %params_lock, i32 noundef 0) #18
  %32 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call21, label %if.end20.while.end_crit_edge [
    i32 -32, label %if.then25
    i32 -86, label %if.end20.while.cond.backedge_crit_edge
  ]

if.end20.while.cond.backedge_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.then25:                                        ; preds = %if.end20
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %status, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %36)
  %cmp28 = icmp eq i32 %36, 5
  br i1 %cmp28, label %if.then29, label %if.then25.while.cond.backedge_crit_edge

if.then25.while.cond.backedge_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then29.while.cond.backedge_crit_edge, %if.then25.while.cond.backedge_crit_edge, %if.end20.while.cond.backedge_crit_edge
  br label %while.cond

if.then29:                                        ; preds = %if.then25
  %call30 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16707, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.while.end_crit_edge, label %if.then29.while.cond.backedge_crit_edge

if.then29.while.cond.backedge_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.then29.while.end_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %if.then29.while.end_crit_edge, %if.end20.while.end_crit_edge, %snd_pcm_oss_capture_position_fixup.exit.thread, %snd_pcm_oss_prepare.exit.thread, %do.body.i, %if.then.while.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %snd_pcm_oss_prepare.exit.thread ], [ %call.i, %do.body.i ], [ %err.0.i.ph, %snd_pcm_oss_capture_position_fixup.exit.thread ], [ %call21, %if.end20.while.end_crit_edge ], [ %call30, %if.then29.while.end_crit_edge ], [ %call, %if.then.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay) #18
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_kernel_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_oss_writev3(ptr noundef %substream, ptr noundef %bufs, i32 noundef %frames) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 37
  br label %while.cond

while.cond:                                       ; preds = %if.end12.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %5, label %while.cond.if.end7_crit_edge [
    i32 4, label %while.cond.if.then_crit_edge
    i32 7, label %while.cond.if.then_crit_edge32
  ]

while.cond.if.then_crit_edge32:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

while.cond.if.end7_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.cond.if.then_crit_edge32
  %7 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime1, align 4
  %call.i = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16704, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %snd_pcm_oss_prepare.exit.thread29

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_writev3, %snd_pcm_oss_prepare.exit.thread)) #18
          to label %cleanup [label %snd_pcm_oss_prepare.exit.thread], !srcloc !155

snd_pcm_oss_prepare.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substream, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, ptr noundef %14, ptr noundef nonnull @.str.3) #18
  br label %cleanup

snd_pcm_oss_prepare.exit.thread29:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %oss.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59
  %15 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %oss.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %oss.i, align 8
  %prev_hw_ptr_period.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 20
  %16 = ptrtoint ptr %prev_hw_ptr_period.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %prev_hw_ptr_period.i, align 8
  %period_ptr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 9
  %17 = ptrtoint ptr %period_ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %period_ptr.i, align 4
  %buffer_used.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 15
  %18 = ptrtoint ptr %buffer_used.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buffer_used.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %snd_pcm_oss_prepare.exit.thread29, %while.cond.if.end7_crit_edge
  %call.i26 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef %substream, ptr noundef %bufs, i1 noundef zeroext false, i32 noundef %frames, i1 noundef zeroext true) #18
  %19 = zext i32 %call.i26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call.i26, label %if.end7.cleanup_crit_edge [
    i32 -32, label %if.end7.if.end12_crit_edge
    i32 -86, label %if.end7.if.end12_crit_edge33
  ]

if.end7.if.end12_crit_edge33:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %if.end7.if.end12_crit_edge, %if.end7.if.end12_crit_edge33
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %status, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %cmp15 = icmp eq i32 %23, 2
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end12.while.cond_crit_edge

if.end12.while.cond_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %snd_pcm_oss_prepare.exit.thread, %do.body.i
  %retval.0 = phi i32 [ %call.i, %snd_pcm_oss_prepare.exit.thread ], [ %call.i, %do.body.i ], [ %call.i26, %if.end7.cleanup_crit_edge ], [ -11, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_oss_readv3(ptr noundef %substream, ptr noundef %bufs, i32 noundef %frames) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 37
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %5, label %while.cond.if.end16_crit_edge [
    i32 4, label %while.cond.if.then_crit_edge
    i32 7, label %while.cond.if.then_crit_edge37
    i32 1, label %if.then10
  ]

while.cond.if.then_crit_edge37:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

while.cond.if.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.cond.if.then_crit_edge37
  %call = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16708, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.while.end_crit_edge, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.then10:                                        ; preds = %while.cond
  %7 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime1, align 4
  %call.i = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16704, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %snd_pcm_oss_prepare.exit.thread34

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_readv3, %snd_pcm_oss_prepare.exit.thread)) #18
          to label %while.end [label %snd_pcm_oss_prepare.exit.thread], !srcloc !155

snd_pcm_oss_prepare.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substream, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, ptr noundef %14, ptr noundef nonnull @.str.3) #18
  br label %while.end

snd_pcm_oss_prepare.exit.thread34:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %oss.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59
  %15 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %oss.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %oss.i, align 8
  %prev_hw_ptr_period.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 20
  %16 = ptrtoint ptr %prev_hw_ptr_period.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %prev_hw_ptr_period.i, align 8
  %period_ptr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 9
  %17 = ptrtoint ptr %period_ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %period_ptr.i, align 4
  %buffer_used.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 15
  %18 = ptrtoint ptr %buffer_used.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buffer_used.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %snd_pcm_oss_prepare.exit.thread34, %if.then.if.end16_crit_edge, %while.cond.if.end16_crit_edge
  %call.i31 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef %substream, ptr noundef %bufs, i1 noundef zeroext false, i32 noundef %frames, i1 noundef zeroext true) #18
  %19 = zext i32 %call.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call.i31, label %if.end16.while.end_crit_edge [
    i32 -32, label %if.end16.while.cond.backedge_crit_edge
    i32 -86, label %if.end16.while.cond.backedge_crit_edge38
  ]

if.end16.while.cond.backedge_crit_edge38:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.end16.while.cond.backedge_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.cond.backedge:                              ; preds = %if.end16.while.cond.backedge_crit_edge, %if.end16.while.cond.backedge_crit_edge38
  br label %while.cond

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %snd_pcm_oss_prepare.exit.thread, %do.body.i, %if.then.while.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %snd_pcm_oss_prepare.exit.thread ], [ %call.i, %do.body.i ], [ %call.i31, %if.end16.while.end_crit_edge ], [ %call, %if.then.while.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_pcm_oss_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @snd_pcm_notify(ptr noundef nonnull @snd_pcm_oss_notify, i32 noundef 1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_notify(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_pcm_oss_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i32], ptr @dsp_map, i32 0, i32 %i.039
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %1)
  %2 = icmp ugt i32 %1, 253
  br i1 %2, label %do.end, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %i.039, i32 noundef %1) #21
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %arrayidx6 = getelementptr [32 x i32], ptr @adsp_map, i32 0, i32 %i.039
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %5)
  %6 = icmp ugt i32 %5, 253
  br i1 %6, label %do.end14, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %i.039, i32 noundef %5) #21
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end14, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %call20 = tail call i32 @snd_pcm_notify(ptr noundef nonnull @snd_pcm_oss_notify, i32 noundef 0) #18
  %8 = tail call i32 @llvm.smin.i32(i32 %call20, i32 0)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_register_minor(ptr noundef %pcm) #2 align 64 {
entry:
  %name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %oss = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 16
  %0 = ptrtoint ptr %oss to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oss, align 4
  %1 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcm, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %arrayidx = getelementptr [32 x i32], ptr @dsp_map, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 2
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %name) #18
  %9 = call ptr @memset(ptr %name, i32 255, i32 128)
  %call.i = tail call i32 @snd_register_oss_device(i32 noundef 2, ptr noundef %2, i32 noundef 0, ptr noundef nonnull @snd_pcm_oss_f_reg, ptr noundef %pcm) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.register_oss_dsp.exit_crit_edge

if.then.register_oss_dsp.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %register_oss_dsp.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %17) #21
  br label %register_oss_dsp.exit

register_oss_dsp.exit:                            ; preds = %do.end.i, %if.then.register_oss_dsp.exit_crit_edge
  %substream_count = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0, i32 2
  %18 = ptrtoint ptr %substream_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %substream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.not = icmp eq i32 %19, 0
  br i1 %cmp2.not, label %register_oss_dsp.exit.land.end_crit_edge, label %land.lhs.true

register_oss_dsp.exit.land.end_crit_edge:         ; preds = %register_oss_dsp.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

land.lhs.true:                                    ; preds = %register_oss_dsp.exit
  %substream_count5 = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 1, i32 2
  %20 = ptrtoint ptr %substream_count5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %substream_count5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 3
  %22 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %info_flags, align 8
  %and = and i32 %23, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %phi.sel = select i1 %tobool6.not, ptr @.str.5, ptr @.str.6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %register_oss_dsp.exit.land.end_crit_edge
  %24 = phi ptr [ @.str.6, %land.lhs.true.land.end_crit_edge ], [ @.str.6, %register_oss_dsp.exit.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %name7 = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 7
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.4, ptr noundef %name7, ptr noundef nonnull %24)
  %25 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcm, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %call13 = call i32 @snd_oss_info_register(i32 noundef 0, i32 noundef %28, ptr noundef nonnull %name) #18
  %29 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oss, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %oss, align 4
  %reg_mask = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_mask, align 4
  %or = or i32 %32, 1
  store i32 %or, ptr %reg_mask, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %name) #18
  br label %if.end

if.end:                                           ; preds = %land.end, %entry.if.end_crit_edge
  %33 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcm, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %arrayidx19 = getelementptr [32 x i32], ptr @adsp_map, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx19, align 4
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp21 = icmp eq i32 %38, %40
  br i1 %cmp21, label %if.then22, label %if.end29thread-pre-split

if.then22:                                        ; preds = %if.end
  %call.i52 = call i32 @snd_register_oss_device(i32 noundef 2, ptr noundef %34, i32 noundef 1, ptr noundef nonnull @snd_pcm_oss_f_reg, ptr noundef %pcm) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp.i53, label %do.end.i56, label %if.then22.register_oss_dsp.exit57_crit_edge

if.then22.register_oss_dsp.exit57_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %register_oss_dsp.exit57

do.end.i56:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcm, align 8
  %dev.i54 = getelementptr inbounds %struct.snd_card, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %dev.i54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i54, align 8
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %42, align 8
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %device, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.7, i32 noundef %46, i32 noundef %48) #21
  br label %register_oss_dsp.exit57

register_oss_dsp.exit57:                          ; preds = %do.end.i56, %if.then22.register_oss_dsp.exit57_crit_edge
  %49 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oss, align 4
  %inc25 = add i32 %50, 1
  store i32 %inc25, ptr %oss, align 4
  %reg_mask27 = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 16, i32 1
  %51 = ptrtoint ptr %reg_mask27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_mask27, align 4
  %or28 = or i32 %52, 2
  store i32 %or28, ptr %reg_mask27, align 4
  br label %if.end29

if.end29thread-pre-split:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %oss, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %register_oss_dsp.exit57
  %54 = phi i32 [ %.pr, %if.end29thread-pre-split ], [ %inc25, %register_oss_dsp.exit57 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool32.not = icmp eq i32 %54, 0
  br i1 %tobool32.not, label %if.end29.if.end34_crit_edge, label %if.then33

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then33:                                        ; preds = %if.end29
  %arrayidx.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0
  %substream_count.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0, i32 2
  %55 = ptrtoint ptr %substream_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %substream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp2.i = icmp eq i32 %56, 0
  br i1 %cmp2.i, label %if.then33.cleanup.i_crit_edge, label %if.end.i

if.then33.cleanup.i_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end.i:                                         ; preds = %if.then33
  %57 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcm, align 8
  %proc_root.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0, i32 6
  %59 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %proc_root.i, align 8
  %call.i58 = call ptr @snd_info_create_card_entry(ptr noundef %58, ptr noundef nonnull @.str.27, ptr noundef %60) #18
  %tobool.not.i = icmp eq ptr %call.i58, null
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then3.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %content.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i58, i32 0, i32 3
  %61 = ptrtoint ptr %content.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %content.i, align 4
  %mode.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i58, i32 0, i32 1
  %62 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -32348, ptr %mode.i, align 4
  %c.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i58, i32 0, i32 4
  %63 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @snd_pcm_oss_proc_read, ptr %c.i, align 4
  %write.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i58, i32 0, i32 4, i32 0, i32 1
  %64 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @snd_pcm_oss_proc_write, ptr %write.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i58, i32 0, i32 7
  %65 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx.i, ptr %private_data.i, align 4
  %call5.i = call i32 @snd_info_register(ptr noundef nonnull %call.i58) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @snd_info_free_entry(ptr noundef nonnull %call.i58) #18
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.then3.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %entry1.0.i = phi ptr [ null, %if.then7.i ], [ %call.i58, %if.then3.i.if.end9.i_crit_edge ], [ null, %if.end.i.if.end9.i_crit_edge ]
  %proc_entry.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry1.0.i, ptr %proc_entry.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end9.i, %if.then33.cleanup.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 1
  %substream_count.1.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 1, i32 2
  %67 = ptrtoint ptr %substream_count.1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %substream_count.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp2.1.i = icmp eq i32 %68, 0
  br i1 %cmp2.1.i, label %cleanup.i.if.end34_crit_edge, label %if.end.1.i

cleanup.i.if.end34_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.end.1.i:                                       ; preds = %cleanup.i
  %69 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcm, align 8
  %proc_root.1.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 1, i32 6
  %71 = ptrtoint ptr %proc_root.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %proc_root.1.i, align 8
  %call.1.i = call ptr @snd_info_create_card_entry(ptr noundef %70, ptr noundef nonnull @.str.27, ptr noundef %72) #18
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %if.end.1.i.if.end9.1.i_crit_edge, label %if.then3.1.i

if.end.1.i.if.end9.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.1.i

if.then3.1.i:                                     ; preds = %if.end.1.i
  %content.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.1.i, i32 0, i32 3
  %73 = ptrtoint ptr %content.1.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %content.1.i, align 4
  %mode.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.1.i, i32 0, i32 1
  %74 = ptrtoint ptr %mode.1.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -32348, ptr %mode.1.i, align 4
  %c.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.1.i, i32 0, i32 4
  %75 = ptrtoint ptr %c.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @snd_pcm_oss_proc_read, ptr %c.1.i, align 4
  %write.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.1.i, i32 0, i32 4, i32 0, i32 1
  %76 = ptrtoint ptr %write.1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @snd_pcm_oss_proc_write, ptr %write.1.i, align 4
  %private_data.1.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.1.i, i32 0, i32 7
  %77 = ptrtoint ptr %private_data.1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx.1.i, ptr %private_data.1.i, align 4
  %call5.1.i = call i32 @snd_info_register(ptr noundef nonnull %call.1.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %cmp6.1.i = icmp slt i32 %call5.1.i, 0
  br i1 %cmp6.1.i, label %if.then7.1.i, label %if.then3.1.i.if.end9.1.i_crit_edge

if.then3.1.i.if.end9.1.i_crit_edge:               ; preds = %if.then3.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.1.i

if.then7.1.i:                                     ; preds = %if.then3.1.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @snd_info_free_entry(ptr noundef nonnull %call.1.i) #18
  br label %if.end9.1.i

if.end9.1.i:                                      ; preds = %if.then7.1.i, %if.then3.1.i.if.end9.1.i_crit_edge, %if.end.1.i.if.end9.1.i_crit_edge
  %entry1.0.1.i = phi ptr [ null, %if.then7.1.i ], [ %call.1.i, %if.then3.1.i.if.end9.1.i_crit_edge ], [ null, %if.end.1.i.if.end9.1.i_crit_edge ]
  %proc_entry.1.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 1, i32 5, i32 2
  %78 = ptrtoint ptr %proc_entry.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entry1.0.1.i, ptr %proc_entry.1.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end9.1.i, %cleanup.i.if.end34_crit_edge, %if.end29.if.end34_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_disconnect_minor(ptr nocapture noundef %pcm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %oss = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 16
  %0 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then:                                          ; preds = %entry
  %reg_mask = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_mask, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %and6 = and i32 %3, -2
  %4 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and6, ptr %reg_mask, align 4
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 8
  %call = tail call i32 @snd_unregister_oss_device(i32 noundef 2, ptr noundef %6, i32 noundef 0) #18
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_mask, align 4
  %and9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end17_crit_edge, label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %and14 = and i32 %8, -3
  %9 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and14, ptr %reg_mask, align 4
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 8
  %call16 = tail call i32 @snd_unregister_oss_device(i32 noundef 2, ptr noundef %11, i32 noundef 1) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end.if.end17_crit_edge
  %12 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %arrayidx = getelementptr [32 x i32], ptr @dsp_map, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 2
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp eq i32 %17, %19
  br i1 %cmp, label %if.then19, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %call22 = tail call i32 @snd_oss_info_register(i32 noundef 0, i32 noundef %15, ptr noundef null) #18
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17.if.end23_crit_edge
  %20 = ptrtoint ptr %oss to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %oss, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %entry.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_unregister_minor(ptr nocapture noundef %pcm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_pcm_oss_disconnect_minor(ptr noundef %pcm)
  %proc_entry.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_entry.i, align 4
  tail call void @snd_info_free_entry(ptr noundef %1) #18
  %2 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %proc_entry.i, align 4
  %oss.i.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0, i32 5
  %3 = ptrtoint ptr %oss.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oss.i.i, align 4
  store ptr null, ptr %oss.i.i, align 4
  %tobool.not10.i.i = icmp eq ptr %4, null
  br i1 %tobool.not10.i.i, label %entry.snd_pcm_oss_proc_free_setup_list.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.snd_pcm_oss_proc_free_setup_list.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_proc_free_setup_list.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %setup.011.i.i = phi ptr [ %6, %for.body.i.i.for.body.i.i_crit_edge ], [ %4, %entry.for.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.011.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next.i.i, align 4
  %7 = ptrtoint ptr %setup.011.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setup.011.i.i, align 4
  tail call void @kfree(ptr noundef %8) #18
  tail call void @kfree(ptr noundef nonnull %setup.011.i.i) #18
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %for.body.i.i.snd_pcm_oss_proc_free_setup_list.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.body.i.i.snd_pcm_oss_proc_free_setup_list.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_proc_free_setup_list.exit.i

snd_pcm_oss_proc_free_setup_list.exit.i:          ; preds = %for.body.i.i.snd_pcm_oss_proc_free_setup_list.exit.i_crit_edge, %entry.snd_pcm_oss_proc_free_setup_list.exit.i_crit_edge
  %9 = ptrtoint ptr %oss.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %oss.i.i, align 4
  %proc_entry.1.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 1, i32 5, i32 2
  %10 = ptrtoint ptr %proc_entry.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_entry.1.i, align 4
  tail call void @snd_info_free_entry(ptr noundef %11) #18
  %12 = ptrtoint ptr %proc_entry.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %proc_entry.1.i, align 4
  %oss.i.1.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 1, i32 5
  %13 = ptrtoint ptr %oss.i.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oss.i.1.i, align 4
  store ptr null, ptr %oss.i.1.i, align 4
  %tobool.not10.i.1.i = icmp eq ptr %14, null
  br i1 %tobool.not10.i.1.i, label %snd_pcm_oss_proc_free_setup_list.exit.i.snd_pcm_oss_proc_done.exit_crit_edge, label %snd_pcm_oss_proc_free_setup_list.exit.i.for.body.i.1.i_crit_edge

snd_pcm_oss_proc_free_setup_list.exit.i.for.body.i.1.i_crit_edge: ; preds = %snd_pcm_oss_proc_free_setup_list.exit.i
  br label %for.body.i.1.i

snd_pcm_oss_proc_free_setup_list.exit.i.snd_pcm_oss_proc_done.exit_crit_edge: ; preds = %snd_pcm_oss_proc_free_setup_list.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_proc_done.exit

for.body.i.1.i:                                   ; preds = %for.body.i.1.i.for.body.i.1.i_crit_edge, %snd_pcm_oss_proc_free_setup_list.exit.i.for.body.i.1.i_crit_edge
  %setup.011.i.1.i = phi ptr [ %16, %for.body.i.1.i.for.body.i.1.i_crit_edge ], [ %14, %snd_pcm_oss_proc_free_setup_list.exit.i.for.body.i.1.i_crit_edge ]
  %next.i.1.i = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.011.i.1.i, i32 0, i32 4
  %15 = ptrtoint ptr %next.i.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next.i.1.i, align 4
  %17 = ptrtoint ptr %setup.011.i.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %setup.011.i.1.i, align 4
  tail call void @kfree(ptr noundef %18) #18
  tail call void @kfree(ptr noundef nonnull %setup.011.i.1.i) #18
  %tobool.not.i.1.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.1.i, label %for.body.i.1.i.snd_pcm_oss_proc_done.exit_crit_edge, label %for.body.i.1.i.for.body.i.1.i_crit_edge

for.body.i.1.i.for.body.i.1.i_crit_edge:          ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.1.i

for.body.i.1.i.snd_pcm_oss_proc_done.exit_crit_edge: ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_proc_done.exit

snd_pcm_oss_proc_done.exit:                       ; preds = %for.body.i.1.i.snd_pcm_oss_proc_done.exit_crit_edge, %snd_pcm_oss_proc_free_setup_list.exit.i.snd_pcm_oss_proc_done.exit_crit_edge
  %19 = ptrtoint ptr %oss.i.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %oss.i.1.i, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oss_info_register(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_oss_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  %f_flags1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %f_flags1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %f_flags1, align 4
  %call = tail call fastcc i32 @snd_pcm_oss_read1(ptr noundef nonnull %3, ptr noundef %buf, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  %f_flags1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %f_flags1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %f_flags1, align 4
  %call = tail call fastcc i32 @snd_pcm_oss_write1(ptr noundef nonnull %3, ptr noundef %buf, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  %ofile = alloca %struct.snd_pcm_oss_file, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx2 = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then:                                          ; preds = %entry
  %runtime3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime3, align 4
  %sleep = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 40
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.then.poll_wait.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.then
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  %tobool3.not.i = icmp eq ptr %sleep, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %9(ptr noundef %file, ptr noundef nonnull %sleep, ptr noundef nonnull %wait) #18
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.then.poll_wait.exit_crit_edge
  tail call void @snd_pcm_stream_lock_irq(ptr noundef nonnull %3) #18
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 37
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %status, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %13, label %poll_wait.exit.if.then8_crit_edge [
    i32 5, label %poll_wait.exit.if.end_crit_edge
    i32 3, label %lor.lhs.false
  ]

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

poll_wait.exit.if.then8_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

lor.lhs.false:                                    ; preds = %poll_wait.exit
  %15 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime3, align 4
  %mmap_count.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count.i, i32 noundef 4) #18
  %17 = ptrtoint ptr %mmap_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %mmap_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i61 = icmp eq i32 %18, 0
  br i1 %tobool.not.i61, label %snd_pcm_oss_playback_ready.exit, label %if.then.i62

if.then.i62:                                      ; preds = %lor.lhs.false
  %prev_hw_ptr_period.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 59, i32 20
  %19 = ptrtoint ptr %prev_hw_ptr_period.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prev_hw_ptr_period.i, align 8
  %hw_ptr_interrupt.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %hw_ptr_interrupt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_ptr_interrupt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.i.not = icmp eq i32 %20, %22
  br i1 %cmp.i.not, label %if.then.i62.if.end_crit_edge, label %if.then.i62.if.then8_crit_edge

if.then.i62.if.then8_crit_edge:                   ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.then.i62.if.end_crit_edge:                     ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

snd_pcm_oss_playback_ready.exit:                  ; preds = %lor.lhs.false
  %status.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 37
  %23 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %status.i.i, align 4
  %hw_ptr.i.i = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %hw_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_ptr.i.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 18
  %27 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buffer_size.i.i, align 4
  %add.i.i = add i32 %28, %26
  %control.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 38
  %29 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %control.i.i, align 8
  %appl_ptr.i.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %appl_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %appl_ptr.i.i, align 4
  %sub.i.i = sub i32 %add.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %boundary.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 33
  %33 = ptrtoint ptr %boundary.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %boundary.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %34)
  %cmp3.not.i.i = icmp ult i32 %sub.i.i, %34
  %sub6.i.i = select i1 %cmp3.not.i.i, i32 0, i32 %34
  %35 = sub i32 0, %sub6.i.i
  %avail.0.p.i.i = select i1 %cmp.i.i, i32 %34, i32 %35
  %avail.0.i.i = add i32 %avail.0.p.i.i, %sub.i.i
  %period_frames.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 59, i32 8
  %36 = ptrtoint ptr %period_frames.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %period_frames.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %avail.0.i.i, i32 %37)
  %cmp5.i.not = icmp ult i32 %avail.0.i.i, %37
  br i1 %cmp5.i.not, label %snd_pcm_oss_playback_ready.exit.if.end_crit_edge, label %snd_pcm_oss_playback_ready.exit.if.then8_crit_edge

snd_pcm_oss_playback_ready.exit.if.then8_crit_edge: ; preds = %snd_pcm_oss_playback_ready.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

snd_pcm_oss_playback_ready.exit.if.end_crit_edge: ; preds = %snd_pcm_oss_playback_ready.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then8:                                         ; preds = %snd_pcm_oss_playback_ready.exit.if.then8_crit_edge, %if.then.i62.if.then8_crit_edge, %poll_wait.exit.if.then8_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then8, %snd_pcm_oss_playback_ready.exit.if.end_crit_edge, %if.then.i62.if.end_crit_edge, %poll_wait.exit.if.end_crit_edge
  %mask.0 = phi i32 [ 260, %if.then8 ], [ 0, %snd_pcm_oss_playback_ready.exit.if.end_crit_edge ], [ 0, %poll_wait.exit.if.end_crit_edge ], [ 0, %if.then.i62.if.end_crit_edge ]
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %3) #18
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %mask.1 = phi i32 [ %mask.0, %if.end ], [ 0, %entry.if.end9_crit_edge ]
  %cmp10.not = icmp eq ptr %5, null
  br i1 %cmp10.not, label %if.end9.if.end37_crit_edge, label %if.then11

if.end9.if.end37_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.then11:                                        ; preds = %if.end9
  %runtime13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %38 = ptrtoint ptr %runtime13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %runtime13, align 4
  %sleep14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %39, i32 0, i32 40
  %tobool.not.i63 = icmp eq ptr %wait, null
  br i1 %tobool.not.i63, label %if.then11.poll_wait.exit69_crit_edge, label %land.lhs.true.i67

if.then11.poll_wait.exit69_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #20
  br label %poll_wait.exit69

land.lhs.true.i67:                                ; preds = %if.then11
  %40 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wait, align 4
  %tobool1.not.i64 = icmp eq ptr %41, null
  %tobool3.not.i65 = icmp eq ptr %sleep14, null
  %or.cond.i66 = or i1 %tobool3.not.i65, %tobool1.not.i64
  br i1 %or.cond.i66, label %land.lhs.true.i67.poll_wait.exit69_crit_edge, label %if.then.i68

land.lhs.true.i67.poll_wait.exit69_crit_edge:     ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #20
  br label %poll_wait.exit69

if.then.i68:                                      ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %41(ptr noundef %file, ptr noundef nonnull %sleep14, ptr noundef nonnull %wait) #18
  br label %poll_wait.exit69

poll_wait.exit69:                                 ; preds = %if.then.i68, %land.lhs.true.i67.poll_wait.exit69_crit_edge, %if.then11.poll_wait.exit69_crit_edge
  tail call void @snd_pcm_stream_lock_irq(ptr noundef nonnull %5) #18
  %status15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %39, i32 0, i32 37
  %42 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %status15, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp17.not = icmp eq i32 %45, 3
  br i1 %cmp17.not, label %lor.lhs.false18, label %land.lhs.true25

lor.lhs.false18:                                  ; preds = %poll_wait.exit69
  %46 = ptrtoint ptr %runtime13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %runtime13, align 4
  %mmap_count.i71 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 20
  %call.i.i.i72 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count.i71, i32 noundef 4) #18
  %48 = ptrtoint ptr %mmap_count.i71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %mmap_count.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i73 = icmp eq i32 %49, 0
  br i1 %tobool.not.i73, label %if.else.i84, label %if.then.i77

if.then.i77:                                      ; preds = %lor.lhs.false18
  %prev_hw_ptr_period.i74 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %47, i32 0, i32 59, i32 20
  %50 = ptrtoint ptr %prev_hw_ptr_period.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prev_hw_ptr_period.i74, align 8
  %hw_ptr_interrupt.i.i75 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %47, i32 0, i32 6
  %52 = ptrtoint ptr %hw_ptr_interrupt.i.i75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_ptr_interrupt.i.i75, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.i76.not = icmp eq i32 %51, %53
  br i1 %cmp.i76.not, label %if.then.i77.if.end23.thread_crit_edge, label %if.then.i77.if.end23.thread93_crit_edge

if.then.i77.if.end23.thread93_crit_edge:          ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.thread93

if.then.i77.if.end23.thread_crit_edge:            ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.thread

if.else.i84:                                      ; preds = %lor.lhs.false18
  %status.i.i78 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %47, i32 0, i32 37
  %54 = ptrtoint ptr %status.i.i78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %status.i.i78, align 4
  %hw_ptr.i.i79 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %hw_ptr.i.i79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_ptr.i.i79, align 4
  %control.i.i80 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %47, i32 0, i32 38
  %58 = ptrtoint ptr %control.i.i80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %control.i.i80, align 8
  %appl_ptr.i.i81 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %appl_ptr.i.i81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %appl_ptr.i.i81, align 4
  %sub.i.i82 = sub i32 %57, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i82)
  %cmp.i.i83 = icmp slt i32 %sub.i.i82, 0
  br i1 %cmp.i.i83, label %if.then.i.i, label %if.else.i84.snd_pcm_oss_capture_ready.exit_crit_edge

if.else.i84.snd_pcm_oss_capture_ready.exit_crit_edge: ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_ready.exit

if.then.i.i:                                      ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #20
  %boundary.i.i85 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %47, i32 0, i32 33
  %62 = ptrtoint ptr %boundary.i.i85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %boundary.i.i85, align 8
  %add.i.i86 = add i32 %63, %sub.i.i82
  br label %snd_pcm_oss_capture_ready.exit

snd_pcm_oss_capture_ready.exit:                   ; preds = %if.then.i.i, %if.else.i84.snd_pcm_oss_capture_ready.exit_crit_edge
  %avail.0.i.i87 = phi i32 [ %add.i.i86, %if.then.i.i ], [ %sub.i.i82, %if.else.i84.snd_pcm_oss_capture_ready.exit_crit_edge ]
  %period_frames.i88 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %47, i32 0, i32 59, i32 8
  %64 = ptrtoint ptr %period_frames.i88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %period_frames.i88, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %avail.0.i.i87, i32 %65)
  %cmp5.i89.not = icmp ult i32 %avail.0.i.i87, %65
  br i1 %cmp5.i89.not, label %snd_pcm_oss_capture_ready.exit.if.end23.thread_crit_edge, label %snd_pcm_oss_capture_ready.exit.if.end23.thread93_crit_edge

snd_pcm_oss_capture_ready.exit.if.end23.thread93_crit_edge: ; preds = %snd_pcm_oss_capture_ready.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.thread93

snd_pcm_oss_capture_ready.exit.if.end23.thread_crit_edge: ; preds = %snd_pcm_oss_capture_ready.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.thread

if.end23.thread93:                                ; preds = %snd_pcm_oss_capture_ready.exit.if.end23.thread93_crit_edge, %if.then.i77.if.end23.thread93_crit_edge
  %or2294 = or i32 %mask.1, 65
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %5) #18
  br label %if.end37

if.end23.thread:                                  ; preds = %snd_pcm_oss_capture_ready.exit.if.end23.thread_crit_edge, %if.then.i77.if.end23.thread_crit_edge
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %5) #18
  br label %if.end37

land.lhs.true25:                                  ; preds = %poll_wait.exit69
  %or22 = or i32 %mask.1, 65
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %5) #18
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %39, i32 0, i32 59
  %66 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %oss, align 8
  %67 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool26.not = icmp eq i8 %67, 0
  br i1 %tobool26.not, label %land.lhs.true25.if.end37_crit_edge, label %if.then27

land.lhs.true25.if.end37_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ofile) #18
  %68 = getelementptr inbounds [2 x ptr], ptr %ofile, i32 0, i32 1
  %69 = ptrtoint ptr %ofile to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %ofile, align 8
  %70 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx2, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %68, align 4
  %bf.clear34 = and i8 %bf.load, -33
  %73 = ptrtoint ptr %oss to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %bf.clear34, ptr %oss, align 8
  %call35 = call fastcc i32 @snd_pcm_oss_set_trigger(ptr noundef nonnull %ofile, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ofile) #18
  br label %if.end37

if.end37:                                         ; preds = %if.then27, %land.lhs.true25.if.end37_crit_edge, %if.end23.thread, %if.end23.thread93, %if.end9.if.end37_crit_edge
  %mask.3 = phi i32 [ %mask.1, %if.end9.if.end37_crit_edge ], [ %or22, %if.then27 ], [ %or22, %land.lhs.true25.if.end37_crit_edge ], [ %mask.1, %if.end23.thread ], [ %or2294, %if.end23.thread93 ]
  ret i32 %mask.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %substream.i700 = alloca ptr, align 4
  %substream.i694 = alloca ptr, align 4
  %substream.i688 = alloca ptr, align 4
  %substream.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %cmd, label %if.end19 [
    i32 -2147201674, label %if.then
    i32 -2147201543, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2602) #18
  %4 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #13, !srcloc !157
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 198672, i32 -1226833921) #18, !srcloc !160
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2604) #18
  %8 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i599 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i599 to ptr
  %cpu_domain.i.i600 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i600) #13, !srcloc !157
  %and.i601 = and i32 %10, -13
  %or.i602 = or i32 %and.i601, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i602) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 1, i32 -1226833921) #18, !srcloc !161
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

if.end19:                                         ; preds = %entry
  %shr = lshr i32 %cmd, 8
  %trunc = trunc i32 %shr to i8
  %12 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %trunc, label %if.end19.cleanup487_crit_edge [
    i8 77, label %for.body.preheader
    i8 80, label %if.end61
  ]

if.end19.cleanup487_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

for.body.preheader:                               ; preds = %if.end19
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %cmp23.not = icmp eq ptr %14, null
  br i1 %cmp23.not, label %for.cond, label %for.body.preheader.if.end53_crit_edge

for.body.preheader.if.end53_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr [2 x ptr], ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %cmp23.not.1 = icmp eq ptr %16, null
  br i1 %cmp23.not.1, label %for.cond.1, label %for.cond.if.end53_crit_edge

for.cond.if.end53_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2614, i32 noundef 9, ptr noundef null) #18
  br label %cleanup487

if.end53:                                         ; preds = %for.cond.if.end53_crit_edge, %for.body.preheader.if.end53_crit_edge
  %.lcssa = phi ptr [ %14, %for.body.preheader.if.end53_crit_edge ], [ %16, %for.cond.if.end53_crit_edge ]
  %17 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.lcssa, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %call54 = tail call i32 @snd_mixer_oss_ioctl_card(ptr noundef %20, i32 noundef %cmd, i32 noundef %arg) #18
  br label %cleanup487

if.end61:                                         ; preds = %if.end19
  %21 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %cmd, label %do.body473 [
    i32 20480, label %sw.bb
    i32 20481, label %sw.bb63
    i32 -1073459198, label %sw.bb65
    i32 -2147201022, label %sw.bb98
    i32 -1073459197, label %sw.bb118
    i32 -1073459196, label %sw.bb154
    i32 -1073459195, label %sw.bb174
    i32 -2147201019, label %sw.bb209
    i32 -1073459194, label %sw.bb229
    i32 -2147201018, label %sw.bb264
    i32 -1073459193, label %if.end61.cleanup487_crit_edge
    i32 -2147201017, label %if.end61.cleanup487_crit_edge719
    i32 20488, label %sw.bb285
    i32 -1073459191, label %sw.bb287
    i32 -1073459190, label %sw.bb322
    i32 -2147201013, label %sw.bb339
    i32 -2146414580, label %if.end61.sw.bb359_crit_edge
    i32 -2146414579, label %if.end61.sw.bb359_crit_edge720
    i32 20494, label %sw.bb363
    i32 -2147201009, label %sw.bb365
    i32 -2147201008, label %sw.bb385
    i32 1074024464, label %sw.bb405
    i32 -2146676719, label %if.end61.sw.bb422_crit_edge
    i32 -2146676718, label %if.end61.sw.bb422_crit_edge721
    i32 -2146938861, label %if.end61.sw.bb426_crit_edge
    i32 -2146938860, label %if.end61.sw.bb426_crit_edge722
    i32 20501, label %sw.bb430
    i32 20502, label %sw.bb431
    i32 -2147201001, label %sw.bb437
    i32 1074024471, label %sw.bb472
  ]

if.end61.sw.bb426_crit_edge722:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb426

if.end61.sw.bb426_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb426

if.end61.sw.bb422_crit_edge721:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb422

if.end61.sw.bb422_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb422

if.end61.sw.bb359_crit_edge720:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb359

if.end61.sw.bb359_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb359

if.end61.cleanup487_crit_edge719:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end61.cleanup487_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

sw.bb:                                            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @snd_pcm_oss_reset(ptr noundef %2)
  br label %cleanup487

sw.bb63:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  %call64 = tail call fastcc i32 @snd_pcm_oss_sync(ptr noundef %2)
  br label %cleanup487

sw.bb65:                                          ; preds = %if.end61
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2630) #18
  %22 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i603 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i603 to ptr
  %cpu_domain.i.i604 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i604) #13, !srcloc !157
  %and.i605 = and i32 %24, -13
  %or.i606 = or i32 %and.i605, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i606) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %25 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #18, !srcloc !162
  %asmresult = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool76.not = icmp eq i32 %asmresult, 0
  br i1 %tobool76.not, label %if.end78, label %sw.bb65.cleanup487_crit_edge

sw.bb65.cleanup487_crit_edge:                     ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end78:                                         ; preds = %sw.bb65
  %asmresult74 = extractvalue { i32, i32 } %25, 1
  %call79 = tail call fastcc i32 @snd_pcm_oss_set_rate(ptr noundef %2, i32 noundef %asmresult74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end78.cleanup487_crit_edge, label %if.end82

if.end78.cleanup487_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2635) #18
  %26 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i607 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i607 to ptr
  %cpu_domain.i.i608 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i608) #13, !srcloc !157
  %and.i609 = and i32 %28, -13
  %or.i610 = or i32 %and.i609, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i610) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call79, i32 -1226833921) #18, !srcloc !163
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb98:                                          ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream.i) #18
  %30 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream.i, align 4, !annotation !156
  %call.i = call fastcc i32 @snd_pcm_oss_get_active_substream(ptr noundef %2, ptr noundef nonnull %substream.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_pcm_oss_get_rate.exit.thread, label %snd_pcm_oss_get_rate.exit

snd_pcm_oss_get_rate.exit.thread:                 ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i) #18
  br label %cleanup487

snd_pcm_oss_get_rate.exit:                        ; preds = %sw.bb98
  %31 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %substream.i, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %runtime.i, align 4
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 59, i32 1
  %35 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rate.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp100 = icmp slt i32 %36, 0
  br i1 %cmp100, label %snd_pcm_oss_get_rate.exit.cleanup487_crit_edge, label %if.end102

snd_pcm_oss_get_rate.exit.cleanup487_crit_edge:   ; preds = %snd_pcm_oss_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end102:                                        ; preds = %snd_pcm_oss_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2640) #18
  %37 = call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i611 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i611 to ptr
  %cpu_domain.i.i612 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i612) #13, !srcloc !157
  %and.i613 = and i32 %39, -13
  %or.i614 = or i32 %and.i613, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i614) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %40 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %36, i32 -1226833921) #18, !srcloc !164
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb118:                                         ; preds = %if.end61
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2642) #18
  %41 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i615 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i615 to ptr
  %cpu_domain.i.i616 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i616) #13, !srcloc !157
  %and.i617 = and i32 %43, -13
  %or.i618 = or i32 %and.i617, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i618) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %44 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #18, !srcloc !165
  %asmresult128 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult128)
  %tobool131.not = icmp eq i32 %asmresult128, 0
  br i1 %tobool131.not, label %if.end133, label %sw.bb118.cleanup487_crit_edge

sw.bb118.cleanup487_crit_edge:                    ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end133:                                        ; preds = %sw.bb118
  %asmresult129 = extractvalue { i32, i32 } %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult129)
  %cmp134.inv = icmp slt i32 %asmresult129, 1
  %cond = select i1 %cmp134.inv, i32 1, i32 2
  %call135 = tail call fastcc i32 @snd_pcm_oss_set_channels(ptr noundef %2, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.end133.cleanup487_crit_edge, label %if.end138

if.end133.cleanup487_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end138:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  %dec = add nsw i32 %call135, -1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2648) #18
  %45 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i619 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i619 to ptr
  %cpu_domain.i.i620 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i620) #13, !srcloc !157
  %and.i621 = and i32 %47, -13
  %or.i622 = or i32 %and.i621, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i622) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %dec, i32 -1226833921) #18, !srcloc !166
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb154:                                         ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream.i688) #18
  %49 = ptrtoint ptr %substream.i688 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream.i688, align 4, !annotation !156
  %call.i689 = call fastcc i32 @snd_pcm_oss_get_active_substream(ptr noundef %2, ptr noundef nonnull %substream.i688) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i689)
  %cmp.i690 = icmp slt i32 %call.i689, 0
  br i1 %cmp.i690, label %snd_pcm_oss_get_block_size.exit.thread, label %snd_pcm_oss_get_block_size.exit

snd_pcm_oss_get_block_size.exit.thread:           ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i688) #18
  br label %cleanup487

snd_pcm_oss_get_block_size.exit:                  ; preds = %sw.bb154
  %50 = ptrtoint ptr %substream.i688 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %substream.i688, align 4
  %runtime.i691 = getelementptr inbounds %struct.snd_pcm_substream, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %runtime.i691 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %runtime.i691, align 4
  %period_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 59, i32 7
  %54 = ptrtoint ptr %period_bytes.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %period_bytes.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i688) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp156 = icmp slt i32 %55, 0
  br i1 %cmp156, label %snd_pcm_oss_get_block_size.exit.cleanup487_crit_edge, label %if.end158

snd_pcm_oss_get_block_size.exit.cleanup487_crit_edge: ; preds = %snd_pcm_oss_get_block_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end158:                                        ; preds = %snd_pcm_oss_get_block_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2653) #18
  %56 = call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i623 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i623 to ptr
  %cpu_domain.i.i624 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i624) #13, !srcloc !157
  %and.i625 = and i32 %58, -13
  %or.i626 = or i32 %and.i625, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i626) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %59 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %55, i32 -1226833921) #18, !srcloc !167
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb174:                                         ; preds = %if.end61
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2655) #18
  %60 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i627 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i627 to ptr
  %cpu_domain.i.i628 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i628) #13, !srcloc !157
  %and.i629 = and i32 %62, -13
  %or.i630 = or i32 %and.i629, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i630) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %63 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #18, !srcloc !168
  %asmresult184 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult184)
  %tobool187.not = icmp eq i32 %asmresult184, 0
  br i1 %tobool187.not, label %if.end189, label %sw.bb174.cleanup487_crit_edge

sw.bb174.cleanup487_crit_edge:                    ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end189:                                        ; preds = %sw.bb174
  %asmresult185 = extractvalue { i32, i32 } %63, 1
  %call190 = tail call fastcc i32 @snd_pcm_oss_set_format(ptr noundef %2, i32 noundef %asmresult185)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %if.end189.cleanup487_crit_edge, label %if.end193

if.end189.cleanup487_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end193:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2660) #18
  %64 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i631 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i631 to ptr
  %cpu_domain.i.i632 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i632) #13, !srcloc !157
  %and.i633 = and i32 %66, -13
  %or.i634 = or i32 %and.i633, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i634) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %67 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call190, i32 -1226833921) #18, !srcloc !169
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb209:                                         ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream.i694) #18
  %68 = ptrtoint ptr %substream.i694 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream.i694, align 4, !annotation !156
  %call.i695 = call fastcc i32 @snd_pcm_oss_get_active_substream(ptr noundef %2, ptr noundef nonnull %substream.i694) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i695)
  %cmp.i696 = icmp slt i32 %call.i695, 0
  br i1 %cmp.i696, label %snd_pcm_oss_get_format.exit.thread, label %snd_pcm_oss_get_format.exit

snd_pcm_oss_get_format.exit.thread:               ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i694) #18
  br label %cleanup487

snd_pcm_oss_get_format.exit:                      ; preds = %sw.bb209
  %69 = ptrtoint ptr %substream.i694 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %substream.i694, align 4
  %runtime.i697 = getelementptr inbounds %struct.snd_pcm_substream, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %runtime.i697 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %runtime.i697, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %72, i32 0, i32 59, i32 2
  %73 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %format.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i694) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp211 = icmp slt i32 %74, 0
  br i1 %cmp211, label %snd_pcm_oss_get_format.exit.cleanup487_crit_edge, label %if.end213

snd_pcm_oss_get_format.exit.cleanup487_crit_edge: ; preds = %snd_pcm_oss_get_format.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end213:                                        ; preds = %snd_pcm_oss_get_format.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2665) #18
  %75 = call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i635 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i635 to ptr
  %cpu_domain.i.i636 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 4
  %77 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i636) #13, !srcloc !157
  %and.i637 = and i32 %77, -13
  %or.i638 = or i32 %and.i637, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i638) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %78 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %74, i32 -1226833921) #18, !srcloc !170
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb229:                                         ; preds = %if.end61
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2667) #18
  %79 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i639 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i639 to ptr
  %cpu_domain.i.i640 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i640) #13, !srcloc !157
  %and.i641 = and i32 %81, -13
  %or.i642 = or i32 %and.i641, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i642) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %82 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #18, !srcloc !171
  %asmresult239 = extractvalue { i32, i32 } %82, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult239)
  %tobool242.not = icmp eq i32 %asmresult239, 0
  br i1 %tobool242.not, label %if.end244, label %sw.bb229.cleanup487_crit_edge

sw.bb229.cleanup487_crit_edge:                    ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end244:                                        ; preds = %sw.bb229
  %asmresult240 = extractvalue { i32, i32 } %82, 1
  %call245 = tail call fastcc i32 @snd_pcm_oss_set_channels(ptr noundef %2, i32 noundef %asmresult240)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp246 = icmp slt i32 %call245, 0
  br i1 %cmp246, label %if.end244.cleanup487_crit_edge, label %if.end248

if.end244.cleanup487_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end248:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2672) #18
  %83 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i643 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i643 to ptr
  %cpu_domain.i.i644 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 4
  %85 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i644) #13, !srcloc !157
  %and.i645 = and i32 %85, -13
  %or.i646 = or i32 %and.i645, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i646) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %86 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call245, i32 -1226833921) #18, !srcloc !172
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb264:                                         ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream.i700) #18
  %87 = ptrtoint ptr %substream.i700 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream.i700, align 4, !annotation !156
  %call.i701 = call fastcc i32 @snd_pcm_oss_get_active_substream(ptr noundef %2, ptr noundef nonnull %substream.i700) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i701)
  %cmp.i702 = icmp slt i32 %call.i701, 0
  br i1 %cmp.i702, label %snd_pcm_oss_get_channels.exit.thread, label %snd_pcm_oss_get_channels.exit

snd_pcm_oss_get_channels.exit.thread:             ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i700) #18
  br label %cleanup487

snd_pcm_oss_get_channels.exit:                    ; preds = %sw.bb264
  %88 = ptrtoint ptr %substream.i700 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %substream.i700, align 4
  %runtime.i703 = getelementptr inbounds %struct.snd_pcm_substream, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %runtime.i703 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %runtime.i703, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %91, i32 0, i32 59, i32 3
  %92 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %channels.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i700) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp266 = icmp slt i32 %93, 0
  br i1 %cmp266, label %snd_pcm_oss_get_channels.exit.cleanup487_crit_edge, label %if.end268

snd_pcm_oss_get_channels.exit.cleanup487_crit_edge: ; preds = %snd_pcm_oss_get_channels.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end268:                                        ; preds = %snd_pcm_oss_get_channels.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2677) #18
  %94 = call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i647 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i647 to ptr
  %cpu_domain.i.i648 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 4
  %96 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i648) #13, !srcloc !157
  %and.i649 = and i32 %96, -13
  %or.i650 = or i32 %and.i649, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i650) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %97 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %93, i32 -1226833921) #18, !srcloc !173
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb285:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  %call286 = tail call fastcc i32 @snd_pcm_oss_post(ptr noundef %2)
  br label %cleanup487

sw.bb287:                                         ; preds = %if.end61
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2684) #18
  %98 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i651 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i651 to ptr
  %cpu_domain.i.i652 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 4
  %100 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i652) #13, !srcloc !157
  %and.i653 = and i32 %100, -13
  %or.i654 = or i32 %and.i653, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i654) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %101 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #18, !srcloc !174
  %asmresult297 = extractvalue { i32, i32 } %101, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult297)
  %tobool300.not = icmp eq i32 %asmresult297, 0
  br i1 %tobool300.not, label %if.end302, label %sw.bb287.cleanup487_crit_edge

sw.bb287.cleanup487_crit_edge:                    ; preds = %sw.bb287
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end302:                                        ; preds = %sw.bb287
  %asmresult298 = extractvalue { i32, i32 } %101, 1
  %call303 = tail call fastcc i32 @snd_pcm_oss_set_subdivide(ptr noundef %2, i32 noundef %asmresult298)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %cmp304 = icmp slt i32 %call303, 0
  br i1 %cmp304, label %if.end302.cleanup487_crit_edge, label %if.end306

if.end302.cleanup487_crit_edge:                   ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end306:                                        ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2689) #18
  %102 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i655 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i655 to ptr
  %cpu_domain.i.i656 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 4
  %104 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i656) #13, !srcloc !157
  %and.i657 = and i32 %104, -13
  %or.i658 = or i32 %and.i657, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i658) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %105 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call303, i32 -1226833921) #18, !srcloc !175
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb322:                                         ; preds = %if.end61
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2691) #18
  %106 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i659 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i659 to ptr
  %cpu_domain.i.i660 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 4
  %108 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i660) #13, !srcloc !157
  %and.i661 = and i32 %108, -13
  %or.i662 = or i32 %and.i661, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i662) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %109 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #18, !srcloc !176
  %asmresult332 = extractvalue { i32, i32 } %109, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult332)
  %tobool335.not = icmp eq i32 %asmresult332, 0
  br i1 %tobool335.not, label %if.end337, label %sw.bb322.cleanup487_crit_edge

sw.bb322.cleanup487_crit_edge:                    ; preds = %sw.bb322
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end337:                                        ; preds = %sw.bb322
  call void @__sanitizer_cov_trace_pc() #20
  %asmresult333 = extractvalue { i32, i32 } %109, 1
  %call338 = tail call fastcc i32 @snd_pcm_oss_set_fragment(ptr noundef %2, i32 noundef %asmresult333)
  br label %cleanup487

sw.bb339:                                         ; preds = %if.end61
  %call340 = tail call fastcc i32 @snd_pcm_oss_get_formats(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %cmp341 = icmp slt i32 %call340, 0
  br i1 %cmp341, label %sw.bb339.cleanup487_crit_edge, label %if.end343

sw.bb339.cleanup487_crit_edge:                    ; preds = %sw.bb339
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end343:                                        ; preds = %sw.bb339
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2698) #18
  %110 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i663 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i663 to ptr
  %cpu_domain.i.i664 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 4
  %112 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i664) #13, !srcloc !157
  %and.i665 = and i32 %112, -13
  %or.i666 = or i32 %and.i665, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i666) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %113 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call340, i32 -1226833921) #18, !srcloc !177
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb359:                                         ; preds = %if.end61.sw.bb359_crit_edge, %if.end61.sw.bb359_crit_edge720
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2146414579, i32 %cmd)
  %cmp360 = icmp eq i32 %cmd, -2146414579
  %cond361 = zext i1 %cmp360 to i32
  %call362 = tail call fastcc i32 @snd_pcm_oss_get_space(ptr noundef %2, i32 noundef %cond361, ptr noundef %0)
  br label %cleanup487

sw.bb363:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @snd_pcm_oss_nonblock(ptr noundef %file)
  br label %cleanup487

sw.bb365:                                         ; preds = %if.end61
  %call366 = tail call fastcc i32 @snd_pcm_oss_get_caps(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %cmp367 = icmp slt i32 %call366, 0
  br i1 %cmp367, label %sw.bb365.cleanup487_crit_edge, label %if.end369

sw.bb365.cleanup487_crit_edge:                    ; preds = %sw.bb365
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end369:                                        ; preds = %sw.bb365
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2711) #18
  %114 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i667 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i667 to ptr
  %cpu_domain.i.i668 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 4
  %116 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i668) #13, !srcloc !157
  %and.i669 = and i32 %116, -13
  %or.i670 = or i32 %and.i669, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i670) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %117 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call366, i32 -1226833921) #18, !srcloc !178
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb385:                                         ; preds = %if.end61
  %call386 = tail call fastcc i32 @snd_pcm_oss_get_trigger(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %cmp387 = icmp slt i32 %call386, 0
  br i1 %cmp387, label %sw.bb385.cleanup487_crit_edge, label %if.end389

sw.bb385.cleanup487_crit_edge:                    ; preds = %sw.bb385
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end389:                                        ; preds = %sw.bb385
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2716) #18
  %118 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i671 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i671 to ptr
  %cpu_domain.i.i672 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 4
  %120 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i672) #13, !srcloc !157
  %and.i673 = and i32 %120, -13
  %or.i674 = or i32 %and.i673, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i674) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %121 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call386, i32 -1226833921) #18, !srcloc !179
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb405:                                         ; preds = %if.end61
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2718) #18
  %122 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i675 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i675 to ptr
  %cpu_domain.i.i676 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 4
  %124 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i676) #13, !srcloc !157
  %and.i677 = and i32 %124, -13
  %or.i678 = or i32 %and.i677, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i678) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %125 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #18, !srcloc !180
  %asmresult415 = extractvalue { i32, i32 } %125, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult415)
  %tobool418.not = icmp eq i32 %asmresult415, 0
  br i1 %tobool418.not, label %if.end420, label %sw.bb405.cleanup487_crit_edge

sw.bb405.cleanup487_crit_edge:                    ; preds = %sw.bb405
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

if.end420:                                        ; preds = %sw.bb405
  call void @__sanitizer_cov_trace_pc() #20
  %asmresult416 = extractvalue { i32, i32 } %125, 1
  %call421 = tail call fastcc i32 @snd_pcm_oss_set_trigger(ptr noundef %2, i32 noundef %asmresult416)
  br label %cleanup487

sw.bb422:                                         ; preds = %if.end61.sw.bb422_crit_edge, %if.end61.sw.bb422_crit_edge721
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2146676719, i32 %cmd)
  %cmp423 = icmp eq i32 %cmd, -2146676719
  %cond424 = zext i1 %cmp423 to i32
  %call425 = tail call fastcc i32 @snd_pcm_oss_get_ptr(ptr noundef %2, i32 noundef %cond424, ptr noundef %0)
  br label %cleanup487

sw.bb426:                                         ; preds = %if.end61.sw.bb426_crit_edge, %if.end61.sw.bb426_crit_edge722
  br label %cleanup487

sw.bb430:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

sw.bb431:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  %call432 = tail call fastcc i32 @snd_pcm_oss_get_caps(ptr noundef %2)
  %and433 = and i32 %call432, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and433)
  %tobool434.not = icmp eq i32 %and433, 0
  %. = select i1 %tobool434.not, i32 -5, i32 0
  br label %cleanup487

sw.bb437:                                         ; preds = %if.end61
  %call438 = tail call fastcc i32 @snd_pcm_oss_get_odelay(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call438)
  %cmp439 = icmp slt i32 %call438, 0
  br i1 %cmp439, label %if.then440, label %if.end456

if.then440:                                       ; preds = %sw.bb437
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2744) #18
  %126 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i679 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i679 to ptr
  %cpu_domain.i.i680 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 4
  %128 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i680) #13, !srcloc !157
  %and.i681 = and i32 %128, -13
  %or.i682 = or i32 %and.i681, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i682) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %129 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 0, i32 -1226833921) #18, !srcloc !181
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

if.end456:                                        ; preds = %sw.bb437
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2747) #18
  %130 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i683 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i683 to ptr
  %cpu_domain.i.i684 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 4
  %132 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i684) #13, !srcloc !157
  %and.i685 = and i32 %132, -13
  %or.i686 = or i32 %and.i685, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i686) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %133 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call438, i32 -1226833921) #18, !srcloc !182
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #18, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %cleanup487

sw.bb472:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup487

do.body473:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_ioctl.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_ioctl, %if.then483)) #18
          to label %cleanup487 [label %if.then483], !srcloc !155

if.then483:                                       ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_pcm_oss_ioctl.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.22, i32 noundef %cmd) #18
  br label %cleanup487

cleanup487:                                       ; preds = %if.then483, %do.body473, %sw.bb472, %if.end456, %if.then440, %sw.bb431, %sw.bb430, %sw.bb426, %sw.bb422, %if.end420, %sw.bb405.cleanup487_crit_edge, %if.end389, %sw.bb385.cleanup487_crit_edge, %if.end369, %sw.bb365.cleanup487_crit_edge, %sw.bb363, %sw.bb359, %if.end343, %sw.bb339.cleanup487_crit_edge, %if.end337, %sw.bb322.cleanup487_crit_edge, %if.end306, %if.end302.cleanup487_crit_edge, %sw.bb287.cleanup487_crit_edge, %sw.bb285, %if.end268, %snd_pcm_oss_get_channels.exit.cleanup487_crit_edge, %snd_pcm_oss_get_channels.exit.thread, %if.end248, %if.end244.cleanup487_crit_edge, %sw.bb229.cleanup487_crit_edge, %if.end213, %snd_pcm_oss_get_format.exit.cleanup487_crit_edge, %snd_pcm_oss_get_format.exit.thread, %if.end193, %if.end189.cleanup487_crit_edge, %sw.bb174.cleanup487_crit_edge, %if.end158, %snd_pcm_oss_get_block_size.exit.cleanup487_crit_edge, %snd_pcm_oss_get_block_size.exit.thread, %if.end138, %if.end133.cleanup487_crit_edge, %sw.bb118.cleanup487_crit_edge, %if.end102, %snd_pcm_oss_get_rate.exit.cleanup487_crit_edge, %snd_pcm_oss_get_rate.exit.thread, %if.end82, %if.end78.cleanup487_crit_edge, %sw.bb65.cleanup487_crit_edge, %sw.bb63, %sw.bb, %if.end61.cleanup487_crit_edge, %if.end61.cleanup487_crit_edge719, %if.end53, %for.cond.1, %if.end19.cleanup487_crit_edge, %if.then3, %if.then
  %retval.1 = phi i32 [ %7, %if.then ], [ %11, %if.then3 ], [ 0, %sw.bb472 ], [ %call438, %if.then440 ], [ %133, %if.end456 ], [ 0, %sw.bb430 ], [ -22, %sw.bb426 ], [ %call425, %sw.bb422 ], [ %call421, %if.end420 ], [ %121, %if.end389 ], [ %117, %if.end369 ], [ 0, %sw.bb363 ], [ %call362, %sw.bb359 ], [ %113, %if.end343 ], [ %call338, %if.end337 ], [ %105, %if.end306 ], [ %call286, %sw.bb285 ], [ %97, %if.end268 ], [ %86, %if.end248 ], [ %78, %if.end213 ], [ %67, %if.end193 ], [ %59, %if.end158 ], [ %48, %if.end138 ], [ %40, %if.end102 ], [ %29, %if.end82 ], [ %call64, %sw.bb63 ], [ 0, %sw.bb ], [ -6, %for.cond.1 ], [ %call54, %if.end53 ], [ -22, %if.end19.cleanup487_crit_edge ], [ -14, %sw.bb65.cleanup487_crit_edge ], [ %call79, %if.end78.cleanup487_crit_edge ], [ %36, %snd_pcm_oss_get_rate.exit.cleanup487_crit_edge ], [ -14, %sw.bb118.cleanup487_crit_edge ], [ %call135, %if.end133.cleanup487_crit_edge ], [ %55, %snd_pcm_oss_get_block_size.exit.cleanup487_crit_edge ], [ -14, %sw.bb174.cleanup487_crit_edge ], [ %call190, %if.end189.cleanup487_crit_edge ], [ %74, %snd_pcm_oss_get_format.exit.cleanup487_crit_edge ], [ -14, %sw.bb229.cleanup487_crit_edge ], [ %call245, %if.end244.cleanup487_crit_edge ], [ %93, %snd_pcm_oss_get_channels.exit.cleanup487_crit_edge ], [ -5, %if.end61.cleanup487_crit_edge ], [ -5, %if.end61.cleanup487_crit_edge719 ], [ -14, %sw.bb287.cleanup487_crit_edge ], [ %call303, %if.end302.cleanup487_crit_edge ], [ -14, %sw.bb322.cleanup487_crit_edge ], [ %call340, %sw.bb339.cleanup487_crit_edge ], [ %call366, %sw.bb365.cleanup487_crit_edge ], [ %call386, %sw.bb385.cleanup487_crit_edge ], [ -14, %sw.bb405.cleanup487_crit_edge ], [ %., %sw.bb431 ], [ -22, %if.then483 ], [ %call.i, %snd_pcm_oss_get_rate.exit.thread ], [ %call.i689, %snd_pcm_oss_get_block_size.exit.thread ], [ %call.i695, %snd_pcm_oss_get_format.exit.thread ], [ %call.i701, %snd_pcm_oss_get_channels.exit.thread ], [ -22, %do.body473 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_mmap(ptr noundef %file, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %and = and i32 %3, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.sw.bb1_crit_edge, label %sw.epilog.thread

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

sw.epilog.thread:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %or66 = or i32 %3, 1
  %7 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or66, ptr %vm_flags, align 4
  br label %if.end9

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %arrayidx3 = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %substream.0.in = phi ptr [ %arrayidx3, %sw.bb1 ], [ %1, %entry.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %substream.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %substream.0 = load ptr, ptr %substream.0.in, align 4
  %or = or i32 %3, 1
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %vm_flags, align 4
  %cmp = icmp eq ptr %substream.0, null
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end9_crit_edge

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog.if.end9_crit_edge, %sw.epilog.thread
  %substream.068 = phi ptr [ %6, %sw.epilog.thread ], [ %substream.0, %sw.epilog.if.end9_crit_edge ]
  %runtime10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.068, i32 0, i32 11
  %10 = ptrtoint ptr %runtime10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime10, align 4
  %info = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %info, align 8
  %14 = and i32 %13, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %14)
  %.not = icmp eq i32 %14, 258
  br i1 %.not, label %if.then18, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then18:                                        ; preds = %if.end9
  %access = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 11
  %15 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %access, align 8
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59
  %16 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %oss, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool20.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool20.not, label %if.then18.if.end25_crit_edge, label %if.then21

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then21:                                        ; preds = %if.then18
  %17 = ptrtoint ptr %runtime10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime10, align 4
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 59, i32 16
  %call.i = tail call i32 @mutex_trylock(ptr noundef %params_lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then21.cleanup_crit_edge, label %snd_pcm_oss_change_params.exit

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

snd_pcm_oss_change_params.exit:                   ; preds = %if.then21
  %call11.i = tail call fastcc i32 @snd_pcm_oss_change_params_locked(ptr noundef nonnull %substream.068) #18
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp22 = icmp slt i32 %call11.i, 0
  br i1 %cmp22, label %snd_pcm_oss_change_params.exit.cleanup_crit_edge, label %snd_pcm_oss_change_params.exit.if.end25_crit_edge

snd_pcm_oss_change_params.exit.if.end25_crit_edge: ; preds = %snd_pcm_oss_change_params.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

snd_pcm_oss_change_params.exit.cleanup_crit_edge: ; preds = %snd_pcm_oss_change_params.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end25:                                         ; preds = %snd_pcm_oss_change_params.exit.if.end25_crit_edge, %if.then18.if.end25_crit_edge
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 18
  %19 = ptrtoint ptr %plugin_first to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %plugin_first, align 8
  %cmp27.not = icmp eq ptr %20, null
  br i1 %cmp27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 13
  %21 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp30.not = icmp eq i32 %22, 0
  br i1 %cmp30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %call33 = tail call i32 @snd_pcm_mmap_data(ptr noundef nonnull %substream.068, ptr noundef %file, ptr noundef %area) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 1
  %23 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_end, align 4
  %25 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %area, align 4
  %sub = sub i32 %24, %26
  %mmap_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 13
  %27 = ptrtoint ptr %mmap_bytes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %mmap_bytes, align 4
  %silence_threshold = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 31
  %28 = ptrtoint ptr %silence_threshold to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %silence_threshold, align 8
  %silence_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 32
  %29 = ptrtoint ptr %silence_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %silence_size, align 4
  %boundary = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 33
  %30 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %boundary, align 8
  %stop_threshold = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 30
  %32 = ptrtoint ptr %stop_threshold to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %stop_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %snd_pcm_oss_change_params.exit.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %sw.epilog.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ], [ %call11.i, %snd_pcm_oss_change_params.exit.cleanup_crit_edge ], [ -5, %if.end25.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ -11, %if.then21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  %substream.i = alloca ptr, align 4
  %task_name = alloca [32 x i8], align 1
  %setup.sroa.8.sroa.0 = alloca [15 x i8], align 1
  %setup.sroa.12 = alloca [15 x i8], align 1
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %task_name) #18
  %0 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 1
  %1 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 2
  %2 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 3
  %3 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 4
  %4 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 5
  %5 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 6
  %6 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 7
  %7 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 8
  %8 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 9
  %9 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 10
  %10 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 11
  %11 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 12
  %12 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 13
  %13 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 14
  %14 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 15
  %15 = getelementptr inbounds [32 x i8], ptr %task_name, i32 0, i32 16
  %16 = call ptr @memset(ptr %task_name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %setup.sroa.8.sroa.0)
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %setup.sroa.12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #18
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %19 = call ptr @memset(ptr %wait, i32 255, i32 20)
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %20 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %21, 1048575
  %call2 = tail call ptr @snd_lookup_oss_minor_data(i32 noundef %and.i, i32 noundef 2) #18
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %22 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call2, align 8
  %call6 = tail call i32 @snd_card_file_add(ptr noundef %23, ptr noundef %file) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup.sink.split_crit_edge, label %if.end9

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end5
  %24 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call2, align 8
  %module = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %module, align 4
  %call11 = tail call zeroext i1 @try_module_get(ptr noundef %27) #18
  br i1 %call11, label %if.end13, label %__error1.thread250

__error1.thread250:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call2, align 8
  %call144252 = tail call i32 @snd_card_file_remove(ptr noundef %29, ptr noundef %file) #18
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end9
  %30 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i190 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i190 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %snd_task_name.exit.thread, label %if.end18, !prof !183

snd_task_name.exit.thread:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2474, i32 noundef 9, ptr noundef null) #18
  br label %__error1

if.end18:                                         ; preds = %if.end13
  %arrayidx.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 0
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %36 = ptrtoint ptr %task_name to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %task_name, align 1
  %arrayidx.1.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.1.i, align 1
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %0, align 1
  %arrayidx.2.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 2
  %40 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.2.i, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %1, align 1
  %arrayidx.3.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 3
  %43 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.3.i, align 1
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %2, align 1
  %arrayidx.4.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 4
  %46 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.4.i, align 1
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %3, align 1
  %arrayidx.5.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 5
  %49 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.5.i, align 1
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %4, align 1
  %arrayidx.6.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 6
  %52 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.6.i, align 1
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %5, align 1
  %arrayidx.7.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 7
  %55 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.7.i, align 1
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %6, align 1
  %arrayidx.8.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 8
  %58 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.8.i, align 1
  %60 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %7, align 1
  %arrayidx.9.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 9
  %61 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.9.i, align 1
  %63 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %8, align 1
  %arrayidx.10.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 10
  %64 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.10.i, align 1
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %9, align 1
  %arrayidx.11.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 11
  %67 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.11.i, align 1
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %10, align 1
  %arrayidx.12.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 12
  %70 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.12.i, align 1
  %72 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %11, align 1
  %arrayidx.13.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 13
  %73 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.13.i, align 1
  %75 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %12, align 1
  %arrayidx.14.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 14
  %76 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.14.i, align 1
  %78 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %13, align 1
  %arrayidx.15.i = getelementptr %struct.task_struct, ptr %33, i32 0, i32 101, i32 15
  %79 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.15.i, align 1
  %81 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %14, align 1
  %82 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %15, align 1
  %83 = call ptr @memset(ptr %setup.sroa.8.sroa.0, i32 0, i32 15)
  %84 = call ptr @memset(ptr %setup.sroa.12, i32 0, i32 15)
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %85 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %f_mode, align 8
  %and = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18.if.end22_crit_edge, label %if.then20

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  %oss.i = getelementptr %struct.snd_pcm, ptr %call2, i32 0, i32 8, i32 0, i32 5
  %setup_mutex.i = getelementptr %struct.snd_pcm, ptr %call2, i32 0, i32 8, i32 0, i32 5, i32 1
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex.i, i32 noundef 0) #18
  %87 = ptrtoint ptr %oss.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %setup.024.i = load ptr, ptr %oss.i, align 4
  %tobool.not25.i = icmp eq ptr %setup.024.i, null
  br label %do.body.i

do.body.i:                                        ; preds = %strip_task_path.exit.i.do.body.i_crit_edge, %if.then20
  %task_name.addr.0.i = phi ptr [ %task_name, %if.then20 ], [ %ptrl.0.i.i, %strip_task_path.exit.i.do.body.i_crit_edge ]
  br i1 %tobool.not25.i, label %do.body.i.for.cond.i.i.preheader_crit_edge, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

do.body.i.for.cond.i.i.preheader_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %setup.026.i = phi ptr [ %setup.0.i, %for.inc.i.for.body.i_crit_edge ], [ %setup.024.i, %do.body.i.for.body.i_crit_edge ]
  %88 = ptrtoint ptr %setup.026.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %setup.026.i, align 4
  %call.i = call i32 @strcmp(ptr noundef %89, ptr noundef %task_name.addr.0.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then8.critedge.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %next.i = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.026.i, i32 0, i32 4
  %90 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %setup.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i191 = icmp eq ptr %setup.0.i, null
  br i1 %tobool.not.i191, label %for.inc.i.for.cond.i.i.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.for.cond.i.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %for.inc.i.for.cond.i.i.preheader_crit_edge, %do.body.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %for.cond.i.i.preheader
  %ptr.0.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i ], [ %task_name.addr.0.i, %for.cond.i.i.preheader ]
  %ptrl.0.i.i = phi ptr [ %ptrl.1.i.i, %for.inc.i.i ], [ null, %for.cond.i.i.preheader ]
  %91 = ptrtoint ptr %ptr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ptr.0.i.i, align 1
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %92, label %for.cond.i.i.for.inc.i.i_crit_edge [
    i8 0, label %strip_task_path.exit.i
    i8 47, label %if.then.i.i
  ]

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i = getelementptr i8, ptr %ptr.0.i.i, i32 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.cond.i.i.for.inc.i.i_crit_edge
  %ptrl.1.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %ptrl.0.i.i, %for.cond.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ptr.0.i.i, i32 1
  br label %for.cond.i.i

strip_task_path.exit.i:                           ; preds = %for.cond.i.i
  %cmp.not.i = icmp eq ptr %ptrl.0.i.i, null
  br i1 %cmp.not.i, label %strip_task_path.exit.i.snd_pcm_oss_look_for_setup.exit_crit_edge, label %strip_task_path.exit.i.do.body.i_crit_edge

strip_task_path.exit.i.do.body.i_crit_edge:       ; preds = %strip_task_path.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

strip_task_path.exit.i.snd_pcm_oss_look_for_setup.exit_crit_edge: ; preds = %strip_task_path.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_look_for_setup.exit

if.then8.critedge.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %setup.sroa.6.0.setup.026.i.sroa_idx = getelementptr inbounds i8, ptr %setup.026.i, i32 4
  %94 = ptrtoint ptr %setup.sroa.6.0.setup.026.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %94)
  %setup.sroa.6.0.copyload = load i8, ptr %setup.sroa.6.0.setup.026.i.sroa_idx, align 4
  %setup.sroa.8.0.setup.026.i.sroa_idx = getelementptr inbounds i8, ptr %setup.026.i, i32 5
  %95 = call ptr @memcpy(ptr %setup.sroa.8.sroa.0, ptr %setup.sroa.8.0.setup.026.i.sroa_idx, i32 15)
  br label %snd_pcm_oss_look_for_setup.exit

snd_pcm_oss_look_for_setup.exit:                  ; preds = %if.then8.critedge.i, %strip_task_path.exit.i.snd_pcm_oss_look_for_setup.exit_crit_edge
  %setup.sroa.0.0 = phi ptr [ %89, %if.then8.critedge.i ], [ null, %strip_task_path.exit.i.snd_pcm_oss_look_for_setup.exit_crit_edge ]
  %setup.sroa.6.0 = phi i8 [ %setup.sroa.6.0.copyload, %if.then8.critedge.i ], [ 0, %strip_task_path.exit.i.snd_pcm_oss_look_for_setup.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %setup_mutex.i) #18
  br label %if.end22

if.end22:                                         ; preds = %snd_pcm_oss_look_for_setup.exit, %if.end18.if.end22_crit_edge
  %setup.sroa.0.1 = phi ptr [ null, %if.end18.if.end22_crit_edge ], [ %setup.sroa.0.0, %snd_pcm_oss_look_for_setup.exit ]
  %setup.sroa.6.1 = phi i8 [ 0, %if.end18.if.end22_crit_edge ], [ %setup.sroa.6.0, %snd_pcm_oss_look_for_setup.exit ]
  %96 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %f_mode, align 8
  %and24 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end29_crit_edge, label %if.then26

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  %oss.i192 = getelementptr %struct.snd_pcm, ptr %call2, i32 0, i32 8, i32 1, i32 5
  %setup_mutex.i193 = getelementptr %struct.snd_pcm, ptr %call2, i32 0, i32 8, i32 1, i32 5, i32 1
  call void @mutex_lock_nested(ptr noundef %setup_mutex.i193, i32 noundef 0) #18
  %98 = ptrtoint ptr %oss.i192 to i32
  call void @__asan_load4_noabort(i32 %98)
  %setup.024.i194 = load ptr, ptr %oss.i192, align 4
  %tobool.not25.i195 = icmp eq ptr %setup.024.i194, null
  br label %do.body.i197

do.body.i197:                                     ; preds = %strip_task_path.exit.i216.do.body.i197_crit_edge, %if.then26
  %task_name.addr.0.i196 = phi ptr [ %task_name, %if.then26 ], [ %ptrl.0.i.i208, %strip_task_path.exit.i216.do.body.i197_crit_edge ]
  br i1 %tobool.not25.i195, label %do.body.i197.for.cond.i.i209.preheader_crit_edge, label %do.body.i197.for.body.i202_crit_edge

do.body.i197.for.body.i202_crit_edge:             ; preds = %do.body.i197
  br label %for.body.i202

do.body.i197.for.cond.i.i209.preheader_crit_edge: ; preds = %do.body.i197
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i209.preheader

for.body.i202:                                    ; preds = %for.inc.i206.for.body.i202_crit_edge, %do.body.i197.for.body.i202_crit_edge
  %setup.026.i199 = phi ptr [ %setup.0.i204, %for.inc.i206.for.body.i202_crit_edge ], [ %setup.024.i194, %do.body.i197.for.body.i202_crit_edge ]
  %99 = ptrtoint ptr %setup.026.i199 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %setup.026.i199, align 4
  %call.i200 = call i32 @strcmp(ptr noundef %100, ptr noundef %task_name.addr.0.i196) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool5.not.i201 = icmp eq i32 %call.i200, 0
  br i1 %tobool5.not.i201, label %if.then8.critedge.i217, label %for.inc.i206

for.inc.i206:                                     ; preds = %for.body.i202
  %next.i203 = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.026.i199, i32 0, i32 4
  %101 = ptrtoint ptr %next.i203 to i32
  call void @__asan_load4_noabort(i32 %101)
  %setup.0.i204 = load ptr, ptr %next.i203, align 4
  %tobool.not.i205 = icmp eq ptr %setup.0.i204, null
  br i1 %tobool.not.i205, label %for.inc.i206.for.cond.i.i209.preheader_crit_edge, label %for.inc.i206.for.body.i202_crit_edge

for.inc.i206.for.body.i202_crit_edge:             ; preds = %for.inc.i206
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i202

for.inc.i206.for.cond.i.i209.preheader_crit_edge: ; preds = %for.inc.i206
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i209.preheader

for.cond.i.i209.preheader:                        ; preds = %for.inc.i206.for.cond.i.i209.preheader_crit_edge, %do.body.i197.for.cond.i.i209.preheader_crit_edge
  br label %for.cond.i.i209

for.cond.i.i209:                                  ; preds = %for.inc.i.i214, %for.cond.i.i209.preheader
  %ptr.0.i.i207 = phi ptr [ %incdec.ptr.i.i213, %for.inc.i.i214 ], [ %task_name.addr.0.i196, %for.cond.i.i209.preheader ]
  %ptrl.0.i.i208 = phi ptr [ %ptrl.1.i.i212, %for.inc.i.i214 ], [ null, %for.cond.i.i209.preheader ]
  %102 = ptrtoint ptr %ptr.0.i.i207 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ptr.0.i.i207, align 1
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %103, label %for.cond.i.i209.for.inc.i.i214_crit_edge [
    i8 0, label %strip_task_path.exit.i216
    i8 47, label %if.then.i.i211
  ]

for.cond.i.i209.for.inc.i.i214_crit_edge:         ; preds = %for.cond.i.i209
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i214

if.then.i.i211:                                   ; preds = %for.cond.i.i209
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i210 = getelementptr i8, ptr %ptr.0.i.i207, i32 1
  br label %for.inc.i.i214

for.inc.i.i214:                                   ; preds = %if.then.i.i211, %for.cond.i.i209.for.inc.i.i214_crit_edge
  %ptrl.1.i.i212 = phi ptr [ %add.ptr.i.i210, %if.then.i.i211 ], [ %ptrl.0.i.i208, %for.cond.i.i209.for.inc.i.i214_crit_edge ]
  %incdec.ptr.i.i213 = getelementptr i8, ptr %ptr.0.i.i207, i32 1
  br label %for.cond.i.i209

strip_task_path.exit.i216:                        ; preds = %for.cond.i.i209
  %cmp.not.i215 = icmp eq ptr %ptrl.0.i.i208, null
  br i1 %cmp.not.i215, label %strip_task_path.exit.i216.snd_pcm_oss_look_for_setup.exit218_crit_edge, label %strip_task_path.exit.i216.do.body.i197_crit_edge

strip_task_path.exit.i216.do.body.i197_crit_edge: ; preds = %strip_task_path.exit.i216
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i197

strip_task_path.exit.i216.snd_pcm_oss_look_for_setup.exit218_crit_edge: ; preds = %strip_task_path.exit.i216
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_look_for_setup.exit218

if.then8.critedge.i217:                           ; preds = %for.body.i202
  call void @__sanitizer_cov_trace_pc() #20
  %105 = ptrtoint ptr %setup.026.i199 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %setup.026.i199, align 4
  %setup.sroa.10.20.setup.026.i199.sroa_idx = getelementptr inbounds i8, ptr %setup.026.i199, i32 4
  %107 = ptrtoint ptr %setup.sroa.10.20.setup.026.i199.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %107)
  %setup.sroa.10.20.copyload = load i8, ptr %setup.sroa.10.20.setup.026.i199.sroa_idx, align 4
  %setup.sroa.12.20.setup.026.i199.sroa_idx = getelementptr inbounds i8, ptr %setup.026.i199, i32 5
  %108 = call ptr @memcpy(ptr %setup.sroa.12, ptr %setup.sroa.12.20.setup.026.i199.sroa_idx, i32 15)
  br label %snd_pcm_oss_look_for_setup.exit218

snd_pcm_oss_look_for_setup.exit218:               ; preds = %if.then8.critedge.i217, %strip_task_path.exit.i216.snd_pcm_oss_look_for_setup.exit218_crit_edge
  %setup.sroa.8.sroa.6.0 = phi i32 [ %106, %if.then8.critedge.i217 ], [ 0, %strip_task_path.exit.i216.snd_pcm_oss_look_for_setup.exit218_crit_edge ]
  %setup.sroa.10.0 = phi i8 [ %setup.sroa.10.20.copyload, %if.then8.critedge.i217 ], [ 0, %strip_task_path.exit.i216.snd_pcm_oss_look_for_setup.exit218_crit_edge ]
  call void @mutex_unlock(ptr noundef %setup_mutex.i193) #18
  br label %if.end29

if.end29:                                         ; preds = %snd_pcm_oss_look_for_setup.exit218, %if.end22.if.end29_crit_edge
  %setup.sroa.8.sroa.6.1 = phi i32 [ 0, %if.end22.if.end29_crit_edge ], [ %setup.sroa.8.sroa.6.0, %snd_pcm_oss_look_for_setup.exit218 ]
  %setup.sroa.10.1 = phi i8 [ 0, %if.end22.if.end29_crit_edge ], [ %setup.sroa.10.0, %snd_pcm_oss_look_for_setup.exit218 ]
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %109 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %f_flags, align 4
  %and30 = and i32 %110, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %and30.lobit = lshr exact i32 %and30, 11
  br i1 %tobool31.not, label %if.then34, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  %111 = load i8, ptr @nonblock_open, align 1, !range !184
  %112 = zext i8 %111 to i32
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end29.if.end36_crit_edge
  %nonblock.0 = phi i32 [ %and30.lobit, %if.end29.if.end36_crit_edge ], [ %112, %if.then34 ]
  %113 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task, align 8
  %115 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %wait, align 4
  %116 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %114, ptr %17, align 4
  %117 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @default_wake_function, ptr %18, align 4
  %open_wait = getelementptr inbounds %struct.snd_pcm, ptr %call2, i32 0, i32 10
  call void @add_wait_queue(ptr noundef %open_wait, ptr noundef nonnull %wait) #18
  %open_mutex = getelementptr inbounds %struct.snd_pcm, ptr %call2, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #18
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %call2, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %setup.sroa.6.1)
  %tobool11.not.i = icmp sgt i8 %setup.sroa.6.1, -1
  %substream_count.i = getelementptr %struct.snd_pcm, ptr %call2, i32 0, i32 8, i32 0, i32 2
  %118 = and i8 %setup.sroa.6.1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i80.i = icmp eq i8 %118, 0
  %119 = and i8 %setup.sroa.6.1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool9.not.i.i = icmp eq i8 %119, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %setup.sroa.10.1)
  %tobool11.not.1.i = icmp sgt i8 %setup.sroa.10.1, -1
  %substream_count.1.i = getelementptr %struct.snd_pcm, ptr %call2, i32 0, i32 8, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock.0)
  %tobool49.not = icmp ne i32 %nonblock.0, 0
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %if.end36
  %120 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i_rdev.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream.i) #18
  %122 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream.i, align 4, !annotation !156
  %123 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %f_mode, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %125 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3520, i32 noundef 8) #23
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %while.cond.snd_pcm_oss_open_file.exit.thread_crit_edge, label %if.end3.i

while.cond.snd_pcm_oss_open_file.exit.thread_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_open_file.exit.thread

if.end3.i:                                        ; preds = %while.cond
  %and.i221 = and i32 %124, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i221)
  %cmp4.i = icmp eq i32 %and.i221, 3
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end3.i.if.end8.i_crit_edge

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  %126 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %info_flags.i, align 8
  %and5.i = and i32 %127, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 %124, i32 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.i, %if.end3.i.if.end8.i_crit_edge
  %f_mode.0.i = phi i32 [ %124, %if.end3.i.if.end8.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %128 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %f_flags, align 4
  %and9.i = and i32 %129, -1025
  store i32 %and9.i, ptr %f_flags, align 4
  %and24.i = and i32 %f_mode.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %and24.i.i = and i32 %121, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and24.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %and24.i.i, 5
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 16, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and24.i.i)
  %switch.selectcmp54.i.i = icmp eq i32 %and24.i.i, 3
  %switch.select55.i.i = select i1 %switch.selectcmp54.i.i, i32 8, i32 %switch.select.i.i
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i.for.inc.i224_crit_edge

if.end8.i.for.inc.i224_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i224

if.end13.i:                                       ; preds = %if.end8.i
  %and20.i = and i32 %f_mode.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %130 = ptrtoint ptr %substream_count.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %substream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool15.not.i = icmp eq i32 %131, 0
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool21.not.i
  br i1 %brmerge.i, label %if.end13.i.for.inc.i224_crit_edge, label %if.end28.i

if.end13.i.for.inc.i224_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i224

if.end28.i:                                       ; preds = %if.end13.i
  %call29.i = call i32 @snd_pcm_open_substream(ptr noundef nonnull %call2, i32 noundef 0, ptr noundef %file, ptr noundef nonnull %substream.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end28.i.for.body.preheader.i.i_crit_edge, label %if.end33.i

if.end28.i.for.body.preheader.i.i_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end28.1.i.for.body.preheader.i.i_crit_edge, %if.end28.i.for.body.preheader.i.i_crit_edge
  %call29.lcssa.i = phi i32 [ %call29.i, %if.end28.i.for.body.preheader.i.i_crit_edge ], [ %call29.1.i, %if.end28.1.i.for.body.preheader.i.i_crit_edge ]
  %132 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %call7.i.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %133, null
  br i1 %tobool1.not.i.i, label %for.body.preheader.i.i.if.end3.i.i_crit_edge, label %if.then2.i.i

for.body.preheader.i.i.if.end3.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @snd_pcm_release_substream(ptr noundef nonnull %133) #18
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %for.body.preheader.i.i.if.end3.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr [2 x ptr], ptr %call7.i.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool1.not.1.i.i = icmp eq ptr %135, null
  br i1 %tobool1.not.1.i.i, label %if.end3.i.i.snd_pcm_oss_open_file.exit_crit_edge, label %if.then2.1.i.i

if.end3.i.i.snd_pcm_oss_open_file.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_open_file.exit

if.then2.1.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @snd_pcm_release_substream(ptr noundef nonnull %135) #18
  br label %snd_pcm_oss_open_file.exit

if.end33.i:                                       ; preds = %if.end28.i
  %136 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %substream.i, align 4
  %138 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %call7.i.i.i, align 8
  %oss.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %137, i32 0, i32 24
  %139 = ptrtoint ptr %oss.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load.i.i = load i8, ptr %oss.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %oss.i.i, align 4
  %setup2.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %137, i32 0, i32 24, i32 1
  %140 = ptrtoint ptr %setup2.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %setup.sroa.0.1, ptr %setup2.i.i, align 4
  %setup.sroa.6.0.setup2.i.i.sroa_idx = getelementptr inbounds %struct.snd_pcm_substream, ptr %137, i32 0, i32 24, i32 1, i32 1
  %141 = ptrtoint ptr %setup.sroa.6.0.setup2.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %setup.sroa.6.1, ptr %setup.sroa.6.0.setup2.i.i.sroa_idx, align 4
  %setup.sroa.8.0.setup2.i.i.sroa_idx = getelementptr inbounds i8, ptr %setup2.i.i, i32 5
  %142 = call ptr @memcpy(ptr %setup.sroa.8.0.setup2.i.i.sroa_idx, ptr %setup.sroa.8.sroa.0, i32 15)
  br i1 %tobool.not.i80.i, label %if.else.i.i, label %if.then.i.i222

if.then.i.i222:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #20
  %f_flags.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %137, i32 0, i32 21
  %143 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %f_flags.i.i, align 4
  %or.i.i = or i32 %144, 2048
  store i32 %or.i.i, ptr %f_flags.i.i, align 4
  br label %snd_pcm_oss_init_substream.exit.i

if.else.i.i:                                      ; preds = %if.end33.i
  br i1 %tobool9.not.i.i, label %if.else.i.i.snd_pcm_oss_init_substream.exit.i_crit_edge, label %if.then10.i.i

if.else.i.i.snd_pcm_oss_init_substream.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_init_substream.exit.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %f_flags11.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %137, i32 0, i32 21
  %145 = ptrtoint ptr %f_flags11.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %f_flags11.i.i, align 4
  %and.i.i = and i32 %146, -2049
  store i32 %and.i.i, ptr %f_flags11.i.i, align 4
  br label %snd_pcm_oss_init_substream.exit.i

snd_pcm_oss_init_substream.exit.i:                ; preds = %if.then10.i.i, %if.else.i.i.snd_pcm_oss_init_substream.exit.i_crit_edge, %if.then.i.i222
  %runtime13.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %137, i32 0, i32 11
  %147 = ptrtoint ptr %runtime13.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %runtime13.i.i, align 4
  %oss14.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59
  %149 = ptrtoint ptr %oss14.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %bf.load15.i.i = load i8, ptr %oss14.i.i, align 8
  %bf.set21.i.i = or i8 %bf.load15.i.i, -96
  store i8 %bf.set21.i.i, ptr %oss14.i.i, align 8
  %rate.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59, i32 1
  %150 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 8000, ptr %rate.i.i, align 4
  %params_lock.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59, i32 16
  call void @__mutex_init(ptr noundef %params_lock.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @snd_pcm_oss_init_substream.__key) #18
  %format30.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59, i32 2
  %151 = ptrtoint ptr %format30.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %switch.select55.i.i, ptr %format30.i.i, align 8
  %channels.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59, i32 3
  %152 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %channels.i.i, align 4
  %fragshift.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59, i32 4
  %153 = ptrtoint ptr %fragshift.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %fragshift.i.i, align 8
  %maxfrags.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59, i32 5
  %154 = ptrtoint ptr %maxfrags.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %maxfrags.i.i, align 4
  %subdivision.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59, i32 6
  %155 = ptrtoint ptr %subdivision.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %subdivision.i.i, align 8
  %pcm_release.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %137, i32 0, i32 22
  %156 = ptrtoint ptr %pcm_release.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @snd_pcm_oss_release_substream, ptr %pcm_release.i.i, align 4
  %rw_ref.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %148, i32 0, i32 59, i32 17
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref.i.i, i32 noundef 4) #18
  %157 = ptrtoint ptr %rw_ref.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 0, ptr %rw_ref.i.i, align 4
  br label %for.inc.i224

for.inc.i224:                                     ; preds = %snd_pcm_oss_init_substream.exit.i, %if.end13.i.for.inc.i224_crit_edge, %if.end8.i.for.inc.i224_crit_edge
  br i1 %tobool11.not.1.i, label %if.end13.1.i, label %for.inc.i224.for.inc.1.i_crit_edge

for.inc.i224.for.inc.1.i_crit_edge:               ; preds = %for.inc.i224
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.end13.1.i:                                     ; preds = %for.inc.i224
  %158 = ptrtoint ptr %substream_count.1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %substream_count.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool15.not.1.i = icmp eq i32 %159, 0
  %brmerge93.i = select i1 %tobool15.not.1.i, i1 true, i1 %tobool25.not.i
  br i1 %brmerge93.i, label %if.end13.1.i.for.inc.1.i_crit_edge, label %if.end28.1.i

if.end13.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.end28.1.i:                                     ; preds = %if.end13.1.i
  %call29.1.i = call i32 @snd_pcm_open_substream(ptr noundef nonnull %call2, i32 noundef 1, ptr noundef %file, ptr noundef nonnull %substream.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1.i)
  %cmp30.1.i = icmp slt i32 %call29.1.i, 0
  br i1 %cmp30.1.i, label %if.end28.1.i.for.body.preheader.i.i_crit_edge, label %if.end33.1.i

if.end28.1.i.for.body.preheader.i.i_crit_edge:    ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.preheader.i.i

if.end33.1.i:                                     ; preds = %if.end28.1.i
  %160 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %substream.i, align 4
  %arrayidx35.1.i = getelementptr [2 x ptr], ptr %call7.i.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %arrayidx35.1.i, align 4
  %oss.i.1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %161, i32 0, i32 24
  %163 = ptrtoint ptr %oss.i.1.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %bf.load.i.1.i = load i8, ptr %oss.i.1.i, align 4
  %bf.set.i.1.i = or i8 %bf.load.i.1.i, -128
  store i8 %bf.set.i.1.i, ptr %oss.i.1.i, align 4
  %setup2.i.1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %161, i32 0, i32 24, i32 1
  %164 = ptrtoint ptr %setup2.i.1.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %setup.sroa.8.sroa.6.1, ptr %setup2.i.1.i, align 4
  %setup.sroa.10.20.setup2.i.1.i.sroa_idx = getelementptr inbounds %struct.snd_pcm_substream, ptr %161, i32 0, i32 24, i32 1, i32 1
  %165 = ptrtoint ptr %setup.sroa.10.20.setup2.i.1.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %setup.sroa.10.1, ptr %setup.sroa.10.20.setup2.i.1.i.sroa_idx, align 4
  %setup.sroa.12.20.setup2.i.1.i.sroa_idx = getelementptr inbounds i8, ptr %setup2.i.1.i, i32 5
  %166 = call ptr @memcpy(ptr %setup.sroa.12.20.setup2.i.1.i.sroa_idx, ptr %setup.sroa.12, i32 15)
  %167 = and i8 %setup.sroa.10.1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i80.1.i = icmp eq i8 %167, 0
  br i1 %tobool.not.i80.1.i, label %if.else.i.1.i, label %if.then.i.1.i

if.then.i.1.i:                                    ; preds = %if.end33.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %f_flags.i.1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %161, i32 0, i32 21
  %168 = ptrtoint ptr %f_flags.i.1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %f_flags.i.1.i, align 4
  %or.i.1.i = or i32 %169, 2048
  store i32 %or.i.1.i, ptr %f_flags.i.1.i, align 4
  br label %snd_pcm_oss_init_substream.exit.1.i

if.else.i.1.i:                                    ; preds = %if.end33.1.i
  %170 = and i8 %setup.sroa.10.1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool9.not.i.1.i = icmp eq i8 %170, 0
  br i1 %tobool9.not.i.1.i, label %if.else.i.1.i.snd_pcm_oss_init_substream.exit.1.i_crit_edge, label %if.then10.i.1.i

if.else.i.1.i.snd_pcm_oss_init_substream.exit.1.i_crit_edge: ; preds = %if.else.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_init_substream.exit.1.i

if.then10.i.1.i:                                  ; preds = %if.else.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %f_flags11.i.1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %161, i32 0, i32 21
  %171 = ptrtoint ptr %f_flags11.i.1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %f_flags11.i.1.i, align 4
  %and.i.1.i = and i32 %172, -2049
  store i32 %and.i.1.i, ptr %f_flags11.i.1.i, align 4
  br label %snd_pcm_oss_init_substream.exit.1.i

snd_pcm_oss_init_substream.exit.1.i:              ; preds = %if.then10.i.1.i, %if.else.i.1.i.snd_pcm_oss_init_substream.exit.1.i_crit_edge, %if.then.i.1.i
  %runtime13.i.1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %161, i32 0, i32 11
  %173 = ptrtoint ptr %runtime13.i.1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %runtime13.i.1.i, align 4
  %oss14.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59
  %175 = ptrtoint ptr %oss14.i.1.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %bf.load15.i.1.i = load i8, ptr %oss14.i.1.i, align 8
  %bf.set21.i.1.i = or i8 %bf.load15.i.1.i, -96
  store i8 %bf.set21.i.1.i, ptr %oss14.i.1.i, align 8
  %rate.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59, i32 1
  %176 = ptrtoint ptr %rate.i.1.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 8000, ptr %rate.i.1.i, align 4
  %params_lock.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59, i32 16
  call void @__mutex_init(ptr noundef %params_lock.i.1.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @snd_pcm_oss_init_substream.__key) #18
  %format30.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59, i32 2
  %177 = ptrtoint ptr %format30.i.1.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %switch.select55.i.i, ptr %format30.i.1.i, align 8
  %channels.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59, i32 3
  %178 = ptrtoint ptr %channels.i.1.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %channels.i.1.i, align 4
  %fragshift.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59, i32 4
  %179 = ptrtoint ptr %fragshift.i.1.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %fragshift.i.1.i, align 8
  %maxfrags.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59, i32 5
  %180 = ptrtoint ptr %maxfrags.i.1.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %maxfrags.i.1.i, align 4
  %subdivision.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59, i32 6
  %181 = ptrtoint ptr %subdivision.i.1.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %subdivision.i.1.i, align 8
  %pcm_release.i.1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %161, i32 0, i32 22
  %182 = ptrtoint ptr %pcm_release.i.1.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @snd_pcm_oss_release_substream, ptr %pcm_release.i.1.i, align 4
  %rw_ref.i.1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 59, i32 17
  %call.i.i.i.1.i = call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref.i.1.i, i32 noundef 4) #18
  %183 = ptrtoint ptr %rw_ref.i.1.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile i32 0, ptr %rw_ref.i.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %snd_pcm_oss_init_substream.exit.1.i, %if.end13.1.i.for.inc.1.i_crit_edge, %for.inc.i224.for.inc.1.i_crit_edge
  %184 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %call7.i.i.i, align 8
  %tobool39.not.i = icmp eq ptr %185, null
  br i1 %tobool39.not.i, label %land.lhs.true40.i, label %for.inc.1.i.if.end46.i_crit_edge

for.inc.1.i.if.end46.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46.i

land.lhs.true40.i:                                ; preds = %for.inc.1.i
  %arrayidx42.i = getelementptr [2 x ptr], ptr %call7.i.i.i, i32 0, i32 1
  %186 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx42.i, align 4
  %tobool43.not.i = icmp eq ptr %187, null
  br i1 %tobool43.not.i, label %snd_pcm_oss_release_file.exit90.i, label %land.lhs.true40.i.if.end46.i_crit_edge

land.lhs.true40.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46.i

snd_pcm_oss_release_file.exit90.i:                ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  br label %snd_pcm_oss_open_file.exit.thread

if.end46.i:                                       ; preds = %land.lhs.true40.i.if.end46.i_crit_edge, %for.inc.1.i.if.end46.i_crit_edge
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %188 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  br label %snd_pcm_oss_open_file.exit.thread

snd_pcm_oss_open_file.exit.thread:                ; preds = %if.end46.i, %snd_pcm_oss_release_file.exit90.i, %while.cond.snd_pcm_oss_open_file.exit.thread_crit_edge
  %retval.0.i225.ph = phi i32 [ 0, %if.end46.i ], [ -22, %snd_pcm_oss_release_file.exit90.i ], [ -12, %while.cond.snd_pcm_oss_open_file.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i) #18
  br label %while.end

snd_pcm_oss_open_file.exit:                       ; preds = %if.then2.1.i.i, %if.end3.i.i.snd_pcm_oss_open_file.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call29.lcssa.i)
  %cmp46 = icmp ne i32 %call29.lcssa.i, -11
  %brmerge = select i1 %cmp46, i1 true, i1 %tobool49.not
  br i1 %brmerge, label %while.end.loopexit.split.loop.exit, label %__here

__here:                                           ; preds = %snd_pcm_oss_open_file.exit
  %189 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %190, i32 0, i32 212
  %191 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 ptrtoint (ptr blockaddress(@snd_pcm_oss_open, %__here) to i32), ptr %task_state_change, align 4
  %192 = load ptr, ptr %task, align 8
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile i32 1, ptr %192, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !185
  call void @mutex_unlock(ptr noundef %open_mutex) #18
  call void @schedule() #18
  call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #18
  %194 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %call2, align 8
  %shutdown = getelementptr inbounds %struct.snd_card, ptr %195, i32 0, i32 25
  %196 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %shutdown, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool125.not = icmp eq i32 %197, 0
  br i1 %tobool125.not, label %if.end127, label %__here.while.end_crit_edge

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end127:                                        ; preds = %__here
  %198 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %stack.i.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %201, align 4
  %204 = and i32 %203, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i226 = icmp eq i32 %204, 0
  br i1 %tobool.not.i226, label %signal_pending.exit, label %if.end127.while.end_crit_edge, !prof !186

if.end127.while.end_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

signal_pending.exit:                              ; preds = %if.end127
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %201, align 4
  %and1.i.i.i.i.i = and i32 %206, 1
  %tobool131.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool131.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.end.loopexit.split.loop.exit:               ; preds = %snd_pcm_oss_open_file.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call29.lcssa.i.mux.le = select i1 %cmp46, i32 %call29.lcssa.i, i32 -16
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.split.loop.exit, %signal_pending.exit.while.end_crit_edge, %if.end127.while.end_crit_edge, %__here.while.end_crit_edge, %snd_pcm_oss_open_file.exit.thread
  %err.0 = phi i32 [ %retval.0.i225.ph, %snd_pcm_oss_open_file.exit.thread ], [ %call29.lcssa.i.mux.le, %while.end.loopexit.split.loop.exit ], [ -19, %__here.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -512, %if.end127.while.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %open_wait, ptr noundef nonnull %wait) #18
  call void @mutex_unlock(ptr noundef %open_mutex) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp136 = icmp slt i32 %err.0, 0
  br i1 %cmp136, label %while.end.__error1_crit_edge, label %while.end.cleanup.sink.split_crit_edge

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

while.end.__error1_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %__error1

__error1:                                         ; preds = %while.end.__error1_crit_edge, %snd_task_name.exit.thread
  %err.1 = phi i32 [ %err.0, %while.end.__error1_crit_edge ], [ -14, %snd_task_name.exit.thread ]
  %207 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %call2, align 8
  %module142 = getelementptr inbounds %struct.snd_card, ptr %208, i32 0, i32 8
  %209 = ptrtoint ptr %module142 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %module142, align 4
  call void @module_put(ptr noundef %210) #18
  %211 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %call2, align 8
  %call144 = call i32 @snd_card_file_remove(ptr noundef %212, ptr noundef %file) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__error1, %while.end.cleanup.sink.split_crit_edge, %__error1.thread250, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %while.end.cleanup.sink.split_crit_edge ], [ %err.1, %__error1 ], [ -14, %__error1.thread250 ], [ %call6, %if.end5.cleanup.sink.split_crit_edge ]
  %213 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %call2, align 8
  %card_dev.i228 = getelementptr inbounds %struct.snd_card, ptr %214, i32 0, i32 28
  call void @put_device(ptr noundef %card_dev.i228) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #18
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %setup.sroa.8.sroa.0)
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %setup.sroa.12)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %task_name) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_oss_release(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end.if.end27_crit_edge, !prof !183

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2580, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end27:                                         ; preds = %if.end.if.end27_crit_edge, %entry.if.end27_crit_edge
  %substream.053 = phi ptr [ %5, %if.end.if.end27_crit_edge ], [ %3, %entry.if.end27_crit_edge ]
  %6 = ptrtoint ptr %substream.053 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream.053, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %shutdown = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shutdown, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool29.not = icmp eq i32 %11, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call fastcc i32 @snd_pcm_oss_sync(ptr noundef %1)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  %open_mutex = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #18
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end31.snd_pcm_oss_release_file.exit_crit_edge, label %for.body.preheader.i

if.end31.snd_pcm_oss_release_file.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_release_file.exit

for.body.preheader.i:                             ; preds = %if.end31
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %for.body.preheader.i.if.end3.i_crit_edge, label %if.then2.i

for.body.preheader.i.if.end3.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

if.then2.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @snd_pcm_release_substream(ptr noundef nonnull %13) #18
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %for.body.preheader.i.if.end3.i_crit_edge
  %arrayidx.1.i = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool1.not.1.i = icmp eq ptr %15, null
  br i1 %tobool1.not.1.i, label %if.end3.i.if.end3.1.i_crit_edge, label %if.then2.1.i

if.end3.i.if.end3.1.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.1.i

if.then2.1.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @snd_pcm_release_substream(ptr noundef nonnull %15) #18
  br label %if.end3.1.i

if.end3.1.i:                                      ; preds = %if.then2.1.i, %if.end3.i.if.end3.1.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #18
  br label %snd_pcm_oss_release_file.exit

snd_pcm_oss_release_file.exit:                    ; preds = %if.end3.1.i, %if.end31.snd_pcm_oss_release_file.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #18
  %open_wait = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 8
  %module = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %19) #18
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %7, align 8
  %call36 = tail call i32 @snd_card_file_remove(ptr noundef %21, ptr noundef %file) #18
  br label %cleanup

cleanup:                                          ; preds = %snd_pcm_oss_release_file.exit, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %snd_pcm_oss_release_file.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_read1(ptr noundef %substream, ptr noundef %buf, i32 noundef %bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %2 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %rw_ref = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 17
  %call.i.i135 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %rw_ref, i32 1, i32 3, i32 1) #18
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_ref, ptr %rw_ref, i32 1, ptr elementtype(i32) %rw_ref) #18, !srcloc !187
  %params_lock = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 16
  %period_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 7
  %buffer_used = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 15
  %bytes63 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 12
  %buffer = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 14
  %period_ptr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 9
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %if.end
  %buf.addr.0 = phi ptr [ %buf, %if.end ], [ %buf.addr.1164, %signal_pending.exit.while.cond_crit_edge ]
  %bytes.addr.0 = phi i32 [ %bytes, %if.end ], [ %bytes.addr.1165, %signal_pending.exit.while.cond_crit_edge ]
  %xfer.0 = phi i32 [ 0, %if.end ], [ %xfer.1166, %signal_pending.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0)
  %cmp.not = icmp eq i32 %bytes.addr.0, 0
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end6:                                          ; preds = %while.body
  %5 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime1, align 4
  %oss.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 59
  %7 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %oss.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end6.if.end3.i_crit_edge, label %if.then.i138

if.end6.if.end3.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

if.then.i138:                                     ; preds = %if.end6
  %call.i = tail call fastcc i32 @snd_pcm_oss_change_params_locked(ptr noundef %substream) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i138.err.thread_crit_edge, label %if.then.i138.if.end3.i_crit_edge

if.then.i138.if.end3.i_crit_edge:                 ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

if.then.i138.err.thread_crit_edge:                ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread

if.end3.i:                                        ; preds = %if.then.i138.if.end3.i_crit_edge, %if.end6.if.end3.i_crit_edge
  %8 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load5.i = load i8, ptr %oss.i, align 8
  %9 = and i8 %bf.load5.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %if.end3.i.if.end10_crit_edge, label %if.then9.i

if.end3.i.if.end10_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then9.i:                                       ; preds = %if.end3.i
  %10 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime1, align 4
  %call.i.i139 = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16704, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %cmp.i.i140 = icmp slt i32 %call.i.i139, 0
  br i1 %cmp.i.i140, label %do.body.i.i, label %snd_pcm_oss_prepare.exit.thread24.i

do.body.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_read1, %snd_pcm_oss_prepare.exit.thread.i)) #18
          to label %err [label %snd_pcm_oss_prepare.exit.thread.i], !srcloc !155

snd_pcm_oss_prepare.exit.thread.i:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %substream, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, ptr noundef %17, ptr noundef nonnull @.str.3) #18
  br label %err.thread

snd_pcm_oss_prepare.exit.thread24.i:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  %oss.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59
  %18 = ptrtoint ptr %oss.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %oss.i.i, align 8
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %oss.i.i, align 8
  %prev_hw_ptr_period.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 20
  %19 = ptrtoint ptr %prev_hw_ptr_period.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %prev_hw_ptr_period.i.i, align 8
  %period_ptr.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 9
  %20 = ptrtoint ptr %period_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %period_ptr.i.i, align 4
  %buffer_used.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 15
  %21 = ptrtoint ptr %buffer_used.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %buffer_used.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %snd_pcm_oss_prepare.exit.thread24.i, %if.end3.i.if.end10_crit_edge
  %22 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.0, i32 %23)
  %cmp12 = icmp ult i32 %bytes.addr.0, %23
  %24 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %buffer_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp18 = icmp eq i32 %.pr, 0
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  br i1 %cmp18, label %if.else, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then15:                                        ; preds = %if.end10
  br i1 %cmp18, label %if.then19, label %if.then15.if.end32_crit_edge

if.then15.if.end32_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then19:                                        ; preds = %if.then15
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 8
  %call23 = tail call fastcc i32 @snd_pcm_oss_read2(ptr noundef %substream, ptr noundef %26, i32 noundef %23, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.then19.err_crit_edge, label %if.end26

if.then19.err_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  %27 = ptrtoint ptr %bytes63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytes63, align 8
  %add = add i32 %28, %call23
  store i32 %add, ptr %bytes63, align 8
  %29 = ptrtoint ptr %period_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call23, ptr %period_ptr, align 4
  %30 = ptrtoint ptr %buffer_used to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call23, ptr %buffer_used, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end26, %if.then15.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %31 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer_used, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %bytes.addr.0, i32 %32)
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer, align 8
  %36 = ptrtoint ptr %period_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %period_ptr, align 4
  %sub = sub i32 %37, %32
  %add.ptr = getelementptr i8, ptr %35, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp9.i.i = icmp slt i32 %33, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end32
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.err.thread_crit_edge, label %if.then27.i.i, !prof !186

land.rhs16.i.i.err.thread_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %err.thread

if.then.i.i.i:                                    ; preds = %if.end32
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %33, i1 noundef zeroext true) #18
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #18
  %call.i.i136 = tail call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i136, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %33, i32 -1226833920) #24, !srcloc !188
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %33) #18
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0, ptr noundef %add.ptr, i32 noundef %33) #18
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %33, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %33, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool47.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool47.not, label %if.end49, label %copy_to_user.exit.err.thread_crit_edge

copy_to_user.exit.err.thread_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread

if.end49:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buffer_used, align 4
  %sub55 = sub i32 %40, %33
  store i32 %sub55, ptr %buffer_used, align 4
  br label %err.thread158

if.else:                                          ; preds = %lor.lhs.false
  %call58 = tail call fastcc i32 @snd_pcm_oss_read2(ptr noundef %substream, ptr noundef %buf.addr.0, i32 noundef %23, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 1
  br i1 %cmp59, label %if.else.err_crit_edge, label %if.end61

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %bytes63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytes63, align 8
  %add64 = add i32 %42, %call58
  store i32 %add64, ptr %bytes63, align 8
  br label %err.thread158

err.thread:                                       ; preds = %copy_to_user.exit.err.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.err.thread_crit_edge, %snd_pcm_oss_prepare.exit.thread.i, %if.then.i138.err.thread_crit_edge
  %tmp.2.ph = phi i32 [ %call.i.i139, %snd_pcm_oss_prepare.exit.thread.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.err.thread_crit_edge ], [ %call.i, %if.then.i138.err.thread_crit_edge ], [ -14, %copy_to_user.exit.err.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  br label %while.end

err.thread158:                                    ; preds = %if.end61, %if.end49
  %call58.pn = phi i32 [ %call58, %if.end61 ], [ %33, %if.end49 ]
  %xfer.1.ph = add i32 %call58.pn, %xfer.0
  %bytes.addr.1.ph = sub i32 %bytes.addr.0, %call58.pn
  %buf.addr.1.ph = getelementptr i8, ptr %buf.addr.0, i32 %call58.pn
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  br label %if.end73

err:                                              ; preds = %if.else.err_crit_edge, %if.then19.err_crit_edge, %do.body.i.i
  %tmp.2 = phi i32 [ %call23, %if.then19.err_crit_edge ], [ %call58, %if.else.err_crit_edge ], [ %call.i.i139, %do.body.i.i ]
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.2)
  %cmp71 = icmp slt i32 %tmp.2, 0
  br i1 %cmp71, label %err.while.end_crit_edge, label %err.if.end73_crit_edge

err.if.end73_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

err.while.end_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end73:                                         ; preds = %err.if.end73_crit_edge, %err.thread158
  %xfer.1166 = phi i32 [ %xfer.1.ph, %err.thread158 ], [ %xfer.0, %err.if.end73_crit_edge ]
  %bytes.addr.1165 = phi i32 [ %bytes.addr.1.ph, %err.thread158 ], [ %bytes.addr.0, %err.if.end73_crit_edge ]
  %buf.addr.1164 = phi ptr [ %buf.addr.1.ph, %err.thread158 ], [ %buf.addr.0, %err.if.end73_crit_edge ]
  %43 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stack.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %51 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i141 = icmp eq i32 %51, 0
  br i1 %tobool.not.i141, label %signal_pending.exit, label %if.end73.while.end_crit_edge, !prof !186

if.end73.while.end_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

signal_pending.exit:                              ; preds = %if.end73
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %48, align 4
  %and1.i.i.i.i.i = and i32 %53, 1
  %tobool76.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool76.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.end:                                        ; preds = %signal_pending.exit.while.end_crit_edge, %if.end73.while.end_crit_edge, %err.while.end_crit_edge, %err.thread, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %xfer.2 = phi i32 [ %xfer.0, %err.thread ], [ %xfer.1166, %if.end73.while.end_crit_edge ], [ %xfer.1166, %signal_pending.exit.while.end_crit_edge ], [ %xfer.0, %while.body.while.end_crit_edge ], [ %xfer.0, %while.cond.while.end_crit_edge ], [ %xfer.0, %err.while.end_crit_edge ]
  %tmp.3 = phi i32 [ %tmp.2.ph, %err.thread ], [ -512, %if.end73.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -512, %while.body.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ], [ %tmp.2, %err.while.end_crit_edge ]
  %call.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %rw_ref, i32 1, i32 3, i32 1) #18
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_ref, ptr %rw_ref, i32 1, ptr elementtype(i32) %rw_ref) #18, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfer.2)
  %cmp81.not = icmp eq i32 %xfer.2, 0
  %tmp.3.xfer.2 = select i1 %cmp81.not, i32 %tmp.3, i32 %xfer.2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tmp.3.xfer.2, %while.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_read2(ptr noundef %substream, ptr noundef %buf, i32 noundef %bytes, i32 noundef %in_kernel) unnamed_addr #2 align 64 {
entry:
  %channels = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 18
  %2 = ptrtoint ptr %plugin_first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plugin_first, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channels) #18
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %channels, align 4, !annotation !156
  %plugin_last = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 19
  %5 = ptrtoint ptr %plugin_last to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plugin_last, align 4
  %dst_width = getelementptr inbounds %struct.snd_pcm_plugin, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %dst_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_width, align 4
  %channels5 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %6, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %channels5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels5, align 4
  %mul = mul i32 %10, %8
  %div60 = lshr i32 %mul, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_kernel)
  %tobool6.not = icmp eq i32 %in_kernel, 0
  br i1 %tobool6.not, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %buffer = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 14
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %buf.addr.0 = phi ptr [ %buf, %if.then.if.end_crit_edge ], [ %12, %if.then7 ]
  %div9 = udiv i32 %bytes, %div60
  %call = call i32 @snd_pcm_plug_client_channels_buf(ptr noundef %substream, ptr noundef %buf.addr.0, i32 noundef %div9, ptr noundef nonnull %channels) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup.thread_crit_edge, label %if.end11

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end11:                                         ; preds = %if.end
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels, align 4
  %call12 = call i32 @snd_pcm_plug_read_transfer(ptr noundef %substream, ptr noundef %14, i32 noundef %call) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %if.end11.cleanup.thread_crit_edge, label %if.end15

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end15:                                         ; preds = %if.end11
  %mul16 = mul i32 %call12, %div60
  br i1 %tobool6.not, label %if.end8.i.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul16)
  %cmp9.i.i = icmp slt i32 %mul16, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup.thread_crit_edge, label %if.then27.i.i, !prof !186

land.rhs16.i.i.cleanup.thread_crit_edge:          ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %cleanup.thread

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef %buf.addr.0, i32 noundef %mul16, i1 noundef zeroext true) #18
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #18
  %call.i.i = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %mul16, i32 -1226833920) #24, !srcloc !188
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %buf.addr.0, i32 noundef %mul16) #18
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %buf.addr.0, i32 noundef %mul16) #18
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul16, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul16, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool19.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool19.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.cleanup.thread_crit_edge

copy_to_user.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.thread:                                   ; preds = %copy_to_user.exit.cleanup.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup.thread_crit_edge, %if.end11.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -14, %copy_to_user.exit.cleanup.thread_crit_edge ], [ %call12, %if.end11.cleanup.thread_crit_edge ], [ %call, %if.end.cleanup.thread_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels) #18
  br label %cleanup30

cleanup:                                          ; preds = %copy_to_user.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels) #18
  br label %cleanup30

if.else:                                          ; preds = %entry
  %mul.i = shl i32 %bytes, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  %call24 = tail call i32 @snd_pcm_oss_read3(ptr noundef %substream, ptr noundef %buf, i32 noundef %div.i, i32 noundef %in_kernel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %if.else.cleanup30_crit_edge, label %if.end27

if.else.cleanup30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup30

if.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i, align 8
  %mul.i62 = mul i32 %19, %call24
  %div1.i = lshr i32 %mul.i62, 3
  br label %cleanup30

cleanup30:                                        ; preds = %if.end27, %if.else.cleanup30_crit_edge, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ %call24, %if.else.cleanup30_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %mul16, %cleanup ], [ %div1.i, %if.end27 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_change_params_locked(ptr noundef %substream) unnamed_addr #2 align 64 {
entry:
  %t.i.i.i.i = alloca %struct.snd_interval, align 4
  %old.i.i.i = alloca %struct.snd_mask, align 4
  %plugin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %oss, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup353_crit_edge, label %if.end

entry.cleanup353_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup353

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 104) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 604) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i527 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 604) #23
  %tobool4.not = icmp eq ptr %call7.i.i, null
  %tobool5.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  %tobool7.not = icmp eq ptr %call7.i527, null
  %or.cond525 = select i1 %or.cond, i1 true, i1 %tobool7.not
  br i1 %or.cond525, label %if.end.failure_crit_edge, label %if.end9

if.end.failure_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end9:                                          ; preds = %if.end
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %6 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  %direct14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 24, i32 1, i32 1
  %8 = ptrtoint ptr %direct14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load15 = load i8, ptr %direct14, align 4
  %bf.lshr16 = lshr i8 %bf.load15, 6
  %bf.clear = and i8 %bf.lshr16, 1
  %bf.cast17 = zext i8 %bf.clear to i32
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end9.if.end18_crit_edge
  %direct.0 = phi i32 [ %bf.cast17, %if.else ], [ 1, %if.end9.if.end18_crit_edge ]
  tail call void @_snd_pcm_hw_params_any(ptr noundef nonnull %call7.i527) #18
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 3, i32 7
  %integer.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 3, i32 7, i32 2
  %9 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %integer.i.i, align 8
  %10 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18._snd_pcm_hw_param_setinteger.exitthread-pre-split_crit_edge

if.end18._snd_pcm_hw_param_setinteger.exitthread-pre-split_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %_snd_pcm_hw_param_setinteger.exitthread-pre-split

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load.i.i)
  %.not.i.i = icmp ugt i8 %bf.load.i.i, -65
  br i1 %.not.i.i, label %land.lhs.true10.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

land.lhs.true10.i.i:                              ; preds = %if.end.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 8
  %max.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 3, i32 7, i32 1
  %13 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i.i = icmp eq i32 %12, %14
  br i1 %cmp.i.i, label %land.lhs.true10.i.i._snd_pcm_hw_param_setinteger.exit_crit_edge, label %land.lhs.true10.i.i.if.then.i_crit_edge

land.lhs.true10.i.i.if.then.i_crit_edge:          ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

land.lhs.true10.i.i._snd_pcm_hw_param_setinteger.exit_crit_edge: ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %_snd_pcm_hw_param_setinteger.exit

if.then.i:                                        ; preds = %land.lhs.true10.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge
  %bf.set.i.i = or i8 %bf.load.i.i, 32
  %15 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.set.i.i, ptr %integer.i.i, align 8
  %cmask.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 6
  %16 = ptrtoint ptr %cmask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmask.i, align 4
  %or.i = or i32 %17, 32768
  store i32 %or.i, ptr %cmask.i, align 4
  %rmask.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 5
  %18 = ptrtoint ptr %rmask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmask.i, align 8
  %or3.i = or i32 %19, 32768
  store i32 %or3.i, ptr %rmask.i, align 8
  br label %_snd_pcm_hw_param_setinteger.exitthread-pre-split

_snd_pcm_hw_param_setinteger.exitthread-pre-split: ; preds = %if.then.i, %if.end18._snd_pcm_hw_param_setinteger.exitthread-pre-split_crit_edge
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %arrayidx.i.i, align 8
  br label %_snd_pcm_hw_param_setinteger.exit

_snd_pcm_hw_param_setinteger.exit:                ; preds = %_snd_pcm_hw_param_setinteger.exitthread-pre-split, %land.lhs.true10.i.i._snd_pcm_hw_param_setinteger.exit_crit_edge
  %21 = phi i32 [ %.pr, %_snd_pcm_hw_param_setinteger.exitthread-pre-split ], [ %12, %land.lhs.true10.i.i._snd_pcm_hw_param_setinteger.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i49.i = icmp ult i32 %21, 2
  br i1 %cmp.i49.i, label %if.then.i.i, label %_snd_pcm_hw_param_setinteger.exit.if.end15.i.i_crit_edge

_snd_pcm_hw_param_setinteger.exit.if.end15.i.i_crit_edge: ; preds = %_snd_pcm_hw_param_setinteger.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i.i

if.then.i.i:                                      ; preds = %_snd_pcm_hw_param_setinteger.exit
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %arrayidx.i.i, align 8
  %23 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i546 = load i8, ptr %integer.i.i, align 8
  %bf.clear.i.i = and i8 %bf.load.i.i546, 127
  store i8 %bf.clear.i.i, ptr %integer.i.i, align 8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then.i.i, %_snd_pcm_hw_param_setinteger.exit.if.end15.i.i_crit_edge
  %24 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load16.i.i = load i8, ptr %integer.i.i, align 8
  %25 = and i8 %bf.load16.i.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %25)
  %.not.i.i550 = icmp eq i8 %25, -96
  br i1 %.not.i.i550, label %if.then27.i.i, label %if.end15.i.i.if.end34.i.i_crit_edge

if.end15.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i.i

if.then27.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 8
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 8
  %bf.clear31.i.i = and i8 %bf.load16.i.i, 127
  %28 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.clear31.i.i, ptr %integer.i.i, align 8
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then27.i.i, %if.end15.i.i.if.end34.i.i_crit_edge
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 8
  %max.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 3, i32 7, i32 1
  %31 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i.i.i = icmp ugt i32 %30, %32
  br i1 %cmp.i.i.i, label %if.end34.i.i.if.then36.i.i_crit_edge, label %lor.rhs.i.i.i

if.end34.i.i.if.then36.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then36.i.i

lor.rhs.i.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp3.i.i.i = icmp eq i32 %30, %32
  br i1 %cmp3.i.i.i, label %land.rhs.i.i.i, label %lor.rhs.i.i.i.if.end23.i_crit_edge

lor.rhs.i.i.i.if.end23.i_crit_edge:               ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i

land.rhs.i.i.i:                                   ; preds = %lor.rhs.i.i.i
  %33 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i.i = load i8, ptr %integer.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i.i)
  %tobool35.not.i.i = icmp ult i8 %bf.load.i.i.i, 64
  br i1 %tobool35.not.i.i, label %land.rhs.i.i.i.if.end23.i_crit_edge, label %land.rhs.i.i.i.if.then36.i.i_crit_edge

land.rhs.i.i.i.if.then36.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then36.i.i

land.rhs.i.i.i.if.end23.i_crit_edge:              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i

if.then36.i.i:                                    ; preds = %land.rhs.i.i.i.if.then36.i.i_crit_edge, %if.end34.i.i.if.then36.i.i_crit_edge
  %34 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i53.i.i = load i8, ptr %integer.i.i, align 8
  %bf.set.i.i.i = or i8 %bf.load.i53.i.i, 16
  store i8 %bf.set.i.i.i, ptr %integer.i.i, align 8
  br label %_snd_pcm_hw_param_min.exit

if.end23.i:                                       ; preds = %land.rhs.i.i.i.if.end23.i_crit_edge, %lor.rhs.i.i.i.if.end23.i_crit_edge
  br i1 %cmp.i49.i, label %if.then25.i, label %if.end23.i._snd_pcm_hw_param_min.exit_crit_edge

if.end23.i._snd_pcm_hw_param_min.exit_crit_edge:  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %_snd_pcm_hw_param_min.exit

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  %cmask.i551 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 6
  %35 = ptrtoint ptr %cmask.i551 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmask.i551, align 4
  %or.i552 = or i32 %36, 32768
  store i32 %or.i552, ptr %cmask.i551, align 4
  %rmask.i553 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 5
  %37 = ptrtoint ptr %rmask.i553 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rmask.i553, align 8
  %or27.i = or i32 %38, 32768
  store i32 %or27.i, ptr %rmask.i553, align 8
  br label %_snd_pcm_hw_param_min.exit

_snd_pcm_hw_param_min.exit:                       ; preds = %if.then25.i, %if.end23.i._snd_pcm_hw_param_min.exit_crit_edge, %if.then36.i.i
  %call.i.i528 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %39 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool23.not = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direct.0)
  %tobool26.not = icmp eq i32 %direct.0, 0
  %spec.select667 = select i1 %tobool26.not, i32 24, i32 8
  %mask.sroa.0.0 = select i1 %tobool23.not, i32 %spec.select667, i32 1
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 1, i32 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i.i.i) #18
  %41 = call ptr @memcpy(ptr %old.i.i.i, ptr %arrayidx.i.i.i, i32 32)
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i.i = and i32 %43, %mask.sroa.0.0
  store i32 %and.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx2.1.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 1, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx2.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx2.1.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %_snd_pcm_hw_param_mask.exit.i, label %snd_mask_refine.exit.i.i

snd_mask_refine.exit.i.i:                         ; preds = %_snd_pcm_hw_param_min.exit
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i.i.i, ptr noundef nonnull dereferenceable(8) %old.i.i.i, i32 8) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool.not.i7.i.not.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i.i.i) #18
  br i1 %tobool.not.i7.i.not.i.i, label %snd_mask_refine.exit.i.i.if.end.i_crit_edge, label %if.then.i.i558

snd_mask_refine.exit.i.i.if.end.i_crit_edge:      ; preds = %snd_mask_refine.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i.i558:                                   ; preds = %snd_mask_refine.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %cmask.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 6
  %45 = ptrtoint ptr %cmask.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmask.i.i, align 4
  %or.i.i = or i32 %46, 1
  store i32 %or.i.i, ptr %cmask.i.i, align 4
  %rmask.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 5
  %47 = ptrtoint ptr %rmask.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rmask.i.i, align 8
  %or3.i.i = or i32 %48, 1
  store i32 %or3.i.i, ptr %rmask.i.i, align 8
  br label %if.end.i

_snd_pcm_hw_param_mask.exit.i:                    ; preds = %_snd_pcm_hw_param_min.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i.i.i) #18
  br label %do.body

if.end.i:                                         ; preds = %if.then.i.i558, %snd_mask_refine.exit.i.i.if.end.i_crit_edge
  %rmask.i559 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 5
  %49 = ptrtoint ptr %rmask.i559 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rmask.i559, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %if.end.i.if.end38_crit_edge, label %if.then1.i

if.end.i.if.end38_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then1.i:                                       ; preds = %if.end.i
  %call2.i = tail call i32 @snd_pcm_hw_refine(ptr noundef %substream, ptr noundef nonnull %call7.i527) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then1.i.do.body_crit_edge, label %if.then1.i.if.end38_crit_edge

if.then1.i.if.end38_crit_edge:                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then1.i.do.body_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body:                                          ; preds = %if.then1.i.do.body_crit_edge, %_snd_pcm_hw_param_mask.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_change_params_locked, %if.then36)) #18
          to label %failure [label %if.then36], !srcloc !155

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %substream, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 27
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug244, ptr noundef %56, ptr noundef nonnull @.str.12) #18
  br label %failure

if.end38:                                         ; preds = %if.then1.i.if.end38_crit_edge, %if.end.i.if.end38_crit_edge
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 1
  %57 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i560 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3264, i32 noundef 604) #23
  %cmp.i = icmp eq ptr %call7.i.i560, null
  br i1 %cmp.i, label %if.end38.failure_crit_edge, label %if.end.i562

if.end38.failure_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end.i562:                                      ; preds = %if.end38
  %60 = call ptr @memcpy(ptr %call7.i.i560, ptr %call7.i527, i32 604)
  %arrayidx.i.i561 = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i560, i32 0, i32 3, i32 3
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i560, i32 0, i32 3, i32 3, i32 1
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i.i560, i32 0, i32 3, i32 3, i32 2
  %arrayidx.i3.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 3, i32 3
  %61 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 8
  %max.i.i.i.i = getelementptr inbounds %struct.snd_interval, ptr %t.i.i.i.i, i32 0, i32 1
  %cmask.i.i.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end21.i.for.cond.i_crit_edge, %if.end.i562
  %rate.0.i = phi i32 [ %58, %if.end.i562 ], [ %add.i, %if.end21.i.for.cond.i_crit_edge ]
  %62 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %rate.0.i)
  %cmp2.i = icmp ult i32 %63, %rate.0.i
  br i1 %cmp2.i, label %for.cond.i.for.end.i_crit_edge, label %lor.lhs.false.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %rate.0.i)
  %cmp4.i = icmp eq i32 %63, %rate.0.i
  br i1 %cmp4.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end6.i564_crit_edge

lor.lhs.false.i.if.end6.i564_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i564

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %64 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %openmax.i, align 8
  %65 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i563 = icmp eq i8 %65, 0
  br i1 %tobool.not.i563, label %land.lhs.true.i.if.end6.i564_crit_edge, label %land.lhs.true.i.for.end.i_crit_edge

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

land.lhs.true.i.if.end6.i564_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i564

if.end6.i564:                                     ; preds = %land.lhs.true.i.if.end6.i564_crit_edge, %lor.lhs.false.i.if.end6.i564_crit_edge
  %66 = ptrtoint ptr %arrayidx.i.i561 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i561, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %rate.0.i)
  %cmp7.i = icmp ult i32 %67, %rate.0.i
  br i1 %cmp7.i, label %if.end6.i564.if.then16.i_crit_edge, label %lor.lhs.false8.i

if.end6.i564.if.then16.i_crit_edge:               ; preds = %if.end6.i564
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then16.i

lor.lhs.false8.i:                                 ; preds = %if.end6.i564
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %rate.0.i)
  %cmp10.i = icmp eq i32 %67, %rate.0.i
  br i1 %cmp10.i, label %land.lhs.true11.i, label %lor.lhs.false8.i.if.end21.i_crit_edge

lor.lhs.false8.i.if.end21.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21.i

land.lhs.true11.i:                                ; preds = %lor.lhs.false8.i
  %68 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load12.i = load i8, ptr %openmax.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load12.i)
  %tobool15.not.i = icmp sgt i8 %bf.load12.i, -1
  br i1 %tobool15.not.i, label %land.lhs.true11.i.if.then16.i_crit_edge, label %land.lhs.true11.i.if.end21.i_crit_edge

land.lhs.true11.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21.i

land.lhs.true11.i.if.then16.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then16.i

if.then16.i:                                      ; preds = %land.lhs.true11.i.if.then16.i_crit_edge, %if.end6.i564.if.then16.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t.i.i.i.i) #18
  %69 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 805306367, ptr %61, align 4
  %70 = ptrtoint ptr %max.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %rate.0.i, ptr %max.i.i.i.i, align 4
  %71 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %rate.0.i, ptr %t.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @snd_interval_refine(ptr noundef %arrayidx.i3.i.i.i, ptr noundef nonnull %t.i.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t.i.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp48.i.i.i = icmp sgt i32 %call.i.i.i.i, 0
  br i1 %cmp48.i.i.i, label %if.end.i.thread.i, label %_snd_pcm_hw_param_set.exit.i.i

if.end.i.thread.i:                                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #20
  %72 = ptrtoint ptr %cmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cmask.i.i.i, align 4
  %or.i.i.i = or i32 %73, 2048
  store i32 %or.i.i.i, ptr %cmask.i.i.i, align 4
  %74 = ptrtoint ptr %rmask.i559 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rmask.i559, align 8
  %or51.i.i.i = or i32 %75, 2048
  store i32 %or51.i.i.i, ptr %rmask.i559, align 8
  br label %if.then1.i.i

_snd_pcm_hw_param_set.exit.i.i:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i565 = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i565, label %_snd_pcm_hw_param_set.exit.i.i.snd_pcm_hw_param_set.exit.i_crit_edge, label %if.end.i.i567

_snd_pcm_hw_param_set.exit.i.i.snd_pcm_hw_param_set.exit.i_crit_edge: ; preds = %_snd_pcm_hw_param_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_hw_param_set.exit.i

if.end.i.i567:                                    ; preds = %_snd_pcm_hw_param_set.exit.i.i
  %76 = ptrtoint ptr %rmask.i559 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr.i = load i32, ptr %rmask.i559, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i566 = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i566, label %if.end.i.i567.if.end6.i.i_crit_edge, label %if.end.i.i567.if.then1.i.i_crit_edge

if.end.i.i567.if.then1.i.i_crit_edge:             ; preds = %if.end.i.i567
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1.i.i

if.end.i.i567.if.end6.i.i_crit_edge:              ; preds = %if.end.i.i567
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i567.if.then1.i.i_crit_edge, %if.end.i.thread.i
  %call2.i.i = call i32 @snd_pcm_hw_refine(ptr noundef %substream, ptr noundef %call7.i527) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.then1.i.i.snd_pcm_hw_param_set.exit.i_crit_edge, label %if.then1.i.i.if.end6.i.i_crit_edge

if.then1.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i.i

if.then1.i.i.snd_pcm_hw_param_set.exit.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_hw_param_set.exit.i

if.end6.i.i:                                      ; preds = %if.then1.i.i.if.end6.i.i_crit_edge, %if.end.i.i567.if.end6.i.i_crit_edge
  %call7.i56.i = call i32 @snd_pcm_hw_param_value(ptr noundef %call7.i527, i32 noundef 11, ptr noundef null) #18
  br label %snd_pcm_hw_param_set.exit.i

snd_pcm_hw_param_set.exit.i:                      ; preds = %if.end6.i.i, %if.then1.i.i.snd_pcm_hw_param_set.exit.i_crit_edge, %_snd_pcm_hw_param_set.exit.i.i.snd_pcm_hw_param_set.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ %call7.i56.i, %if.end6.i.i ], [ %call2.i.i, %if.then1.i.i.snd_pcm_hw_param_set.exit.i_crit_edge ], [ %call.i.i.i.i, %_snd_pcm_hw_param_set.exit.i.i.snd_pcm_hw_param_set.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i.i, i32 %rate.0.i)
  %cmp18.i = icmp eq i32 %retval.1.i.i, %rate.0.i
  br i1 %cmp18.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %snd_pcm_hw_param_set.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i560) #18
  br label %choose_rate.exit

cleanup.i:                                        ; preds = %snd_pcm_hw_param_set.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %77 = call ptr @memcpy(ptr %call7.i527, ptr %call7.i.i560, i32 604)
  br label %if.end21.i

if.end21.i:                                       ; preds = %cleanup.i, %land.lhs.true11.i.if.end21.i_crit_edge, %lor.lhs.false8.i.if.end21.i_crit_edge
  %add.i = add i32 %rate.0.i, %58
  %cmp22.not.i = icmp ugt i32 %add.i, %rate.0.i
  br i1 %cmp22.not.i, label %if.end21.i.for.cond.i_crit_edge, label %if.end21.i.for.end.i_crit_edge

if.end21.i.for.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

if.end21.i.for.cond.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

for.end.i:                                        ; preds = %if.end21.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i560) #18
  %call25.i = call fastcc i32 @snd_pcm_hw_param_near(ptr noundef %substream, ptr noundef %call7.i527, i32 noundef 11, i32 noundef %58) #18
  br label %choose_rate.exit

choose_rate.exit:                                 ; preds = %for.end.i, %cleanup.thread.i
  %retval.3.i = phi i32 [ %call25.i, %for.end.i ], [ %rate.0.i, %cleanup.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.3.i)
  %cmp41 = icmp slt i32 %retval.3.i, 0
  br i1 %cmp41, label %choose_rate.exit.failure_crit_edge, label %if.end43

choose_rate.exit.failure_crit_edge:               ; preds = %choose_rate.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end43:                                         ; preds = %choose_rate.exit
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 3
  %78 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channels, align 4
  %call45 = call fastcc i32 @snd_pcm_hw_param_near(ptr noundef %substream, ptr noundef nonnull %call7.i527, i32 noundef 10, i32 noundef %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end43.failure_crit_edge, label %if.end48

if.end43.failure_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end48:                                         ; preds = %if.end43
  %format50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 2
  %80 = ptrtoint ptr %format50 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %format50, align 8
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %81, label %sw.default.i [
    i32 1, label %if.end48.snd_pcm_oss_format_from.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 8, label %sw.bb3.i
    i32 16, label %sw.bb4.i
    i32 32, label %sw.bb5.i
    i32 64, label %sw.bb6.i
    i32 128, label %sw.bb7.i
    i32 256, label %sw.bb8.i
    i32 512, label %sw.bb9.i
    i32 4096, label %sw.bb10.i
    i32 8192, label %sw.bb11.i
    i32 32768, label %sw.bb12.i
    i32 65536, label %sw.bb13.i
    i32 262144, label %sw.bb14.i
    i32 16384, label %sw.bb15.i
    i32 131072, label %sw.bb16.i
  ]

if.end48.snd_pcm_oss_format_from.exit_crit_edge:  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb1.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb2.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb3.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb4.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb5.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb6.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb7.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb8.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb9.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb10.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb11.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb12.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb13.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb14.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb15.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb16.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.default.i:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

snd_pcm_oss_format_from.exit:                     ; preds = %sw.default.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end48.snd_pcm_oss_format_from.exit_crit_edge
  %retval.0.i568 = phi i32 [ 1, %sw.default.i ], [ 19, %sw.bb16.i ], [ 15, %sw.bb15.i ], [ 32, %sw.bb14.i ], [ 7, %sw.bb13.i ], [ 6, %sw.bb12.i ], [ 11, %sw.bb11.i ], [ 10, %sw.bb10.i ], [ 23, %sw.bb9.i ], [ 5, %sw.bb8.i ], [ 4, %sw.bb7.i ], [ 0, %sw.bb6.i ], [ 3, %sw.bb5.i ], [ 2, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 22, %sw.bb2.i ], [ 21, %sw.bb1.i ], [ 20, %if.end48.snd_pcm_oss_format_from.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 1, i32 1
  br i1 %tobool26.not, label %if.end57, label %snd_pcm_oss_format_from.exit.lor.lhs.false59_crit_edge

snd_pcm_oss_format_from.exit.lor.lhs.false59_crit_edge: ; preds = %snd_pcm_oss_format_from.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false59

if.end57:                                         ; preds = %snd_pcm_oss_format_from.exit
  %call56 = call i32 @snd_pcm_plug_slave_format(i32 noundef %retval.0.i568, ptr noundef %arrayidx.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp58 = icmp slt i32 %call56, 0
  br i1 %cmp58, label %if.end57.for.body.preheader_crit_edge, label %if.end57.lor.lhs.false59_crit_edge

if.end57.lor.lhs.false59_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false59

if.end57.for.body.preheader_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.preheader

lor.lhs.false59:                                  ; preds = %if.end57.lor.lhs.false59_crit_edge, %snd_pcm_oss_format_from.exit.lor.lhs.false59_crit_edge
  %sformat.0654 = phi i32 [ %call56, %if.end57.lor.lhs.false59_crit_edge ], [ %retval.0.i568, %snd_pcm_oss_format_from.exit.lor.lhs.false59_crit_edge ]
  %shr.i.i = lshr i32 %sformat.0654, 5
  %arrayidx.i.i569 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i.i
  %83 = ptrtoint ptr %arrayidx.i.i569 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i569, align 4
  %and.i.i = and i32 %sformat.0654, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %and1.i.i = and i32 %shl.i.i, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool61.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool61.not, label %lor.lhs.false59.for.body.preheader_crit_edge, label %lor.lhs.false59.format_found_crit_edge

lor.lhs.false59.format_found_crit_edge:           ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

lor.lhs.false59.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false59.for.body.preheader_crit_edge, %if.end57.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %sformat.1670 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %shr.i.i570 = lshr i32 %sformat.1670, 5
  %arrayidx.i.i571 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i.i570
  %85 = ptrtoint ptr %arrayidx.i.i571 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i571, align 4
  %and.i.i572 = and i32 %sformat.1670, 31
  %shl.i.i573 = shl nuw i32 1, %and.i.i572
  %and1.i.i574 = and i32 %86, %shl.i.i573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i574)
  %tobool65.not = icmp eq i32 %and1.i.i574, 0
  br i1 %tobool65.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %87 = zext i32 %sformat.1670 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %sformat.1670, label %land.lhs.true.for.inc_crit_edge [
    i32 20, label %land.lhs.true.format_found_crit_edge
    i32 21, label %land.lhs.true.format_found_crit_edge685
    i32 22, label %land.lhs.true.format_found_crit_edge686
    i32 1, label %land.lhs.true.format_found_crit_edge687
    i32 2, label %land.lhs.true.format_found_crit_edge688
    i32 3, label %land.lhs.true.format_found_crit_edge689
    i32 0, label %land.lhs.true.format_found_crit_edge690
    i32 4, label %land.lhs.true.format_found_crit_edge691
    i32 5, label %land.lhs.true.format_found_crit_edge692
    i32 23, label %land.lhs.true.format_found_crit_edge693
    i32 10, label %land.lhs.true.format_found_crit_edge694
    i32 11, label %land.lhs.true.format_found_crit_edge695
    i32 6, label %land.lhs.true.format_found_crit_edge696
    i32 7, label %land.lhs.true.format_found_crit_edge697
    i32 32, label %land.lhs.true.format_found_crit_edge698
    i32 15, label %land.lhs.true.format_found_crit_edge699
    i32 19, label %land.lhs.true.format_found_crit_edge700
  ]

land.lhs.true.format_found_crit_edge700:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge699:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge698:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge697:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge696:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge695:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge694:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge693:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge692:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge691:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge690:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge689:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge688:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge687:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge686:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge685:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.format_found_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_found

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add = add nuw nsw i32 %sformat.1670, 1
  %exitcond.not = icmp eq i32 %add, 53
  br i1 %exitcond.not, label %do.body70, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

do.body70:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_change_params_locked, %if.then82)) #18
          to label %failure [label %if.then82], !srcloc !155

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #20
  %88 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %substream, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %dev85 = getelementptr inbounds %struct.snd_card, ptr %91, i32 0, i32 27
  %92 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev85, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug245, ptr noundef %93, ptr noundef nonnull @.str.13) #18
  br label %failure

format_found:                                     ; preds = %land.lhs.true.format_found_crit_edge, %land.lhs.true.format_found_crit_edge685, %land.lhs.true.format_found_crit_edge686, %land.lhs.true.format_found_crit_edge687, %land.lhs.true.format_found_crit_edge688, %land.lhs.true.format_found_crit_edge689, %land.lhs.true.format_found_crit_edge690, %land.lhs.true.format_found_crit_edge691, %land.lhs.true.format_found_crit_edge692, %land.lhs.true.format_found_crit_edge693, %land.lhs.true.format_found_crit_edge694, %land.lhs.true.format_found_crit_edge695, %land.lhs.true.format_found_crit_edge696, %land.lhs.true.format_found_crit_edge697, %land.lhs.true.format_found_crit_edge698, %land.lhs.true.format_found_crit_edge699, %land.lhs.true.format_found_crit_edge700, %lor.lhs.false59.format_found_crit_edge
  %sformat.2 = phi i32 [ %sformat.0654, %lor.lhs.false59.format_found_crit_edge ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge685 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge686 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge687 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge688 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge689 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge690 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge691 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge692 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge693 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge694 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge695 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge696 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge697 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge698 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge699 ], [ %sformat.1670, %land.lhs.true.format_found_crit_edge700 ]
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i.i = icmp eq i32 %95, 0
  %96 = call i32 @llvm.ctpop.i32(i32 %95) #18, !range !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %tobool5.not.i.i.i = icmp ult i32 %96, 2
  %or.cond.i.i.i593 = or i1 %tobool.not.i.i.i, %tobool5.not.i.i.i
  br i1 %or.cond.i.i.i593, label %for.inc.i.i.i, label %format_found.snd_mask_single.exit.i.i_crit_edge

format_found.snd_mask_single.exit.i.i_crit_edge:  ; preds = %format_found
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_single.exit.i.i

for.inc.i.i.i:                                    ; preds = %format_found
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 1, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.1.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.1.i.i.i = icmp eq i32 %98, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.end.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i.i.i

if.end.1.i.i.i:                                   ; preds = %for.inc.i.i.i
  %99 = call i32 @llvm.ctpop.i32(i32 %98) #18, !range !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %tobool5.not.1.i.i.i = icmp ult i32 %99, 2
  %or.cond.1.i.i.i = select i1 %tobool5.not.1.i.i.i, i1 %tobool.not.i.i.i, i1 false
  br i1 %or.cond.1.i.i.i, label %if.end.1.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.end.1.i.i.i.snd_mask_single.exit.i.i_crit_edge

if.end.1.i.i.i.snd_mask_single.exit.i.i_crit_edge: ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_single.exit.i.i

if.end.1.i.i.i.for.inc.1.i.i.i_crit_edge:         ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end.1.i.i.i.for.inc.1.i.i.i_crit_edge, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  br label %snd_mask_single.exit.i.i

snd_mask_single.exit.i.i:                         ; preds = %for.inc.1.i.i.i, %if.end.1.i.i.i.snd_mask_single.exit.i.i_crit_edge, %format_found.snd_mask_single.exit.i.i_crit_edge
  %cmp48.i = phi i1 [ false, %for.inc.1.i.i.i ], [ true, %if.end.1.i.i.i.snd_mask_single.exit.i.i_crit_edge ], [ true, %format_found.snd_mask_single.exit.i.i_crit_edge ]
  %shr.i.i.i = lshr i32 %sformat.2, 5
  %arrayidx.i.i.i595 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i.i.i
  %100 = ptrtoint ptr %arrayidx.i.i.i595 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i.i595, align 4
  %and.i.i.i = and i32 %sformat.2, 31
  %shl.i.i.i = shl nuw i32 1, %and.i.i.i
  %and1.i.i.i = and i32 %101, %shl.i.i.i
  %102 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 32)
  store i32 %and1.i.i.i, ptr %arrayidx.i.i.i595, align 4
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i5.i.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i5.i.i, label %snd_mask_empty.exit.i.i, label %snd_mask_single.exit.i.i.if.end47.i_crit_edge

snd_mask_single.exit.i.i.if.end47.i_crit_edge:    ; preds = %snd_mask_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47.i

snd_mask_empty.exit.i.i:                          ; preds = %snd_mask_single.exit.i.i
  %arrayidx.1.i6.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 1, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %arrayidx.1.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.1.i6.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.1.i7.not.i.i = icmp eq i32 %106, 0
  br i1 %tobool.not.1.i7.not.i.i, label %snd_mask_empty.exit.i.i.failure_crit_edge, label %snd_mask_empty.exit.i.i.if.end47.i_crit_edge

snd_mask_empty.exit.i.i.if.end47.i_crit_edge:     ; preds = %snd_mask_empty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47.i

snd_mask_empty.exit.i.i.failure_crit_edge:        ; preds = %snd_mask_empty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end47.i:                                       ; preds = %snd_mask_empty.exit.i.i.if.end47.i_crit_edge, %snd_mask_single.exit.i.i.if.end47.i_crit_edge
  br i1 %cmp48.i, label %if.then49.i, label %if.end47.i.if.end93_crit_edge

if.end47.i.if.end93_crit_edge:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end93

if.then49.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #20
  %107 = ptrtoint ptr %cmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cmask.i.i.i, align 4
  %or.i597 = or i32 %108, 2
  store i32 %or.i597, ptr %cmask.i.i.i, align 4
  %109 = ptrtoint ptr %rmask.i559 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rmask.i559, align 8
  %or51.i = or i32 %110, 2
  store i32 %or51.i, ptr %rmask.i559, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then49.i, %if.end47.i.if.end93_crit_edge
  br i1 %tobool26.not, label %if.else96, label %if.then95

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #20
  %111 = call ptr @memcpy(ptr %call7.i, ptr %call7.i527, i32 604)
  br label %if.end108

if.else96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #20
  call void @_snd_pcm_hw_params_any(ptr noundef nonnull %call7.i) #18
  %112 = call fastcc i32 @_snd_pcm_hw_param_set(ptr noundef nonnull %call7.i, i32 noundef 0, i32 noundef 3)
  %113 = ptrtoint ptr %format50 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %format50, align 8
  %call100 = call fastcc i32 @snd_pcm_oss_format_from(i32 noundef %114), !range !190
  %115 = call fastcc i32 @_snd_pcm_hw_param_set(ptr noundef nonnull %call7.i, i32 noundef 1, i32 noundef %call100)
  %116 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %channels, align 4
  %118 = call fastcc i32 @_snd_pcm_hw_param_set(ptr noundef nonnull %call7.i, i32 noundef 10, i32 noundef %117)
  %119 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rate, align 4
  %121 = call fastcc i32 @_snd_pcm_hw_param_set(ptr noundef nonnull %call7.i, i32 noundef 11, i32 noundef %120)
  br label %if.end108

if.end108:                                        ; preds = %if.else96, %if.then95
  %arrayidx.i.i601 = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i, i32 0, i32 1, i32 1
  %122 = ptrtoint ptr %arrayidx.i.i601 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i.i601, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i.i602 = icmp eq i32 %123, 0
  br i1 %tobool.not.i.i602, label %for.inc.i.i, label %if.end108.if.then.i.i603_crit_edge

if.end108.if.then.i.i603_crit_edge:               ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i603

if.then.i.i603:                                   ; preds = %for.inc.i.i.if.then.i.i603_crit_edge, %if.end108.if.then.i.i603_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end108.if.then.i.i603_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i603_crit_edge ]
  %.lcssa.i.i = phi i32 [ %123, %if.end108.if.then.i.i603_crit_edge ], [ %126, %for.inc.i.i.if.then.i.i603_crit_edge ]
  %124 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #18, !range !190
  %add.i.i = or i32 %124, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end108
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %125 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.1.i.i = icmp eq i32 %126, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i603_crit_edge

for.inc.i.i.if.then.i.i603_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i603

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i603
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i603 ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call110 = call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i) #18
  %arrayidx.i.i604 = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i, i32 0, i32 3, i32 2
  %127 = ptrtoint ptr %arrayidx.i.i604 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i.i604, align 4
  %mul = mul i32 %128, %call110
  %div524 = lshr i32 %mul, 3
  %call112 = call fastcc i32 @snd_pcm_oss_period_size(ptr noundef %substream, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i527)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %params_format.exit.failure_crit_edge, label %if.end115

params_format.exit.failure_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end115:                                        ; preds = %params_format.exit
  %period_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 7
  %129 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %period_bytes, align 4
  %div117 = udiv i32 %130, %div524
  %call118 = call i32 @snd_pcm_plug_slave_size(ptr noundef %substream, i32 noundef %div117) #18
  %call119 = call fastcc i32 @snd_pcm_hw_param_near(ptr noundef %substream, ptr noundef nonnull %call7.i527, i32 noundef 13, i32 noundef %call118)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.end115.failure_crit_edge, label %if.end122

if.end115.failure_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end122:                                        ; preds = %if.end115
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 10
  %131 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %periods, align 8
  %call124 = call fastcc i32 @snd_pcm_hw_param_near(ptr noundef %substream, ptr noundef nonnull %call7.i527, i32 noundef 15, i32 noundef %132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.end122.failure_crit_edge, label %if.end127

if.end122.failure_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end127:                                        ; preds = %if.end122
  %call128 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16707, ptr noundef null) #18
  %call129 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef -1034141423, ptr noundef nonnull %call7.i527) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.body132, label %if.end151

do.body132:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_change_params_locked, %if.then144)) #18
          to label %failure [label %if.then144], !srcloc !155

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #20
  %133 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %substream, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 8
  %dev147 = getelementptr inbounds %struct.snd_card, ptr %136, i32 0, i32 27
  %137 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev147, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug246, ptr noundef %138, ptr noundef nonnull @.str.14, i32 noundef %call129) #18
  br label %failure

if.end151:                                        ; preds = %if.end127
  call fastcc void @snd_pcm_oss_plugin_clear(ptr noundef %substream)
  br i1 %tobool26.not, label %if.then154, label %if.end151.if.end218_crit_edge

if.end151.if.end218_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end218

if.then154:                                       ; preds = %if.end151
  call fastcc void @snd_pcm_oss_plugin_clear(ptr noundef %substream)
  %call156 = call i32 @snd_pcm_plug_format_plugins(ptr noundef %substream, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i527) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %do.body159, label %if.end179

do.body159:                                       ; preds = %if.then154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_change_params_locked, %if.then171)) #18
          to label %do.end177 [label %if.then171], !srcloc !155

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #20
  %139 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %substream, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 8
  %dev174 = getelementptr inbounds %struct.snd_card, ptr %142, i32 0, i32 27
  %143 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev174, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug247, ptr noundef %144, ptr noundef nonnull @.str.15, i32 noundef %call156) #18
  br label %do.end177

do.end177:                                        ; preds = %if.then171, %do.body159
  call fastcc void @snd_pcm_oss_plugin_clear(ptr noundef %substream)
  br label %failure

if.end179:                                        ; preds = %if.then154
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 18
  %145 = ptrtoint ptr %plugin_first to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %plugin_first, align 8
  %tobool181.not = icmp eq ptr %146, null
  br i1 %tobool181.not, label %if.end179.if.end218_crit_edge, label %if.then182

if.end179.if.end218_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end218

if.then182:                                       ; preds = %if.end179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugin) #18
  %147 = ptrtoint ptr %plugin to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr inttoptr (i32 -1 to ptr), ptr %plugin, align 4, !annotation !156
  %call183 = call i32 @snd_pcm_plugin_build_io(ptr noundef %substream, ptr noundef nonnull %call7.i527, ptr noundef nonnull %plugin) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %cmp184 = icmp slt i32 %call183, 0
  br i1 %cmp184, label %do.body186, label %if.end206

do.body186:                                       ; preds = %if.then182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_change_params_locked, %if.then198)) #18
          to label %cleanup [label %if.then198], !srcloc !155

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #20
  %148 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %substream, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 8
  %dev201 = getelementptr inbounds %struct.snd_card, ptr %151, i32 0, i32 27
  %152 = ptrtoint ptr %dev201 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev201, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug248, ptr noundef %153, ptr noundef nonnull @.str.16, i32 noundef %call183) #18
  br label %cleanup

if.end206:                                        ; preds = %if.then182
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %154 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp207 = icmp eq i32 %155, 0
  %156 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %plugin, align 4
  %plug.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %157, i32 0, i32 14
  %158 = ptrtoint ptr %plug.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %plug.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %159, i32 0, i32 11
  %160 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %runtime1.i, align 4
  br i1 %cmp207, label %if.then208, label %if.else210

if.then208:                                       ; preds = %if.end206
  %next.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %157, i32 0, i32 13
  %162 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %next.i, align 4
  %plugin_last.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %161, i32 0, i32 59, i32 19
  %163 = ptrtoint ptr %plugin_last.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %plugin_last.i, align 4
  %prev.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %157, i32 0, i32 12
  %165 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %prev.i, align 4
  %166 = load ptr, ptr %plugin_last.i, align 4
  %tobool.not.i605 = icmp eq ptr %166, null
  br i1 %tobool.not.i605, label %if.else.i, label %if.then.i606

if.then.i606:                                     ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #20
  %next6.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %166, i32 0, i32 13
  %167 = ptrtoint ptr %next6.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %157, ptr %next6.i, align 4
  br label %snd_pcm_plugin_append.exit

if.else.i:                                        ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #20
  %plugin_first.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %161, i32 0, i32 59, i32 18
  %168 = ptrtoint ptr %plugin_first.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %157, ptr %plugin_first.i, align 8
  br label %snd_pcm_plugin_append.exit

snd_pcm_plugin_append.exit:                       ; preds = %if.else.i, %if.then.i606
  %169 = ptrtoint ptr %plugin_last.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %157, ptr %plugin_last.i, align 4
  br label %cleanup.thread

if.else210:                                       ; preds = %if.end206
  %plugin_first.i610 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %161, i32 0, i32 59, i32 18
  %170 = ptrtoint ptr %plugin_first.i610 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %plugin_first.i610, align 8
  %next.i611 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %157, i32 0, i32 13
  %172 = ptrtoint ptr %next.i611 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %171, ptr %next.i611, align 4
  %prev.i612 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %157, i32 0, i32 12
  %173 = ptrtoint ptr %prev.i612 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %prev.i612, align 4
  %174 = load ptr, ptr %plugin_first.i610, align 8
  %tobool.not.i613 = icmp eq ptr %174, null
  br i1 %tobool.not.i613, label %if.else.i616, label %if.then.i614

if.then.i614:                                     ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #20
  %prev6.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %174, i32 0, i32 12
  %175 = ptrtoint ptr %prev6.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %157, ptr %prev6.i, align 4
  %176 = ptrtoint ptr %plugin_first.i610 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %157, ptr %plugin_first.i610, align 8
  br label %cleanup.thread

if.else.i616:                                     ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #20
  %177 = ptrtoint ptr %plugin_first.i610 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %157, ptr %plugin_first.i610, align 8
  %plugin_last.i615 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %161, i32 0, i32 59, i32 19
  %178 = ptrtoint ptr %plugin_last.i615 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %157, ptr %plugin_last.i615, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else.i616, %if.then.i614, %snd_pcm_plugin_append.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugin) #18
  br label %if.end218

cleanup:                                          ; preds = %if.then198, %do.body186
  call fastcc void @snd_pcm_oss_plugin_clear(ptr noundef %substream)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugin) #18
  br label %failure

if.end218:                                        ; preds = %cleanup.thread, %if.end179.if.end218_crit_edge, %if.end151.if.end218_crit_edge
  %179 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %179)
  %bf.load220 = load i8, ptr %oss, align 8
  %180 = and i8 %bf.load220, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool224.not = icmp eq i8 %180, 0
  br i1 %tobool224.not, label %if.else226, label %if.end218.if.end228_crit_edge

if.end218.if.end228_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end228

if.else226:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #20
  %boundary = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 33
  %181 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %boundary, align 8
  br label %if.end228

if.end228:                                        ; preds = %if.else226, %if.end218.if.end228_crit_edge
  %.sink = phi i32 [ %182, %if.else226 ], [ 1, %if.end218.if.end228_crit_edge ]
  %183 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %call7.i.i, i32 0, i32 5
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %.sink, ptr %183, align 4
  %call.i.i541 = call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %185 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool231.not = icmp eq i32 %186, 0
  br i1 %tobool231.not, label %lor.lhs.false232, label %if.end228.if.then235_crit_edge

if.end228.if.then235_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then235

lor.lhs.false232:                                 ; preds = %if.end228
  %stream233 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %187 = ptrtoint ptr %stream233 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %stream233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %188)
  %cmp234 = icmp eq i32 %188, 1
  br i1 %cmp234, label %lor.lhs.false232.if.then235_crit_edge, label %if.else237

lor.lhs.false232.if.then235_crit_edge:            ; preds = %lor.lhs.false232
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then235

if.then235:                                       ; preds = %lor.lhs.false232.if.then235_crit_edge, %if.end228.if.then235_crit_edge
  %boundary236 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 33
  br label %if.end239

if.else237:                                       ; preds = %lor.lhs.false232
  call void @__sanitizer_cov_trace_pc() #20
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  br label %if.end239

if.end239:                                        ; preds = %if.else237, %if.then235
  %.sink676.in = phi ptr [ %buffer_size, %if.else237 ], [ %boundary236, %if.then235 ]
  %189 = ptrtoint ptr %.sink676.in to i32
  call void @__asan_load4_noabort(i32 %189)
  %.sink676 = load i32, ptr %.sink676.in, align 4
  %stop_threshold238 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %call7.i.i, i32 0, i32 6
  %190 = ptrtoint ptr %stop_threshold238 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %.sink676, ptr %stop_threshold238, align 8
  %191 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %call7.i.i, align 8
  %period_step = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %call7.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %period_step to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1, ptr %period_step, align 4
  %stream240 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %193 = ptrtoint ptr %stream240 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %stream240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp241 = icmp eq i32 %194, 0
  br i1 %cmp241, label %if.end239.cond.end_crit_edge, label %cond.false

if.end239.cond.end_crit_edge:                     ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #20
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %195 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %period_size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end239.cond.end_crit_edge
  %cond = phi i32 [ %196, %cond.false ], [ 1, %if.end239.cond.end_crit_edge ]
  %avail_min = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %call7.i.i, i32 0, i32 3
  %197 = ptrtoint ptr %avail_min to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %cond, ptr %avail_min, align 4
  %call.i.i542 = call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %198 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool244.not = icmp eq i32 %199, 0
  br i1 %tobool244.not, label %lor.lhs.false245, label %cond.end.if.end264_crit_edge

cond.end.if.end264_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end264

lor.lhs.false245:                                 ; preds = %cond.end
  %nosilence = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 24, i32 1, i32 1
  %200 = ptrtoint ptr %nosilence to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load248 = load i8, ptr %nosilence, align 4
  %201 = and i8 %bf.load248, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool252.not = icmp eq i8 %201, 0
  br i1 %tobool252.not, label %if.else254, label %lor.lhs.false245.if.end264_crit_edge

lor.lhs.false245.if.end264_crit_edge:             ; preds = %lor.lhs.false245
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end264

if.else254:                                       ; preds = %lor.lhs.false245
  call void @__sanitizer_cov_trace_pc() #20
  %period_size255 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %202 = ptrtoint ptr %period_size255 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %period_size255, align 4
  %add256 = add i32 %203, 16
  %buffer_size257 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %204 = ptrtoint ptr %buffer_size257 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %buffer_size257, align 4
  %206 = call i32 @llvm.umin.i32(i32 %add256, i32 %205)
  br label %if.end264

if.end264:                                        ; preds = %if.else254, %lor.lhs.false245.if.end264_crit_edge, %cond.end.if.end264_crit_edge
  %.sink678 = phi i32 [ %206, %if.else254 ], [ 0, %lor.lhs.false245.if.end264_crit_edge ], [ 0, %cond.end.if.end264_crit_edge ]
  %silence_threshold262 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %call7.i.i, i32 0, i32 7
  %207 = ptrtoint ptr %silence_threshold262 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %.sink678, ptr %silence_threshold262, align 4
  %silence_size263 = getelementptr inbounds %struct.snd_pcm_sw_params, ptr %call7.i.i, i32 0, i32 8
  %208 = ptrtoint ptr %silence_size263 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %.sink678, ptr %silence_size263, align 8
  %call265 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef -1066909421, ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %cmp266 = icmp slt i32 %call265, 0
  br i1 %cmp266, label %do.body268, label %if.end287

do.body268:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_change_params_locked, %if.then280)) #18
          to label %failure [label %if.then280], !srcloc !155

if.then280:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #20
  %209 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %substream, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 8
  %dev283 = getelementptr inbounds %struct.snd_card, ptr %212, i32 0, i32 27
  %213 = ptrtoint ptr %dev283 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev283, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug249, ptr noundef %214, ptr noundef nonnull @.str.17, i32 noundef %call265) #18
  br label %failure

if.end287:                                        ; preds = %if.end264
  %215 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx.i.i, align 8
  %217 = ptrtoint ptr %periods to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %periods, align 8
  %arrayidx.i.i619 = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i527, i32 0, i32 3, i32 5
  %218 = ptrtoint ptr %arrayidx.i.i619 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx.i.i619, align 8
  %call292 = call i32 @snd_pcm_plug_client_size(ptr noundef %substream, i32 noundef %219) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %cmp293 = icmp slt i32 %call292, 0
  br i1 %cmp293, label %if.end287.failure_crit_edge, label %if.end295

if.end287.failure_crit_edge:                      ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end295:                                        ; preds = %if.end287
  %plugin_first297 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 18
  %220 = ptrtoint ptr %plugin_first297 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %plugin_first297, align 8
  %tobool298.not = icmp eq ptr %221, null
  br i1 %tobool298.not, label %if.end295.if.end304_crit_edge, label %if.then299

if.end295.if.end304_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end304

if.then299:                                       ; preds = %if.end295
  %call300 = call i32 @snd_pcm_plug_alloc(ptr noundef %substream, i32 noundef %call292) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %cmp301 = icmp slt i32 %call300, 0
  br i1 %cmp301, label %if.then299.failure_crit_edge, label %if.then299.if.end304_crit_edge

if.then299.if.end304_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end304

if.then299.failure_crit_edge:                     ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end304:                                        ; preds = %if.then299.if.end304_crit_edge, %if.end295.if.end304_crit_edge
  %mul305 = mul i32 %call292, %div524
  %222 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %periods, align 8
  %mul308 = mul i32 %223, %mul305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul308)
  %cmp309 = icmp slt i32 %mul308, 0
  br i1 %cmp309, label %if.end304.failure_crit_edge, label %if.end311

if.end304.failure_crit_edge:                      ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end311:                                        ; preds = %if.end304
  %224 = ptrtoint ptr %period_bytes to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %mul305, ptr %period_bytes, align 4
  %buffer_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 11
  %225 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %mul308, ptr %buffer_bytes, align 4
  %226 = ptrtoint ptr %arrayidx.i.i601 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx.i.i601, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool.not.i.i621 = icmp eq i32 %227, 0
  br i1 %tobool.not.i.i621, label %for.inc.i.i628, label %if.end311.if.then.i.i625_crit_edge

if.end311.if.then.i.i625_crit_edge:               ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i625

if.then.i.i625:                                   ; preds = %for.inc.i.i628.if.then.i.i625_crit_edge, %if.end311.if.then.i.i625_crit_edge
  %i.09.lcssa.i.i622 = phi i32 [ 0, %if.end311.if.then.i.i625_crit_edge ], [ 32, %for.inc.i.i628.if.then.i.i625_crit_edge ]
  %.lcssa.i.i623 = phi i32 [ %227, %if.end311.if.then.i.i625_crit_edge ], [ %230, %for.inc.i.i628.if.then.i.i625_crit_edge ]
  %228 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i623, i1 true) #18, !range !190
  %add.i.i624 = or i32 %228, %i.09.lcssa.i.i622
  br label %params_format.exit630

for.inc.i.i628:                                   ; preds = %if.end311
  %arrayidx.1.i.i626 = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %229 = ptrtoint ptr %arrayidx.1.i.i626 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx.1.i.i626, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.1.i.i627 = icmp eq i32 %230, 0
  br i1 %tobool.not.1.i.i627, label %for.inc.i.i628.params_format.exit630_crit_edge, label %for.inc.i.i628.if.then.i.i625_crit_edge

for.inc.i.i628.if.then.i.i625_crit_edge:          ; preds = %for.inc.i.i628
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i625

for.inc.i.i628.params_format.exit630_crit_edge:   ; preds = %for.inc.i.i628
  call void @__sanitizer_cov_trace_pc() #20
  br label %params_format.exit630

params_format.exit630:                            ; preds = %for.inc.i.i628.params_format.exit630_crit_edge, %if.then.i.i625
  %retval.0.i.i629 = phi i32 [ %add.i.i624, %if.then.i.i625 ], [ 0, %for.inc.i.i628.params_format.exit630_crit_edge ]
  %call316 = call fastcc i32 @snd_pcm_oss_format_to(i32 noundef %retval.0.i.i629)
  %231 = ptrtoint ptr %format50 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %call316, ptr %format50, align 8
  %232 = ptrtoint ptr %arrayidx.i.i604 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx.i.i604, align 4
  %234 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %channels, align 4
  %arrayidx.i.i632 = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i, i32 0, i32 3, i32 3
  %235 = ptrtoint ptr %arrayidx.i.i632 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.i.i632, align 8
  %237 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %rate, align 4
  %buffer = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 14
  %238 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %buffer, align 8
  call void @kvfree(ptr noundef %239) #18
  %240 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %period_bytes, align 4
  %call.i.i633 = call noalias ptr @kvmalloc_node(i32 noundef %241, i32 noundef 3520, i32 noundef -1) #25
  %242 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call.i.i633, ptr %buffer, align 8
  %tobool333.not = icmp eq ptr %call.i.i633, null
  br i1 %tobool333.not, label %params_format.exit630.failure_crit_edge, label %if.end335

params_format.exit630.failure_crit_edge:          ; preds = %params_format.exit630
  call void @__sanitizer_cov_trace_pc() #20
  br label %failure

if.end335:                                        ; preds = %params_format.exit630
  %243 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %243)
  %bf.load337 = load i8, ptr %oss, align 8
  %bf.clear341 = and i8 %bf.load337, 63
  %bf.set342 = or i8 %bf.clear341, 64
  store i8 %bf.set342, ptr %oss, align 8
  %buffer_used = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 15
  %244 = ptrtoint ptr %buffer_used to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %buffer_used, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %245 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dma_area, align 4
  %tobool344.not = icmp eq ptr %246, null
  br i1 %tobool344.not, label %if.end335.if.end350_crit_edge, label %if.then345

if.end335.if.end350_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end350

if.then345:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #20
  %format346 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 12
  %247 = ptrtoint ptr %format346 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %format346, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %249 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %dma_bytes, align 4
  %mul.i = shl i32 %250, 3
  %sample_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 22
  %251 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %sample_bits.i, align 4
  %div.i = udiv i32 %mul.i, %252
  %call349 = call i32 @snd_pcm_format_set_silence(i32 noundef %248, ptr noundef nonnull %246, i32 noundef %div.i) #18
  br label %if.end350

if.end350:                                        ; preds = %if.then345, %if.end335.if.end350_crit_edge
  %253 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %runtime1, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %254, i32 0, i32 18
  %255 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %254, i32 0, i32 21
  %257 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %258, %256
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %buffer_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %254, i32 0, i32 59, i32 11
  %259 = ptrtoint ptr %buffer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %buffer_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i.i, i32 %260)
  %cmp.i635 = icmp eq i32 %div1.i.i.i, %260
  br i1 %cmp.i635, label %if.end350.snd_pcm_alsa_frames.exit_crit_edge, label %if.end.i638

if.end350.snd_pcm_alsa_frames.exit_crit_edge:     ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_alsa_frames.exit

if.end.i638:                                      ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i636 = mul i32 %div1.i.i.i, %mul305
  %div.i637 = udiv i32 %mul.i636, %260
  br label %snd_pcm_alsa_frames.exit

snd_pcm_alsa_frames.exit:                         ; preds = %if.end.i638, %if.end350.snd_pcm_alsa_frames.exit_crit_edge
  %mul.i.pn.in.i = phi i32 [ %div.i637, %if.end.i638 ], [ %mul305, %if.end350.snd_pcm_alsa_frames.exit_crit_edge ]
  %mul.i.pn.i = shl i32 %mul.i.pn.in.i, 3
  %retval.0.i639 = udiv i32 %mul.i.pn.i, %258
  %period_frames = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 8
  %261 = ptrtoint ptr %period_frames to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %retval.0.i639, ptr %period_frames, align 8
  br label %failure

failure:                                          ; preds = %snd_pcm_alsa_frames.exit, %params_format.exit630.failure_crit_edge, %if.end304.failure_crit_edge, %if.then299.failure_crit_edge, %if.end287.failure_crit_edge, %if.then280, %do.body268, %cleanup, %do.end177, %if.then144, %do.body132, %if.end122.failure_crit_edge, %if.end115.failure_crit_edge, %params_format.exit.failure_crit_edge, %snd_mask_empty.exit.i.i.failure_crit_edge, %if.then82, %do.body70, %if.end43.failure_crit_edge, %choose_rate.exit.failure_crit_edge, %if.end38.failure_crit_edge, %if.then36, %do.body, %if.end.failure_crit_edge
  %err.2 = phi i32 [ %retval.3.i, %choose_rate.exit.failure_crit_edge ], [ %call45, %if.end43.failure_crit_edge ], [ %call112, %params_format.exit.failure_crit_edge ], [ %call119, %if.end115.failure_crit_edge ], [ %call124, %if.end122.failure_crit_edge ], [ %call129, %if.then144 ], [ %call265, %if.then280 ], [ %call300, %if.then299.failure_crit_edge ], [ 0, %snd_pcm_alsa_frames.exit ], [ %call156, %do.end177 ], [ %call183, %cleanup ], [ -12, %if.end.failure_crit_edge ], [ -22, %if.then36 ], [ -22, %if.then82 ], [ -22, %if.end287.failure_crit_edge ], [ -22, %if.end304.failure_crit_edge ], [ -12, %params_format.exit630.failure_crit_edge ], [ -22, %do.body ], [ -22, %do.body70 ], [ -22, %snd_mask_empty.exit.i.i.failure_crit_edge ], [ %call129, %do.body132 ], [ %call265, %do.body268 ], [ -12, %if.end38.failure_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #18
  call void @kfree(ptr noundef %call7.i) #18
  call void @kfree(ptr noundef %call7.i527) #18
  br label %cleanup353

cleanup353:                                       ; preds = %failure, %entry.cleanup353_crit_edge
  %retval.0 = phi i32 [ %err.2, %failure ], [ 0, %entry.cleanup353_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_snd_pcm_hw_params_any(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_snd_pcm_hw_param_min(ptr nocapture noundef %params, i32 noundef %var, i32 noundef %val, i32 noundef %dir) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp sgt i32 %dir, 0
  br i1 %cmp, label %if.then.if.end8_crit_edge, label %if.then3

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp4.not = icmp eq i32 %val, 0
  %dec = add i32 %val, -1
  %spec.select = select i1 %cmp4.not, i32 0, i32 %dec
  %not.cmp4.not = xor i1 %cmp4.not, true
  %spec.select45 = zext i1 %not.cmp4.not to i32
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %val.addr.0 = phi i32 [ %val, %entry.if.end8_crit_edge ], [ %val, %if.then.if.end8_crit_edge ], [ %spec.select, %if.then3 ]
  %open.0 = phi i32 [ 0, %entry.if.end8_crit_edge ], [ 1, %if.then.if.end8_crit_edge ], [ %spec.select45, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %var)
  %cmp1.i = icmp sgt i32 %var, 2
  br i1 %cmp1.i, label %if.else15, label %if.then10

if.then10:                                        ; preds = %if.end8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 %var
  %add = add i32 %open.0, %val.addr.0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then10.if.then.i.i_crit_edge

if.then10.if.then.i.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.then10.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.then10.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %1, %if.then10.if.then.i.i_crit_edge ], [ %4, %for.inc.i.i.if.then.i.i_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #18, !range !190
  %add.i.i = or i32 %2, %i.09.lcssa.i.i
  br label %snd_mask_min.exit.i

for.inc.i.i:                                      ; preds = %if.then10
  %arrayidx.1.i.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.1.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.snd_mask_min.exit.i_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

for.inc.i.i.snd_mask_min.exit.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_min.exit.i

snd_mask_min.exit.i:                              ; preds = %for.inc.i.i.snd_mask_min.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.snd_mask_min.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %add)
  %cmp.not.i = icmp ult i32 %retval.0.i.i, %add
  br i1 %cmp.not.i, label %if.end.i, label %snd_mask_min.exit.i.cleanup_crit_edge

snd_mask_min.exit.i.cleanup_crit_edge:            ; preds = %snd_mask_min.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %snd_mask_min.exit.i
  %sub.i = add i32 %add, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i ]
  %and.i.i = and i32 %i.06.i.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %shr.i.i = lshr i32 %i.06.i.i, 5
  %arrayidx.i.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %6, %neg.i.i
  store i32 %and1.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %i.06.i.i, 1
  %cmp.not.i.i = icmp ugt i32 %inc.i.i, %sub.i
  br i1 %cmp.not.i.i, label %snd_mask_reset_range.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

snd_mask_reset_range.exit.i:                      ; preds = %for.body.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i7.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i7.i, label %snd_mask_empty.exit.i, label %snd_mask_reset_range.exit.i.if.then25_crit_edge

snd_mask_reset_range.exit.i.if.then25_crit_edge:  ; preds = %snd_mask_reset_range.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then25

snd_mask_empty.exit.i:                            ; preds = %snd_mask_reset_range.exit.i
  %arrayidx.1.i8.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i9.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i9.not.i, label %snd_mask_empty.exit.i.cleanup_crit_edge, label %snd_mask_empty.exit.i.if.then25_crit_edge

snd_mask_empty.exit.i.if.then25_crit_edge:        ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then25

snd_mask_empty.exit.i.cleanup_crit_edge:          ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %var)
  %cmp.i = icmp ult i32 %var, 8
  br i1 %cmp.i, label %if.else15.cleanup_crit_edge, label %if.then18

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then18:                                        ; preds = %if.else15
  %sub.i47 = add nsw i32 %var, -8
  %arrayidx.i48 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i47
  %11 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val.addr.0)
  %cmp.i49 = icmp ult i32 %12, %val.addr.0
  br i1 %cmp.i49, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %val.addr.0, ptr %arrayidx.i48, align 4
  %openmin3.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i47, i32 2
  %14 = trunc i32 %open.0 to i8
  %15 = ptrtoint ptr %openmin3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %openmin3.i, align 4
  %bf.shl.i = shl nuw i8 %14, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %openmin3.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val.addr.0)
  %cmp5.i = icmp eq i32 %12, %val.addr.0
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %openmin6.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i47, i32 2
  %16 = ptrtoint ptr %openmin6.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load7.i = load i8, ptr %openmin6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load7.i)
  %tobool.not.i = icmp slt i8 %bf.load7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open.0)
  %tobool9.not.i = icmp eq i32 %open.0, 0
  %or.cond.i = or i1 %tobool9.not.i, %tobool.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set14.i = or i8 %bf.load7.i, -128
  %17 = ptrtoint ptr %openmin6.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set14.i, ptr %openmin6.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %land.lhs.true.i.if.end15.i_crit_edge, %if.else.i.if.end15.i_crit_edge, %if.then.i
  %cmp24 = phi i1 [ true, %if.then10.i ], [ false, %land.lhs.true.i.if.end15.i_crit_edge ], [ false, %if.else.i.if.end15.i_crit_edge ], [ true, %if.then.i ]
  %integer.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i47, i32 2
  %18 = ptrtoint ptr %integer.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load16.i = load i8, ptr %integer.i, align 4
  %19 = and i8 %bf.load16.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %19)
  %.not.i = icmp eq i8 %19, -96
  br i1 %.not.i, label %if.then27.i, label %if.end15.i.if.end34.i_crit_edge

if.end15.i.if.end34.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i48, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %arrayidx.i48, align 4
  %bf.clear31.i = and i8 %bf.load16.i, 127
  %22 = ptrtoint ptr %integer.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.clear31.i, ptr %integer.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then27.i, %if.end15.i.if.end34.i_crit_edge
  %23 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i48, align 4
  %max.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i47, i32 1
  %25 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i.i = icmp ugt i32 %24, %26
  br i1 %cmp.i.i, label %if.end34.i.if.then36.i_crit_edge, label %lor.rhs.i.i

if.end34.i.if.then36.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then36.i

lor.rhs.i.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp3.i.i = icmp eq i32 %24, %26
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.if.end23_crit_edge

lor.rhs.i.i.if.end23_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %27 = ptrtoint ptr %integer.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i = load i8, ptr %integer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %tobool35.not.i = icmp ult i8 %bf.load.i.i, 64
  br i1 %tobool35.not.i, label %land.rhs.i.i.if.end23_crit_edge, label %land.rhs.i.i.if.then36.i_crit_edge

land.rhs.i.i.if.then36.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then36.i

land.rhs.i.i.if.end23_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then36.i:                                      ; preds = %land.rhs.i.i.if.then36.i_crit_edge, %if.end34.i.if.then36.i_crit_edge
  %28 = ptrtoint ptr %integer.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i53.i = load i8, ptr %integer.i, align 4
  %bf.set.i.i = or i8 %bf.load.i53.i, 16
  store i8 %bf.set.i.i, ptr %integer.i, align 4
  br label %cleanup

if.end23:                                         ; preds = %land.rhs.i.i.if.end23_crit_edge, %lor.rhs.i.i.if.end23_crit_edge
  br i1 %cmp24, label %if.end23.if.then25_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %snd_mask_empty.exit.i.if.then25_crit_edge, %snd_mask_reset_range.exit.i.if.then25_crit_edge
  %shl = shl nuw i32 1, %var
  %cmask = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 6
  %29 = ptrtoint ptr %cmask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmask, align 4
  %or = or i32 %30, %shl
  store i32 %or, ptr %cmask, align 4
  %rmask = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 5
  %31 = ptrtoint ptr %rmask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rmask, align 4
  %or27 = or i32 %32, %shl
  store i32 %or27, ptr %rmask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %if.then36.i, %if.else15.cleanup_crit_edge, %snd_mask_empty.exit.i.cleanup_crit_edge, %snd_mask_min.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else15.cleanup_crit_edge ], [ 1, %if.then25 ], [ 0, %if.end23.cleanup_crit_edge ], [ -22, %if.then36.i ], [ -22, %snd_mask_empty.exit.i.cleanup_crit_edge ], [ 0, %snd_mask_min.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_hw_param_near(ptr noundef %pcm, ptr noundef %params, i32 noundef %var, i32 noundef %best) unnamed_addr #2 align 64 {
entry:
  %maxdir = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxdir) #18
  %0 = tail call i32 @llvm.umin.i32(i32 %best, i32 2147483647)
  %1 = ptrtoint ptr %maxdir to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %maxdir, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 604) #23
  %cmp8 = icmp eq ptr %call7.i, null
  br i1 %cmp8, label %entry.cleanup45_crit_edge, label %if.end10

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup45

if.end10:                                         ; preds = %entry
  %3 = call ptr @memcpy(ptr %call7.i, ptr %params, i32 604)
  %call.i = tail call fastcc i32 @_snd_pcm_hw_param_min(ptr noundef %params, i32 noundef %var, i32 noundef %0, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end10.if.else33_crit_edge, label %if.end.i

if.end10.if.else33_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else33

if.end.i:                                         ; preds = %if.end10
  %rmask.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 5
  %4 = ptrtoint ptr %rmask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then2.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = tail call i32 @snd_pcm_hw_refine(ptr noundef %pcm, ptr noundef %params) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then2.i.if.else33_crit_edge, label %if.then2.i.if.end7.i_crit_edge

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then2.i.if.else33_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else33

if.end7.i:                                        ; preds = %if.then2.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %var)
  %cmp1.i.i.i = icmp sgt i32 %var, 2
  br i1 %cmp1.i.i.i, label %if.end5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end7.i
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 %var
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then.i.i.if.then.i.i.i_crit_edge

if.then.i.i.if.then.i.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then.i.i.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then.i.i.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %if.then.i.i.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #18, !range !190
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %snd_pcm_hw_param_min.exit

for.inc.i.i.i:                                    ; preds = %if.then.i.i
  %arrayidx.1.i.i.i = getelementptr [8 x i32], ptr %arrayidx.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %if.end16.thread, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i

if.end5.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %var)
  %cmp.i.i.i = icmp ult i32 %var, 8
  br i1 %cmp.i.i.i, label %if.end5.i.i.if.else33_crit_edge, label %if.then8.i.i

if.end5.i.i.if.else33_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else33

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i.i = add nsw i32 %var, -8
  %arrayidx.i24.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i.i
  %openmin.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i.i, i32 2
  %11 = ptrtoint ptr %openmin.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %openmin.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %12 = ptrtoint ptr %arrayidx.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i24.i.i, align 4
  br label %snd_pcm_hw_param_min.exit

snd_pcm_hw_param_min.exit:                        ; preds = %if.then8.i.i, %if.then.i.i.i
  %mindir.0 = phi i32 [ %bf.cast.i.i, %if.then8.i.i ], [ 0, %if.then.i.i.i ]
  %retval.1.i = phi i32 [ %13, %if.then8.i.i ], [ %add.i.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.1.i)
  %cmp12 = icmp sgt i32 %retval.1.i, -1
  br i1 %cmp12, label %if.end16, label %snd_pcm_hw_param_min.exit.if.else33_crit_edge

snd_pcm_hw_param_min.exit.if.else33_crit_edge:    ; preds = %snd_pcm_hw_param_min.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else33

if.end16:                                         ; preds = %snd_pcm_hw_param_min.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i, i32 %0)
  %cmp17 = icmp eq i32 %retval.1.i, %0
  br i1 %cmp17, label %land.lhs.true, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.end16.thread:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1716 = icmp eq i32 %0, 0
  br i1 %cmp1716, label %if.end16.thread.if.else42_crit_edge, label %if.end16.thread.if.end20_crit_edge

if.end16.thread.if.end20_crit_edge:               ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.end16.thread.if.else42_crit_edge:              ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else42

land.lhs.true:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mindir.0)
  %cmp18 = icmp eq i32 %mindir.0, 0
  br i1 %cmp18, label %land.lhs.true.if.else42_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.lhs.true.if.else42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else42

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end16.thread.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %retval.1.i1317 = phi i32 [ %0, %land.lhs.true.if.end20_crit_edge ], [ %retval.1.i, %if.end16.if.end20_crit_edge ], [ 0, %if.end16.thread.if.end20_crit_edge ]
  %mindir.07 = phi i32 [ 1, %land.lhs.true.if.end20_crit_edge ], [ %mindir.0, %if.end16.if.end20_crit_edge ], [ 0, %if.end16.thread.if.end20_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 604) #23
  %cmp22 = icmp eq ptr %call7.i1, null
  br i1 %cmp22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %15 = call ptr @memcpy(ptr %call7.i1, ptr %call7.i, i32 604)
  %call25 = call fastcc i32 @snd_pcm_hw_param_max(ptr noundef %pcm, ptr noundef nonnull %call7.i1, i32 noundef %var, i32 noundef %0, ptr noundef nonnull %maxdir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.if.else42.sink.split_crit_edge, label %if.end28

if.end24.if.else42.sink.split_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else42.sink.split

if.end28:                                         ; preds = %if.end24
  %16 = ptrtoint ptr %maxdir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxdir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp sgt i32 %17, 0
  %cond9.neg.i.i = sext i1 %18 to i32
  %sub.i.i = sub nsw i32 %0, %call25
  %sub.i1.i = sub nsw i32 %retval.1.i1317, %0
  %a.addr.0.i.i = add nsw i32 %sub.i.i, %cond9.neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %a.addr.0.i.i, i32 %sub.i1.i)
  %cmp12.i.i = icmp ult i32 %a.addr.0.i.i, %sub.i1.i
  br i1 %cmp12.i.i, label %if.end28.if.then31_crit_edge, label %lor.rhs.i.i

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then31

lor.rhs.i.i:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mindir.07)
  %cmp1.not.i.i = icmp eq i32 %mindir.07, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.not.i.i = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %a.addr.0.i.i, i32 %sub.i1.i)
  %cmp13.i.i = icmp ne i32 %a.addr.0.i.i, %sub.i1.i
  %tobool30.not = or i1 %cmp1.not.i.i, %cmp6.not.i.i
  %or.cond = select i1 %cmp13.i.i, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %lor.rhs.i.i.if.else42.sink.split_crit_edge, label %lor.rhs.i.i.if.then31_crit_edge

lor.rhs.i.i.if.then31_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then31

lor.rhs.i.i.if.else42.sink.split_crit_edge:       ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else42.sink.split

if.then31:                                        ; preds = %lor.rhs.i.i.if.then31_crit_edge, %if.end28.if.then31_crit_edge
  %19 = call ptr @memcpy(ptr %params, ptr %call7.i1, i32 604)
  call void @kfree(ptr noundef nonnull %call7.i1) #18
  call void @kfree(ptr noundef nonnull %call7.i) #18
  br label %if.then40

cleanup:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %call7.i) #18
  br label %cleanup45

if.else33:                                        ; preds = %snd_pcm_hw_param_min.exit.if.else33_crit_edge, %if.end5.i.i.if.else33_crit_edge, %if.then2.i.if.else33_crit_edge, %if.end10.if.else33_crit_edge
  %20 = call ptr @memcpy(ptr %params, ptr %call7.i, i32 604)
  %call34 = call fastcc i32 @snd_pcm_hw_param_max(ptr noundef %pcm, ptr noundef %params, i32 noundef %var, i32 noundef %0, ptr noundef nonnull %maxdir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  call void @kfree(ptr noundef nonnull %call7.i) #18
  br i1 %cmp35, label %if.else33.cleanup45_crit_edge, label %if.else33.if.then40_crit_edge

if.else33.if.then40_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then40

if.else33.cleanup45_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup45

if.then40:                                        ; preds = %if.else33.if.then40_crit_edge, %if.then31
  %call41 = call i32 @snd_pcm_hw_param_last(ptr noundef %pcm, ptr noundef %params, i32 noundef %var, ptr noundef null) #18
  br label %cleanup45

if.else42.sink.split:                             ; preds = %lor.rhs.i.i.if.else42.sink.split_crit_edge, %if.end24.if.else42.sink.split_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i1) #18
  br label %if.else42

if.else42:                                        ; preds = %if.else42.sink.split, %land.lhs.true.if.else42_crit_edge, %if.end16.thread.if.else42_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #18
  %call43 = call i32 @snd_pcm_hw_param_first(ptr noundef %pcm, ptr noundef %params, i32 noundef %var, ptr noundef null) #18
  br label %cleanup45

cleanup45:                                        ; preds = %if.else42, %if.then40, %if.else33.cleanup45_crit_edge, %cleanup, %entry.cleanup45_crit_edge
  %retval.1 = phi i32 [ -12, %cleanup ], [ -12, %entry.cleanup45_crit_edge ], [ %call41, %if.then40 ], [ %call43, %if.else42 ], [ %call34, %if.else33.cleanup45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxdir) #18
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_format_from(i32 noundef %format) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %format, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 8, label %sw.bb3
    i32 16, label %sw.bb4
    i32 32, label %sw.bb5
    i32 64, label %sw.bb6
    i32 128, label %sw.bb7
    i32 256, label %sw.bb8
    i32 512, label %sw.bb9
    i32 4096, label %sw.bb10
    i32 8192, label %sw.bb11
    i32 32768, label %sw.bb12
    i32 65536, label %sw.bb13
    i32 262144, label %sw.bb14
    i32 16384, label %sw.bb15
    i32 131072, label %sw.bb16
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

return:                                           ; preds = %sw.default, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %sw.default ], [ 19, %sw.bb16 ], [ 15, %sw.bb15 ], [ 32, %sw.bb14 ], [ 7, %sw.bb13 ], [ 6, %sw.bb12 ], [ 11, %sw.bb11 ], [ 10, %sw.bb10 ], [ 23, %sw.bb9 ], [ 5, %sw.bb8 ], [ 4, %sw.bb7 ], [ 0, %sw.bb6 ], [ 3, %sw.bb5 ], [ 2, %sw.bb4 ], [ 1, %sw.bb3 ], [ 22, %sw.bb2 ], [ 21, %sw.bb1 ], [ 20, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plug_slave_format(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_format_to(i32 noundef %format) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %format)
  %0 = icmp ult i32 %format, 33
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [33 x i32], ptr @switch.table.snd_pcm_oss_format_to, i32 0, i32 %format
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_snd_pcm_hw_param_set(ptr noundef %params, i32 noundef %var, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %t.i = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %var)
  %cmp1.i = icmp sgt i32 %var, 2
  br i1 %cmp1.i, label %if.else13, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx.i1 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 %var
  %0 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.ctpop.i32(i32 %1) #18, !range !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %tobool5.not.i.i = icmp ult i32 %2, 2
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool5.not.i.i
  br i1 %or.cond.i.i, label %for.inc.i.i, label %if.then.snd_mask_single.exit.i_crit_edge

if.then.snd_mask_single.exit.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_single.exit.i

for.inc.i.i:                                      ; preds = %if.then
  %arrayidx.1.i.i = getelementptr [8 x i32], ptr %arrayidx.i1, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.1.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  %5 = tail call i32 @llvm.ctpop.i32(i32 %4) #18, !range !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %tobool5.not.1.i.i = icmp ult i32 %5, 2
  %or.cond.1.i.i = select i1 %tobool5.not.1.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.1.i.i, label %if.end.1.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i.snd_mask_single.exit.i_crit_edge

if.end.1.i.i.snd_mask_single.exit.i_crit_edge:    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_single.exit.i

if.end.1.i.i.for.inc.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  br label %snd_mask_single.exit.i

snd_mask_single.exit.i:                           ; preds = %for.inc.1.i.i, %if.end.1.i.i.snd_mask_single.exit.i_crit_edge, %if.then.snd_mask_single.exit.i_crit_edge
  %tobool.not11.i = phi i32 [ 1, %if.then.snd_mask_single.exit.i_crit_edge ], [ 1, %if.end.1.i.i.snd_mask_single.exit.i_crit_edge ], [ 0, %for.inc.1.i.i ]
  %shr.i.i = lshr i32 %val, 5
  %arrayidx.i.i = getelementptr [8 x i32], ptr %arrayidx.i1, i32 0, i32 %shr.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %val, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %and1.i.i = and i32 %7, %shl.i.i
  %8 = call ptr @memset(ptr %arrayidx.i1, i32 0, i32 32)
  store i32 %and1.i.i, ptr %arrayidx.i.i, align 4
  %9 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i5.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i5.i, label %snd_mask_empty.exit.i, label %snd_mask_single.exit.i.if.end47_crit_edge

snd_mask_single.exit.i.if.end47_crit_edge:        ; preds = %snd_mask_single.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

snd_mask_empty.exit.i:                            ; preds = %snd_mask_single.exit.i
  %arrayidx.1.i6.i = getelementptr [8 x i32], ptr %arrayidx.i1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i7.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i7.not.i, label %snd_mask_empty.exit.i.cleanup_crit_edge, label %snd_mask_empty.exit.i.if.end47_crit_edge

snd_mask_empty.exit.i.if.end47_crit_edge:         ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

snd_mask_empty.exit.i.cleanup_crit_edge:          ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %var)
  %cmp.i = icmp ult i32 %var, 8
  br i1 %cmp.i, label %if.else13.cleanup_crit_edge, label %if.then16

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i = add nsw i32 %var, -8
  %arrayidx.i3 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t.i) #18
  %13 = getelementptr inbounds i8, ptr %t.i, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 805306367, ptr %13, align 4
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %t.i, i32 0, i32 1
  %15 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %val, ptr %max.i, align 4
  %16 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %val, ptr %t.i, align 4
  %call.i = call i32 @snd_interval_refine(ptr noundef %arrayidx.i3, ptr noundef nonnull %t.i) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t.i) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then16, %snd_mask_empty.exit.i.if.end47_crit_edge, %snd_mask_single.exit.i.if.end47_crit_edge
  %changed.2 = phi i32 [ %call.i, %if.then16 ], [ %tobool.not11.i, %snd_mask_empty.exit.i.if.end47_crit_edge ], [ %tobool.not11.i, %snd_mask_single.exit.i.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.2)
  %cmp48 = icmp sgt i32 %changed.2, 0
  br i1 %cmp48, label %if.then49, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  %shl = shl nuw i32 1, %var
  %cmask = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 6
  %17 = ptrtoint ptr %cmask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmask, align 4
  %or = or i32 %18, %shl
  store i32 %or, ptr %cmask, align 4
  %rmask = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 5
  %19 = ptrtoint ptr %rmask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmask, align 4
  %or51 = or i32 %20, %shl
  store i32 %or51, ptr %rmask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end47.cleanup_crit_edge, %if.else13.cleanup_crit_edge, %snd_mask_empty.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else13.cleanup_crit_edge ], [ %changed.2, %if.then49 ], [ %changed.2, %if.end47.cleanup_crit_edge ], [ -22, %snd_mask_empty.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_period_size(ptr noundef %substream, ptr nocapture noundef readonly %oss_params, ptr nocapture noundef readonly %slave_params) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %oss_params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %3, %entry.if.then.i.i_crit_edge ], [ %6, %for.inc.i.i.if.then.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #18, !range !190
  %add.i.i = or i32 %4, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %oss_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call2 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i) #18
  %arrayidx.i.i317 = getelementptr %struct.snd_pcm_hw_params, ptr %oss_params, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i317 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i317, align 4
  %mul = mul i32 %8, %call2
  %div308 = lshr i32 %mul, 3
  %max.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 9, i32 1
  %9 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max.i.i, align 4
  %openmax.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 9, i32 2
  %11 = ptrtoint ptr %openmax.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %openmax.i.i, align 4
  %12 = shl i8 %bf.load.i.i, 1
  %sext.i.i = ashr i8 %12, 7
  %dec.i.i = sext i8 %sext.i.i to i32
  %spec.select.i.i = add i32 %10, %dec.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i)
  %cmp = icmp slt i32 %spec.select.i.i, 1
  br i1 %cmp, label %params_format.exit.cleanup_crit_edge, label %if.end

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  %mul5 = mul i32 %spec.select.i.i, %div308
  %call6 = tail call i32 @snd_pcm_plug_client_size(ptr noundef %substream, i32 noundef %mul5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %cond.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cond.end19:                                       ; preds = %if.end
  %13 = tail call i32 @llvm.ctlz.i32(i32 %call6, i1 true) #18, !range !190
  %sub.i.i.op.i = xor i32 %13, 31
  %cond20 = shl nuw i32 1, %sub.i.i.op.i
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %14 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %cond.end19.if.end29_crit_edge, label %if.then22

cond.end19.if.end29_crit_edge:                    ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then22:                                        ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #20
  %mmap_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 13
  %16 = ptrtoint ptr %mmap_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mmap_bytes, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %cond20, i32 %17)
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %cond.end19.if.end29_crit_edge
  %oss_buffer_size.0 = phi i32 [ %cond20, %cond.end19.if.end29_crit_edge ], [ %18, %if.then22 ]
  %period_size = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 24, i32 1, i32 3
  %19 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp31 = icmp ugt i32 %20, 16
  br i1 %cmp31, label %if.end29.if.end85_crit_edge, label %if.else

if.end29.if.end85_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85

if.else:                                          ; preds = %if.end29
  %fragshift = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 4
  %21 = ptrtoint ptr %fragshift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fragshift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool38.not = icmp eq i32 %22, 0
  br i1 %tobool38.not, label %if.else49, label %if.then39

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %shl42 = shl nuw i32 1, %22
  %div43 = sdiv i32 %oss_buffer_size.0, 2
  %23 = tail call i32 @llvm.smin.i32(i32 %shl42, i32 %div43)
  br label %if.end85

if.else49:                                        ; preds = %if.else
  %arrayidx.i.i318 = getelementptr %struct.snd_pcm_hw_params, ptr %oss_params, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx.i.i318 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i318, align 4
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i320 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i320, label %for.inc.i.i327, label %if.else49.if.then.i.i324_crit_edge

if.else49.if.then.i.i324_crit_edge:               ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i324

if.then.i.i324:                                   ; preds = %for.inc.i.i327.if.then.i.i324_crit_edge, %if.else49.if.then.i.i324_crit_edge
  %i.09.lcssa.i.i321 = phi i32 [ 0, %if.else49.if.then.i.i324_crit_edge ], [ 32, %for.inc.i.i327.if.then.i.i324_crit_edge ]
  %.lcssa.i.i322 = phi i32 [ %27, %if.else49.if.then.i.i324_crit_edge ], [ %30, %for.inc.i.i327.if.then.i.i324_crit_edge ]
  %28 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i322, i1 true) #18, !range !190
  %add.i.i323 = or i32 %28, %i.09.lcssa.i.i321
  br label %params_format.exit329

for.inc.i.i327:                                   ; preds = %if.else49
  %arrayidx.1.i.i325 = getelementptr %struct.snd_pcm_hw_params, ptr %oss_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i.i325 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i.i325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.1.i.i326 = icmp eq i32 %30, 0
  br i1 %tobool.not.1.i.i326, label %for.inc.i.i327.params_format.exit329_crit_edge, label %for.inc.i.i327.if.then.i.i324_crit_edge

for.inc.i.i327.if.then.i.i324_crit_edge:          ; preds = %for.inc.i.i327
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i324

for.inc.i.i327.params_format.exit329_crit_edge:   ; preds = %for.inc.i.i327
  call void @__sanitizer_cov_trace_pc() #20
  br label %params_format.exit329

params_format.exit329:                            ; preds = %for.inc.i.i327.params_format.exit329_crit_edge, %if.then.i.i324
  %retval.0.i.i328 = phi i32 [ %add.i.i323, %if.then.i.i324 ], [ 0, %for.inc.i.i327.params_format.exit329_crit_edge ]
  %call52 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i328) #18
  %mul53 = mul i32 %call52, %25
  %31 = ptrtoint ptr %arrayidx.i.i317 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i317, align 4
  %mul55 = mul i32 %mul53, %32
  %div56309 = lshr i32 %mul55, 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %params_format.exit329
  %oss_period_size.0 = phi i32 [ %oss_buffer_size.0, %params_format.exit329 ], [ %div57, %do.body.do.body_crit_edge ]
  %div57 = sdiv i32 %oss_period_size.0, 2
  %cmp58 = icmp ugt i32 %div57, %div56309
  br i1 %cmp58, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.end:                                           ; preds = %do.body
  %subdivision = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 6
  %33 = ptrtoint ptr %subdivision to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %subdivision, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp61 = icmp eq i32 %34, 0
  br i1 %cmp61, label %if.then63, label %do.end.if.end78_crit_edge

do.end.if.end78_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end78

if.then63:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 32775, i32 %oss_period_size.0)
  %cmp65 = icmp sgt i32 %oss_period_size.0, 32775
  %spec.select311 = select i1 %cmp65, i32 8, i32 4
  %div70 = sdiv i32 %div57, %spec.select311
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div70)
  %cmp71 = icmp slt i32 %div70, 4096
  %spec.store.select = select i1 %cmp71, i32 1, i32 %spec.select311
  br label %if.end78

if.end78:                                         ; preds = %if.then63, %do.end.if.end78_crit_edge
  %sd.1 = phi i32 [ %spec.store.select, %if.then63 ], [ %34, %do.end.if.end78_crit_edge ]
  %div79 = sdiv i32 %div57, %sd.1
  %35 = tail call i32 @llvm.smax.i32(i32 %div79, i32 16)
  br label %if.end85

if.end85:                                         ; preds = %if.end78, %if.then39, %if.end29.if.end85_crit_edge
  %oss_period_size.1 = phi i32 [ %35, %if.end78 ], [ %20, %if.end29.if.end85_crit_edge ], [ %23, %if.then39 ]
  %arrayidx.i24.i = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 5
  %36 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i24.i, align 4
  %call87 = tail call i32 @snd_pcm_plug_client_size(ptr noundef %substream, i32 noundef %37) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp sgt i32 %call87, 0
  br i1 %cmp88, label %cond.end120, label %if.end85.if.end126_crit_edge

if.end85.if.end126_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end126

cond.end120:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #20
  %mul91 = mul i32 %call87, %div308
  %sub.i332 = add i32 %mul91, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i332)
  %tobool.not.i.i.i = icmp eq i32 %sub.i332, 0
  %38 = tail call i32 @llvm.ctlz.i32(i32 %sub.i332, i1 true) #18, !range !190
  %sub.i.i.i = sub nuw nsw i32 32, %38
  %sub.i.i.op.i333 = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i333
  %39 = tail call i32 @llvm.smax.i32(i32 %oss_period_size.1, i32 %shl.i)
  br label %if.end126

if.end126:                                        ; preds = %cond.end120, %if.end85.if.end126_crit_edge
  %oss_period_size.2 = phi i32 [ %oss_period_size.1, %if.end85.if.end126_crit_edge ], [ %39, %cond.end120 ]
  %max.i.i334 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 5, i32 1
  %40 = ptrtoint ptr %max.i.i334 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max.i.i334, align 4
  %openmax.i.i335 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 5, i32 2
  %42 = ptrtoint ptr %openmax.i.i335 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i.i336 = load i8, ptr %openmax.i.i335, align 4
  %43 = shl i8 %bf.load.i.i336, 1
  %sext.i.i337 = ashr i8 %43, 7
  %dec.i.i338 = sext i8 %sext.i.i337 to i32
  %spec.select.i.i339 = add i32 %41, %dec.i.i338
  %call128 = tail call i32 @snd_pcm_plug_client_size(ptr noundef %substream, i32 noundef %spec.select.i.i339) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp sgt i32 %call128, 0
  br i1 %cmp129, label %cond.end151, label %if.end126.if.end157_crit_edge

if.end126.if.end157_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end157

cond.end151:                                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #20
  %mul132 = mul i32 %call128, %div308
  %44 = tail call i32 @llvm.ctlz.i32(i32 %mul132, i1 true) #18, !range !190
  %sub.i.i.op.i340 = xor i32 %44, 31
  %cond152 = shl nuw i32 1, %sub.i.i.op.i340
  %45 = tail call i32 @llvm.smin.i32(i32 %oss_period_size.2, i32 %cond152)
  br label %if.end157

if.end157:                                        ; preds = %cond.end151, %if.end126.if.end157_crit_edge
  %oss_period_size.3 = phi i32 [ %oss_period_size.2, %if.end126.if.end157_crit_edge ], [ %45, %cond.end151 ]
  %div158 = sdiv i32 %oss_buffer_size.0, %oss_period_size.3
  %periods = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 24, i32 1, i32 2
  %46 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %periods, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp161 = icmp ugt i32 %47, 1
  %spec.select314 = select i1 %cmp161, i32 %47, i32 %div158
  %max.i.i342 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 7, i32 1
  %48 = ptrtoint ptr %max.i.i342 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max.i.i342, align 4
  %openmax.i.i343 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 7, i32 2
  %50 = ptrtoint ptr %openmax.i.i343 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i.i344 = load i8, ptr %openmax.i.i343, align 4
  %51 = shl i8 %bf.load.i.i344, 1
  %sext.i.i345 = ashr i8 %51, 7
  %dec.i.i346 = sext i8 %sext.i.i345 to i32
  %spec.select.i.i347 = add i32 %49, %dec.i.i346
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i347)
  %cmp169 = icmp sgt i32 %spec.select.i.i347, 0
  br i1 %cmp169, label %land.lhs.true, label %if.end157.if.end181_crit_edge

if.end157.if.end181_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end181

land.lhs.true:                                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  %maxfrags = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 5
  %52 = ptrtoint ptr %maxfrags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %maxfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool172.not = icmp ne i32 %53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i347, i32 %53)
  %cmp176 = icmp ugt i32 %spec.select.i.i347, %53
  %or.cond = select i1 %tobool172.not, i1 %cmp176, i1 false
  %spec.select316 = select i1 %or.cond, i32 %53, i32 %spec.select.i.i347
  br label %if.end181

if.end181:                                        ; preds = %land.lhs.true, %if.end157.if.end181_crit_edge
  %s.0 = phi i32 [ %spec.select.i.i347, %if.end157.if.end181_crit_edge ], [ %spec.select316, %land.lhs.true ]
  %54 = tail call i32 @llvm.smin.i32(i32 %spec.select314, i32 %s.0)
  %arrayidx.i24.i348 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 7
  %55 = ptrtoint ptr %arrayidx.i24.i348 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i24.i348, align 4
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 %54)
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 2)
  %mul195352 = mul i32 %oss_period_size.3, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %mul195352, i32 %oss_buffer_size.0)
  %cmp196353 = icmp sgt i32 %mul195352, %oss_buffer_size.0
  br i1 %cmp196353, label %if.end181.while.body_crit_edge, label %if.end181.while.end_crit_edge

if.end181.while.end_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end181.while.body_crit_edge:                   ; preds = %if.end181
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end181.while.body_crit_edge
  %oss_period_size.4354 = phi i32 [ %div198, %while.body.while.body_crit_edge ], [ %oss_period_size.3, %if.end181.while.body_crit_edge ]
  %div198 = sdiv i32 %oss_period_size.4354, 2
  %mul195 = mul i32 %div198, %58
  %cmp196 = icmp sgt i32 %mul195, %oss_buffer_size.0
  br i1 %cmp196, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end181.while.end_crit_edge
  %oss_period_size.4.lcssa = phi i32 [ %oss_period_size.3, %if.end181.while.end_crit_edge ], [ %div198, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %oss_period_size.4.lcssa)
  %cmp199 = icmp slt i32 %oss_period_size.4.lcssa, 16
  br i1 %cmp199, label %while.end.cleanup_crit_edge, label %if.end202

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end202:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %period_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 7
  %59 = ptrtoint ptr %period_bytes to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %oss_period_size.4.lcssa, ptr %period_bytes, align 4
  %period_frames = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 8
  %60 = ptrtoint ptr %period_frames to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %period_frames, align 8
  %periods206 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 10
  %61 = ptrtoint ptr %periods206 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %periods206, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end202, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end202 ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plug_slave_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_oss_plugin_clear(ptr nocapture noundef readonly %substream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 18
  %2 = ptrtoint ptr %plugin_first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plugin_first, align 8
  %tobool.not1 = icmp eq ptr %3, null
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %plugin.02 = phi ptr [ %5, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %next2 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.02, i32 0, i32 13
  %4 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next2, align 4
  %call = tail call i32 @snd_pcm_plugin_free(ptr noundef nonnull %plugin.02) #18
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %plugin_last = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 19
  %6 = ptrtoint ptr %plugin_last to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %plugin_last, align 4
  %7 = ptrtoint ptr %plugin_first to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %plugin_first, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plug_format_plugins(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build_io(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plug_client_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plug_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_set_silence(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_param_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_hw_param_max(ptr noundef %pcm, ptr noundef %params, i32 noundef %var, i32 noundef %val, ptr noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dir, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not.i = icmp eq i32 %cond, 0
  %2 = xor i32 %cond, -1
  %dir.lobit.not.i = lshr i32 %2, 31
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %dir.lobit.not.i
  %val.addr.0.i = add i32 %spec.select.i, %val
  %3 = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %var)
  %cmp1.i.i = icmp sgt i32 %var, 2
  br i1 %cmp1.i.i, label %if.else18.i, label %if.then7.i

if.then7.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.0.i)
  %cmp8.i = icmp ne i32 %val.addr.0.i, 0
  %brmerge.i = or i1 %tobool.not.i, %cmp8.i
  %arrayidx.i51.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 %var
  br i1 %brmerge.i, label %if.else12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #20
  %4 = call ptr @memset(ptr %arrayidx.i51.i, i32 0, i32 32)
  br label %cleanup9

if.else12.i:                                      ; preds = %if.then7.i
  %lnot.ext.neg.i = sext i1 %3 to i32
  %sub.i = add i32 %val.addr.0.i, %lnot.ext.neg.i
  %arrayidx.i.i.i = getelementptr [8 x i32], ptr %arrayidx.i51.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.else12.i.snd_mask_max.exit.i.i_crit_edge

if.else12.i.snd_mask_max.exit.i.i_crit_edge:      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_max.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.else12.i
  %7 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.if.end_crit_edge, label %for.inc.i.i.i.snd_mask_max.exit.i.i_crit_edge

for.inc.i.i.i.snd_mask_max.exit.i.i_crit_edge:    ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_max.exit.i.i

for.inc.i.i.i.if.end_crit_edge:                   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

snd_mask_max.exit.i.i:                            ; preds = %for.inc.i.i.i.snd_mask_max.exit.i.i_crit_edge, %if.else12.i.snd_mask_max.exit.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 32, %if.else12.i.snd_mask_max.exit.i.i_crit_edge ], [ 0, %for.inc.i.i.i.snd_mask_max.exit.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %6, %if.else12.i.snd_mask_max.exit.i.i_crit_edge ], [ %8, %for.inc.i.i.i.snd_mask_max.exit.i.i_crit_edge ]
  %9 = tail call i32 @llvm.ctlz.i32(i32 %.lcssa.i.i.i, i1 true) #18, !range !190
  %10 = or i32 %9, %i.09.lcssa.i.i.i
  %add.i.i.i = xor i32 %10, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub.i)
  %cmp.not.i.i = icmp ugt i32 %add.i.i.i, %sub.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %snd_mask_max.exit.i.i.if.end_crit_edge

snd_mask_max.exit.i.i.if.end_crit_edge:           ; preds = %snd_mask_max.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i.i:                                       ; preds = %snd_mask_max.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i)
  %cmp.not5.i.i.i = icmp ugt i32 %sub.i, 63
  br i1 %cmp.not5.i.i.i, label %if.end.i.i.snd_mask_reset_range.exit.i.i_crit_edge, label %if.end.i.i.for.body.i.i.i_crit_edge

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

if.end.i.i.snd_mask_reset_range.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_reset_range.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %i.06.i.in.i.i = phi i32 [ %i.06.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %sub.i, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %i.06.i.i.i = add nuw nsw i32 %i.06.i.in.i.i, 1
  %and.i.i.i = and i32 %i.06.i.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %and.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %shr.i.i.i = lshr i32 %i.06.i.i.i, 5
  %arrayidx.i7.i.i = getelementptr [8 x i32], ptr %arrayidx.i51.i, i32 0, i32 %shr.i.i.i
  %11 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i7.i.i, align 4
  %and1.i.i.i = and i32 %12, %neg.i.i.i
  store i32 %and1.i.i.i, ptr %arrayidx.i7.i.i, align 4
  %exitcond.i.i = icmp eq i32 %i.06.i.i.i, 64
  br i1 %exitcond.i.i, label %for.body.i.i.i.snd_mask_reset_range.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

for.body.i.i.i.snd_mask_reset_range.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_mask_reset_range.exit.i.i

snd_mask_reset_range.exit.i.i:                    ; preds = %for.body.i.i.i.snd_mask_reset_range.exit.i.i_crit_edge, %if.end.i.i.snd_mask_reset_range.exit.i.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i8.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i8.i.i, label %snd_mask_empty.exit.i.i, label %snd_mask_reset_range.exit.i.i.if.then28.i_crit_edge

snd_mask_reset_range.exit.i.i.if.then28.i_crit_edge: ; preds = %snd_mask_reset_range.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then28.i

snd_mask_empty.exit.i.i:                          ; preds = %snd_mask_reset_range.exit.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.1.i9.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.1.i9.not.i.i, label %snd_mask_empty.exit.i.i.cleanup9_crit_edge, label %snd_mask_empty.exit.i.i.if.then28.i_crit_edge

snd_mask_empty.exit.i.i.if.then28.i_crit_edge:    ; preds = %snd_mask_empty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then28.i

snd_mask_empty.exit.i.i.cleanup9_crit_edge:       ; preds = %snd_mask_empty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup9

if.else18.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %var)
  %cmp.i.i = icmp ult i32 %var, 8
  br i1 %cmp.i.i, label %if.else18.i.cleanup9_crit_edge, label %if.then21.i

if.else18.i.cleanup9_crit_edge:                   ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup9

if.then21.i:                                      ; preds = %if.else18.i
  %sub.i.i = add nsw i32 %var, -8
  %arrayidx.i53.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i
  %max1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i, i32 1
  %17 = ptrtoint ptr %max1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val.addr.0.i)
  %cmp.i54.i = icmp ugt i32 %18, %val.addr.0.i
  br i1 %cmp.i54.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %max1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %val.addr.0.i, ptr %max1.i.i, align 4
  %openmax3.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i, i32 2
  %20 = ptrtoint ptr %openmax3.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %openmax3.i.i, align 4
  %bf.value.i.i = select i1 %tobool.not.i, i8 0, i8 64
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.value.i.i
  store i8 %bf.set.i.i, ptr %openmax3.i.i, align 4
  br label %if.end16.i.i

if.else.i.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val.addr.0.i)
  %cmp5.i.i = icmp eq i32 %18, %val.addr.0.i
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %if.else.i.i.if.end16.i.i_crit_edge

if.else.i.i.if.end16.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %openmax6.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i, i32 2
  %21 = ptrtoint ptr %openmax6.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load7.i.i = load i8, ptr %openmax6.i.i, align 4
  %22 = and i8 %bf.load7.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp ne i8 %22, 0
  %or.cond.i.i = or i1 %tobool.not.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.end16.i.i_crit_edge, label %if.then11.i.i

land.lhs.true.i.i.if.end16.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set15.i.i = or i8 %bf.load7.i.i, 64
  %23 = ptrtoint ptr %openmax6.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set15.i.i, ptr %openmax6.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then11.i.i, %land.lhs.true.i.i.if.end16.i.i_crit_edge, %if.else.i.i.if.end16.i.i_crit_edge, %if.then.i.i
  %cmp27.i = phi i1 [ true, %if.then11.i.i ], [ false, %land.lhs.true.i.i.if.end16.i.i_crit_edge ], [ false, %if.else.i.i.if.end16.i.i_crit_edge ], [ true, %if.then.i.i ]
  %integer.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i, i32 2
  %24 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load17.i.i = load i8, ptr %integer.i.i, align 4
  %25 = and i8 %bf.load17.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %25)
  %.not.i.i = icmp eq i8 %25, 96
  br i1 %.not.i.i, label %if.then29.i.i, label %if.end16.i.i.if.end36.i.i_crit_edge

if.end16.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36.i.i

if.then29.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %max1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max1.i.i, align 4
  %dec.i.i = add i32 %27, -1
  store i32 %dec.i.i, ptr %max1.i.i, align 4
  %bf.clear33.i.i = and i8 %bf.load17.i.i, -65
  %28 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.clear33.i.i, ptr %integer.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then29.i.i, %if.end16.i.i.if.end36.i.i_crit_edge
  %29 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i53.i, align 4
  %31 = ptrtoint ptr %max1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i.i.i = icmp ugt i32 %30, %32
  br i1 %cmp.i.i.i, label %if.end36.i.i.if.then38.i.i_crit_edge, label %lor.rhs.i.i.i

if.end36.i.i.if.then38.i.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then38.i.i

lor.rhs.i.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp3.i.i.i = icmp eq i32 %30, %32
  br i1 %cmp3.i.i.i, label %land.rhs.i.i.i, label %lor.rhs.i.i.i.if.end26.i_crit_edge

lor.rhs.i.i.i.if.end26.i_crit_edge:               ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i

land.rhs.i.i.i:                                   ; preds = %lor.rhs.i.i.i
  %33 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i.i = load i8, ptr %integer.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i.i)
  %tobool37.not.i.i = icmp ult i8 %bf.load.i.i.i, 64
  br i1 %tobool37.not.i.i, label %land.rhs.i.i.i.if.end26.i_crit_edge, label %land.rhs.i.i.i.if.then38.i.i_crit_edge

land.rhs.i.i.i.if.then38.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then38.i.i

land.rhs.i.i.i.if.end26.i_crit_edge:              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i

if.then38.i.i:                                    ; preds = %land.rhs.i.i.i.if.then38.i.i_crit_edge, %if.end36.i.i.if.then38.i.i_crit_edge
  %34 = ptrtoint ptr %integer.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i55.i.i = load i8, ptr %integer.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i55.i.i, 16
  store i8 %bf.set.i.i.i, ptr %integer.i.i, align 4
  br label %cleanup9

if.end26.i:                                       ; preds = %land.rhs.i.i.i.if.end26.i_crit_edge, %lor.rhs.i.i.i.if.end26.i_crit_edge
  br i1 %cmp27.i, label %if.end26.i.if.then28.i_crit_edge, label %if.end26.i.if.end_crit_edge

if.end26.i.if.end_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end26.i.if.then28.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then28.i

if.then28.i:                                      ; preds = %if.end26.i.if.then28.i_crit_edge, %snd_mask_empty.exit.i.i.if.then28.i_crit_edge, %snd_mask_reset_range.exit.i.i.if.then28.i_crit_edge
  %shl.i = shl nuw i32 1, %var
  %cmask.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 6
  %35 = ptrtoint ptr %cmask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmask.i, align 4
  %or.i = or i32 %36, %shl.i
  store i32 %or.i, ptr %cmask.i, align 4
  %rmask.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 5
  %37 = ptrtoint ptr %rmask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rmask.i, align 4
  %or30.i = or i32 %38, %shl.i
  store i32 %or30.i, ptr %rmask.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then28.i, %if.end26.i.if.end_crit_edge, %snd_mask_max.exit.i.i.if.end_crit_edge, %for.inc.i.i.i.if.end_crit_edge
  %rmask = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 5
  %39 = ptrtoint ptr %rmask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool1.not = icmp eq i32 %40, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @snd_pcm_hw_refine(ptr noundef %pcm, ptr noundef %params) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then2.cleanup9_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then2.cleanup9_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup9

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br i1 %cmp1.i.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  br i1 %tobool.not, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dir, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 %var
  %arrayidx.i23.i = getelementptr [8 x i32], ptr %arrayidx.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i20 = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i20, label %for.inc.i.i, label %if.end.i.if.then.i.i21_crit_edge

if.end.i.if.then.i.i21_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i21

if.then.i.i21:                                    ; preds = %for.inc.i.i.if.then.i.i21_crit_edge, %if.end.i.if.then.i.i21_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 32, %if.end.i.if.then.i.i21_crit_edge ], [ 0, %for.inc.i.i.if.then.i.i21_crit_edge ]
  %.lcssa.i.i = phi i32 [ %43, %if.end.i.if.then.i.i21_crit_edge ], [ %47, %for.inc.i.i.if.then.i.i21_crit_edge ]
  %44 = tail call i32 @llvm.ctlz.i32(i32 %.lcssa.i.i, i1 true) #18, !range !190
  %45 = or i32 %44, %i.09.lcssa.i.i
  %add.i.i = xor i32 %45, 31
  br label %cleanup9

for.inc.i.i:                                      ; preds = %if.end.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.1.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup9_crit_edge, label %for.inc.i.i.if.then.i.i21_crit_edge

for.inc.i.i.if.then.i.i21_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i21

for.inc.i.i.cleanup9_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup9

if.end5.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %var)
  %cmp.i.i22 = icmp ult i32 %var, 8
  br i1 %cmp.i.i22, label %if.end5.i.cleanup9_crit_edge, label %if.then8.i

if.end5.i.cleanup9_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup9

if.then8.i:                                       ; preds = %if.end5.i
  %sub.i.i23 = add nsw i32 %var, -8
  br i1 %tobool.not, label %if.then8.i.if.end12.i_crit_edge, label %if.then11.i

if.then8.i.if.end12.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #20
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i23, i32 2
  %48 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %openmax.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %sub.i24 = sub nsw i32 0, %bf.cast.i
  %49 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i24, ptr %dir, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.then8.i.if.end12.i_crit_edge
  %max.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i23, i32 1
  %50 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max.i.i, align 4
  %openmax.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i.i23, i32 2
  %52 = ptrtoint ptr %openmax.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i.i25 = load i8, ptr %openmax.i.i, align 4
  %53 = shl i8 %bf.load.i.i25, 1
  %sext.i.i = ashr i8 %53, 7
  %dec.i.i26 = sext i8 %sext.i.i to i32
  %spec.select.i.i = add i32 %51, %dec.i.i26
  br label %cleanup9

cleanup9:                                         ; preds = %if.end12.i, %if.end5.i.cleanup9_crit_edge, %for.inc.i.i.cleanup9_crit_edge, %if.then.i.i21, %if.then2.cleanup9_crit_edge, %if.then38.i.i, %if.else18.i.cleanup9_crit_edge, %snd_mask_empty.exit.i.i.cleanup9_crit_edge, %if.then10.i
  %retval.1 = phi i32 [ %call3, %if.then2.cleanup9_crit_edge ], [ %spec.select.i.i, %if.end12.i ], [ -22, %if.end5.i.cleanup9_crit_edge ], [ %add.i.i, %if.then.i.i21 ], [ 0, %for.inc.i.i.cleanup9_crit_edge ], [ -22, %if.else18.i.cleanup9_crit_edge ], [ -22, %if.then38.i.i ], [ -22, %snd_mask_empty.exit.i.i.cleanup9_crit_edge ], [ -22, %if.then10.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_param_last(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_param_first(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plug_client_channels_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plug_read_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_write1(ptr noundef %substream, ptr noundef %buf, i32 noundef %bytes) unnamed_addr #2 align 64 {
entry:
  %channels.i206 = alloca ptr, align 4
  %channels.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %2 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %rw_ref = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 17
  %call.i.i196 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %rw_ref, i32 1, i32 3, i32 1) #18
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_ref, ptr %rw_ref, i32 1, ptr elementtype(i32) %rw_ref) #18, !srcloc !187
  %params_lock = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 16
  %period_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 7
  %buffer_used = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 15
  %bytes100 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 12
  %f_flags105 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 21
  %buffer = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 14
  %partialfrag = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 24, i32 1, i32 1
  %period_ptr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 9
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %if.end
  %buf.addr.0 = phi ptr [ %buf, %if.end ], [ %buf.addr.1273, %signal_pending.exit.while.cond_crit_edge ]
  %bytes.addr.0 = phi i32 [ %bytes, %if.end ], [ %bytes.addr.1274, %signal_pending.exit.while.cond_crit_edge ]
  %xfer.0 = phi i32 [ 0, %if.end ], [ %xfer.1275, %signal_pending.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0)
  %cmp.not = icmp eq i32 %bytes.addr.0, 0
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end6:                                          ; preds = %while.body
  %5 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime1, align 4
  %oss.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 59
  %7 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %oss.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end6.if.end3.i_crit_edge, label %if.then.i199

if.end6.if.end3.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

if.then.i199:                                     ; preds = %if.end6
  %call.i = call fastcc i32 @snd_pcm_oss_change_params_locked(ptr noundef %substream) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i199.err.thread_crit_edge, label %if.then.i199.if.end3.i_crit_edge

if.then.i199.if.end3.i_crit_edge:                 ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

if.then.i199.err.thread_crit_edge:                ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread

if.end3.i:                                        ; preds = %if.then.i199.if.end3.i_crit_edge, %if.end6.if.end3.i_crit_edge
  %8 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load5.i = load i8, ptr %oss.i, align 8
  %9 = and i8 %bf.load5.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %if.end3.i.if.end10_crit_edge, label %if.then9.i

if.end3.i.if.end10_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then9.i:                                       ; preds = %if.end3.i
  %10 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime1, align 4
  %call.i.i200 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16704, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i200)
  %cmp.i.i201 = icmp slt i32 %call.i.i200, 0
  br i1 %cmp.i.i201, label %do.body.i.i, label %snd_pcm_oss_prepare.exit.thread24.i

do.body.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_write1, %snd_pcm_oss_prepare.exit.thread.i)) #18
          to label %err [label %snd_pcm_oss_prepare.exit.thread.i], !srcloc !155

snd_pcm_oss_prepare.exit.thread.i:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %substream, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, ptr noundef %17, ptr noundef nonnull @.str.3) #18
  br label %err.thread

snd_pcm_oss_prepare.exit.thread24.i:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  %oss.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59
  %18 = ptrtoint ptr %oss.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %oss.i.i, align 8
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %oss.i.i, align 8
  %prev_hw_ptr_period.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 20
  %19 = ptrtoint ptr %prev_hw_ptr_period.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %prev_hw_ptr_period.i.i, align 8
  %period_ptr.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 9
  %20 = ptrtoint ptr %period_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %period_ptr.i.i, align 4
  %buffer_used.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 15
  %21 = ptrtoint ptr %buffer_used.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %buffer_used.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %snd_pcm_oss_prepare.exit.thread24.i, %if.end3.i.if.end10_crit_edge
  %22 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.0, i32 %23)
  %cmp12 = icmp ult i32 %bytes.addr.0, %23
  br i1 %cmp12, label %if.end10.if.then15_crit_edge, label %lor.lhs.false

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end10
  %24 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp14.not = icmp eq i32 %25, 0
  br i1 %cmp14.not, label %if.else92, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end10.if.then15_crit_edge
  %26 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_used, align 4
  %add = add i32 %27, %bytes.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp20 = icmp ugt i32 %add, %23
  %sub = sub i32 %23, %27
  %spec.select = select i1 %cmp20, i32 %sub, i32 %bytes.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp27 = icmp sgt i32 %spec.select, 0
  br i1 %cmp27, label %if.then28, label %if.then15.if.end36_crit_edge

if.then15.if.end36_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then28:                                        ; preds = %if.then15
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 %27
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %spec.select, i1 noundef zeroext false) #18
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #18
  %call.i.i197 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i197, label %if.then28.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then28.if.then11.i.i_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then28
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %spec.select, i32 -1226833920) #24, !srcloc !191
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !186

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %spec.select) #18
  %31 = call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !157
  %and.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf.addr.0, i32 noundef %spec.select) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end36_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !186

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i

if.end.i.i.if.end36_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then28.if.then11.i.i_crit_edge
  %res.0.i.i250 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %spec.select, %if.then28.if.then11.i.i_crit_edge ], [ %spec.select, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %spec.select, %res.0.i.i250
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i250)
  br label %err.thread

if.end36:                                         ; preds = %if.end.i.i.if.end36_crit_edge, %if.then15.if.end36_crit_edge
  %35 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buffer_used, align 4
  %add39 = add i32 %36, %spec.select
  store i32 %add39, ptr %buffer_used, align 4
  %add.ptr40 = getelementptr i8, ptr %buf.addr.0, i32 %spec.select
  %sub41 = sub i32 %bytes.addr.0, %spec.select
  %add42 = add i32 %spec.select, %xfer.0
  %37 = ptrtoint ptr %partialfrag to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %partialfrag, align 4
  %38 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool44.not = icmp eq i8 %38, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %if.end36.if.then51_crit_edge

if.end36.if.then51_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then51

lor.lhs.false45:                                  ; preds = %if.end36
  %39 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %period_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %40)
  %cmp50 = icmp eq i32 %add39, %40
  br i1 %cmp50, label %lor.lhs.false45.if.then51_crit_edge, label %lor.lhs.false45.err_crit_edge

lor.lhs.false45.err_crit_edge:                    ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

lor.lhs.false45.if.then51_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false45.if.then51_crit_edge, %if.end36.if.then51_crit_edge
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 8
  %43 = ptrtoint ptr %period_ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %period_ptr, align 4
  %add.ptr55 = getelementptr i8, ptr %42, i32 %44
  %sub60 = sub i32 %add39, %44
  %45 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %runtime1, align 4
  %plugin_first.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %46, i32 0, i32 59, i32 18
  %47 = ptrtoint ptr %plugin_first.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %plugin_first.i, align 8
  %tobool.not.i203 = icmp eq ptr %48, null
  br i1 %tobool.not.i203, label %if.else.i, label %if.then.i204

if.then.i204:                                     ; preds = %if.then51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channels.i) #18
  %49 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %channels.i, align 4, !annotation !156
  %src_width.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %48, i32 0, i32 4
  %50 = ptrtoint ptr %src_width.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src_width.i, align 4
  %channels6.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %48, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %channels6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channels6.i, align 4
  %mul.i = mul i32 %53, %51
  %div60.i = lshr i32 %mul.i, 3
  %div15.i = udiv i32 %sub60, %div60.i
  %call16.i = call i32 @snd_pcm_plug_client_channels_buf(ptr noundef %substream, ptr noundef %add.ptr55, i32 noundef %div15.i, ptr noundef nonnull %channels.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i205 = icmp slt i32 %call16.i, 0
  br i1 %cmp.i205, label %if.then.i204.cleanup.thread.i_crit_edge, label %if.end18.i

if.then.i204.cleanup.thread.i_crit_edge:          ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

if.end18.i:                                       ; preds = %if.then.i204
  %54 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %channels.i, align 4
  %call19.i = call i32 @snd_pcm_plug_write_transfer(ptr noundef %substream, ptr noundef %55, i32 noundef %call16.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 1
  br i1 %cmp20.i, label %if.end18.i.cleanup.thread.i_crit_edge, label %cleanup.i

if.end18.i.cleanup.thread.i_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end18.i.cleanup.thread.i_crit_edge, %if.then.i204.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call19.i, %if.end18.i.cleanup.thread.i_crit_edge ], [ %call16.i, %if.then.i204.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i) #18
  br label %err

cleanup.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul23.i = mul i32 %call19.i, %div60.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i) #18
  br label %snd_pcm_oss_write2.exit

if.else.i:                                        ; preds = %if.then51
  %mul.i.i = shl i32 %sub60, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %46, i32 0, i32 21
  %56 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %57
  %call26.i = call i32 @snd_pcm_oss_write3(ptr noundef %substream, ptr noundef %add.ptr55, i32 noundef %div.i.i, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 1
  br i1 %cmp27.i, label %if.else.i.err_crit_edge, label %if.end29.i

if.else.i.err_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end29.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %58 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i62.i = mul i32 %59, %call26.i
  %div1.i.i = lshr i32 %mul.i62.i, 3
  br label %snd_pcm_oss_write2.exit

snd_pcm_oss_write2.exit:                          ; preds = %if.end29.i, %cleanup.i
  %retval.1.i = phi i32 [ %mul23.i, %cleanup.i ], [ %div1.i.i, %if.end29.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.1.i)
  %cmp62 = icmp slt i32 %retval.1.i, 1
  br i1 %cmp62, label %snd_pcm_oss_write2.exit.err_crit_edge, label %if.end64

snd_pcm_oss_write2.exit.err_crit_edge:            ; preds = %snd_pcm_oss_write2.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end64:                                         ; preds = %snd_pcm_oss_write2.exit
  %60 = ptrtoint ptr %bytes100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bytes100, align 8
  %add67 = add i32 %61, %retval.1.i
  store i32 %add67, ptr %bytes100, align 8
  %62 = ptrtoint ptr %period_ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %period_ptr, align 4
  %add70 = add i32 %63, %retval.1.i
  %64 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %period_bytes, align 4
  %rem = urem i32 %add70, %65
  store i32 %rem, ptr %period_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp77 = icmp eq i32 %rem, 0
  br i1 %cmp77, label %if.end64.if.then84_crit_edge, label %lor.lhs.false78

if.end64.if.then84_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then84

lor.lhs.false78:                                  ; preds = %if.end64
  %66 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buffer_used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %67)
  %cmp83 = icmp eq i32 %rem, %67
  br i1 %cmp83, label %lor.lhs.false78.if.then84_crit_edge, label %if.else

lor.lhs.false78.if.then84_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then84

if.then84:                                        ; preds = %lor.lhs.false78.if.then84_crit_edge, %if.end64.if.then84_crit_edge
  %68 = ptrtoint ptr %buffer_used to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %buffer_used, align 4
  br label %err.thread267

if.else:                                          ; preds = %lor.lhs.false78
  %69 = ptrtoint ptr %f_flags105 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %f_flags105, align 4
  %and = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp87.not = icmp eq i32 %and, 0
  br i1 %cmp87.not, label %if.else.err.thread267_crit_edge, label %if.else.err.thread_crit_edge

if.else.err.thread_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread

if.else.err.thread267_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread267

if.else92:                                        ; preds = %lor.lhs.false
  %71 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %runtime1, align 4
  %plugin_first.i208 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %72, i32 0, i32 59, i32 18
  %73 = ptrtoint ptr %plugin_first.i208 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %plugin_first.i208, align 8
  %tobool.not.i209 = icmp eq ptr %74, null
  br i1 %tobool.not.i209, label %if.else.i233, label %if.then.i214

if.then.i214:                                     ; preds = %if.else92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channels.i206) #18
  %75 = ptrtoint ptr %channels.i206 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 -1 to ptr), ptr %channels.i206, align 4, !annotation !156
  %src_width.i210 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %74, i32 0, i32 4
  %76 = ptrtoint ptr %src_width.i210 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %src_width.i210, align 4
  %channels6.i211 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %74, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %channels6.i211 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channels6.i211, align 4
  %mul.i212 = mul i32 %79, %77
  %div60.i213 = lshr i32 %mul.i212, 3
  %buffer.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %72, i32 0, i32 59, i32 14
  %80 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.i.i.i = icmp slt i32 %23, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then.i214
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.cleanup.thread.i225_crit_edge, label %if.then27.i.i.i, !prof !186

land.rhs16.i.i.i.cleanup.thread.i225_crit_edge:   ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i225

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %cleanup.thread.i225

if.then.i.i.i.i:                                  ; preds = %if.then.i214
  call void @__check_object_size(ptr noundef %81, i32 noundef %23, i1 noundef zeroext false) #18
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #18
  %call.i.i.i216 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i.i216, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %82 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %23, i32 -1226833920) #24, !srcloc !191
  %asmresult.i.i.i = extractvalue { i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !186

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %81, i32 noundef %23) #18
  %83 = call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 4
  %85 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #13, !srcloc !157
  %and.i.i.i.i.i = and i32 %85, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %81, ptr noundef %buf.addr.0, i32 noundef %23) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #18, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !159
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %23, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %23, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.then11.i.i.i, !prof !186

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i.i = sub i32 %23, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %81, i32 %sub.i.i.i
  %86 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %cleanup.thread.i225

if.end.i:                                         ; preds = %if.end.i.i.i
  %87 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buffer.i, align 8
  %div15.i218 = udiv i32 %23, %div60.i213
  %call16.i219 = call i32 @snd_pcm_plug_client_channels_buf(ptr noundef %substream, ptr noundef %88, i32 noundef %div15.i218, ptr noundef nonnull %channels.i206) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i219)
  %cmp.i220 = icmp slt i32 %call16.i219, 0
  br i1 %cmp.i220, label %if.end.i.cleanup.thread.i225_crit_edge, label %if.end18.i223

if.end.i.cleanup.thread.i225_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i225

if.end18.i223:                                    ; preds = %if.end.i
  %89 = ptrtoint ptr %channels.i206 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %channels.i206, align 4
  %call19.i221 = call i32 @snd_pcm_plug_write_transfer(ptr noundef %substream, ptr noundef %90, i32 noundef %call16.i219) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i221)
  %cmp20.i222 = icmp slt i32 %call19.i221, 1
  br i1 %cmp20.i222, label %if.end18.i223.cleanup.thread.i225_crit_edge, label %cleanup.i227

if.end18.i223.cleanup.thread.i225_crit_edge:      ; preds = %if.end18.i223
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i225

cleanup.thread.i225:                              ; preds = %if.end18.i223.cleanup.thread.i225_crit_edge, %if.end.i.cleanup.thread.i225_crit_edge, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.cleanup.thread.i225_crit_edge
  %retval.0.ph.i224 = phi i32 [ %call19.i221, %if.end18.i223.cleanup.thread.i225_crit_edge ], [ %call16.i219, %if.end.i.cleanup.thread.i225_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.cleanup.thread.i225_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i206) #18
  br label %err

cleanup.i227:                                     ; preds = %if.end18.i223
  call void @__sanitizer_cov_trace_pc() #20
  %mul23.i226 = mul i32 %call19.i221, %div60.i213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i206) #18
  br label %snd_pcm_oss_write2.exit238

if.else.i233:                                     ; preds = %if.else92
  %mul.i.i228 = shl i32 %23, 3
  %frame_bits.i.i229 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %72, i32 0, i32 21
  %91 = ptrtoint ptr %frame_bits.i.i229 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %frame_bits.i.i229, align 8
  %div.i.i230 = udiv i32 %mul.i.i228, %92
  %call26.i231 = call i32 @snd_pcm_oss_write3(ptr noundef %substream, ptr noundef %buf.addr.0, i32 noundef %div.i.i230, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26.i231)
  %cmp27.i232 = icmp slt i32 %call26.i231, 1
  br i1 %cmp27.i232, label %if.else.i233.err_crit_edge, label %if.end29.i236

if.else.i233.err_crit_edge:                       ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end29.i236:                                    ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #20
  %93 = ptrtoint ptr %frame_bits.i.i229 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %frame_bits.i.i229, align 8
  %mul.i62.i234 = mul i32 %94, %call26.i231
  %div1.i.i235 = lshr i32 %mul.i62.i234, 3
  br label %snd_pcm_oss_write2.exit238

snd_pcm_oss_write2.exit238:                       ; preds = %if.end29.i236, %cleanup.i227
  %retval.1.i237 = phi i32 [ %mul23.i226, %cleanup.i227 ], [ %div1.i.i235, %if.end29.i236 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.1.i237)
  %cmp96 = icmp slt i32 %retval.1.i237, 1
  br i1 %cmp96, label %snd_pcm_oss_write2.exit238.err_crit_edge, label %if.end98

snd_pcm_oss_write2.exit238.err_crit_edge:         ; preds = %snd_pcm_oss_write2.exit238
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end98:                                         ; preds = %snd_pcm_oss_write2.exit238
  %95 = ptrtoint ptr %bytes100 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bytes100, align 8
  %add101 = add i32 %96, %retval.1.i237
  store i32 %add101, ptr %bytes100, align 8
  %add.ptr102 = getelementptr i8, ptr %buf.addr.0, i32 %retval.1.i237
  %sub103 = sub i32 %bytes.addr.0, %retval.1.i237
  %add104 = add i32 %retval.1.i237, %xfer.0
  %97 = ptrtoint ptr %f_flags105 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %f_flags105, align 4
  %and106 = and i32 %98, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %cmp107.not = icmp eq i32 %and106, 0
  br i1 %cmp107.not, label %if.end98.err.thread267_crit_edge, label %land.lhs.true

if.end98.err.thread267_crit_edge:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread267

land.lhs.true:                                    ; preds = %if.end98
  %99 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %period_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i237, i32 %100)
  %cmp110.not = icmp eq i32 %retval.1.i237, %100
  br i1 %cmp110.not, label %land.lhs.true.err.thread267_crit_edge, label %land.lhs.true.err.thread_crit_edge

land.lhs.true.err.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread

land.lhs.true.err.thread267_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread267

err.thread:                                       ; preds = %land.lhs.true.err.thread_crit_edge, %if.else.err.thread_crit_edge, %if.then11.i.i, %snd_pcm_oss_prepare.exit.thread.i, %if.then.i199.err.thread_crit_edge
  %xfer.1.ph = phi i32 [ %xfer.0, %snd_pcm_oss_prepare.exit.thread.i ], [ %xfer.0, %if.then11.i.i ], [ %xfer.0, %if.then.i199.err.thread_crit_edge ], [ %add42, %if.else.err.thread_crit_edge ], [ %add104, %land.lhs.true.err.thread_crit_edge ]
  %tmp.2.ph = phi i32 [ %call.i.i200, %snd_pcm_oss_prepare.exit.thread.i ], [ -14, %if.then11.i.i ], [ %call.i, %if.then.i199.err.thread_crit_edge ], [ -11, %if.else.err.thread_crit_edge ], [ -11, %land.lhs.true.err.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %params_lock) #18
  br label %while.end

err.thread267:                                    ; preds = %land.lhs.true.err.thread267_crit_edge, %if.end98.err.thread267_crit_edge, %if.else.err.thread267_crit_edge, %if.then84
  %buf.addr.1.ph = phi ptr [ %add.ptr102, %if.end98.err.thread267_crit_edge ], [ %add.ptr40, %if.then84 ], [ %add.ptr40, %if.else.err.thread267_crit_edge ], [ %add.ptr102, %land.lhs.true.err.thread267_crit_edge ]
  %bytes.addr.1.ph = phi i32 [ %sub103, %if.end98.err.thread267_crit_edge ], [ %sub41, %if.then84 ], [ %sub41, %if.else.err.thread267_crit_edge ], [ %sub103, %land.lhs.true.err.thread267_crit_edge ]
  %xfer.1.ph265 = phi i32 [ %add104, %if.end98.err.thread267_crit_edge ], [ %add42, %if.then84 ], [ %add42, %if.else.err.thread267_crit_edge ], [ %add104, %land.lhs.true.err.thread267_crit_edge ]
  call void @mutex_unlock(ptr noundef %params_lock) #18
  br label %if.end118

err:                                              ; preds = %snd_pcm_oss_write2.exit238.err_crit_edge, %if.else.i233.err_crit_edge, %cleanup.thread.i225, %snd_pcm_oss_write2.exit.err_crit_edge, %if.else.i.err_crit_edge, %cleanup.thread.i, %lor.lhs.false45.err_crit_edge, %do.body.i.i
  %buf.addr.1 = phi ptr [ %add.ptr40, %snd_pcm_oss_write2.exit.err_crit_edge ], [ %add.ptr40, %lor.lhs.false45.err_crit_edge ], [ %buf.addr.0, %snd_pcm_oss_write2.exit238.err_crit_edge ], [ %buf.addr.0, %do.body.i.i ], [ %add.ptr40, %if.else.i.err_crit_edge ], [ %add.ptr40, %cleanup.thread.i ], [ %buf.addr.0, %if.else.i233.err_crit_edge ], [ %buf.addr.0, %cleanup.thread.i225 ]
  %bytes.addr.1 = phi i32 [ %sub41, %snd_pcm_oss_write2.exit.err_crit_edge ], [ %sub41, %lor.lhs.false45.err_crit_edge ], [ %bytes.addr.0, %snd_pcm_oss_write2.exit238.err_crit_edge ], [ %bytes.addr.0, %do.body.i.i ], [ %sub41, %if.else.i.err_crit_edge ], [ %sub41, %cleanup.thread.i ], [ %bytes.addr.0, %if.else.i233.err_crit_edge ], [ %bytes.addr.0, %cleanup.thread.i225 ]
  %xfer.1 = phi i32 [ %add42, %snd_pcm_oss_write2.exit.err_crit_edge ], [ %add42, %lor.lhs.false45.err_crit_edge ], [ %xfer.0, %snd_pcm_oss_write2.exit238.err_crit_edge ], [ %xfer.0, %do.body.i.i ], [ %add42, %if.else.i.err_crit_edge ], [ %add42, %cleanup.thread.i ], [ %xfer.0, %if.else.i233.err_crit_edge ], [ %xfer.0, %cleanup.thread.i225 ]
  %tmp.2 = phi i32 [ %retval.1.i, %snd_pcm_oss_write2.exit.err_crit_edge ], [ %spec.select, %lor.lhs.false45.err_crit_edge ], [ %retval.1.i237, %snd_pcm_oss_write2.exit238.err_crit_edge ], [ %call.i.i200, %do.body.i.i ], [ %call26.i, %if.else.i.err_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %call26.i231, %if.else.i233.err_crit_edge ], [ %retval.0.ph.i224, %cleanup.thread.i225 ]
  call void @mutex_unlock(ptr noundef %params_lock) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.2)
  %cmp116 = icmp slt i32 %tmp.2, 0
  br i1 %cmp116, label %err.while.end_crit_edge, label %err.if.end118_crit_edge

err.if.end118_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end118

err.while.end_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end118:                                        ; preds = %err.if.end118_crit_edge, %err.thread267
  %xfer.1275 = phi i32 [ %xfer.1.ph265, %err.thread267 ], [ %xfer.1, %err.if.end118_crit_edge ]
  %bytes.addr.1274 = phi i32 [ %bytes.addr.1.ph, %err.thread267 ], [ %bytes.addr.1, %err.if.end118_crit_edge ]
  %buf.addr.1273 = phi ptr [ %buf.addr.1.ph, %err.thread267 ], [ %buf.addr.1, %err.if.end118_crit_edge ]
  %101 = call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %stack.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  %109 = and i32 %108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i239 = icmp eq i32 %109, 0
  br i1 %tobool.not.i239, label %signal_pending.exit, label %if.end118.while.end_crit_edge, !prof !186

if.end118.while.end_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

signal_pending.exit:                              ; preds = %if.end118
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %106, align 4
  %and1.i.i.i.i.i = and i32 %111, 1
  %tobool121.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool121.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.end:                                        ; preds = %signal_pending.exit.while.end_crit_edge, %if.end118.while.end_crit_edge, %err.while.end_crit_edge, %err.thread, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %xfer.2 = phi i32 [ %xfer.1.ph, %err.thread ], [ %xfer.1275, %if.end118.while.end_crit_edge ], [ %xfer.1275, %signal_pending.exit.while.end_crit_edge ], [ %xfer.0, %while.body.while.end_crit_edge ], [ %xfer.0, %while.cond.while.end_crit_edge ], [ %xfer.1, %err.while.end_crit_edge ]
  %tmp.3 = phi i32 [ %tmp.2.ph, %err.thread ], [ -512, %if.end118.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -512, %while.body.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ], [ %tmp.2, %err.while.end_crit_edge ]
  %call.i.i198 = call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %rw_ref, i32 1, i32 3, i32 1) #18
  %112 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_ref, ptr %rw_ref, i32 1, ptr elementtype(i32) %rw_ref) #18, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfer.2)
  %cmp126.not = icmp eq i32 %xfer.2, 0
  %tmp.3.xfer.2 = select i1 %cmp126.not, i32 %tmp.3, i32 %xfer.2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tmp.3.xfer.2, %while.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plug_write_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_set_trigger(ptr nocapture noundef readonly %pcm_oss_file, i32 noundef %trigger) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_oss_file, align 4
  %arrayidx2 = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @snd_pcm_oss_make_ready(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end4.if.end11_crit_edge, label %if.then6

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  %call7 = tail call fastcc i32 @snd_pcm_oss_make_ready(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  br i1 %tobool.not, label %if.end11.if.end60_crit_edge, label %if.then13

if.end11.if.end60_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

if.then13:                                        ; preds = %if.end11
  %runtime14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %runtime14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime14, align 4
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59
  %params_lock = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 16
  %call15 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %and = and i32 %trigger, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load34 = load i8, ptr %oss, align 8
  %7 = and i8 %bf.load34, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool38.not = icmp eq i8 %7, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  br i1 %tobool38.not, label %if.end24, label %if.then20._skip1.thread_crit_edge

if.then20._skip1.thread_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %_skip1.thread

if.end24:                                         ; preds = %if.then20
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %8 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not = icmp eq i32 %9, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  %hw_ptr_interrupt.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %hw_ptr_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_ptr_interrupt.i, align 8
  %12 = ptrtoint ptr %runtime14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime14, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size.i, align 4
  %add.i = add i32 %15, %11
  %boundary.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 33
  %16 = ptrtoint ptr %boundary.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %boundary.i, align 8
  %rem.i = urem i32 %add.i, %17
  %control.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 38
  %18 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %control.i, align 8
  %appl_ptr2.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %appl_ptr2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem.i, ptr %appl_ptr2.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %21 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load31 = load i8, ptr %oss, align 8
  %bf.set = or i8 %bf.load31, 32
  store i8 %bf.set, ptr %oss, align 8
  %start_threshold = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 29
  %22 = ptrtoint ptr %start_threshold to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %start_threshold, align 8
  br label %if.then54

if.else:                                          ; preds = %if.end18
  br i1 %tobool38.not, label %if.else._skip1.thread_crit_edge, label %if.end40

if.else._skip1.thread_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %_skip1.thread

if.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %boundary = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 33
  %23 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %boundary, align 8
  %start_threshold45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 29
  %25 = ptrtoint ptr %start_threshold45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %start_threshold45, align 8
  %bf.clear48 = and i8 %bf.load34, -97
  %bf.set49 = or i8 %bf.clear48, 64
  %26 = ptrtoint ptr %oss to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.set49, ptr %oss, align 8
  br label %if.then54

_skip1.thread:                                    ; preds = %if.else._skip1.thread_crit_edge, %if.then20._skip1.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  br label %if.end60

if.then54:                                        ; preds = %if.end40, %if.end29
  %cmd.0 = phi i32 [ 16706, %if.end29 ], [ 16707, %if.end40 ]
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  %call55 = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %1, i32 noundef %cmd.0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then54.cleanup_crit_edge, label %if.then54.if.end60_crit_edge

if.then54.if.end60_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end60:                                         ; preds = %if.then54.if.end60_crit_edge, %_skip1.thread, %if.end11.if.end60_crit_edge
  br i1 %tobool5.not, label %if.end60.if.end115_crit_edge, label %if.then62

if.end60.if.end115_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end115

if.then62:                                        ; preds = %if.end60
  %runtime63 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %27 = ptrtoint ptr %runtime63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime63, align 4
  %oss64 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 59
  %params_lock65 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 59, i32 16
  %call66 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock65, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end69:                                         ; preds = %if.then62
  %and70 = and i32 %trigger, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %29 = ptrtoint ptr %oss64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load88 = load i8, ptr %oss64, align 8
  %30 = and i8 %bf.load88, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool92.not = icmp eq i8 %30, 0
  br i1 %tobool71.not, label %if.else86, label %if.then72

if.then72:                                        ; preds = %if.end69
  br i1 %tobool92.not, label %if.end80, label %if.then72._skip2.thread_crit_edge

if.then72._skip2.thread_crit_edge:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #20
  br label %_skip2.thread

if.end80:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set84 = or i8 %bf.load88, 32
  %31 = ptrtoint ptr %oss64 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.set84, ptr %oss64, align 8
  %start_threshold85 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 29
  %32 = ptrtoint ptr %start_threshold85 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %start_threshold85, align 8
  br label %if.then109

if.else86:                                        ; preds = %if.end69
  br i1 %tobool92.not, label %if.else86._skip2.thread_crit_edge, label %if.end94

if.else86._skip2.thread_crit_edge:                ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #20
  br label %_skip2.thread

if.end94:                                         ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #20
  %boundary99 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 33
  %33 = ptrtoint ptr %boundary99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %boundary99, align 8
  %start_threshold100 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 29
  %35 = ptrtoint ptr %start_threshold100 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %start_threshold100, align 8
  %bf.clear103 = and i8 %bf.load88, -97
  %bf.set104 = or i8 %bf.clear103, 64
  %36 = ptrtoint ptr %oss64 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %bf.set104, ptr %oss64, align 8
  br label %if.then109

_skip2.thread:                                    ; preds = %if.else86._skip2.thread_crit_edge, %if.then72._skip2.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock65) #18
  br label %if.end115

if.then109:                                       ; preds = %if.end94, %if.end80
  %cmd.1 = phi i32 [ 16706, %if.end80 ], [ 16707, %if.end94 ]
  tail call void @mutex_unlock(ptr noundef %params_lock65) #18
  %call110 = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %3, i32 noundef %cmd.1, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then109.cleanup_crit_edge, label %if.then109.if.end115_crit_edge

if.then109.if.end115_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end115

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end115:                                        ; preds = %if.then109.if.end115_crit_edge, %_skip2.thread, %if.end60.if.end115_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then109.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end115 ], [ %call, %if.then.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ -512, %if.then13.cleanup_crit_edge ], [ %call55, %if.then54.cleanup_crit_edge ], [ -512, %if.then62.cleanup_crit_edge ], [ %call110, %if.then109.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_make_ready(ptr noundef %substream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %oss, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then:                                          ; preds = %entry
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 16
  %call6.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %snd_pcm_oss_change_params.exit, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

snd_pcm_oss_change_params.exit:                   ; preds = %if.then
  %call11.i = tail call fastcc i32 @snd_pcm_oss_change_params_locked(ptr noundef %substream) #18
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp = icmp slt i32 %call11.i, 0
  br i1 %cmp, label %snd_pcm_oss_change_params.exit.cleanup_crit_edge, label %snd_pcm_oss_change_params.exit.if.end3_crit_edge

snd_pcm_oss_change_params.exit.if.end3_crit_edge: ; preds = %snd_pcm_oss_change_params.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

snd_pcm_oss_change_params.exit.cleanup_crit_edge: ; preds = %snd_pcm_oss_change_params.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %snd_pcm_oss_change_params.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %3 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load5 = load i8, ptr %oss, align 8
  %4 = and i8 %bf.load5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool8.not = icmp eq i8 %4, 0
  br i1 %tobool8.not, label %if.end3.cleanup_crit_edge, label %if.then9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then9:                                         ; preds = %if.end3
  %params_lock = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 16
  %call11 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %5 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime1, align 4
  %call.i = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef %substream, i32 noundef 16704, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %snd_pcm_oss_prepare.exit.thread37

do.body.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_pcm_oss_make_ready, %snd_pcm_oss_prepare.exit.thread)) #18
          to label %cleanup.sink.split [label %snd_pcm_oss_prepare.exit.thread], !srcloc !155

snd_pcm_oss_prepare.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %substream, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, ptr noundef %12, ptr noundef nonnull @.str.3) #18
  br label %cleanup.sink.split

snd_pcm_oss_prepare.exit.thread37:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %oss.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 59
  %13 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %oss.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %oss.i, align 8
  %prev_hw_ptr_period.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 59, i32 20
  %14 = ptrtoint ptr %prev_hw_ptr_period.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %prev_hw_ptr_period.i, align 8
  %period_ptr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 59, i32 9
  %15 = ptrtoint ptr %period_ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %period_ptr.i, align 4
  %buffer_used.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 59, i32 15
  %16 = ptrtoint ptr %buffer_used.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buffer_used.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %snd_pcm_oss_prepare.exit.thread37, %snd_pcm_oss_prepare.exit.thread, %do.body.i
  %retval.0.ph = phi i32 [ 0, %snd_pcm_oss_prepare.exit.thread37 ], [ %call.i, %snd_pcm_oss_prepare.exit.thread ], [ %call.i, %do.body.i ]
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %snd_pcm_oss_change_params.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.i, %snd_pcm_oss_change_params.exit.cleanup_crit_edge ], [ -512, %if.then9.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -512, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixer_oss_ioctl_card(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_oss_reset(ptr nocapture noundef readonly %pcm_oss_file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_oss_file, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %1, i32 noundef 16707, ptr noundef null) #18
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59
  %params_lock = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  tail call void @mutex_lock_nested(ptr noundef %params_lock, i32 noundef 0) #18
  %4 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %oss, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %oss, align 8
  %buffer_used = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 15
  %5 = ptrtoint ptr %buffer_used to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %buffer_used, align 4
  %prev_hw_ptr_period = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 20
  %6 = ptrtoint ptr %prev_hw_ptr_period to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %prev_hw_ptr_period, align 8
  %period_ptr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 9
  %7 = ptrtoint ptr %period_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %period_ptr, align 4
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %runtime1.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %runtime1.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime1.1, align 4
  %call.1 = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %9, i32 noundef 16707, ptr noundef null) #18
  %oss.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59
  %params_lock.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 16
  tail call void @mutex_lock_nested(ptr noundef %params_lock.1, i32 noundef 0) #18
  %12 = ptrtoint ptr %oss.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.1 = load i8, ptr %oss.1, align 8
  %bf.set.1 = or i8 %bf.load.1, 64
  store i8 %bf.set.1, ptr %oss.1, align 8
  %buffer_used.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 15
  %13 = ptrtoint ptr %buffer_used.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %buffer_used.1, align 4
  %prev_hw_ptr_period.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 20
  %14 = ptrtoint ptr %prev_hw_ptr_period.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %prev_hw_ptr_period.1, align 8
  %period_ptr.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 9
  %15 = ptrtoint ptr %period_ptr.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %period_ptr.1, align 4
  tail call void @mutex_unlock(ptr noundef %params_lock.1) #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_sync(ptr nocapture noundef readonly %pcm_oss_file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_oss_file, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end86_crit_edge, label %if.then

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86

if.then:                                          ; preds = %entry
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %4 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then.__direct_crit_edge

if.then.__direct_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %__direct

if.end:                                           ; preds = %if.then
  %call3 = tail call fastcc i32 @snd_pcm_oss_make_ready(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rw_ref = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 17
  %call.i.i184 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %rw_ref, i32 1, i32 3, i32 1) #18
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_ref, ptr %rw_ref, i32 1, ptr elementtype(i32) %rw_ref) #18, !srcloc !187
  %params_lock = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %rw_ref, i32 1, i32 3, i32 1) #18
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_ref, ptr %rw_ref, i32 1, ptr elementtype(i32) %rw_ref) #18, !srcloc !189
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %format15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 2
  %8 = ptrtoint ptr %format15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format15, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %9, label %sw.default.i [
    i32 1, label %if.end13.snd_pcm_oss_format_from.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 8, label %sw.bb3.i
    i32 16, label %sw.bb4.i
    i32 32, label %sw.bb5.i
    i32 64, label %sw.bb6.i
    i32 128, label %sw.bb7.i
    i32 256, label %sw.bb8.i
    i32 512, label %sw.bb9.i
    i32 4096, label %sw.bb10.i
    i32 8192, label %sw.bb11.i
    i32 32768, label %sw.bb12.i
    i32 65536, label %sw.bb13.i
    i32 262144, label %sw.bb14.i
    i32 16384, label %sw.bb15.i
    i32 131072, label %sw.bb16.i
  ]

if.end13.snd_pcm_oss_format_from.exit_crit_edge:  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb1.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb3.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb4.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb5.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb6.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb7.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb8.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb9.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb10.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb11.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb12.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb13.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb14.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb15.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.bb16.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

sw.default.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_format_from.exit

snd_pcm_oss_format_from.exit:                     ; preds = %sw.default.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end13.snd_pcm_oss_format_from.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.default.i ], [ 19, %sw.bb16.i ], [ 15, %sw.bb15.i ], [ 32, %sw.bb14.i ], [ 7, %sw.bb13.i ], [ 6, %sw.bb12.i ], [ 11, %sw.bb11.i ], [ 10, %sw.bb10.i ], [ 23, %sw.bb9.i ], [ 5, %sw.bb8.i ], [ 4, %sw.bb7.i ], [ 0, %sw.bb6.i ], [ 3, %sw.bb5.i ], [ 2, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 22, %sw.bb2.i ], [ 21, %sw.bb1.i ], [ 20, %if.end13.snd_pcm_oss_format_from.exit_crit_edge ]
  %call17 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i) #18
  %buffer_used = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 15
  %11 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19.not = icmp eq i32 %12, 0
  br i1 %cmp19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %snd_pcm_oss_format_from.exit
  %period_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 7
  %13 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period_bytes, align 4
  %sub = sub i32 %14, %12
  %mul = shl i32 %sub, 3
  %add = or i32 %mul, 7
  %div = udiv i32 %add, %call17
  %buffer = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 14
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 %12
  %call27 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %retval.0.i, ptr noundef %add.ptr, i32 noundef %div) #18
  %17 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %period_bytes, align 4
  %call30 = tail call fastcc i32 @snd_pcm_oss_sync1(ptr noundef nonnull %1, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then20.unlock_crit_edge, label %if.then20.if.end52_crit_edge

if.then20.if.end52_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then20.unlock_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.else:                                          ; preds = %snd_pcm_oss_format_from.exit
  %period_ptr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 9
  %19 = ptrtoint ptr %period_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %period_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp35.not = icmp eq i32 %20, 0
  br i1 %cmp35.not, label %if.else.if.end52_crit_edge, label %if.then36

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then36:                                        ; preds = %if.else
  %period_bytes38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 7
  %21 = ptrtoint ptr %period_bytes38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %period_bytes38, align 4
  %sub41 = sub i32 %22, %20
  %buffer43 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 14
  %23 = ptrtoint ptr %buffer43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer43, align 8
  %mul44 = shl i32 %sub41, 3
  %div45 = udiv i32 %mul44, %call17
  %call46 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %retval.0.i, ptr noundef %24, i32 noundef %div45) #18
  %call47 = tail call fastcc i32 @snd_pcm_oss_sync1(ptr noundef nonnull %1, i32 noundef %sub41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then36.unlock_crit_edge, label %if.then36.if.end52_crit_edge

if.then36.if.end52_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then36.unlock_crit_edge:                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end52:                                         ; preds = %if.then36.if.end52_crit_edge, %if.else.if.end52_crit_edge, %if.then20.if.end52_crit_edge
  %err.0 = phi i32 [ %call30, %if.then20.if.end52_crit_edge ], [ %call47, %if.then36.if.end52_crit_edge ], [ 0, %if.else.if.end52_crit_edge ]
  %control = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 38
  %25 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control, align 8
  %appl_ptr = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %appl_ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %appl_ptr, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %29 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %period_size, align 4
  %rem = urem i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp53.not = icmp eq i32 %rem, 0
  br i1 %cmp53.not, label %if.end52.unlock_crit_edge, label %if.then54

if.end52.unlock_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.then54:                                        ; preds = %if.end52
  %sub56 = sub i32 %30, %rem
  %access = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %access, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %32, label %if.then54.unlock_crit_edge [
    i32 3, label %if.then54.unlock.sink.split_crit_edge
    i32 4, label %if.then63
  ]

if.then54.unlock.sink.split_crit_edge:            ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock.sink.split

if.then54.unlock_crit_edge:                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.then63:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %if.then63, %if.then54.unlock.sink.split_crit_edge
  %.sink = phi i1 [ false, %if.then63 ], [ true, %if.then54.unlock.sink.split_crit_edge ]
  %call.i187 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext %.sink, i32 noundef %sub56, i1 noundef zeroext false) #18
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.then54.unlock_crit_edge, %if.end52.unlock_crit_edge, %if.then36.unlock_crit_edge, %if.then20.unlock_crit_edge
  %err.1 = phi i32 [ %call30, %if.then20.unlock_crit_edge ], [ %err.0, %if.end52.unlock_crit_edge ], [ %call47, %if.then36.unlock_crit_edge ], [ %err.0, %if.then54.unlock_crit_edge ], [ %err.0, %unlock.sink.split ]
  tail call void @mutex_unlock(ptr noundef %params_lock) #18
  %call.i.i186 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rw_ref, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %rw_ref, i32 1, i32 3, i32 1) #18
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rw_ref, ptr %rw_ref, i32 1, ptr elementtype(i32) %rw_ref) #18, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp72 = icmp slt i32 %err.1, 0
  br i1 %cmp72, label %unlock.cleanup_crit_edge, label %unlock.__direct_crit_edge

unlock.__direct_crit_edge:                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #20
  br label %__direct

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

__direct:                                         ; preds = %unlock.__direct_crit_edge, %if.then.__direct_crit_edge
  %f_flags = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 21
  %35 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f_flags, align 4
  %and = and i32 %36, -2049
  store i32 %and, ptr %f_flags, align 4
  %call76 = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %1, i32 noundef 16708, ptr noundef null) #18
  %37 = ptrtoint ptr %f_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %f_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp78 = icmp slt i32 %call76, 0
  br i1 %cmp78, label %__direct.cleanup_crit_edge, label %if.end80

__direct.cleanup_crit_edge:                       ; preds = %__direct
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end80:                                         ; preds = %__direct
  call void @__sanitizer_cov_trace_pc() #20
  %oss81 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59
  %params_lock82 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  tail call void @mutex_lock_nested(ptr noundef %params_lock82, i32 noundef 0) #18
  %38 = ptrtoint ptr %oss81 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %oss81, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %oss81, align 8
  tail call void @mutex_unlock(ptr noundef %params_lock82) #18
  br label %if.end86

if.end86:                                         ; preds = %if.end80, %entry.if.end86_crit_edge
  %arrayidx88 = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx88, align 4
  %cmp89.not = icmp eq ptr %40, null
  br i1 %cmp89.not, label %if.end86.cleanup_crit_edge, label %if.then90

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then90:                                        ; preds = %if.end86
  %call91 = tail call fastcc i32 @snd_pcm_oss_make_ready(ptr noundef nonnull %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then90.cleanup_crit_edge, label %if.end94

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end94:                                         ; preds = %if.then90
  %runtime95 = getelementptr inbounds %struct.snd_pcm_substream, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %runtime95 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime95, align 4
  %call96 = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %40, i32 noundef 16707, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.end94.cleanup_crit_edge, label %if.end99

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #20
  %oss100 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 59
  %params_lock101 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 59, i32 16
  tail call void @mutex_lock_nested(ptr noundef %params_lock101, i32 noundef 0) #18
  %buffer_used103 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 59, i32 15
  %43 = ptrtoint ptr %buffer_used103 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %buffer_used103, align 4
  %44 = ptrtoint ptr %oss100 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load105 = load i8, ptr %oss100, align 8
  %bf.set107 = or i8 %bf.load105, 64
  store i8 %bf.set107, ptr %oss100, align 8
  tail call void @mutex_unlock(ptr noundef %params_lock101) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.end94.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %__direct.cleanup_crit_edge, %unlock.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %if.then10 ], [ %call3, %if.end.cleanup_crit_edge ], [ %err.1, %unlock.cleanup_crit_edge ], [ %call76, %__direct.cleanup_crit_edge ], [ %call91, %if.then90.cleanup_crit_edge ], [ %call96, %if.end94.cleanup_crit_edge ], [ 0, %if.end99 ], [ 0, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_set_rate(ptr nocapture noundef readonly %pcm_oss_file, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  %substream.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %entry
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %rate, i32 192000)
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 1000)
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup22_crit_edge

if.end.cleanup22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup22

if.end.i:                                         ; preds = %if.end
  %rw_ref.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i, i32 noundef 4) #18
  %6 = ptrtoint ptr %rw_ref.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %rw_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.end11, label %if.end.i.if.then4.i_crit_edge

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i.1.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %params_lock.i.lcssa49 = phi ptr [ %params_lock.i, %if.end.i.if.then4.i_crit_edge ], [ %params_lock.i.1, %if.end.i.1.if.then4.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %params_lock.i.lcssa49) #18
  br label %cleanup22

if.end11:                                         ; preds = %if.end.i
  %rate12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 1
  %8 = ptrtoint ptr %rate12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp13.not = icmp eq i32 %9, %5
  br i1 %cmp13.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59
  %10 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %oss, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %oss, align 8
  %11 = ptrtoint ptr %rate12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %rate12, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %entry.for.inc_crit_edge
  %rate.addr.2.ph = phi i32 [ %rate, %entry.for.inc_crit_edge ], [ %5, %if.end18 ]
  %12 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm_oss_file, align 4
  %cmp1.1 = icmp eq ptr %13, null
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %runtime2.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %runtime2.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime2.1, align 4
  %16 = tail call i32 @llvm.smin.i32(i32 %rate.addr.2.ph, i32 192000)
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 1000)
  %params_lock.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 59, i32 16
  %call.i.1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end.1.cleanup22_crit_edge

if.end.1.cleanup22_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup22

if.end.i.1:                                       ; preds = %if.end.1
  %rw_ref.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 59, i32 17
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i.1, i32 noundef 4) #18
  %18 = ptrtoint ptr %rw_ref.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %rw_ref.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i.1 = icmp eq i32 %19, 0
  br i1 %tobool3.not.i.1, label %if.end11.1, label %if.end.i.1.if.then4.i_crit_edge

if.end.i.1.if.then4.i_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4.i

if.end11.1:                                       ; preds = %if.end.i.1
  %rate12.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 59, i32 1
  %20 = ptrtoint ptr %rate12.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rate12.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %17)
  %cmp13.not.1 = icmp eq i32 %21, %17
  br i1 %cmp13.not.1, label %if.end11.1.if.end18.1_crit_edge, label %if.then14.1

if.end11.1.if.end18.1_crit_edge:                  ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.1

if.then14.1:                                      ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #20
  %oss.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 59
  %22 = ptrtoint ptr %oss.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.1 = load i8, ptr %oss.1, align 8
  %bf.set.1 = or i8 %bf.load.1, -128
  store i8 %bf.set.1, ptr %oss.1, align 8
  %23 = ptrtoint ptr %rate12.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %17, ptr %rate12.1, align 4
  br label %if.end18.1

if.end18.1:                                       ; preds = %if.then14.1, %if.end11.1.if.end18.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock.i.1) #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end18.1, %for.inc.for.inc.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream.i) #18
  %24 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream.i, align 4, !annotation !156
  %call.i36 = call fastcc i32 @snd_pcm_oss_get_active_substream(ptr noundef %pcm_oss_file, ptr noundef nonnull %substream.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp.i = icmp slt i32 %call.i36, 0
  br i1 %cmp.i, label %for.inc.1.snd_pcm_oss_get_rate.exit_crit_edge, label %if.end.i37

for.inc.1.snd_pcm_oss_get_rate.exit_crit_edge:    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_get_rate.exit

if.end.i37:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %substream.i, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime.i, align 4
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 59, i32 1
  %29 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate.i, align 4
  br label %snd_pcm_oss_get_rate.exit

snd_pcm_oss_get_rate.exit:                        ; preds = %if.end.i37, %for.inc.1.snd_pcm_oss_get_rate.exit_crit_edge
  %retval.0.i38 = phi i32 [ %30, %if.end.i37 ], [ %call.i36, %for.inc.1.snd_pcm_oss_get_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i) #18
  br label %cleanup22

cleanup22:                                        ; preds = %snd_pcm_oss_get_rate.exit, %if.end.1.cleanup22_crit_edge, %if.then4.i, %if.end.cleanup22_crit_edge
  %retval.2 = phi i32 [ %retval.0.i38, %snd_pcm_oss_get_rate.exit ], [ -16, %if.then4.i ], [ -512, %if.end.1.cleanup22_crit_edge ], [ -512, %if.end.cleanup22_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_set_channels(ptr nocapture noundef readonly %pcm_oss_file, i32 noundef %channels) unnamed_addr #2 align 64 {
entry:
  %substream.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channels)
  %cmp = icmp eq i32 %channels, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %channels
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %spec.store.select)
  %cmp1 = icmp ugt i32 %spec.store.select, 128
  br i1 %cmp1, label %entry.cleanup22_crit_edge, label %for.body.preheader

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup22

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp5 = icmp eq ptr %1, null
  br i1 %cmp5, label %for.body.preheader.for.inc_crit_edge, label %if.end7

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end7:                                          ; preds = %for.body.preheader
  %runtime8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime8, align 4
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.cleanup22_crit_edge

if.end7.cleanup22_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup22

if.end.i:                                         ; preds = %if.end7
  %rw_ref.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i, i32 noundef 4) #18
  %4 = ptrtoint ptr %rw_ref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rw_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %if.end11, label %if.end.i.if.then4.i_crit_edge

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i.1.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %params_lock.i.lcssa46 = phi ptr [ %params_lock.i, %if.end.i.if.then4.i_crit_edge ], [ %params_lock.i.1, %if.end.i.1.if.then4.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %params_lock.i.lcssa46) #18
  br label %cleanup22

if.end11:                                         ; preds = %if.end.i
  %channels12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 3
  %6 = ptrtoint ptr %channels12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.store.select)
  %cmp13.not = icmp eq i32 %7, %spec.store.select
  br i1 %cmp13.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59
  %8 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %oss, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %oss, align 8
  %9 = ptrtoint ptr %channels12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select, ptr %channels12, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body.preheader.for.inc_crit_edge
  %10 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm_oss_file, align 4
  %cmp5.1 = icmp eq ptr %11, null
  br i1 %cmp5.1, label %for.inc.for.inc.1_crit_edge, label %if.end7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.end7.1:                                        ; preds = %for.inc
  %runtime8.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %runtime8.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime8.1, align 4
  %params_lock.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 59, i32 16
  %call.i.1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end7.1.cleanup22_crit_edge

if.end7.1.cleanup22_crit_edge:                    ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup22

if.end.i.1:                                       ; preds = %if.end7.1
  %rw_ref.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 59, i32 17
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i.1, i32 noundef 4) #18
  %14 = ptrtoint ptr %rw_ref.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %rw_ref.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i.1 = icmp eq i32 %15, 0
  br i1 %tobool3.not.i.1, label %if.end11.1, label %if.end.i.1.if.then4.i_crit_edge

if.end.i.1.if.then4.i_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4.i

if.end11.1:                                       ; preds = %if.end.i.1
  %channels12.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 59, i32 3
  %16 = ptrtoint ptr %channels12.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels12.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %spec.store.select)
  %cmp13.not.1 = icmp eq i32 %17, %spec.store.select
  br i1 %cmp13.not.1, label %if.end11.1.if.end18.1_crit_edge, label %if.then14.1

if.end11.1.if.end18.1_crit_edge:                  ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.1

if.then14.1:                                      ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #20
  %oss.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 59
  %18 = ptrtoint ptr %oss.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.1 = load i8, ptr %oss.1, align 8
  %bf.set.1 = or i8 %bf.load.1, -128
  store i8 %bf.set.1, ptr %oss.1, align 8
  %19 = ptrtoint ptr %channels12.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %channels12.1, align 4
  br label %if.end18.1

if.end18.1:                                       ; preds = %if.then14.1, %if.end11.1.if.end18.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock.i.1) #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end18.1, %for.inc.for.inc.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream.i) #18
  %20 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream.i, align 4, !annotation !156
  %call.i36 = call fastcc i32 @snd_pcm_oss_get_active_substream(ptr noundef %pcm_oss_file, ptr noundef nonnull %substream.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp.i = icmp slt i32 %call.i36, 0
  br i1 %cmp.i, label %for.inc.1.snd_pcm_oss_get_channels.exit_crit_edge, label %if.end.i37

for.inc.1.snd_pcm_oss_get_channels.exit_crit_edge: ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_get_channels.exit

if.end.i37:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %substream.i, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime.i, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 59, i32 3
  %25 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channels.i, align 4
  br label %snd_pcm_oss_get_channels.exit

snd_pcm_oss_get_channels.exit:                    ; preds = %if.end.i37, %for.inc.1.snd_pcm_oss_get_channels.exit_crit_edge
  %retval.0.i38 = phi i32 [ %26, %if.end.i37 ], [ %call.i36, %for.inc.1.snd_pcm_oss_get_channels.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i) #18
  br label %cleanup22

cleanup22:                                        ; preds = %snd_pcm_oss_get_channels.exit, %if.end7.1.cleanup22_crit_edge, %if.then4.i, %if.end7.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.2 = phi i32 [ %retval.0.i38, %snd_pcm_oss_get_channels.exit ], [ -22, %entry.cleanup22_crit_edge ], [ -16, %if.then4.i ], [ -512, %if.end7.1.cleanup22_crit_edge ], [ -512, %if.end7.cleanup22_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_set_format(ptr nocapture noundef readonly %pcm_oss_file, i32 noundef %format) unnamed_addr #2 align 64 {
entry:
  %substream.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format)
  %cmp.not = icmp eq i32 %format, 0
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @snd_pcm_oss_get_formats(ptr noundef %pcm_oss_file)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup24_crit_edge, label %if.end

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup24

if.end:                                           ; preds = %if.then
  %and = and i32 %call, %format
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 8, i32 %format
  %arrayidx = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp6 = icmp eq ptr %1, null
  br i1 %cmp6, label %if.end.for.inc_crit_edge, label %if.end8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %runtime9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime9, align 4
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup24_crit_edge

if.end8.cleanup24_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup24

if.end.i:                                         ; preds = %if.end8
  %rw_ref.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i, i32 noundef 4) #18
  %4 = ptrtoint ptr %rw_ref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rw_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %if.end13, label %if.end.i.if.then4.i_crit_edge

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i.1.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %params_lock.i.lcssa53 = phi ptr [ %params_lock.i, %if.end.i.if.then4.i_crit_edge ], [ %params_lock.i.1, %if.end.i.1.if.then4.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %params_lock.i.lcssa53) #18
  br label %cleanup24

if.end13:                                         ; preds = %if.end.i
  %format14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 2
  %6 = ptrtoint ptr %format14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.store.select)
  %cmp15.not = icmp eq i32 %7, %spec.store.select
  br i1 %cmp15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59
  %8 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %oss, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %oss, align 8
  %9 = ptrtoint ptr %format14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select, ptr %format14, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %if.end.for.inc_crit_edge
  %10 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm_oss_file, align 4
  %cmp6.1 = icmp eq ptr %11, null
  br i1 %cmp6.1, label %for.inc.if.end22_crit_edge, label %if.end8.1

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.end8.1:                                        ; preds = %for.inc
  %runtime9.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %runtime9.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime9.1, align 4
  %params_lock.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 59, i32 16
  %call.i.1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end8.1.cleanup24_crit_edge

if.end8.1.cleanup24_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup24

if.end.i.1:                                       ; preds = %if.end8.1
  %rw_ref.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 59, i32 17
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i.1, i32 noundef 4) #18
  %14 = ptrtoint ptr %rw_ref.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %rw_ref.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i.1 = icmp eq i32 %15, 0
  br i1 %tobool3.not.i.1, label %if.end13.1, label %if.end.i.1.if.then4.i_crit_edge

if.end.i.1.if.then4.i_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4.i

if.end13.1:                                       ; preds = %if.end.i.1
  %format14.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 59, i32 2
  %16 = ptrtoint ptr %format14.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format14.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %spec.store.select)
  %cmp15.not.1 = icmp eq i32 %17, %spec.store.select
  br i1 %cmp15.not.1, label %if.end13.1.if.end20.1_crit_edge, label %if.then16.1

if.end13.1.if.end20.1_crit_edge:                  ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.1

if.then16.1:                                      ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #20
  %oss.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 59
  %18 = ptrtoint ptr %oss.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.1 = load i8, ptr %oss.1, align 8
  %bf.set.1 = or i8 %bf.load.1, -128
  store i8 %bf.set.1, ptr %oss.1, align 8
  %19 = ptrtoint ptr %format14.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %format14.1, align 8
  br label %if.end20.1

if.end20.1:                                       ; preds = %if.then16.1, %if.end13.1.if.end20.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %params_lock.i.1) #18
  br label %if.end22

if.end22:                                         ; preds = %if.end20.1, %for.inc.if.end22_crit_edge, %entry.if.end22_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream.i) #18
  %20 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream.i, align 4, !annotation !156
  %call.i43 = call fastcc i32 @snd_pcm_oss_get_active_substream(ptr noundef %pcm_oss_file, ptr noundef nonnull %substream.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i = icmp slt i32 %call.i43, 0
  br i1 %cmp.i, label %if.end22.snd_pcm_oss_get_format.exit_crit_edge, label %if.end.i44

if.end22.snd_pcm_oss_get_format.exit_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_get_format.exit

if.end.i44:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %substream.i, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime.i, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 59, i32 2
  %25 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %format.i, align 8
  br label %snd_pcm_oss_get_format.exit

snd_pcm_oss_get_format.exit:                      ; preds = %if.end.i44, %if.end22.snd_pcm_oss_get_format.exit_crit_edge
  %retval.0.i45 = phi i32 [ %26, %if.end.i44 ], [ %call.i43, %if.end22.snd_pcm_oss_get_format.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream.i) #18
  br label %cleanup24

cleanup24:                                        ; preds = %snd_pcm_oss_get_format.exit, %if.end8.1.cleanup24_crit_edge, %if.then4.i, %if.end8.cleanup24_crit_edge, %if.then.cleanup24_crit_edge
  %retval.2 = phi i32 [ %retval.0.i45, %snd_pcm_oss_get_format.exit ], [ %call, %if.then.cleanup24_crit_edge ], [ -16, %if.then4.i ], [ -512, %if.end8.1.cleanup24_crit_edge ], [ -512, %if.end8.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_post(ptr nocapture noundef readonly %pcm_oss_file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_oss_file, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @snd_pcm_oss_make_ready(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %1, i32 noundef 16706, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_set_subdivide(ptr nocapture noundef readonly %pcm_oss_file, i32 noundef %subdivide) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subdivide)
  %cmp.i = icmp eq i32 %subdivide, 0
  %arrayidx = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %entry
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup11_crit_edge

if.end.cleanup11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11

if.end.i:                                         ; preds = %if.end
  %rw_ref.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i, i32 noundef 4) #18
  %4 = ptrtoint ptr %rw_ref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rw_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %if.end5, label %if.end.i.cleanup11.sink.split_crit_edge

if.end.i.cleanup11.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end5:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %if.end5
  %subdivision.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 59, i32 6
  %8 = ptrtoint ptr %subdivision.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subdivision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.i = icmp eq i32 %9, 0
  br i1 %cmp2.i, label %if.then.i._crit_edge, label %snd_pcm_oss_set_subdivide1.exit

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %17

if.end4.i:                                        ; preds = %if.end5
  %oss5.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 59
  %subdivision6.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 59, i32 6
  %10 = ptrtoint ptr %subdivision6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subdivision6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i22 = icmp eq i32 %11, 0
  br i1 %tobool.not.i22, label %lor.lhs.false.i, label %if.end4.i.cleanup11.sink.split_crit_edge

if.end4.i.cleanup11.sink.split_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %fragshift.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 59, i32 4
  %12 = ptrtoint ptr %fragshift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fragshift.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not.i = icmp eq i32 %13, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %lor.lhs.false.i.cleanup11.sink.split_crit_edge

lor.lhs.false.i.cleanup11.sink.split_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end10.i:                                       ; preds = %lor.lhs.false.i
  %14 = zext i32 %subdivide to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %subdivide, label %if.end10.i.cleanup11.sink.split_crit_edge [
    i32 1, label %if.end10.i.if.end20.i_crit_edge
    i32 2, label %if.end10.i.if.end20.i_crit_edge44
    i32 4, label %if.end10.i.if.end20.i_crit_edge45
    i32 8, label %if.end10.i.if.end20.i_crit_edge46
    i32 16, label %if.end10.i.if.end20.i_crit_edge47
  ]

if.end10.i.if.end20.i_crit_edge47:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.end10.i.if.end20.i_crit_edge46:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.end10.i.if.end20.i_crit_edge45:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.end10.i.if.end20.i_crit_edge44:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.end10.i.if.end20.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.end10.i.cleanup11.sink.split_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end20.i:                                       ; preds = %if.end10.i.if.end20.i_crit_edge, %if.end10.i.if.end20.i_crit_edge44, %if.end10.i.if.end20.i_crit_edge45, %if.end10.i.if.end20.i_crit_edge46, %if.end10.i.if.end20.i_crit_edge47
  %15 = ptrtoint ptr %subdivision6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %subdivide, ptr %subdivision6.i, align 8
  %16 = ptrtoint ptr %oss5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %oss5.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %oss5.i, align 8
  br label %17

17:                                               ; preds = %if.end20.i, %if.then.i._crit_edge
  %retval.0.i23.ph = phi i32 [ %subdivide, %if.end20.i ], [ 1, %if.then.i._crit_edge ]
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  br label %for.inc

snd_pcm_oss_set_subdivide1.exit:                  ; preds = %if.then.i
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7 = icmp slt i32 %9, 0
  br i1 %cmp7, label %snd_pcm_oss_set_subdivide1.exit.cleanup11_crit_edge, label %snd_pcm_oss_set_subdivide1.exit.for.inc_crit_edge

snd_pcm_oss_set_subdivide1.exit.for.inc_crit_edge: ; preds = %snd_pcm_oss_set_subdivide1.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

snd_pcm_oss_set_subdivide1.exit.cleanup11_crit_edge: ; preds = %snd_pcm_oss_set_subdivide1.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11

for.inc:                                          ; preds = %snd_pcm_oss_set_subdivide1.exit.for.inc_crit_edge, %17, %entry.for.inc_crit_edge
  %err.1 = phi i32 [ -22, %entry.for.inc_crit_edge ], [ %9, %snd_pcm_oss_set_subdivide1.exit.for.inc_crit_edge ], [ %retval.0.i23.ph, %17 ]
  %18 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcm_oss_file, align 4
  %cmp1.1 = icmp eq ptr %19, null
  br i1 %cmp1.1, label %for.inc.cleanup11_crit_edge, label %if.end.1

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11

if.end.1:                                         ; preds = %for.inc
  %runtime2.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %runtime2.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime2.1, align 4
  %params_lock.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 59, i32 16
  %call.i.1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end.1.cleanup11_crit_edge

if.end.1.cleanup11_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11

if.end.i.1:                                       ; preds = %if.end.1
  %rw_ref.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 59, i32 17
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i.1, i32 noundef 4) #18
  %22 = ptrtoint ptr %rw_ref.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %rw_ref.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i.1 = icmp eq i32 %23, 0
  br i1 %tobool3.not.i.1, label %if.end5.1, label %if.end.i.1.cleanup11.sink.split_crit_edge

if.end.i.1.cleanup11.sink.split_crit_edge:        ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end5.1:                                        ; preds = %if.end.i.1
  %24 = ptrtoint ptr %runtime2.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime2.1, align 4
  br i1 %cmp.i, label %if.then.i.1, label %if.end4.i.1

if.end4.i.1:                                      ; preds = %if.end5.1
  %oss5.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 59
  %subdivision6.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 59, i32 6
  %26 = ptrtoint ptr %subdivision6.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subdivision6.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i22.1 = icmp eq i32 %27, 0
  br i1 %tobool.not.i22.1, label %lor.lhs.false.i.1, label %if.end4.i.1.cleanup11.sink.split_crit_edge

if.end4.i.1.cleanup11.sink.split_crit_edge:       ; preds = %if.end4.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

lor.lhs.false.i.1:                                ; preds = %if.end4.i.1
  %fragshift.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 59, i32 4
  %28 = ptrtoint ptr %fragshift.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fragshift.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not.i.1 = icmp eq i32 %29, 0
  br i1 %tobool8.not.i.1, label %if.end10.i.1, label %lor.lhs.false.i.1.cleanup11.sink.split_crit_edge

lor.lhs.false.i.1.cleanup11.sink.split_crit_edge: ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end10.i.1:                                     ; preds = %lor.lhs.false.i.1
  %30 = zext i32 %subdivide to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %subdivide, label %if.end10.i.1.cleanup11.sink.split_crit_edge [
    i32 1, label %if.end10.i.1.if.end20.i.1_crit_edge
    i32 2, label %if.end10.i.1.if.end20.i.1_crit_edge48
    i32 4, label %if.end10.i.1.if.end20.i.1_crit_edge49
    i32 8, label %if.end10.i.1.if.end20.i.1_crit_edge50
    i32 16, label %if.end10.i.1.if.end20.i.1_crit_edge51
  ]

if.end10.i.1.if.end20.i.1_crit_edge51:            ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i.1

if.end10.i.1.if.end20.i.1_crit_edge50:            ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i.1

if.end10.i.1.if.end20.i.1_crit_edge49:            ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i.1

if.end10.i.1.if.end20.i.1_crit_edge48:            ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i.1

if.end10.i.1.if.end20.i.1_crit_edge:              ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i.1

if.end10.i.1.cleanup11.sink.split_crit_edge:      ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end20.i.1:                                     ; preds = %if.end10.i.1.if.end20.i.1_crit_edge, %if.end10.i.1.if.end20.i.1_crit_edge48, %if.end10.i.1.if.end20.i.1_crit_edge49, %if.end10.i.1.if.end20.i.1_crit_edge50, %if.end10.i.1.if.end20.i.1_crit_edge51
  %31 = ptrtoint ptr %subdivision6.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %subdivide, ptr %subdivision6.i.1, align 8
  %32 = ptrtoint ptr %oss5.i.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.1 = load i8, ptr %oss5.i.1, align 8
  %bf.set.i.1 = or i8 %bf.load.i.1, -128
  store i8 %bf.set.i.1, ptr %oss5.i.1, align 8
  br label %35

if.then.i.1:                                      ; preds = %if.end5.1
  %subdivision.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 59, i32 6
  %33 = ptrtoint ptr %subdivision.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %subdivision.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp2.i.1 = icmp eq i32 %34, 0
  br i1 %cmp2.i.1, label %if.then.i.1._crit_edge, label %if.then.i.1.cleanup11.sink.split_crit_edge

if.then.i.1.cleanup11.sink.split_crit_edge:       ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.then.i.1._crit_edge:                           ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %35

35:                                               ; preds = %if.then.i.1._crit_edge, %if.end20.i.1
  %retval.0.i23.ph.1 = phi i32 [ %subdivide, %if.end20.i.1 ], [ 1, %if.then.i.1._crit_edge ]
  br label %cleanup11.sink.split

cleanup11.sink.split:                             ; preds = %35, %if.then.i.1.cleanup11.sink.split_crit_edge, %if.end10.i.1.cleanup11.sink.split_crit_edge, %lor.lhs.false.i.1.cleanup11.sink.split_crit_edge, %if.end4.i.1.cleanup11.sink.split_crit_edge, %if.end.i.1.cleanup11.sink.split_crit_edge, %if.end10.i.cleanup11.sink.split_crit_edge, %lor.lhs.false.i.cleanup11.sink.split_crit_edge, %if.end4.i.cleanup11.sink.split_crit_edge, %if.end.i.cleanup11.sink.split_crit_edge
  %params_lock.i.1.sink = phi ptr [ %params_lock.i.1, %35 ], [ %params_lock.i, %if.end.i.cleanup11.sink.split_crit_edge ], [ %params_lock.i.1, %if.end.i.1.cleanup11.sink.split_crit_edge ], [ %params_lock.i, %lor.lhs.false.i.cleanup11.sink.split_crit_edge ], [ %params_lock.i, %if.end4.i.cleanup11.sink.split_crit_edge ], [ %params_lock.i, %if.end10.i.cleanup11.sink.split_crit_edge ], [ %params_lock.i.1, %if.end4.i.1.cleanup11.sink.split_crit_edge ], [ %params_lock.i.1, %lor.lhs.false.i.1.cleanup11.sink.split_crit_edge ], [ %params_lock.i.1, %if.end10.i.1.cleanup11.sink.split_crit_edge ], [ %params_lock.i.1, %if.then.i.1.cleanup11.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ %retval.0.i23.ph.1, %35 ], [ -16, %if.end.i.cleanup11.sink.split_crit_edge ], [ -16, %if.end.i.1.cleanup11.sink.split_crit_edge ], [ -22, %lor.lhs.false.i.cleanup11.sink.split_crit_edge ], [ -22, %if.end4.i.cleanup11.sink.split_crit_edge ], [ -22, %if.end10.i.cleanup11.sink.split_crit_edge ], [ -22, %if.end4.i.1.cleanup11.sink.split_crit_edge ], [ -22, %lor.lhs.false.i.1.cleanup11.sink.split_crit_edge ], [ -22, %if.end10.i.1.cleanup11.sink.split_crit_edge ], [ %34, %if.then.i.1.cleanup11.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %params_lock.i.1.sink) #18
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup11.sink.split, %if.end.1.cleanup11_crit_edge, %for.inc.cleanup11_crit_edge, %snd_pcm_oss_set_subdivide1.exit.cleanup11_crit_edge, %if.end.cleanup11_crit_edge
  %retval.2 = phi i32 [ -512, %if.end.cleanup11_crit_edge ], [ %9, %snd_pcm_oss_set_subdivide1.exit.cleanup11_crit_edge ], [ -512, %if.end.1.cleanup11_crit_edge ], [ %err.1, %for.inc.cleanup11_crit_edge ], [ %retval.2.ph, %cleanup11.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_set_fragment(ptr nocapture noundef readonly %pcm_oss_file, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %val, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 24
  %shr.i = lshr i32 %val, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp13.i = icmp ult i32 %and.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %val)
  %cmp20.i = icmp ult i32 %val, 131072
  %arrayidx = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %entry
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup11_crit_edge

if.end.cleanup11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11

if.end.i:                                         ; preds = %if.end
  %rw_ref.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i, i32 noundef 4) #18
  %4 = ptrtoint ptr %rw_ref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rw_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %if.end5, label %if.end.i.cleanup11.sink.split_crit_edge

if.end.i.cleanup11.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end5:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2, align 4
  %oss.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 59
  %subdivision.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 59, i32 6
  %8 = ptrtoint ptr %subdivision.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subdivision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i22 = icmp eq i32 %9, 0
  br i1 %tobool.not.i22, label %lor.lhs.false.i, label %if.end5.cleanup11.sink.split_crit_edge

if.end5.cleanup11.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

lor.lhs.false.i:                                  ; preds = %if.end5
  %fragshift3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 59, i32 4
  %10 = ptrtoint ptr %fragshift3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fragshift3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp ne i32 %11, 0
  %brmerge = or i1 %tobool4.not.i, %cmp.i
  br i1 %brmerge, label %lor.lhs.false.i.cleanup11.sink.split_crit_edge, label %if.end6.i

lor.lhs.false.i.cleanup11.sink.split_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %fragshift3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %fragshift3.i, align 8
  %maxfrags.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 59, i32 5
  %13 = ptrtoint ptr %maxfrags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i, ptr %maxfrags.i, align 4
  br i1 %cmp13.i, label %if.then14.i, label %if.end6.i.if.end17.i_crit_edge

if.end6.i.if.end17.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %fragshift3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %fragshift3.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end6.i.if.end17.i_crit_edge
  br i1 %cmp20.i, label %if.then21.i, label %if.end17.i.snd_pcm_oss_set_fragment1.exit_crit_edge

if.end17.i.snd_pcm_oss_set_fragment1.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_set_fragment1.exit

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %maxfrags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %maxfrags.i, align 4
  br label %snd_pcm_oss_set_fragment1.exit

snd_pcm_oss_set_fragment1.exit:                   ; preds = %if.then21.i, %if.end17.i.snd_pcm_oss_set_fragment1.exit_crit_edge
  %16 = ptrtoint ptr %oss.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %oss.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %oss.i, align 8
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  br label %for.inc

for.inc:                                          ; preds = %snd_pcm_oss_set_fragment1.exit, %entry.for.inc_crit_edge
  %err.1 = phi i32 [ -22, %entry.for.inc_crit_edge ], [ 0, %snd_pcm_oss_set_fragment1.exit ]
  %17 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm_oss_file, align 4
  %cmp1.1 = icmp eq ptr %18, null
  br i1 %cmp1.1, label %for.inc.cleanup11_crit_edge, label %if.end.1

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11

if.end.1:                                         ; preds = %for.inc
  %runtime2.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %runtime2.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime2.1, align 4
  %params_lock.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 59, i32 16
  %call.i.1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end.1.cleanup11_crit_edge

if.end.1.cleanup11_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11

if.end.i.1:                                       ; preds = %if.end.1
  %rw_ref.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 59, i32 17
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rw_ref.i.1, i32 noundef 4) #18
  %21 = ptrtoint ptr %rw_ref.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %rw_ref.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i.1 = icmp eq i32 %22, 0
  br i1 %tobool3.not.i.1, label %if.end5.1, label %if.end.i.1.cleanup11.sink.split_crit_edge

if.end.i.1.cleanup11.sink.split_crit_edge:        ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end5.1:                                        ; preds = %if.end.i.1
  %23 = ptrtoint ptr %runtime2.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime2.1, align 4
  %oss.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 59
  %subdivision.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 59, i32 6
  %25 = ptrtoint ptr %subdivision.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %subdivision.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i22.1 = icmp eq i32 %26, 0
  br i1 %tobool.not.i22.1, label %lor.lhs.false.i.1, label %if.end5.1.cleanup11.sink.split_crit_edge

if.end5.1.cleanup11.sink.split_crit_edge:         ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

lor.lhs.false.i.1:                                ; preds = %if.end5.1
  %fragshift3.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 59, i32 4
  %27 = ptrtoint ptr %fragshift3.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fragshift3.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not.i.1 = icmp ne i32 %28, 0
  %brmerge.1 = or i1 %tobool4.not.i.1, %cmp.i
  br i1 %brmerge.1, label %lor.lhs.false.i.1.cleanup11.sink.split_crit_edge, label %if.end6.i.1

lor.lhs.false.i.1.cleanup11.sink.split_crit_edge: ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup11.sink.split

if.end6.i.1:                                      ; preds = %lor.lhs.false.i.1
  %29 = ptrtoint ptr %fragshift3.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i, ptr %fragshift3.i.1, align 8
  %maxfrags.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 59, i32 5
  %30 = ptrtoint ptr %maxfrags.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr.i, ptr %maxfrags.i.1, align 4
  br i1 %cmp13.i, label %if.then14.i.1, label %if.end6.i.1.if.end17.i.1_crit_edge

if.end6.i.1.if.end17.i.1_crit_edge:               ; preds = %if.end6.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.i.1

if.then14.i.1:                                    ; preds = %if.end6.i.1
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %fragshift3.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %fragshift3.i.1, align 8
  br label %if.end17.i.1

if.end17.i.1:                                     ; preds = %if.then14.i.1, %if.end6.i.1.if.end17.i.1_crit_edge
  br i1 %cmp20.i, label %if.then21.i.1, label %if.end17.i.1.snd_pcm_oss_set_fragment1.exit.1_crit_edge

if.end17.i.1.snd_pcm_oss_set_fragment1.exit.1_crit_edge: ; preds = %if.end17.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_set_fragment1.exit.1

if.then21.i.1:                                    ; preds = %if.end17.i.1
  call void @__sanitizer_cov_trace_pc() #20
  %32 = ptrtoint ptr %maxfrags.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %maxfrags.i.1, align 4
  br label %snd_pcm_oss_set_fragment1.exit.1

snd_pcm_oss_set_fragment1.exit.1:                 ; preds = %if.then21.i.1, %if.end17.i.1.snd_pcm_oss_set_fragment1.exit.1_crit_edge
  %33 = ptrtoint ptr %oss.i.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.1 = load i8, ptr %oss.i.1, align 8
  %bf.set.i.1 = or i8 %bf.load.i.1, -128
  store i8 %bf.set.i.1, ptr %oss.i.1, align 8
  br label %cleanup11.sink.split

cleanup11.sink.split:                             ; preds = %snd_pcm_oss_set_fragment1.exit.1, %lor.lhs.false.i.1.cleanup11.sink.split_crit_edge, %if.end5.1.cleanup11.sink.split_crit_edge, %if.end.i.1.cleanup11.sink.split_crit_edge, %lor.lhs.false.i.cleanup11.sink.split_crit_edge, %if.end5.cleanup11.sink.split_crit_edge, %if.end.i.cleanup11.sink.split_crit_edge
  %params_lock.i.1.sink = phi ptr [ %params_lock.i.1, %snd_pcm_oss_set_fragment1.exit.1 ], [ %params_lock.i, %if.end.i.cleanup11.sink.split_crit_edge ], [ %params_lock.i.1, %if.end.i.1.cleanup11.sink.split_crit_edge ], [ %params_lock.i, %lor.lhs.false.i.cleanup11.sink.split_crit_edge ], [ %params_lock.i, %if.end5.cleanup11.sink.split_crit_edge ], [ %params_lock.i.1, %if.end5.1.cleanup11.sink.split_crit_edge ], [ %params_lock.i.1, %lor.lhs.false.i.1.cleanup11.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ 0, %snd_pcm_oss_set_fragment1.exit.1 ], [ -16, %if.end.i.cleanup11.sink.split_crit_edge ], [ -16, %if.end.i.1.cleanup11.sink.split_crit_edge ], [ -22, %lor.lhs.false.i.cleanup11.sink.split_crit_edge ], [ -22, %if.end5.cleanup11.sink.split_crit_edge ], [ -22, %if.end5.1.cleanup11.sink.split_crit_edge ], [ -22, %lor.lhs.false.i.1.cleanup11.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %params_lock.i.1.sink) #18
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup11.sink.split, %if.end.1.cleanup11_crit_edge, %for.inc.cleanup11_crit_edge, %if.end.cleanup11_crit_edge
  %retval.2 = phi i32 [ -512, %if.end.cleanup11_crit_edge ], [ -512, %if.end.1.cleanup11_crit_edge ], [ %err.1, %for.inc.cleanup11_crit_edge ], [ %retval.2.ph, %cleanup11.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_get_formats(ptr nocapture noundef readonly %pcm_oss_file) unnamed_addr #2 align 64 {
entry:
  %substream = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %substream) #18
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %substream, align 4, !annotation !156
  %call = call fastcc i32 @snd_pcm_oss_get_active_substream(ptr noundef %pcm_oss_file, ptr noundef nonnull %substream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %substream, align 4
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 20
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %3 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.else:                                          ; preds = %if.end
  %5 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %substream, align 4
  %direct3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 24, i32 1, i32 1
  %7 = ptrtoint ptr %direct3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %direct3, align 4
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %phi.cmp = icmp eq i8 %8, 0
  br i1 %phi.cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.end.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 604) #23
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @_snd_pcm_hw_params_any(ptr noundef nonnull %call7.i) #18
  %10 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream, align 4
  %call12 = call i32 @snd_pcm_hw_refine(ptr noundef %11, ptr noundef nonnull %call7.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.error_crit_edge, label %if.end15

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %error

if.end15:                                         ; preds = %if.end11
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %call7.i, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15
  %fmt.052 = phi i32 [ 0, %if.end15 ], [ %inc, %for.inc.for.body_crit_edge ]
  %formats.051 = phi i32 [ 0, %if.end15 ], [ %formats.2, %for.inc.for.body_crit_edge ]
  %shr.i = lshr i32 %fmt.052, 5
  %arrayidx.i46 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i46, align 4
  %shl.i = shl nuw i32 1, %fmt.052
  %and1.i = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp ne i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %fmt.052)
  %14 = icmp ult i32 %fmt.052, 24
  %or.cond = select i1 %tobool19.not, i1 %14, i1 false
  br i1 %or.cond, label %switch.hole_check, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

switch.hole_check:                                ; preds = %for.body
  %switch.shifted = lshr i32 16289023, %fmt.052
  %15 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %switch.lobit.not = icmp eq i32 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc_crit_edge, label %switch.lookup

switch.hole_check.for.inc_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [24 x i32], ptr @switch.table.snd_pcm_oss_get_formats, i32 0, i32 %fmt.052
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or49 = or i32 %switch.load, %formats.051
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %switch.hole_check.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %formats.2 = phi i32 [ %formats.051, %for.body.for.inc_crit_edge ], [ %or49, %switch.lookup ], [ %formats.051, %switch.hole_check.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %fmt.052, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.error_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.error_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %error

error:                                            ; preds = %for.inc.error_crit_edge, %if.end11.error_crit_edge
  %call12.formats.3 = phi i32 [ %call12, %if.end11.error_crit_edge ], [ %formats.2, %for.inc.error_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #18
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12.formats.3, %error ], [ %call, %entry.cleanup_crit_edge ], [ 373241, %if.else.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %substream) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_get_space(ptr nocapture noundef readonly %pcm_oss_file, i32 noundef %stream, ptr noundef %_info) unnamed_addr #2 align 64 {
entry:
  %frames.i = alloca i32, align 4
  %avail = alloca i32, align 4
  %info = alloca %struct.audio_buf_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail) #18
  %0 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %avail, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #18
  %1 = getelementptr inbounds %struct.audio_buf_info, ptr %info, i32 0, i32 1
  %2 = getelementptr inbounds %struct.audio_buf_info, ptr %info, i32 0, i32 2
  %3 = getelementptr inbounds %struct.audio_buf_info, ptr %info, i32 0, i32 3
  %cmp = icmp eq ptr %_info, null
  %4 = call ptr @memset(ptr %info, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 %stream
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %6, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %runtime4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime4, align 4
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59
  %9 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %oss, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 16
  %call6.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %snd_pcm_oss_change_params.exit, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

snd_pcm_oss_change_params.exit:                   ; preds = %if.then5
  %call11.i = tail call fastcc i32 @snd_pcm_oss_change_params_locked(ptr noundef nonnull %6) #18
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp6 = icmp slt i32 %call11.i, 0
  br i1 %cmp6, label %snd_pcm_oss_change_params.exit.cleanup_crit_edge, label %snd_pcm_oss_change_params.exit.if.end9_crit_edge

snd_pcm_oss_change_params.exit.if.end9_crit_edge: ; preds = %snd_pcm_oss_change_params.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

snd_pcm_oss_change_params.exit.cleanup_crit_edge: ; preds = %snd_pcm_oss_change_params.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %snd_pcm_oss_change_params.exit.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %period_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 7
  %10 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_bytes, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %2, align 4
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 17
  %13 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %periods, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  %16 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load12 = load i8, ptr %oss, align 8
  %17 = and i8 %bf.load12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp29 = icmp eq i32 %stream, 0
  br i1 %tobool15.not, label %if.else28, label %if.then16

if.then16:                                        ; preds = %if.end9
  br i1 %cmp29, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  %periods22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 10
  %18 = ptrtoint ptr %periods22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %periods22, align 8
  %mul = mul i32 %19, %11
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %3, align 4
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %info, align 4
  br label %if.end8.i.i

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %3, align 4
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %info, align 4
  br label %if.end8.i.i

if.else28:                                        ; preds = %if.end9
  br i1 %cmp29, label %if.then30, label %if.else43

if.then30:                                        ; preds = %if.else28
  %call31 = call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %6, i32 noundef -2147204831, ptr noundef nonnull %avail) #18
  %24 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call31, label %if.then30.if.else38_crit_edge [
    i32 -32, label %if.then30.if.end47.thread_crit_edge
    i32 -86, label %if.then30.if.end47.thread_crit_edge106
    i32 0, label %land.lhs.true
  ]

if.then30.if.end47.thread_crit_edge106:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47.thread

if.then30.if.end47.thread_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47.thread

if.then30.if.else38_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else38

land.lhs.true:                                    ; preds = %if.then30
  %25 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp36 = icmp slt i32 %26, 0
  br i1 %cmp36, label %land.lhs.true.if.end47.thread_crit_edge, label %land.lhs.true.if.else38_crit_edge

land.lhs.true.if.else38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else38

land.lhs.true.if.end47.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47.thread

if.end47.thread:                                  ; preds = %land.lhs.true.if.end47.thread_crit_edge, %if.then30.if.end47.thread_crit_edge, %if.then30.if.end47.thread_crit_edge106
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 18
  %27 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buffer_size, align 4
  %29 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %avail, align 4
  br label %if.end50

if.else38:                                        ; preds = %land.lhs.true.if.else38_crit_edge, %if.then30.if.else38_crit_edge
  %buffer_size39 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 18
  %30 = ptrtoint ptr %buffer_size39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buffer_size39, align 4
  %32 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %avail, align 4
  %sub = sub i32 %31, %33
  store i32 %sub, ptr %avail, align 4
  %buffer_used = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 15
  %34 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buffer_used, align 4
  %sub41 = sub i32 0, %35
  br label %if.end47

if.else43:                                        ; preds = %if.else28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frames.i) #18
  %36 = ptrtoint ptr %frames.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %frames.i, align 4, !annotation !156
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %if.else43
  %call.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %6, i32 noundef -2147204831, ptr noundef nonnull %avail) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.cond.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge, label %if.end.i

while.cond.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_position_fixup.exit

if.end.i:                                         ; preds = %while.cond.i
  %37 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %runtime4, align 4
  %39 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %avail, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 18
  %41 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp2.not.i = icmp sgt i32 %40, %42
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge

if.end.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_position_fixup.exit

if.end4.i:                                        ; preds = %if.end.i
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 16
  %43 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %period_size.i, align 4
  %45 = xor i32 %42, -1
  %add.i = add i32 %40, %45
  %sub6.i = add i32 %add.i, %44
  %46 = urem i32 %sub6.i, %44
  %mul.i = sub i32 %sub6.i, %46
  %47 = ptrtoint ptr %frames.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul.i, ptr %frames.i, align 4
  %call9.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %6, i32 noundef 1074020681, ptr noundef nonnull %frames.i) #18
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end4.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

if.end4.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_position_fixup.exit

snd_pcm_oss_capture_position_fixup.exit:          ; preds = %if.end4.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge, %if.end.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge, %while.cond.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %while.cond.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge ], [ %call.i, %if.end.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge ], [ %call9.i, %if.end4.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frames.i) #18
  %buffer_used46 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 15
  %48 = ptrtoint ptr %buffer_used46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buffer_used46, align 4
  br label %if.end47

if.end47:                                         ; preds = %snd_pcm_oss_capture_position_fixup.exit, %if.else38
  %fixup.0 = phi i32 [ %sub41, %if.else38 ], [ %49, %snd_pcm_oss_capture_position_fixup.exit ]
  %err.0 = phi i32 [ %call31, %if.else38 ], [ %err.0.i, %snd_pcm_oss_capture_position_fixup.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp48 = icmp slt i32 %err.0, 0
  br i1 %cmp48, label %if.end47.cleanup_crit_edge, label %if.end47.if.end50_crit_edge

if.end47.if.end50_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end50:                                         ; preds = %if.end47.if.end50_crit_edge, %if.end47.thread
  %fixup.0103 = phi i32 [ 0, %if.end47.thread ], [ %fixup.0, %if.end47.if.end50_crit_edge ]
  %50 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %avail, align 4
  %52 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %runtime4, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 21
  %56 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %57, %55
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %mul.i.i = mul i32 %57, %51
  %div1.i.i = lshr i32 %mul.i.i, 3
  %buffer_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 59, i32 11
  %58 = ptrtoint ptr %buffer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buffer_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i.i, i32 %59)
  %cmp.i94 = icmp eq i32 %div1.i.i.i, %59
  br i1 %cmp.i94, label %if.end50.snd_pcm_oss_bytes.exit_crit_edge, label %if.end.i96

if.end50.snd_pcm_oss_bytes.exit_crit_edge:        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_bytes.exit

if.end.i96:                                       ; preds = %if.end50
  %conv.i = zext i32 %59 to i64
  %60 = zext i32 %div1.i.i to i64
  %mul.i95 = mul nuw nsw i64 %60, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i95)
  %cmp164.i.i.i = icmp ult i64 %mul.i95, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !186

if.then168.i.i.i:                                 ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i.i = trunc i64 %mul.i95 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %div1.i.i.i
  br label %snd_pcm_oss_bytes.exit

if.else174.i.i.i:                                 ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #20
  %61 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.i.i.i, i64 %mul.i95) #24, !srcloc !192
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %61, 1
  %extract.t17.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %snd_pcm_oss_bytes.exit

snd_pcm_oss_bytes.exit:                           ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.end50.snd_pcm_oss_bytes.exit_crit_edge
  %retval.0.i97 = phi i32 [ %div1.i.i, %if.end50.snd_pcm_oss_bytes.exit_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t17.i, %if.else174.i.i.i ]
  %add = add i32 %retval.0.i97, %fixup.0103
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add, ptr %3, align 4
  %63 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %period_bytes, align 4
  %div = udiv i32 %add, %64
  %65 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div, ptr %info, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %snd_pcm_oss_bytes.exit, %if.else, %if.then18
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #18
  %call.i.i = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end.i.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8.i.i
  %66 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %_info, i32 16, i32 -1226833920) #24, !srcloc !188
  %asmresult.i.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 16) #18
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %_info, ptr noundef nonnull %info, i32 noundef 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool59.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool59.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %snd_pcm_oss_change_params.exit.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call11.i, %snd_pcm_oss_change_params.exit.cleanup_crit_edge ], [ %err.0, %if.end47.cleanup_crit_edge ], [ -512, %if.then5.cleanup_crit_edge ], [ -14, %if.end8.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_oss_nonblock(ptr noundef %file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_lock = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #18
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %or = or i32 %1, 2048
  store i32 %or, ptr %f_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_get_caps(ptr nocapture noundef readonly %pcm_oss_file) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_oss_file, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.snd_pcm_oss_get_caps1.exit_crit_edge, label %if.end.i

entry.snd_pcm_oss_get_caps1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_get_caps1.exit

if.end.i:                                         ; preds = %entry
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.snd_pcm_oss_get_caps1.exit_crit_edge

if.end.i.snd_pcm_oss_get_caps1.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_get_caps1.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %pstr.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pstr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pstr.i, align 4
  %substream_count.i = getelementptr inbounds %struct.snd_pcm_str, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %substream_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %substream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3.i = icmp ugt i32 %7, 1
  %spec.select.i = select i1 %cmp3.i, i32 29440, i32 13056
  br label %snd_pcm_oss_get_caps1.exit

snd_pcm_oss_get_caps1.exit:                       ; preds = %if.then2.i, %if.end.i.snd_pcm_oss_get_caps1.exit_crit_edge, %entry.snd_pcm_oss_get_caps1.exit_crit_edge
  %retval.0.i = phi i32 [ 13056, %if.end.i.snd_pcm_oss_get_caps1.exit_crit_edge ], [ %spec.select.i, %if.then2.i ], [ 12800, %entry.snd_pcm_oss_get_caps1.exit_crit_edge ]
  %arrayidx.1 = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp eq ptr %9, null
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %snd_pcm_oss_get_caps1.exit
  %stream.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i.1 = icmp eq i32 %11, 0
  br i1 %cmp1.i.1, label %if.then2.i.1, label %if.end.i.1.snd_pcm_oss_get_caps1.exit.1_crit_edge

if.end.i.1.snd_pcm_oss_get_caps1.exit.1_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_get_caps1.exit.1

if.then2.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  %pstr.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %pstr.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pstr.i.1, align 4
  %substream_count.i.1 = getelementptr inbounds %struct.snd_pcm_str, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %substream_count.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %substream_count.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp3.i.1 = icmp ugt i32 %15, 1
  %or.i.1 = or i32 %retval.0.i, 16384
  %spec.select.i.1 = select i1 %cmp3.i.1, i32 %or.i.1, i32 %retval.0.i
  br label %snd_pcm_oss_get_caps1.exit.1

if.then.i.1:                                      ; preds = %snd_pcm_oss_get_caps1.exit
  call void @__sanitizer_cov_trace_pc() #20
  %and.i.1 = and i32 %retval.0.i, 29184
  br label %snd_pcm_oss_get_caps1.exit.1

snd_pcm_oss_get_caps1.exit.1:                     ; preds = %if.then.i.1, %if.then2.i.1, %if.end.i.1.snd_pcm_oss_get_caps1.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %and.i.1, %if.then.i.1 ], [ %retval.0.i, %if.end.i.1.snd_pcm_oss_get_caps1.exit.1_crit_edge ], [ %spec.select.i.1, %if.then2.i.1 ]
  %or = or i32 %retval.0.i.1, 1
  ret i32 %or
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_get_trigger(ptr nocapture noundef readonly %pcm_oss_file) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_oss_file, align 4
  %arrayidx2 = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59
  %6 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %oss, align 8
  %7 = lshr i8 %bf.load, 4
  %8 = and i8 %7, 2
  %9 = zext i8 %8 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %result.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ %9, %land.lhs.true4 ]
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end.if.end21_crit_edge, label %land.lhs.true8

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

land.lhs.true8:                                   ; preds = %if.end
  %runtime9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %runtime9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime9, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %land.lhs.true8.if.end21_crit_edge, label %land.lhs.true11

land.lhs.true8.if.end21_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

land.lhs.true11:                                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  %oss13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59
  %12 = ptrtoint ptr %oss13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load14 = load i8, ptr %oss13, align 8
  %13 = lshr i8 %bf.load14, 5
  %14 = and i8 %13, 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %result.0, %15
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true11, %land.lhs.true8.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %result.1 = phi i32 [ %result.0, %land.lhs.true8.if.end21_crit_edge ], [ %result.0, %if.end.if.end21_crit_edge ], [ %16, %land.lhs.true11 ]
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_get_ptr(ptr nocapture noundef readonly %pcm_oss_file, i32 noundef %stream, ptr noundef %_info) unnamed_addr #2 align 64 {
entry:
  %frames.i = alloca i32, align 4
  %delay = alloca i32, align 4
  %info = alloca %struct.count_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay) #18
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %delay, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #18
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %info, align 4, !annotation !156
  %2 = getelementptr inbounds %struct.count_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !156
  %4 = getelementptr inbounds %struct.count_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !156
  %cmp = icmp eq ptr %_info, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 %stream
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %7, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc i32 @snd_pcm_oss_make_ready(ptr noundef nonnull %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %runtime7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime7, align 4
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59
  %10 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %oss, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %11 = icmp ult i8 %bf.load, 64
  br i1 %11, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end6
  %12 = call ptr @memset(ptr %info, i32 0, i32 12)
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #18
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i, label %if.then13.cleanup_crit_edge, label %if.end.i.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then13
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %_info, i32 12, i32 -1226833920) #24, !srcloc !188
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i.cleanup.sink.split_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp19 = icmp eq i32 %stream, 0
  br i1 %cmp19, label %if.then20, label %if.else31

if.then20:                                        ; preds = %if.end18
  %call21 = call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %7, i32 noundef -2147204831, ptr noundef nonnull %delay) #18
  %14 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call21, label %if.then20.if.else_crit_edge [
    i32 -32, label %if.then20.if.end35.thread_crit_edge
    i32 -86, label %if.then20.if.end35.thread_crit_edge438
    i32 0, label %land.lhs.true
  ]

if.then20.if.end35.thread_crit_edge438:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35.thread

if.then20.if.end35.thread_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35.thread

if.then20.if.else_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %if.then20
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp27 = icmp slt i32 %16, 0
  br i1 %cmp27, label %land.lhs.true.if.end35.thread_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true.if.end35.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %land.lhs.true.if.end35.thread_crit_edge, %if.then20.if.end35.thread_crit_edge, %if.then20.if.end35.thread_crit_edge438
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %delay, align 4
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then20.if.else_crit_edge
  %buffer_used = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 15
  %18 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_used, align 4
  br label %if.end35

if.else31:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frames.i) #18
  %20 = ptrtoint ptr %frames.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %frames.i, align 4, !annotation !156
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %if.else31
  %call.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %7, i32 noundef -2147204831, ptr noundef nonnull %delay) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.cond.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge, label %if.end.i

while.cond.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_position_fixup.exit

if.end.i:                                         ; preds = %while.cond.i
  %21 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime7, align 4
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 18
  %25 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp2.not.i = icmp sgt i32 %24, %26
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge

if.end.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_position_fixup.exit

if.end4.i:                                        ; preds = %if.end.i
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 16
  %27 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %period_size.i, align 4
  %29 = xor i32 %26, -1
  %add.i = add i32 %24, %29
  %sub6.i = add i32 %add.i, %28
  %30 = urem i32 %sub6.i, %28
  %mul.i = sub i32 %sub6.i, %30
  %31 = ptrtoint ptr %frames.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i, ptr %frames.i, align 4
  %call9.i = call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %7, i32 noundef 1074020681, ptr noundef nonnull %frames.i) #18
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end4.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

if.end4.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_capture_position_fixup.exit

snd_pcm_oss_capture_position_fixup.exit:          ; preds = %if.end4.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge, %if.end.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge, %while.cond.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %while.cond.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge ], [ %call.i, %if.end.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge ], [ %call9.i, %if.end4.i.snd_pcm_oss_capture_position_fixup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frames.i) #18
  %buffer_used34 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 15
  %32 = ptrtoint ptr %buffer_used34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_used34, align 4
  %sub = sub i32 0, %33
  br label %if.end35

if.end35:                                         ; preds = %snd_pcm_oss_capture_position_fixup.exit, %if.else
  %fixup.0 = phi i32 [ %19, %if.else ], [ %sub, %snd_pcm_oss_capture_position_fixup.exit ]
  %err.0 = phi i32 [ %call21, %if.else ], [ %err.0.i, %snd_pcm_oss_capture_position_fixup.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp36 = icmp slt i32 %err.0, 0
  br i1 %cmp36, label %if.end35.cleanup_crit_edge, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end38:                                         ; preds = %if.end35.if.end38_crit_edge, %if.end35.thread
  %fixup.0434 = phi i32 [ 0, %if.end35.thread ], [ %fixup.0, %if.end35.if.end38_crit_edge ]
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 37
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %status, align 4
  %hw_ptr = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_ptr, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 18
  %38 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buffer_size, align 4
  %rem = urem i32 %37, %39
  %40 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %runtime7, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 21
  %44 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %45, %43
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %mul.i.i = mul i32 %45, %rem
  %div1.i.i = lshr i32 %mul.i.i, 3
  %buffer_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 59, i32 11
  %46 = ptrtoint ptr %buffer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buffer_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i.i, i32 %47)
  %cmp.i167 = icmp eq i32 %div1.i.i.i, %47
  br i1 %cmp.i167, label %if.end38.snd_pcm_oss_bytes.exit_crit_edge, label %if.end.i169

if.end38.snd_pcm_oss_bytes.exit_crit_edge:        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_bytes.exit

if.end.i169:                                      ; preds = %if.end38
  %conv.i = zext i32 %47 to i64
  %48 = zext i32 %div1.i.i to i64
  %mul.i168 = mul nuw nsw i64 %48, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i168)
  %cmp164.i.i.i = icmp ult i64 %mul.i168, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !186

if.then168.i.i.i:                                 ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i.i = trunc i64 %mul.i168 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %div1.i.i.i
  br label %snd_pcm_oss_bytes.exit

if.else174.i.i.i:                                 ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #20
  %49 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.i.i.i, i64 %mul.i168) #24, !srcloc !192
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %49, 1
  %extract.t17.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %snd_pcm_oss_bytes.exit

snd_pcm_oss_bytes.exit:                           ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.end38.snd_pcm_oss_bytes.exit_crit_edge
  %retval.0.i = phi i32 [ %div1.i.i, %if.end38.snd_pcm_oss_bytes.exit_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t17.i, %if.else174.i.i.i ]
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i, ptr %4, align 4
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 20
  %call.i.i152 = call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #18
  %51 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool41.not = icmp eq i32 %52, 0
  br i1 %tobool41.not, label %if.else58, label %if.then42

if.then42:                                        ; preds = %snd_pcm_oss_bytes.exit
  %hw_ptr_interrupt.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 6
  %53 = ptrtoint ptr %hw_ptr_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw_ptr_interrupt.i, align 8
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %delay, align 4
  %prev_hw_ptr_period = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 20
  %56 = ptrtoint ptr %prev_hw_ptr_period to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %prev_hw_ptr_period, align 8
  %sub45 = sub i32 %54, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45)
  %cmp46 = icmp slt i32 %sub45, 0
  br i1 %cmp46, label %if.then47, label %if.then42.if.end48_crit_edge

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

if.then47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #20
  %boundary = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 33
  %58 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %boundary, align 8
  %add = add i32 %59, %sub45
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then42.if.end48_crit_edge
  %n.0 = phi i32 [ %add, %if.then47 ], [ %sub45, %if.then42.if.end48_crit_edge ]
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %60 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %period_size, align 4
  %div = udiv i32 %n.0, %61
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div, ptr %2, align 4
  %63 = ptrtoint ptr %prev_hw_ptr_period to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %54, ptr %prev_hw_ptr_period, align 8
  %stream51 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 5
  %64 = ptrtoint ptr %stream51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %stream51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp52 = icmp eq i32 %65, 0
  br i1 %cmp52, label %if.then53, label %if.end48.if.end54_crit_edge

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  %66 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %runtime7, align 4
  %buffer_size.i171 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %67, i32 0, i32 18
  %68 = ptrtoint ptr %buffer_size.i171 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buffer_size.i171, align 4
  %add.i172 = add i32 %69, %54
  %boundary.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %67, i32 0, i32 33
  %70 = ptrtoint ptr %boundary.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %boundary.i, align 8
  %rem.i = urem i32 %add.i172, %71
  %control.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %67, i32 0, i32 38
  %72 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %control.i, align 8
  %appl_ptr2.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %appl_ptr2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %rem.i, ptr %appl_ptr2.i, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end48.if.end54_crit_edge
  %75 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %status, align 4
  %hw_ptr56 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %hw_ptr56 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hw_ptr56, align 4
  %79 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %runtime7, align 4
  %buffer_size.i.i174 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %80, i32 0, i32 18
  %81 = ptrtoint ptr %buffer_size.i.i174 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buffer_size.i.i174, align 4
  %frame_bits.i.i.i175 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %80, i32 0, i32 21
  %83 = ptrtoint ptr %frame_bits.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %frame_bits.i.i.i175, align 8
  %mul.i.i.i176 = mul i32 %84, %82
  %div1.i.i.i177 = lshr i32 %mul.i.i.i176, 3
  %mul.i.i178 = mul i32 %84, %78
  %div1.i.i179 = lshr i32 %mul.i.i178, 3
  %buffer_bytes.i180 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %80, i32 0, i32 59, i32 11
  %85 = ptrtoint ptr %buffer_bytes.i180 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buffer_bytes.i180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i.i177, i32 %86)
  %cmp.i181 = icmp eq i32 %div1.i.i.i177, %86
  br i1 %cmp.i181, label %if.end54.snd_pcm_oss_bytes.exit300_crit_edge, label %if.end.i185

if.end54.snd_pcm_oss_bytes.exit300_crit_edge:     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_bytes.exit300

if.end.i185:                                      ; preds = %if.end54
  %conv.i182 = zext i32 %86 to i64
  %87 = zext i32 %div1.i.i179 to i64
  %mul.i183 = mul nuw nsw i64 %87, %conv.i182
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i183)
  %cmp164.i.i.i291 = icmp ult i64 %mul.i183, 4294967296
  br i1 %cmp164.i.i.i291, label %if.then168.i.i.i295, label %if.else174.i.i.i298, !prof !186

if.then168.i.i.i295:                              ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i.i293 = trunc i64 %mul.i183 to i32
  %div172.i.i.i294 = udiv i32 %conv169.i.i.i293, %div1.i.i.i177
  br label %snd_pcm_oss_bytes.exit300

if.else174.i.i.i298:                              ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #20
  %88 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.i.i.i177, i64 %mul.i183) #24, !srcloc !192
  %asmresult1.i.i.i.i296 = extractvalue { i64, i64 } %88, 1
  %extract.t17.i297 = trunc i64 %asmresult1.i.i.i.i296 to i32
  br label %snd_pcm_oss_bytes.exit300

snd_pcm_oss_bytes.exit300:                        ; preds = %if.else174.i.i.i298, %if.then168.i.i.i295, %if.end54.snd_pcm_oss_bytes.exit300_crit_edge
  %retval.0.i299 = phi i32 [ %div1.i.i179, %if.end54.snd_pcm_oss_bytes.exit300_crit_edge ], [ %div172.i.i.i294, %if.then168.i.i.i295 ], [ %extract.t17.i297, %if.else174.i.i.i298 ]
  %and = and i32 %retval.0.i299, 2147483647
  %89 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and, ptr %info, align 4
  br label %if.end8.i.i156

if.else58:                                        ; preds = %snd_pcm_oss_bytes.exit
  %90 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delay, align 4
  %92 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %runtime7, align 4
  %buffer_size.i.i302 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %93, i32 0, i32 18
  %94 = ptrtoint ptr %buffer_size.i.i302 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %buffer_size.i.i302, align 4
  %frame_bits.i.i.i303 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %93, i32 0, i32 21
  %96 = ptrtoint ptr %frame_bits.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %frame_bits.i.i.i303, align 8
  %mul.i.i.i304 = mul i32 %97, %95
  %div1.i.i.i305 = lshr i32 %mul.i.i.i304, 3
  %mul.i.i306 = mul i32 %97, %91
  %div1.i.i307 = lshr i32 %mul.i.i306, 3
  %buffer_bytes.i308 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %93, i32 0, i32 59, i32 11
  %98 = ptrtoint ptr %buffer_bytes.i308 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %buffer_bytes.i308, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i.i305, i32 %99)
  %cmp.i309 = icmp eq i32 %div1.i.i.i305, %99
  br i1 %cmp.i309, label %if.else58.snd_pcm_oss_bytes.exit428_crit_edge, label %if.end.i313

if.else58.snd_pcm_oss_bytes.exit428_crit_edge:    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_bytes.exit428

if.end.i313:                                      ; preds = %if.else58
  %conv.i310 = zext i32 %99 to i64
  %100 = zext i32 %div1.i.i307 to i64
  %mul.i311 = mul nuw nsw i64 %100, %conv.i310
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i311)
  %cmp164.i.i.i419 = icmp ult i64 %mul.i311, 4294967296
  br i1 %cmp164.i.i.i419, label %if.then168.i.i.i423, label %if.else174.i.i.i426, !prof !186

if.then168.i.i.i423:                              ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i.i421 = trunc i64 %mul.i311 to i32
  %div172.i.i.i422 = udiv i32 %conv169.i.i.i421, %div1.i.i.i305
  br label %snd_pcm_oss_bytes.exit428

if.else174.i.i.i426:                              ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #20
  %101 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.i.i.i305, i64 %mul.i311) #24, !srcloc !192
  %asmresult1.i.i.i.i424 = extractvalue { i64, i64 } %101, 1
  %extract.t17.i425 = trunc i64 %asmresult1.i.i.i.i424 to i32
  br label %snd_pcm_oss_bytes.exit428

snd_pcm_oss_bytes.exit428:                        ; preds = %if.else174.i.i.i426, %if.then168.i.i.i423, %if.else58.snd_pcm_oss_bytes.exit428_crit_edge
  %retval.0.i427 = phi i32 [ %div1.i.i307, %if.else58.snd_pcm_oss_bytes.exit428_crit_edge ], [ %div172.i.i.i422, %if.then168.i.i.i423 ], [ %extract.t17.i425, %if.else174.i.i.i426 ]
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %retval.0.i427, ptr %delay, align 4
  br i1 %cmp19, label %if.then61, label %if.else87

if.then61:                                        ; preds = %snd_pcm_oss_bytes.exit428
  %buggyptr = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 24, i32 1, i32 1
  %103 = ptrtoint ptr %buggyptr to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load63 = load i8, ptr %buggyptr, align 4
  %104 = and i8 %bf.load63, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool67.not = icmp eq i8 %104, 0
  br i1 %tobool67.not, label %if.else75, label %if.then68

if.then68:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #20
  %buffer_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 11
  %105 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %buffer_bytes, align 4
  %107 = add i32 %retval.0.i427, %fixup.0434
  %sub71 = sub i32 %106, %107
  br label %if.end81

if.else75:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #20
  %add76 = add i32 %retval.0.i427, %fixup.0434
  br label %if.end81

if.end81:                                         ; preds = %if.else75, %if.then68
  %add76.sink = phi i32 [ %add76, %if.else75 ], [ %sub71, %if.then68 ]
  %period_bytes78 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 7
  %108 = ptrtoint ptr %period_bytes78 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %period_bytes78, align 4
  %div79 = udiv i32 %add76.sink, %109
  %110 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %div79, ptr %2, align 4
  %bytes83 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 12
  %111 = ptrtoint ptr %bytes83 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bytes83, align 8
  %sub84 = sub i32 %112, %retval.0.i427
  %and85 = and i32 %sub84, 2147483647
  %113 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and85, ptr %info, align 4
  br label %if.end8.i.i156

if.else87:                                        ; preds = %snd_pcm_oss_bytes.exit428
  call void @__sanitizer_cov_trace_pc() #20
  %add88 = add i32 %retval.0.i427, %fixup.0434
  %114 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add88, ptr %delay, align 4
  %period_bytes90 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 7
  %115 = ptrtoint ptr %period_bytes90 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %period_bytes90, align 4
  %div91 = udiv i32 %add88, %116
  %117 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %div91, ptr %2, align 4
  %bytes94 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 59, i32 12
  %118 = ptrtoint ptr %bytes94 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bytes94, align 8
  %add95 = add i32 %119, %add88
  %and96 = and i32 %add95, 2147483647
  %120 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and96, ptr %info, align 4
  br label %if.end8.i.i156

if.end8.i.i156:                                   ; preds = %if.else87, %if.end81, %snd_pcm_oss_bytes.exit300
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #18
  %call.i.i157 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i157, label %if.end8.i.i156.cleanup_crit_edge, label %if.end.i.i160

if.end8.i.i156.cleanup_crit_edge:                 ; preds = %if.end8.i.i156
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.i160:                                    ; preds = %if.end8.i.i156
  %121 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %_info, i32 12, i32 -1226833920) #24, !srcloc !188
  %asmresult.i.i158 = extractvalue { i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i158)
  %cmp.i6.i159 = icmp eq i32 %asmresult.i.i158, 0
  br i1 %cmp.i6.i159, label %if.end.i.i160.cleanup.sink.split_crit_edge, label %if.end.i.i160.cleanup_crit_edge

if.end.i.i160.cleanup_crit_edge:                  ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.i160.cleanup.sink.split_crit_edge:       ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i160.cleanup.sink.split_crit_edge, %if.end.i.i.cleanup.sink.split_crit_edge
  %call.i.i.i161 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 12) #18
  %call.i12.i.i162 = call i32 @arm_copy_to_user(ptr noundef nonnull %_info, ptr noundef nonnull %info, i32 noundef 12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i162)
  %tobool101.not = icmp eq i32 %call.i12.i.i162, 0
  %spec.select437 = select i1 %tobool101.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.i160.cleanup_crit_edge, %if.end8.i.i156.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ %err.0, %if.end35.cleanup_crit_edge ], [ -14, %if.then13.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end8.i.i156.cleanup_crit_edge ], [ -14, %if.end.i.i160.cleanup_crit_edge ], [ %spec.select437, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_get_odelay(ptr nocapture noundef readonly %pcm_oss_file) unnamed_addr #2 align 64 {
entry:
  %delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay) #18
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %delay, align 4, !annotation !156
  %1 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcm_oss_file, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @snd_pcm_oss_make_ready(ptr noundef nonnull %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %runtime4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime4, align 4
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 59
  %5 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %oss, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %6 = icmp ult i8 %bf.load, 64
  br i1 %6, label %if.end11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %call12 = call i32 @snd_pcm_kernel_ioctl(ptr noundef nonnull %2, i32 noundef -2147204831, ptr noundef nonnull %delay) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call12)
  %cmp13 = icmp eq i32 %call12, -32
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %delay, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp15 = icmp slt i32 %call12, 0
  br i1 %cmp15, label %if.else.cleanup_crit_edge, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then14
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %10 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime4, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %15, %13
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %mul.i.i = mul i32 %15, %9
  %div1.i.i = lshr i32 %mul.i.i, 3
  %buffer_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 59, i32 11
  %16 = ptrtoint ptr %buffer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i.i, i32 %17)
  %cmp.i = icmp eq i32 %div1.i.i.i, %17
  br i1 %cmp.i, label %if.end18.cleanup_crit_edge, label %if.end.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %conv.i = zext i32 %17 to i64
  %18 = zext i32 %div1.i.i to i64
  %mul.i = mul nuw nsw i64 %18, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !186

if.then168.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %div1.i.i.i
  br label %cleanup

if.else174.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %19 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.i.i.i, i64 %mul.i) #24, !srcloc !192
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %19, 1
  %extract.t17.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.end18.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %call12, %if.else.cleanup_crit_edge ], [ %div1.i.i, %if.end18.cleanup_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t17.i, %if.else174.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_sync1(ptr noundef %substream, i32 noundef %size) #2 align 64 {
entry:
  %channels.i = alloca ptr, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #18
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = getelementptr inbounds i8, ptr %wait, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !145) #18
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %1, align 4
  %sleep = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 40
  call void @add_wait_queue(ptr noundef %sleep, ptr noundef nonnull %wait) #18
  %buffer = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 14
  %mul.i.i = shl i32 %size, 3
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  br label %while.cond

while.cond:                                       ; preds = %if.end161.while.cond_crit_edge, %entry
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 8
  %15 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1, align 4
  %plugin_first.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 59, i32 18
  %17 = ptrtoint ptr %plugin_first.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plugin_first.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channels.i) #18
  %19 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %channels.i, align 4, !annotation !156
  %src_width.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 0, i32 4
  %20 = ptrtoint ptr %src_width.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_width.i, align 4
  %channels6.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %channels6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels6.i, align 4
  %mul.i = mul i32 %23, %21
  %div60.i = lshr i32 %mul.i, 3
  %div15.i = udiv i32 %size, %div60.i
  %call16.i = call i32 @snd_pcm_plug_client_channels_buf(ptr noundef %substream, ptr noundef %14, i32 noundef %div15.i, ptr noundef nonnull %channels.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i = icmp slt i32 %call16.i, 0
  br i1 %cmp.i, label %if.then.i.cleanup.thread.i_crit_edge, label %if.end18.i

if.then.i.cleanup.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

if.end18.i:                                       ; preds = %if.then.i
  %24 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channels.i, align 4
  %call19.i = call i32 @snd_pcm_plug_write_transfer(ptr noundef %substream, ptr noundef %25, i32 noundef %call16.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 1
  br i1 %cmp20.i, label %if.end18.i.cleanup.thread.i_crit_edge, label %cleanup.i

if.end18.i.cleanup.thread.i_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end18.i.cleanup.thread.i_crit_edge, %if.then.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call19.i, %if.end18.i.cleanup.thread.i_crit_edge ], [ %call16.i, %if.then.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i) #18
  br label %if.end

cleanup.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul23.i = mul i32 %call19.i, %div60.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i) #18
  br label %snd_pcm_oss_write2.exit

if.else.i:                                        ; preds = %while.cond
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 21
  %26 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %27
  %call26.i = call i32 @snd_pcm_oss_write3(ptr noundef %substream, ptr noundef %14, i32 noundef %div.i.i, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 1
  br i1 %cmp27.i, label %if.else.i.if.end_crit_edge, label %if.end29.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end29.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i62.i = mul i32 %29, %call26.i
  %div1.i.i = lshr i32 %mul.i62.i, 3
  br label %snd_pcm_oss_write2.exit

snd_pcm_oss_write2.exit:                          ; preds = %if.end29.i, %cleanup.i
  %retval.1.i = phi i32 [ %mul23.i, %cleanup.i ], [ %div1.i.i, %if.end29.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp = icmp sgt i32 %retval.1.i, 0
  br i1 %cmp, label %if.then, label %snd_pcm_oss_write2.exit.if.end_crit_edge

snd_pcm_oss_write2.exit.if.end_crit_edge:         ; preds = %snd_pcm_oss_write2.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %snd_pcm_oss_write2.exit
  call void @__sanitizer_cov_trace_pc() #20
  %buffer_used = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 15
  %30 = ptrtoint ptr %buffer_used to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %buffer_used, align 4
  br label %while.end

if.end:                                           ; preds = %snd_pcm_oss_write2.exit.if.end_crit_edge, %if.else.i.if.end_crit_edge, %cleanup.thread.i
  %retval.1.i187 = phi i32 [ %retval.1.i, %snd_pcm_oss_write2.exit.if.end_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %call26.i, %if.else.i.if.end_crit_edge ]
  %31 = zext i32 %retval.1.i187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %retval.1.i187, label %if.end.while.end_crit_edge [
    i32 0, label %if.end.__here_crit_edge
    i32 -11, label %if.end.__here_crit_edge190
  ]

if.end.__here_crit_edge190:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

if.end.__here_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

__here:                                           ; preds = %if.end.__here_crit_edge, %if.end.__here_crit_edge190
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@snd_pcm_oss_sync1, %__here) to i32), ptr %task_state_change, align 4
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %35, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !193
  call void @snd_pcm_stream_lock_irq(ptr noundef %substream) #18
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %status, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  call void @snd_pcm_stream_unlock_irq(ptr noundef %substream) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp72.not = icmp eq i32 %40, 3
  br i1 %cmp72.not, label %if.end154, label %__here124

__here124:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %task_state_change128 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212
  %43 = ptrtoint ptr %task_state_change128 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 ptrtoint (ptr blockaddress(@snd_pcm_oss_sync1, %__here124) to i32), ptr %task_state_change128, align 4
  %44 = load ptr, ptr %task, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %44, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !194
  br label %while.end

if.end154:                                        ; preds = %__here
  %call155 = call i32 @schedule_timeout(i32 noundef 1000) #18
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stack.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %52 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i184 = icmp eq i32 %52, 0
  br i1 %tobool.not.i184, label %signal_pending.exit, label %if.end154.while.end_crit_edge, !prof !186

if.end154.while.end_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

signal_pending.exit:                              ; preds = %if.end154
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %49, align 4
  %and1.i.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool159.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool159.not, label %if.end161, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end161:                                        ; preds = %signal_pending.exit
  %cmp162 = icmp eq i32 %call155, 0
  br i1 %cmp162, label %do.end166, label %if.end161.while.cond_crit_edge

if.end161.while.cond_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

do.end166:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #20
  %55 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %substream, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.24) #21
  br label %while.end

while.end:                                        ; preds = %do.end166, %signal_pending.exit.while.end_crit_edge, %if.end154.while.end_crit_edge, %__here124, %if.end.while.end_crit_edge, %if.then
  %result.0 = phi i32 [ 0, %if.then ], [ 0, %__here124 ], [ -5, %do.end166 ], [ -512, %if.end154.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ %retval.1.i187, %if.end.while.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %sleep, ptr noundef nonnull %wait) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #18
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_oss_get_active_substream(ptr nocapture noundef readonly %pcm_oss_file, ptr noundef writeonly %r_substream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcm_oss_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_oss_file, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %oss = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59
  %4 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %oss, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then5:                                         ; preds = %if.end
  %params_lock.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 16
  %call6.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %snd_pcm_oss_change_params.exit, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

snd_pcm_oss_change_params.exit:                   ; preds = %if.then5
  %call11.i = tail call fastcc i32 @snd_pcm_oss_change_params_locked(ptr noundef nonnull %1) #18
  tail call void @mutex_unlock(ptr noundef %params_lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp6 = icmp slt i32 %call11.i, 0
  br i1 %cmp6, label %snd_pcm_oss_change_params.exit.cleanup_crit_edge, label %snd_pcm_oss_change_params.exit.for.inc_crit_edge

snd_pcm_oss_change_params.exit.for.inc_crit_edge: ; preds = %snd_pcm_oss_change_params.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

snd_pcm_oss_change_params.exit.cleanup_crit_edge: ; preds = %snd_pcm_oss_change_params.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc:                                          ; preds = %snd_pcm_oss_change_params.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr [2 x ptr], ptr %pcm_oss_file, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.1 = icmp eq ptr %6, null
  %tobool10.not = icmp eq ptr %1, null
  br i1 %cmp1.1, label %for.inc.1, label %if.end.1

if.end.1:                                         ; preds = %for.inc
  %spec.select.1 = select i1 %tobool10.not, ptr %6, ptr %1
  %runtime.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %runtime.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime.1, align 4
  %oss.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59
  %9 = ptrtoint ptr %oss.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.1 = load i8, ptr %oss.1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %tobool.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %tobool.not.1, label %if.end.1.if.end12_crit_edge, label %if.then5.1

if.end.1.if.end12_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then5.1:                                       ; preds = %if.end.1
  %params_lock.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 59, i32 16
  %call6.i.1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %params_lock.i.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.1)
  %tobool7.not.i.1 = icmp eq i32 %call6.i.1, 0
  br i1 %tobool7.not.i.1, label %snd_pcm_oss_change_params.exit.1, label %if.then5.1.cleanup_crit_edge

if.then5.1.cleanup_crit_edge:                     ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

snd_pcm_oss_change_params.exit.1:                 ; preds = %if.then5.1
  %call11.i.1 = tail call fastcc i32 @snd_pcm_oss_change_params_locked(ptr noundef nonnull %6) #18
  tail call void @mutex_unlock(ptr noundef %params_lock.i.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.1)
  %cmp6.1 = icmp slt i32 %call11.i.1, 0
  br i1 %cmp6.1, label %snd_pcm_oss_change_params.exit.1.cleanup_crit_edge, label %snd_pcm_oss_change_params.exit.1.if.end12_crit_edge

snd_pcm_oss_change_params.exit.1.if.end12_crit_edge: ; preds = %snd_pcm_oss_change_params.exit.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

snd_pcm_oss_change_params.exit.1.cleanup_crit_edge: ; preds = %snd_pcm_oss_change_params.exit.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  br i1 %tobool10.not, label %for.inc.1.cleanup_crit_edge, label %for.inc.1.if.end12_crit_edge

for.inc.1.if.end12_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %for.inc.1.if.end12_crit_edge, %snd_pcm_oss_change_params.exit.1.if.end12_crit_edge, %if.end.1.if.end12_crit_edge
  %asubstream.2.135 = phi ptr [ %1, %for.inc.1.if.end12_crit_edge ], [ %spec.select.1, %snd_pcm_oss_change_params.exit.1.if.end12_crit_edge ], [ %spec.select.1, %if.end.1.if.end12_crit_edge ]
  %tobool13.not = icmp eq ptr %r_substream, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %r_substream to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %asubstream.2.135, ptr %r_substream, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %snd_pcm_oss_change_params.exit.1.cleanup_crit_edge, %if.then5.1.cleanup_crit_edge, %snd_pcm_oss_change_params.exit.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %for.inc.1.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end12.cleanup_crit_edge ], [ %call11.i, %snd_pcm_oss_change_params.exit.cleanup_crit_edge ], [ -512, %if.then5.cleanup_crit_edge ], [ -512, %if.then5.1.cleanup_crit_edge ], [ %call11.i.1, %snd_pcm_oss_change_params.exit.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_mmap_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_oss_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_open_substream(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_release_substream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_oss_release_substream(ptr nocapture noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %buffer = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 14
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 8
  tail call void @kvfree(ptr noundef %3) #18
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buffer, align 8
  %5 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime1, align 4
  %plugin_first.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 59, i32 18
  %7 = ptrtoint ptr %plugin_first.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %plugin_first.i, align 8
  %tobool.not1.i = icmp eq ptr %8, null
  br i1 %tobool.not1.i, label %entry.snd_pcm_oss_plugin_clear.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.snd_pcm_oss_plugin_clear.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_plugin_clear.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %plugin.02.i = phi ptr [ %10, %while.body.i.while.body.i_crit_edge ], [ %8, %entry.while.body.i_crit_edge ]
  %next2.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.02.i, i32 0, i32 13
  %9 = ptrtoint ptr %next2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next2.i, align 4
  %call.i = tail call i32 @snd_pcm_plugin_free(ptr noundef nonnull %plugin.02.i) #18
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %while.body.i.snd_pcm_oss_plugin_clear.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.snd_pcm_oss_plugin_clear.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_plugin_clear.exit

snd_pcm_oss_plugin_clear.exit:                    ; preds = %while.body.i.snd_pcm_oss_plugin_clear.exit_crit_edge, %entry.snd_pcm_oss_plugin_clear.exit_crit_edge
  %plugin_last.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 59, i32 19
  %11 = ptrtoint ptr %plugin_last.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %plugin_last.i, align 4
  %12 = ptrtoint ptr %plugin_first.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %plugin_first.i, align 8
  %oss4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 24
  %13 = ptrtoint ptr %oss4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %oss4, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %oss4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_oss_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %oss = getelementptr inbounds %struct.snd_pcm_str, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oss, align 4
  %setup_mutex = getelementptr inbounds %struct.snd_pcm_str, ptr %1, i32 0, i32 5, i32 1
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #18
  %tobool.not48 = icmp eq ptr %3, null
  br i1 %tobool.not48, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %setup.049 = phi ptr [ %19, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %6 = ptrtoint ptr %setup.049 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %setup.049, align 4
  %periods = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.049, i32 0, i32 2
  %8 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %periods, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.049, i32 0, i32 3
  %10 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size, align 4
  %disable = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.049, i32 0, i32 1
  %12 = ptrtoint ptr %disable to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %disable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool4.not, ptr @.str.6, ptr @.str.29
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.6, ptr @.str.30
  %14 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.6, ptr @.str.31
  %15 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.6, ptr @.str.32
  %16 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.6, ptr @.str.33
  %17 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool32.not = icmp eq i8 %17, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.6, ptr @.str.34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %cond, ptr noundef nonnull %cond9, ptr noundef nonnull %cond15, ptr noundef nonnull %cond21, ptr noundef nonnull %cond27, ptr noundef nonnull %cond33) #18
  %next = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.049, i32 0, i32 4
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_oss_proc_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #2 align 64 {
entry:
  %line = alloca [128 x i8], align 1
  %str = alloca [32 x i8], align 1
  %task_name = alloca [32 x i8], align 1
  %template.sroa.22 = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %line) #18
  %2 = call ptr @memset(ptr %line, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %str) #18
  %3 = call ptr @memset(ptr %str, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %task_name) #18
  %4 = call ptr @memset(ptr %task_name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %template.sroa.22)
  %call238 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 128) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool.not239 = icmp eq i32 %call238, 0
  br i1 %tobool.not239, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %oss = getelementptr inbounds %struct.snd_pcm_str, ptr %1, i32 0, i32 5
  %setup_mutex = getelementptr inbounds %struct.snd_pcm_str, ptr %1, i32 0, i32 5, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #18
  %5 = call ptr @memset(ptr %template.sroa.22, i32 0, i32 3)
  %call4 = call ptr @snd_info_get_str(ptr noundef nonnull %task_name, ptr noundef nonnull %line, i32 noundef 32) #18
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %task_name, ptr noundef nonnull dereferenceable(6) @.str.35, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %while.body.if.then_crit_edge, label %lor.lhs.false

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %bcmp213 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %task_name, ptr noundef nonnull dereferenceable(6) @.str.36, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp213)
  %tobool10.not = icmp eq i32 %bcmp213, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.then_crit_edge, label %for.cond.preheader

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

for.cond.preheader:                               ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %6)
  %setup.0227 = load ptr, ptr %oss, align 4
  %tobool14.not228 = icmp eq ptr %setup.0227, null
  br i1 %tobool14.not228, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  %7 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %oss, align 4
  store ptr null, ptr %oss, align 4
  %tobool.not10.i = icmp eq ptr %8, null
  br i1 %tobool.not10.i, label %if.then.snd_pcm_oss_proc_free_setup_list.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.snd_pcm_oss_proc_free_setup_list.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_proc_free_setup_list.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %setup.011.i = phi ptr [ %10, %for.body.i.for.body.i_crit_edge ], [ %8, %if.then.for.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.011.i, i32 0, i32 4
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i, align 4
  %11 = ptrtoint ptr %setup.011.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setup.011.i, align 4
  call void @kfree(ptr noundef %12) #18
  call void @kfree(ptr noundef nonnull %setup.011.i) #18
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.snd_pcm_oss_proc_free_setup_list.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.snd_pcm_oss_proc_free_setup_list.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %snd_pcm_oss_proc_free_setup_list.exit

snd_pcm_oss_proc_free_setup_list.exit:            ; preds = %for.body.i.snd_pcm_oss_proc_free_setup_list.exit_crit_edge, %if.then.snd_pcm_oss_proc_free_setup_list.exit_crit_edge
  %13 = ptrtoint ptr %oss to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %oss, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end145, %snd_pcm_oss_proc_free_setup_list.exit
  call void @mutex_unlock(ptr noundef %setup_mutex) #18
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 128) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %setup.0229 = phi ptr [ %setup.0, %for.inc.for.body_crit_edge ], [ %setup.0227, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %setup.0229 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %setup.0229, align 4
  %call17 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull %task_name) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %template.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %setup.0229, i32 4
  %16 = ptrtoint ptr %template.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %template.sroa.8.0.copyload158 = load i8, ptr %template.sroa.8.0..sroa_idx, align 4
  %template.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %setup.0229, i32 5
  %17 = call ptr @memcpy(ptr %template.sroa.22, ptr %template.sroa.22.0..sroa_idx, i32 3)
  %template.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %setup.0229, i32 16
  %18 = ptrtoint ptr %template.sroa.27.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %template.sroa.27.0.copyload170 = load ptr, ptr %template.sroa.27.0..sroa_idx, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.0229, i32 0, i32 4
  %19 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %19)
  %setup.0 = load ptr, ptr %next, align 4
  %tobool14.not = icmp eq ptr %setup.0, null
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then19, %for.cond.preheader.for.end_crit_edge
  %setup.0224 = phi ptr [ %setup.0229, %if.then19 ], [ null, %for.cond.preheader.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %tobool14.not222 = phi i1 [ false, %if.then19 ], [ true, %for.cond.preheader.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ]
  %template.sroa.0.1 = phi ptr [ %15, %if.then19 ], [ null, %for.cond.preheader.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %template.sroa.8.1 = phi i8 [ %template.sroa.8.0.copyload158, %if.then19 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %template.sroa.27.1 = phi ptr [ %template.sroa.27.0.copyload170, %if.then19 ], [ null, %for.cond.preheader.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call22 = call ptr @snd_info_get_str(ptr noundef nonnull %str, ptr noundef %call4, i32 noundef 32) #18
  %call24 = call i32 @simple_strtoul(ptr noundef nonnull %str, ptr noundef null, i32 noundef 10) #18
  %call26 = call ptr @snd_info_get_str(ptr noundef nonnull %str, ptr noundef %call22, i32 noundef 32) #18
  %call28 = call i32 @simple_strtoul(ptr noundef nonnull %str, ptr noundef null, i32 noundef 10) #18
  br label %for.body30

for.body30:                                       ; preds = %for.inc35.for.body30_crit_edge, %for.end
  %idx1.0232 = phi i32 [ 31, %for.end ], [ %dec, %for.inc35.for.body30_crit_edge ]
  %shl = shl nuw i32 1, %idx1.0232
  %and = and i32 %shl, %call28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  %dec = add i32 %idx1.0232, -1
  br i1 %tobool32.not, label %for.inc35, label %for.end36

for.inc35:                                        ; preds = %for.body30
  %cmp.not = icmp eq i32 %idx1.0232, 0
  br i1 %cmp.not, label %for.inc35.do.body.preheader_crit_edge, label %for.inc35.for.body30_crit_edge

for.inc35.for.body30_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body30

for.inc35.do.body.preheader_crit_edge:            ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.preheader

for.end36:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec)
  %cmp39234 = icmp sgt i32 %dec, -1
  br i1 %cmp39234, label %for.end36.for.body40_crit_edge, label %for.end36.do.body.preheader_crit_edge

for.end36.do.body.preheader_crit_edge:            ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.preheader

for.end36.for.body40_crit_edge:                   ; preds = %for.end36
  br label %for.body40

do.body.preheader:                                ; preds = %for.body40.do.body.preheader_crit_edge, %for.end36.do.body.preheader_crit_edge, %for.inc35.do.body.preheader_crit_edge
  %template.sroa.23.1.lcssa = phi i32 [ %call28, %for.end36.do.body.preheader_crit_edge ], [ %and43, %for.body40.do.body.preheader_crit_edge ], [ %call28, %for.inc35.do.body.preheader_crit_edge ]
  br label %do.body

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.end36.for.body40_crit_edge
  %idx1.1236 = phi i32 [ %idx1.1, %for.body40.for.body40_crit_edge ], [ %dec, %for.end36.for.body40_crit_edge ]
  %template.sroa.23.1235 = phi i32 [ %and43, %for.body40.for.body40_crit_edge ], [ %call28, %for.end36.for.body40_crit_edge ]
  %shl41 = shl nuw i32 1, %idx1.1236
  %neg = xor i32 %shl41, -1
  %and43 = and i32 %template.sroa.23.1235, %neg
  %idx1.1 = add nsw i32 %idx1.1236, -1
  %cmp39.not = icmp eq i32 %idx1.1236, 0
  br i1 %cmp39.not, label %for.body40.do.body.preheader_crit_edge, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body40

for.body40.do.body.preheader_crit_edge:           ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.preheader

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %ptr.0 = phi ptr [ %call48, %do.cond.do.body_crit_edge ], [ %call26, %do.body.preheader ]
  %template.sroa.8.2 = phi i8 [ %template.sroa.8.3, %do.cond.do.body_crit_edge ], [ %template.sroa.8.1, %do.body.preheader ]
  %call48 = call ptr @snd_info_get_str(ptr noundef nonnull %str, ptr noundef %ptr.0, i32 noundef 32) #18
  %bcmp214 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %str, ptr noundef nonnull dereferenceable(8) @.str.37, i32 8) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp214)
  %tobool51.not = icmp eq i32 %bcmp214, 0
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set = or i8 %template.sroa.8.2, -128
  br label %do.cond

if.else:                                          ; preds = %do.body
  %bcmp215 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %str, ptr noundef nonnull dereferenceable(7) @.str.38, i32 7) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp215)
  %tobool55.not = icmp eq i32 %bcmp215, 0
  br i1 %tobool55.not, label %if.then56, label %if.else60

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set59 = or i8 %template.sroa.8.2, 64
  br label %do.cond

if.else60:                                        ; preds = %if.else
  %bcmp216 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %str, ptr noundef nonnull dereferenceable(6) @.str.39, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp216)
  %tobool63.not = icmp eq i32 %bcmp216, 0
  br i1 %tobool63.not, label %if.then64, label %if.else68

if.then64:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set67 = or i8 %template.sroa.8.2, 32
  br label %do.cond

if.else68:                                        ; preds = %if.else60
  %bcmp217 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %str, ptr noundef nonnull dereferenceable(10) @.str.40, i32 10) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp217)
  %tobool71.not = icmp eq i32 %bcmp217, 0
  br i1 %tobool71.not, label %if.then72, label %if.else76

if.then72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set75 = or i8 %template.sroa.8.2, 16
  br label %do.cond

if.else76:                                        ; preds = %if.else68
  %bcmp218 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %str, ptr noundef nonnull dereferenceable(13) @.str.41, i32 13) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp218)
  %tobool79.not = icmp eq i32 %bcmp218, 0
  br i1 %tobool79.not, label %if.then80, label %if.else84

if.then80:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set83 = or i8 %template.sroa.8.2, 8
  br label %do.cond

if.else84:                                        ; preds = %if.else76
  %bcmp219 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %str, ptr noundef nonnull dereferenceable(11) @.str.42, i32 11) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp219)
  %tobool87.not = icmp eq i32 %bcmp219, 0
  br i1 %tobool87.not, label %if.then88, label %if.else92

if.then88:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set91 = or i8 %template.sroa.8.2, 4
  br label %do.cond

if.else92:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #20
  %bcmp220 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %str, ptr noundef nonnull dereferenceable(10) @.str.43, i32 10) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp220)
  %tobool95.not = icmp eq i32 %bcmp220, 0
  %bf.set99 = or i8 %template.sroa.8.2, 2
  %spec.select = select i1 %tobool95.not, i8 %bf.set99, i8 %template.sroa.8.2
  br label %do.cond

do.cond:                                          ; preds = %if.else92, %if.then88, %if.then80, %if.then72, %if.then64, %if.then56, %if.then52
  %template.sroa.8.3 = phi i8 [ %bf.set91, %if.then88 ], [ %bf.set83, %if.then80 ], [ %bf.set75, %if.then72 ], [ %bf.set67, %if.then64 ], [ %bf.set59, %if.then56 ], [ %bf.set, %if.then52 ], [ %spec.select, %if.else92 ]
  %20 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %str, align 1
  %tobool108.not = icmp eq i8 %21, 0
  br i1 %tobool108.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.end:                                           ; preds = %do.cond
  br i1 %tobool14.not222, label %if.then110, label %do.end.if.end145_crit_edge

do.end.if.end145_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end145

if.then110:                                       ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 20) #23
  %tobool112.not = icmp eq ptr %call7.i, null
  br i1 %tobool112.not, label %if.then110.cleanup.sink.split_crit_edge, label %if.end116

if.then110.cleanup.sink.split_crit_edge:          ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end116:                                        ; preds = %if.then110
  %23 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oss, align 4
  %cmp119 = icmp eq ptr %24, null
  br i1 %cmp119, label %if.end116.if.end134_crit_edge, label %if.end116.for.cond126_crit_edge

if.end116.for.cond126_crit_edge:                  ; preds = %if.end116
  br label %for.cond126

if.end116.if.end134_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end134

for.cond126:                                      ; preds = %for.cond126.for.cond126_crit_edge, %if.end116.for.cond126_crit_edge
  %setup1.0 = phi ptr [ %26, %for.cond126.for.cond126_crit_edge ], [ %24, %if.end116.for.cond126_crit_edge ]
  %next127 = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup1.0, i32 0, i32 4
  %25 = ptrtoint ptr %next127 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next127, align 4
  %tobool128.not = icmp eq ptr %26, null
  br i1 %tobool128.not, label %for.end132, label %for.cond126.for.cond126_crit_edge

for.cond126.for.cond126_crit_edge:                ; preds = %for.cond126
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond126

for.end132:                                       ; preds = %for.cond126
  call void @__sanitizer_cov_trace_pc() #20
  %next127.le = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup1.0, i32 0, i32 4
  br label %if.end134

if.end134:                                        ; preds = %for.end132, %if.end116.if.end134_crit_edge
  %next127.le.sink = phi ptr [ %next127.le, %for.end132 ], [ %oss, %if.end116.if.end134_crit_edge ]
  %27 = ptrtoint ptr %next127.le.sink to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %next127.le.sink, align 4
  %call136 = call noalias ptr @kstrdup(ptr noundef nonnull %task_name, i32 noundef 3264) #18
  %tobool139.not = icmp eq ptr %call136, null
  br i1 %tobool139.not, label %if.then140, label %if.end134.if.end145_crit_edge

if.end134.if.end145_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end145

if.then140:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i) #18
  br label %cleanup.sink.split

if.end145:                                        ; preds = %if.end134.if.end145_crit_edge, %do.end.if.end145_crit_edge
  %setup.1 = phi ptr [ %call7.i, %if.end134.if.end145_crit_edge ], [ %setup.0224, %do.end.if.end145_crit_edge ]
  %template.sroa.0.2 = phi ptr [ %call136, %if.end134.if.end145_crit_edge ], [ %template.sroa.0.1, %do.end.if.end145_crit_edge ]
  %28 = ptrtoint ptr %setup.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %template.sroa.0.2, ptr %setup.1, align 4
  %template.sroa.8.0..sroa_idx159 = getelementptr inbounds i8, ptr %setup.1, i32 4
  %29 = ptrtoint ptr %template.sroa.8.0..sroa_idx159 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %template.sroa.8.3, ptr %template.sroa.8.0..sroa_idx159, align 4
  %template.sroa.22.0..sroa_idx161 = getelementptr inbounds i8, ptr %setup.1, i32 5
  %30 = call ptr @memcpy(ptr %template.sroa.22.0..sroa_idx161, ptr %template.sroa.22, i32 3)
  %template.sroa.22162.0..sroa_idx164 = getelementptr inbounds i8, ptr %setup.1, i32 8
  %31 = ptrtoint ptr %template.sroa.22162.0..sroa_idx164 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call24, ptr %template.sroa.22162.0..sroa_idx164, align 4
  %template.sroa.23.0..sroa_idx167 = getelementptr inbounds i8, ptr %setup.1, i32 12
  %32 = ptrtoint ptr %template.sroa.23.0..sroa_idx167 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %template.sroa.23.1.lcssa, ptr %template.sroa.23.0..sroa_idx167, align 4
  %template.sroa.27.0..sroa_idx171 = getelementptr inbounds i8, ptr %setup.1, i32 16
  %33 = ptrtoint ptr %template.sroa.27.0..sroa_idx171 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %template.sroa.27.1, ptr %template.sroa.27.0..sroa_idx171, align 4
  br label %while.cond.backedge

cleanup.sink.split:                               ; preds = %if.then140, %if.then110.cleanup.sink.split_crit_edge
  %error141 = getelementptr inbounds %struct.snd_info_buffer, ptr %buffer, i32 0, i32 5
  %34 = ptrtoint ptr %error141 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -12, ptr %error141, align 4
  call void @mutex_unlock(ptr noundef %setup_mutex) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %template.sroa.22)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %task_name) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %str) #18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_get_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_oss_device(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind readnone }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !92, !93, !94, !96, !98, !100, !101, !102, !103, !105, !107, !108, !110, !112, !113, !114, !115, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144}
!llvm.named.register.sp = !{!145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../sound/core/oss/pcm_oss.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../sound/core/oss/pcm_oss.c", i32 40, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../sound/core/oss/pcm_oss.c", i32 41, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_dsp_map, !8, !"__param_dsp_map", i1 false, i1 false}
!8 = !{!"../sound/core/oss/pcm_oss.c", i32 42, i32 1}
!9 = !{ptr @__UNIQUE_ID_dsp_maptype236, !8, !"__UNIQUE_ID_dsp_maptype236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_dsp_map237, !11, !"__UNIQUE_ID_dsp_map237", i1 false, i1 false}
!11 = !{!"../sound/core/oss/pcm_oss.c", i32 43, i32 1}
!12 = !{ptr @__param_adsp_map, !13, !"__param_adsp_map", i1 false, i1 false}
!13 = !{!"../sound/core/oss/pcm_oss.c", i32 44, i32 1}
!14 = !{ptr @__UNIQUE_ID_adsp_maptype238, !13, !"__UNIQUE_ID_adsp_maptype238", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_adsp_map239, !16, !"__UNIQUE_ID_adsp_map239", i1 false, i1 false}
!16 = !{!"../sound/core/oss/pcm_oss.c", i32 45, i32 1}
!17 = !{ptr @__param_nonblock_open, !18, !"__param_nonblock_open", i1 false, i1 false}
!18 = !{!"../sound/core/oss/pcm_oss.c", i32 46, i32 1}
!19 = !{ptr @__UNIQUE_ID_nonblock_opentype240, !18, !"__UNIQUE_ID_nonblock_opentype240", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_nonblock_open241, !21, !"__UNIQUE_ID_nonblock_open241", i1 false, i1 false}
!21 = !{!"../sound/core/oss/pcm_oss.c", i32 47, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias242, !23, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!23 = !{!"../sound/core/oss/pcm_oss.c", i32 48, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias243, !25, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!25 = !{!"../sound/core/oss/pcm_oss.c", i32 49, i32 1}
!26 = !{ptr @__initcall__kmod_snd_pcm_oss__255_3237_alsa_pcm_oss_init6, !27, !"__initcall__kmod_snd_pcm_oss__255_3237_alsa_pcm_oss_init6", i1 false, i1 false}
!27 = !{!"../sound/core/oss/pcm_oss.c", i32 3237, i32 1}
!28 = !{ptr @__exitcall_alsa_pcm_oss_exit, !29, !"__exitcall_alsa_pcm_oss_exit", i1 false, i1 false}
!29 = !{!"../sound/core/oss/pcm_oss.c", i32 3238, i32 1}
!30 = !{ptr @__param_str_dsp_map, !8, !"__param_str_dsp_map", i1 false, i1 false}
!31 = !{ptr @__param_arr_dsp_map, !8, !"__param_arr_dsp_map", i1 false, i1 false}
!32 = !{ptr @dsp_map, !33, !"dsp_map", i1 false, i1 false}
!33 = !{!"../sound/core/oss/pcm_oss.c", i32 35, i32 12}
!34 = !{ptr @__param_str_adsp_map, !13, !"__param_str_adsp_map", i1 false, i1 false}
!35 = !{ptr @__param_arr_adsp_map, !13, !"__param_arr_adsp_map", i1 false, i1 false}
!36 = !{ptr @adsp_map, !37, !"adsp_map", i1 false, i1 false}
!37 = !{!"../sound/core/oss/pcm_oss.c", i32 36, i32 12}
!38 = !{ptr @__param_str_nonblock_open, !18, !"__param_str_nonblock_open", i1 false, i1 false}
!39 = !{ptr @nonblock_open, !40, !"nonblock_open", i1 false, i1 false}
!40 = !{!"../sound/core/oss/pcm_oss.c", i32 37, i32 13}
!41 = !{ptr @.str, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/core/oss/pcm_oss.c", i32 1144, i32 3}
!43 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @snd_pcm_oss_prepare.__UNIQUE_ID_ddebug250, !42, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!47 = !{ptr @snd_pcm_oss_notify, !48, !"snd_pcm_oss_notify", i1 false, i1 false}
!48 = !{!"../sound/core/oss/pcm_oss.c", i32 3201, i32 30}
!49 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/core/oss/pcm_oss.c", i32 3150, i32 17}
!51 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/core/oss/pcm_oss.c", i32 3150, i32 45}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/core/oss/pcm_oss.c", i32 3150, i32 59}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/core/oss/pcm_oss.c", i32 3135, i32 3}
!57 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @register_oss_dsp._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @register_oss_dsp._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @snd_pcm_oss_f_reg, !63, !"snd_pcm_oss_f_reg", i1 false, i1 false}
!63 = !{!"../sound/core/oss/pcm_oss.c", i32 3116, i32 37}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/core/oss/pcm_oss.c", i32 883, i32 3}
!66 = !{ptr @.str.12, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug244, !65, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/core/oss/pcm_oss.c", i32 912, i32 3}
!70 = !{ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug245, !69, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!71 = !{ptr @.str.14, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/core/oss/pcm_oss.c", i32 962, i32 3}
!73 = !{ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug246, !72, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/core/oss/pcm_oss.c", i32 973, i32 4}
!76 = !{ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug247, !75, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!77 = !{ptr @.str.16, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/core/oss/pcm_oss.c", i32 982, i32 5}
!79 = !{ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug248, !78, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/core/oss/pcm_oss.c", i32 1029, i32 3}
!82 = !{ptr @snd_pcm_oss_change_params_locked.__UNIQUE_ID_ddebug249, !81, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!85 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!90 = !{ptr @.str.21, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/core/oss/pcm_oss.c", i32 2751, i32 3}
!92 = !{ptr @.str.22, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @snd_pcm_oss_ioctl.__UNIQUE_ID_ddebug254, !91, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../sound/core/oss/pcm_oss.c", i32 1624, i32 3}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../sound/core/oss/pcm_oss.c", i32 1629, i32 4}
!98 = !{ptr @.str.24, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/core/oss/pcm_oss.c", i32 1638, i32 4}
!100 = !{ptr @.str.25, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @snd_pcm_oss_sync1._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @snd_pcm_oss_sync1._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../sound/core/oss/pcm_oss.c", i32 2540, i32 3}
!105 = !{ptr @snd_pcm_oss_init_substream.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../sound/core/oss/pcm_oss.c", i32 2380, i32 2}
!107 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/core/oss/pcm_oss.c", i32 3077, i32 49}
!110 = !{ptr @.str.28, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/core/oss/pcm_oss.c", i32 2963, i32 3}
!112 = !{ptr @.str.29, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/core/oss/pcm_oss.c", i32 3004, i32 26}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/core/oss/pcm_oss.c", i32 3004, i32 57}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/core/oss/pcm_oss.c", i32 3026, i32 21}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/core/oss/pcm_oss.c", i32 3028, i32 28}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/core/oss/pcm_oss.c", i32 3030, i32 28}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/core/oss/pcm_oss.c", i32 3032, i32 28}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/core/oss/pcm_oss.c", i32 3034, i32 28}
!132 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/core/oss/pcm_oss.c", i32 3036, i32 28}
!134 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/core/oss/pcm_oss.c", i32 3038, i32 28}
!136 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/core/oss/pcm_oss.c", i32 3216, i32 4}
!138 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @alsa_pcm_oss_init._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @alsa_pcm_oss_init._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/core/oss/pcm_oss.c", i32 3221, i32 4}
!143 = !{ptr @alsa_pcm_oss_init._entry.46, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @alsa_pcm_oss_init._entry_ptr.48, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{!"sp"}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i64 2148288239, i64 2148288244, i64 2148288257, i64 2148288301, i64 2148288335, i64 2148288356}
!156 = !{!"auto-init"}
!157 = !{i64 4725252}
!158 = !{i64 4725449}
!159 = !{i64 2152210682}
!160 = !{i64 2154285503, i64 2154285783, i64 2154286117, i64 2154286451}
!161 = !{i64 2154294967, i64 2154295247, i64 2154295581, i64 2154295915}
!162 = !{i64 2154309367, i64 2154309647, i64 2154309981, i64 2154310315}
!163 = !{i64 2154318816, i64 2154319096, i64 2154319430, i64 2154319764}
!164 = !{i64 2154328278, i64 2154328558, i64 2154328892, i64 2154329226}
!165 = !{i64 2154340462, i64 2154340742, i64 2154341076, i64 2154341410}
!166 = !{i64 2154349915, i64 2154350195, i64 2154350529, i64 2154350863}
!167 = !{i64 2154359397, i64 2154359677, i64 2154360011, i64 2154360345}
!168 = !{i64 2154375641, i64 2154375921, i64 2154376255, i64 2154376589}
!169 = !{i64 2154385090, i64 2154385370, i64 2154385704, i64 2154386038}
!170 = !{i64 2154394552, i64 2154394832, i64 2154395166, i64 2154395500}
!171 = !{i64 2154406736, i64 2154407016, i64 2154407350, i64 2154407684}
!172 = !{i64 2154416185, i64 2154416465, i64 2154416799, i64 2154417133}
!173 = !{i64 2154425647, i64 2154425927, i64 2154426261, i64 2154426595}
!174 = !{i64 2154439648, i64 2154439928, i64 2154440262, i64 2154440596}
!175 = !{i64 2154449097, i64 2154449377, i64 2154449711, i64 2154450045}
!176 = !{i64 2154461283, i64 2154461563, i64 2154461897, i64 2154462231}
!177 = !{i64 2154471433, i64 2154471713, i64 2154472047, i64 2154472381}
!178 = !{i64 2154483729, i64 2154484009, i64 2154484343, i64 2154484677}
!179 = !{i64 2154493193, i64 2154493473, i64 2154493807, i64 2154494141}
!180 = !{i64 2154505360, i64 2154505640, i64 2154505974, i64 2154506308}
!181 = !{i64 2154521009, i64 2154521289, i64 2154521623, i64 2154521957}
!182 = !{i64 2154529772, i64 2154530052, i64 2154530386, i64 2154530720}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{i8 0, i8 2}
!185 = !{i64 2154278056}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 2148667513, i64 2148667539, i64 2148667568, i64 2148667602, i64 2148667633, i64 2148667656}
!188 = !{i64 2152230378, i64 2152230403}
!189 = !{i64 2148669978, i64 2148670004, i64 2148670033, i64 2148670067, i64 2148670098, i64 2148670121}
!190 = !{i32 0, i32 33}
!191 = !{i64 2152229697, i64 2152229722}
!192 = !{i64 2148517298, i64 2148517578, i64 2148517912, i64 2148518246}
!193 = !{i64 2154259036}
!194 = !{i64 2154263796}
