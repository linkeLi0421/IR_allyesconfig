; ModuleID = '/llk/IR_all_yes/sound/pci/korg1212/korg1212.c_pt.bc'
source_filename = "../sound/pci/korg1212/korg1212.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_korg1212 = type { ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.timer_list, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.KorgSharedBuffer = type { [12 x i16], i32, [12 x i16], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
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
%struct.KorgAudioFrame = type { [10 x i16], [2 x i32], i32 }
%struct.snd_pcm_channel_info = type { i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_description242 = internal constant [34 x i8] c"snd_korg1212.description=korg1212\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [50 x i8] c"snd_korg1212.file=sound/pci/korg1212/snd-korg1212\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [25 x i8] c"snd_korg1212.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [37 x i8] c"snd_korg1212.firmware=korg/k1212.dsp\00", section ".modinfo", align 1
@__param_str_index = internal constant [19 x i8] c"snd_korg1212.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [41 x i8] c"snd_korg1212.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [61 x i8] c"snd_korg1212.parm=index:Index value for Korg 1212 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [16 x i8] c"snd_korg1212.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [40 x i8] c"snd_korg1212.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [56 x i8] c"snd_korg1212.parm=id:ID string for Korg 1212 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [20 x i8] c"snd_korg1212.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [43 x i8] c"snd_korg1212.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [53 x i8] c"snd_korg1212.parm=enable:Enable Korg 1212 soundcard.\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [58 x i8] c"snd_korg1212.author=Haroldo Gamal <gamal@alternex.com.br>\00", section ".modinfo", align 1
@__initcall__kmod_snd_korg1212__253_2381_korg1212_driver_init6 = internal global ptr @korg1212_driver_init, section ".initcall6.init", align 4
@korg1212_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_korg1212_ids, ptr @snd_korg1212_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_korg1212_driver_exit = internal global ptr @korg1212_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { <{ i8, [31 x i8] }>, [32 x i8] } { <{ i8, [31 x i8] }> <{ i8 1, [31 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_korg1212\00", [19 x i8] zeroinitializer }, align 32
@snd_korg1212_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36973, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_korg1212_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"korg1212\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %d\00", [44 x i8] zeroinitializer }, align 32
@snd_korg1212_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&korg1212->wait\00", [16 x i8] zeroinitializer }, align 32
@snd_korg1212_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&korg1212->lock\00", [16 x i8] zeroinitializer }, align 32
@snd_korg1212_create.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&korg1212->open_mutex\00", [42 x i8] zeroinitializer }, align 32
@snd_korg1212_create.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&korg1212->timer)\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/korg1212/korg1212.c\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013korg1212: unable to grab IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"korg/k1212.dsp\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013firmware not available\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_korg1212_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_korg1212_playback_open, ptr @snd_korg1212_playback_close, ptr @snd_korg1212_ioctl, ptr @snd_korg1212_hw_params, ptr null, ptr @snd_korg1212_prepare, ptr @snd_korg1212_trigger, ptr null, ptr @snd_korg1212_playback_pointer, ptr null, ptr @snd_korg1212_playback_silence, ptr @snd_korg1212_playback_copy, ptr @snd_korg1212_playback_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_korg1212_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_korg1212_capture_open, ptr @snd_korg1212_capture_close, ptr @snd_korg1212_ioctl, ptr @snd_korg1212_hw_params, ptr null, ptr @snd_korg1212_prepare, ptr @snd_korg1212_trigger, ptr null, ptr @snd_korg1212_capture_pointer, ptr null, ptr null, ptr @snd_korg1212_capture_copy, ptr @snd_korg1212_capture_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_korg1212_controls = internal constant { [32 x %struct.snd_kcontrol_new], [384 x i8] } { [32 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 8 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 8 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 8 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 10 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 10 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 10 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 6 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 6 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 6 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_volume_info, ptr @snd_korg1212_control_volume_get, ptr @snd_korg1212_control_volume_put, %union.anon.84 zeroinitializer, i32 7 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_route_info, ptr @snd_korg1212_control_route_get, ptr @snd_korg1212_control_route_put, %union.anon.84 zeroinitializer, i32 7 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_phase_info, ptr @snd_korg1212_control_phase_get, ptr @snd_korg1212_control_phase_put, %union.anon.84 zeroinitializer, i32 7 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_sync_info, ptr @snd_korg1212_control_sync_get, ptr @snd_korg1212_control_sync_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 3, i32 0, ptr @snd_korg1212_control_info, ptr @snd_korg1212_control_get, ptr @snd_korg1212_control_put, %union.anon.84 zeroinitializer, i32 0 }], [384 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"korg1212_timer_func timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013korg1212: DMA Error\0A\00", [41 x i8] zeroinitializer }, align 32
@ClockSourceSelector = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 -32768, i16 0, i16 -32767, i16 1, i16 -32766, i16 2], [20 x i8] zeroinitializer }, align 32
@snd_korg1212_playback_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 275, i64 4, i32 192, i32 44100, i32 48000, i32 1, i32 10, i32 163840, i32 2048, i32 20480, i32 8, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_korg1212_SetRate.s44 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@snd_korg1212_SetRate.s48 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 3, i32 5], [20 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_korg1212_capture_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 275, i64 4, i32 192, i32 44100, i32 48000, i32 1, i32 10, i32 163840, i32 2048, i32 20480, i32 8, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Analog Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Analog Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Analog Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SPDIF Monitor Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SPDIF Monitor Route\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SPDIF Monitor Phase Invert\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADAT-1 Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADAT-1 Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT-1 Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADAT-2 Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADAT-2 Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT-2 Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADAT-3 Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADAT-3 Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT-3 Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADAT-4 Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADAT-4 Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT-4 Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADAT-5 Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADAT-5 Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT-5 Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADAT-6 Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADAT-6 Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT-6 Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADAT-7 Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADAT-7 Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT-7 Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADAT-8 Monitor Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADAT-8 Monitor Route\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADAT-8 Monitor Phase Invert\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sync Source\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC Attenuation\00", [16 x i8] zeroinitializer }, align 32
@channelName = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-1\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-2\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-3\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-4\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-5\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-6\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-7\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADAT-8\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Analog-L\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Analog-R\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPDIF-L\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPDIF-R\00", [24 x i8] zeroinitializer }, align 32
@clockSourceTypeName = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.66], [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADAT\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S/PDIF\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" (index #%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0AGeneral settings\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"    period size: %zd bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"     clock mode: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@clockSourceName = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  left ADC Sens: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" right ADC Sens: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"    Volume Info:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" Channel %d: %s -> %s [%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0AGeneral status\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" ADAT Time Code: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"     Card State: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@stateName = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Idle mon. State: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cmd retry count: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"      Irq count: %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    Error count: %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADAT at 44.1 kHz\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADAT at 48 kHz\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"S/PDIF at 44.1 kHz\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"S/PDIF at 48 kHz\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"local clock at 44.1 kHz\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"local clock at 48 kHz\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Non-existent\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Uninitialized\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP download in process\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSP download complete\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ready\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Open\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Setup for play\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Playing\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Monitor mode on\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Calibrating\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 128, i64 129, i64 174]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 160, i64 164, i64 175]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"korg1212_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2375, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 393, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 394, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 395, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2381, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"snd_korg1212_ids\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 405, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2338, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2360, i32 23 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2362, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2110, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2111, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2112, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2113, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2164, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2259, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2261, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"snd_korg1212_playback_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1686, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"snd_korg1212_capture_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1699, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"snd_korg1212_controls\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2022, i32 38 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 605, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1134, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"ClockSourceSelector\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 457, i32 18 }
@___asan_gen_.184 = private unnamed_addr constant [27 x i8] c"snd_korg1212_playback_info\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1219, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant [4 x i8] c"s44\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 815, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant [4 x i8] c"s48\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 820, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 230, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 214, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 156, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [26 x i8] c"snd_korg1212_capture_info\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1240, i32 38 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2023, i32 9 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2024, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2025, i32 9 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2025, i32 33 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2025, i32 57 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2025, i32 81 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2026, i32 9 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2026, i32 33 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2026, i32 57 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2026, i32 81 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2030, i32 26 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2038, i32 26 }
@___asan_gen_.301 = private unnamed_addr constant [12 x i8] c"channelName\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 442, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 443, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 444, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 445, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 446, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 447, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 448, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 449, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 450, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 451, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 452, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 453, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 454, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c"clockSourceTypeName\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 431, i32 27 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 431, i32 53 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 431, i32 61 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 431, i32 71 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2056, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2057, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2058, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2059, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [16 x i8] c"clockSourceName\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 433, i32 27 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2060, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2061, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2062, i32 9 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2064, i32 17 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2068, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2069, i32 9 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2070, i32 9 }
@___asan_gen_.388 = private unnamed_addr constant [10 x i8] c"stateName\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 417, i32 27 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2071, i32 9 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2072, i32 9 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2073, i32 9 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 2074, i32 9 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 434, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 435, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 436, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 437, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 438, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 439, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 418, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 419, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 420, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 421, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 422, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 423, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 424, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 425, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 426, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 427, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.452 = private constant [33 x i8] c"../sound/pci/korg1212/korg1212.c\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 428, i32 2 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license244, ptr @__exitcall_korg1212_driver_exit, ptr @__initcall__kmod_snd_korg1212__253_2381_korg1212_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @korg1212_driver_exit, ptr @korg1212_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_korg1212_ids, ptr @snd_korg1212_probe.dev, ptr @.str.2, ptr @.str.3, ptr @snd_korg1212_create.__key, ptr @.str.4, ptr @snd_korg1212_create.__key.5, ptr @.str.6, ptr @snd_korg1212_create.__key.7, ptr @.str.8, ptr @snd_korg1212_create.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @snd_korg1212_playback_ops, ptr @snd_korg1212_capture_ops, ptr @snd_korg1212_controls, ptr @.str.15, ptr @.str.16, ptr @ClockSourceSelector, ptr @snd_korg1212_playback_info, ptr @snd_korg1212_SetRate.s44, ptr @snd_korg1212_SetRate.s48, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @snd_korg1212_capture_info, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @channelName, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @clockSourceTypeName, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @clockSourceName, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @stateName, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korg1212_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_create.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_create.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_controls to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ClockSourceSelector to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_playback_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_SetRate.s44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_SetRate.s48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_korg1212_capture_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channelName to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockSourceTypeName to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockSourceName to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stateName to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @korg1212_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @korg1212_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @korg1212_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @korg1212_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %dsp_code.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !252
  %1 = load i32, ptr @snd_korg1212_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_korg1212_probe.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 512, ptr noundef nonnull %card) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dsp_code.i) #11
  %12 = ptrtoint ptr %dsp_code.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %dsp_code.i, align 4, !annotation !252
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.snd_korg1212_create.exit.thread_crit_edge, label %if.end.i

if.end7.snd_korg1212_create.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_create.exit.thread

if.end.i:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %11, align 4
  %pci2.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %pci2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pci, ptr %pci2.i, align 4
  %wait.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_korg1212_create.__key) #11
  %lock.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_korg1212_create.__key.5, i16 noundef signext 3) #11
  %open_mutex.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 5
  call void @__mutex_init(ptr noundef %open_mutex.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @snd_korg1212_create.__key.7) #11
  %timer.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 6
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @snd_korg1212_timer_func, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @snd_korg1212_create.__key.9) #11
  %irq.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 3
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %irq.i, align 4
  %clkSource.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 51
  %16 = ptrtoint ptr %clkSource.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %clkSource.i, align 4
  %clkRate.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 52
  %17 = ptrtoint ptr %clkRate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 44100, ptr %clkRate.i, align 4
  %inIRQ.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 13
  %18 = ptrtoint ptr %inIRQ.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %inIRQ.i, align 4
  %running.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 47
  %19 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %running.i, align 4
  %opencnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 56
  %20 = ptrtoint ptr %opencnt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %opencnt.i, align 4
  %playcnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 58
  %21 = ptrtoint ptr %playcnt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %playcnt.i, align 4
  %setcnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 57
  %22 = ptrtoint ptr %setcnt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %setcnt.i, align 4
  %totalerrorcnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 60
  %23 = ptrtoint ptr %totalerrorcnt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %totalerrorcnt.i, align 4
  %playback_pid.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 45
  %24 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 44
  %25 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %capture_pid.i, align 4
  %cardState.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 46
  %26 = ptrtoint ptr %cardState.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %cardState.i.i, align 4
  %idleMonitorOn.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 48
  %27 = ptrtoint ptr %idleMonitorOn.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %idleMonitorOn.i, align 4
  %clkSrcRate.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 50
  %28 = ptrtoint ptr %clkSrcRate.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %clkSrcRate.i, align 4
  %leftADCInSens.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 54
  %29 = ptrtoint ptr %leftADCInSens.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 127, ptr %leftADCInSens.i, align 4
  %rightADCInSens.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 55
  %30 = ptrtoint ptr %rightADCInSens.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 127, ptr %rightADCInSens.i, align 2
  %uglygep.i = getelementptr i8, ptr %11, i32 432
  %31 = call ptr @memset(ptr %uglygep.i, i32 0, i32 48)
  %call14.i = call i32 @pcim_iomap_regions_request_all(ptr noundef %pci, i32 noundef 1, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end.i.snd_korg1212_create.exit.thread_crit_edge, label %if.end17.i

if.end.i.snd_korg1212_create.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_create.exit.thread

if.end17.i:                                       ; preds = %if.end.i
  %32 = ptrtoint ptr %pci2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci2.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 47
  %34 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resource.i, align 8
  %iomem.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 9
  %36 = ptrtoint ptr %iomem.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %iomem.i, align 4
  %arrayidx22.i = getelementptr %struct.pci_dev, ptr %33, i32 0, i32 47, i32 1
  %37 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx22.i, align 8
  %ioport.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 10
  %39 = ptrtoint ptr %ioport.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ioport.i, align 4
  %arrayidx26.i = getelementptr %struct.pci_dev, ptr %33, i32 0, i32 47, i32 2
  %40 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx26.i, align 8
  %iomem2.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 11
  %42 = ptrtoint ptr %iomem2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %iomem2.i, align 4
  %call81.i = call ptr @pcim_iomap_table(ptr noundef %pci) #11
  %43 = ptrtoint ptr %call81.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call81.i, align 4
  %iobase.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 14
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %iobase.i, align 4
  %irq83.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %46 = ptrtoint ptr %irq83.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq83.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %47, ptr noundef nonnull @snd_korg1212_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %48 = ptrtoint ptr %irq83.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq83.i, align 4
  br i1 %tobool.not.i, label %if.end87.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 2164, ptr noundef nonnull @.str.12, i32 noundef %49) #11
  br label %snd_korg1212_create.exit.thread

if.end87.i:                                       ; preds = %if.end17.i
  %50 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %51 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %52 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @snd_korg1212_free, ptr %private_free.i, align 4
  %53 = ptrtoint ptr %pci2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci2.i, align 4
  call void @pci_set_master(ptr noundef %54) #11
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 104
  %statusRegPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 29
  %57 = ptrtoint ptr %statusRegPtr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.i, ptr %statusRegPtr.i, align 4
  %add.ptr94.i = getelementptr i8, ptr %56, i32 96
  %outDoorbellPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 30
  %58 = ptrtoint ptr %outDoorbellPtr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr94.i, ptr %outDoorbellPtr.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %56, i32 100
  %inDoorbellPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 31
  %59 = ptrtoint ptr %inDoorbellPtr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr96.i, ptr %inDoorbellPtr.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %56, i32 64
  %mailbox0Ptr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 32
  %60 = ptrtoint ptr %mailbox0Ptr.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr98.i, ptr %mailbox0Ptr.i, align 4
  %add.ptr100.i = getelementptr i8, ptr %56, i32 68
  %mailbox1Ptr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 33
  %61 = ptrtoint ptr %mailbox1Ptr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr100.i, ptr %mailbox1Ptr.i, align 4
  %add.ptr102.i = getelementptr i8, ptr %56, i32 72
  %mailbox2Ptr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 34
  %62 = ptrtoint ptr %mailbox2Ptr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr102.i, ptr %mailbox2Ptr.i, align 4
  %add.ptr104.i = getelementptr i8, ptr %56, i32 76
  %mailbox3Ptr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 35
  %63 = ptrtoint ptr %mailbox3Ptr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr104.i, ptr %mailbox3Ptr.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %56, i32 108
  %controlRegPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 36
  %64 = ptrtoint ptr %controlRegPtr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr106.i, ptr %controlRegPtr.i, align 4
  %add.ptr108.i = getelementptr i8, ptr %56, i32 110
  %sensRegPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 37
  %65 = ptrtoint ptr %sensRegPtr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr108.i, ptr %sensRegPtr.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %56, i32 112
  %idRegPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 38
  %66 = ptrtoint ptr %idRegPtr.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr110.i, ptr %idRegPtr.i, align 4
  %call.i364.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 56) #11
  %dma_shared.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 18
  %67 = ptrtoint ptr %dma_shared.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i364.i, ptr %dma_shared.i, align 4
  %tobool117.not.i = icmp eq ptr %call.i364.i, null
  br i1 %tobool117.not.i, label %if.end87.i.snd_korg1212_create.exit.thread_crit_edge, label %if.end119.i

if.end87.i.snd_korg1212_create.exit.thread_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_create.exit.thread

if.end119.i:                                      ; preds = %if.end87.i
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i364.i, i32 0, i32 1
  %68 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %area.i, align 4
  %sharedBufferPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 22
  %70 = ptrtoint ptr %sharedBufferPtr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %sharedBufferPtr.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i364.i, i32 0, i32 2
  %71 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %addr.i, align 4
  %sharedBufferPhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 25
  %73 = ptrtoint ptr %sharedBufferPhy.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sharedBufferPhy.i, align 4
  %DataBufsSize.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 19
  %74 = ptrtoint ptr %DataBufsSize.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 262144, ptr %DataBufsSize.i, align 4
  %call.i365.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 262144) #11
  %dma_play.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 16
  %75 = ptrtoint ptr %dma_play.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i365.i, ptr %dma_play.i, align 4
  %tobool129.not.i = icmp eq ptr %call.i365.i, null
  br i1 %tobool129.not.i, label %if.end119.i.snd_korg1212_create.exit.thread_crit_edge, label %if.end131.i

if.end119.i.snd_korg1212_create.exit.thread_crit_edge: ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_create.exit.thread

if.end131.i:                                      ; preds = %if.end119.i
  %area133.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i365.i, i32 0, i32 1
  %76 = ptrtoint ptr %area133.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %area133.i, align 4
  %playDataBufsPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 20
  %78 = ptrtoint ptr %playDataBufsPtr.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %playDataBufsPtr.i, align 4
  %addr135.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i365.i, i32 0, i32 2
  %79 = ptrtoint ptr %addr135.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %addr135.i, align 4
  %PlayDataPhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 24
  %81 = ptrtoint ptr %PlayDataPhy.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %PlayDataPhy.i, align 4
  %82 = ptrtoint ptr %DataBufsSize.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %DataBufsSize.i, align 4
  %call.i366.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef %83) #11
  %dma_rec.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 17
  %84 = ptrtoint ptr %dma_rec.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i366.i, ptr %dma_rec.i, align 4
  %tobool143.not.i = icmp eq ptr %call.i366.i, null
  br i1 %tobool143.not.i, label %if.end131.i.snd_korg1212_create.exit.thread_crit_edge, label %if.end145.i

if.end131.i.snd_korg1212_create.exit.thread_crit_edge: ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_create.exit.thread

if.end145.i:                                      ; preds = %if.end131.i
  %area147.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i366.i, i32 0, i32 1
  %85 = ptrtoint ptr %area147.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %area147.i, align 4
  %recordDataBufsPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 21
  %87 = ptrtoint ptr %recordDataBufsPtr.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %recordDataBufsPtr.i, align 4
  %addr149.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i366.i, i32 0, i32 2
  %88 = ptrtoint ptr %addr149.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr149.i, align 4
  %RecDataPhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 23
  %90 = ptrtoint ptr %RecDataPhy.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %RecDataPhy.i, align 4
  %91 = ptrtoint ptr %sharedBufferPhy.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sharedBufferPhy.i, align 4
  %VolumeTablePhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 26
  %93 = ptrtoint ptr %VolumeTablePhy.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %VolumeTablePhy.i, align 4
  %add156.i = add i32 %92, 28
  %RoutingTablePhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 27
  %94 = ptrtoint ptr %RoutingTablePhy.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add156.i, ptr %RoutingTablePhy.i, align 4
  %add158.i = add i32 %92, 52
  %AdatTimeCodePhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 28
  %95 = ptrtoint ptr %AdatTimeCodePhy.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add158.i, ptr %AdatTimeCodePhy.i, align 4
  %call160.i = call i32 @request_firmware(ptr noundef nonnull %dsp_code.i, ptr noundef nonnull @.str.13, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160.i)
  %cmp161.i = icmp slt i32 %call160.i, 0
  br i1 %cmp161.i, label %if.then162.i, label %if.end163.i

if.then162.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 2261, ptr noundef nonnull @.str.14) #11
  br label %snd_korg1212_create.exit.thread

if.end163.i:                                      ; preds = %if.end145.i
  %96 = ptrtoint ptr %dsp_code.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dsp_code.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %call.i367.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef %99) #11
  %dma_dsp.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 15
  %100 = ptrtoint ptr %dma_dsp.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i367.i, ptr %dma_dsp.i, align 4
  %tobool167.not.i = icmp eq ptr %call.i367.i, null
  br i1 %tobool167.not.i, label %if.then168.i, label %do.end172.i

if.then168.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %dsp_code.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dsp_code.i, align 4
  call void @release_firmware(ptr noundef %102) #11
  br label %snd_korg1212_create.exit.thread

do.end172.i:                                      ; preds = %if.end163.i
  %area174.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i367.i, i32 0, i32 1
  %103 = ptrtoint ptr %area174.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %area174.i, align 4
  %105 = ptrtoint ptr %dsp_code.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dsp_code.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i, align 4
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %106, align 4
  %111 = call ptr @memcpy(ptr %104, ptr %108, i32 %110)
  %112 = load ptr, ptr %dsp_code.i, align 4
  call void @release_firmware(ptr noundef %112) #11
  %113 = call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %11, i32 noundef 160, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  call void @arm_heavy_mb() #11
  %114 = ptrtoint ptr %statusRegPtr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %statusRegPtr.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 199424) #11, !srcloc !255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %122(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %123(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %125(i32 noundef 214748000) #11
  %call184.i = call fastcc i32 @snd_korg1212_downloadDSPCode(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184.i)
  %tobool185.not.i = icmp eq i32 %call184.i, 0
  br i1 %tobool185.not.i, label %do.end190.i, label %do.end172.i.snd_korg1212_create.exit.thread_crit_edge

do.end172.i.snd_korg1212_create.exit.thread_crit_edge: ; preds = %do.end172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_create.exit.thread

do.end190.i:                                      ; preds = %do.end172.i
  %126 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %11, align 4
  %pcm.i = getelementptr inbounds %struct.snd_korg1212, ptr %11, i32 0, i32 2
  %call192.i = call i32 @snd_pcm_new(ptr noundef %127, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef %pcm.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i)
  %cmp193.i = icmp slt i32 %call192.i, 0
  br i1 %cmp193.i, label %do.end190.i.snd_korg1212_create.exit.thread_crit_edge, label %if.end195.i

do.end190.i.snd_korg1212_create.exit.thread_crit_edge: ; preds = %do.end190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_create.exit.thread

if.end195.i:                                      ; preds = %do.end190.i
  %128 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pcm.i, align 4
  %private_data197.i = getelementptr inbounds %struct.snd_pcm, ptr %129, i32 0, i32 11
  %130 = ptrtoint ptr %private_data197.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %11, ptr %private_data197.i, align 8
  %131 = load ptr, ptr %pcm.i, align 4
  %private_free199.i = getelementptr inbounds %struct.snd_pcm, ptr %131, i32 0, i32 12
  %132 = ptrtoint ptr %private_free199.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @snd_korg1212_free_pcm, ptr %private_free199.i, align 4
  %133 = load ptr, ptr %pcm.i, align 4
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %133, i32 0, i32 7
  %134 = call ptr @memcpy(ptr %name.i, ptr @.str.2, i32 9)
  %135 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %135, i32 noundef 0, ptr noundef nonnull @snd_korg1212_playback_ops) #11
  %136 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %137, i32 noundef 1, ptr noundef nonnull @snd_korg1212_capture_ops) #11
  %138 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pcm.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2097152, ptr %info_flags.i, align 8
  br label %for.body207.i

for.cond205.i:                                    ; preds = %for.body207.i
  %inc216.i = add nuw nsw i32 %i.1370.i, 1
  %exitcond.not.i = icmp eq i32 %inc216.i, 32
  br i1 %exitcond.not.i, label %if.end11, label %for.cond205.i.for.body207.i_crit_edge

for.cond205.i.for.body207.i_crit_edge:            ; preds = %for.cond205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body207.i

for.body207.i:                                    ; preds = %for.cond205.i.for.body207.i_crit_edge, %if.end195.i
  %i.1370.i = phi i32 [ 0, %if.end195.i ], [ %inc216.i, %for.cond205.i.for.body207.i_crit_edge ]
  %141 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %11, align 4
  %arrayidx209.i = getelementptr [32 x %struct.snd_kcontrol_new], ptr @snd_korg1212_controls, i32 0, i32 %i.1370.i
  %call210.i = call ptr @snd_ctl_new1(ptr noundef %arrayidx209.i, ptr noundef %11) #11
  %call211.i = call i32 @snd_ctl_add(ptr noundef %142, ptr noundef %call210.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211.i)
  %cmp212.i = icmp slt i32 %call211.i, 0
  br i1 %cmp212.i, label %for.body207.i.snd_korg1212_create.exit.thread_crit_edge, label %for.cond205.i

for.body207.i.snd_korg1212_create.exit.thread_crit_edge: ; preds = %for.body207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_create.exit.thread

snd_korg1212_create.exit.thread:                  ; preds = %for.body207.i.snd_korg1212_create.exit.thread_crit_edge, %do.end190.i.snd_korg1212_create.exit.thread_crit_edge, %do.end172.i.snd_korg1212_create.exit.thread_crit_edge, %if.then168.i, %if.then162.i, %if.end131.i.snd_korg1212_create.exit.thread_crit_edge, %if.end119.i.snd_korg1212_create.exit.thread_crit_edge, %if.end87.i.snd_korg1212_create.exit.thread_crit_edge, %if.then85.i, %if.end.i.snd_korg1212_create.exit.thread_crit_edge, %if.end7.snd_korg1212_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call192.i, %do.end190.i.snd_korg1212_create.exit.thread_crit_edge ], [ -16, %do.end172.i.snd_korg1212_create.exit.thread_crit_edge ], [ -12, %if.end131.i.snd_korg1212_create.exit.thread_crit_edge ], [ -12, %if.end119.i.snd_korg1212_create.exit.thread_crit_edge ], [ -12, %if.end87.i.snd_korg1212_create.exit.thread_crit_edge ], [ %call14.i, %if.end.i.snd_korg1212_create.exit.thread_crit_edge ], [ %call.i, %if.end7.snd_korg1212_create.exit.thread_crit_edge ], [ -12, %if.then168.i ], [ %call160.i, %if.then162.i ], [ -16, %if.then85.i ], [ %call211.i, %for.body207.i.snd_korg1212_create.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dsp_code.i) #11
  br label %cleanup

if.end11:                                         ; preds = %for.cond205.i
  %143 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %11, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %144, ptr noundef nonnull @.str.2, ptr noundef %11, ptr noundef nonnull @snd_korg1212_proc_read, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dsp_code.i) #11
  %145 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %146, i32 0, i32 2
  %147 = call ptr @memcpy(ptr %driver, ptr @.str.2, i32 9)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %146, i32 0, i32 3
  %148 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 9)
  %longname = getelementptr inbounds %struct.snd_card, ptr %146, i32 0, i32 4
  %149 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %iomem.i, align 4
  %151 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %irq.i, align 4
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, i32 noundef %150, i32 noundef %152)
  %153 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %card, align 4
  %call19 = call i32 @snd_card_register(ptr noundef %154) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end11.cleanup_crit_edge, label %if.end22

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %157 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %driver_data.i.i, align 4
  %158 = load i32, ptr @snd_korg1212_probe.dev, align 4
  %inc23 = add i32 %158, 1
  store i32 %inc23, ptr @snd_korg1212_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end11.cleanup_crit_edge, %snd_korg1212_create.exit.thread, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call19, %if.end11.cleanup_crit_edge ], [ %retval.0.i.ph, %snd_korg1212_create.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_korg1212_timer_func(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -136
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %sharedBufferPtr = getelementptr i8, ptr %t, i32 156
  %0 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sharedBufferPtr, align 4
  %cardCommand = getelementptr inbounds %struct.KorgSharedBuffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cardCommand to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cardCommand, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  %stop_pending_cnt = getelementptr i8, ptr %t, i32 48
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %stop_pending_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %stop_pending_cnt, align 4
  %dsp_stop_is_processed = getelementptr i8, ptr %t, i32 356
  %5 = ptrtoint ptr %dsp_stop_is_processed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dsp_stop_is_processed, align 4
  %wait = getelementptr i8, ptr %t, i32 52
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end21

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %stop_pending_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stop_pending_cnt, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %stop_pending_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp9 = icmp sgt i32 %dec, 0
  br i1 %cmp9, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 1
  %call12 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  br label %if.end21

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 605, ptr noundef nonnull @.str.15) #11
  %9 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sharedBufferPtr, align 4
  %cardCommand15 = getelementptr inbounds %struct.KorgSharedBuffer, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cardCommand15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cardCommand15, align 4
  %dsp_stop_is_processed16 = getelementptr i8, ptr %t, i32 356
  %12 = ptrtoint ptr %dsp_stop_is_processed16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %dsp_stop_is_processed16, align 4
  %wait17 = getelementptr i8, ptr %t, i32 52
  tail call void @__wake_up(ptr noundef %wait17, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.then11, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions_request_all(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %inDoorbellPtr = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 31
  %0 = ptrtoint ptr %inDoorbellPtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inDoorbellPtr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %inDoorbellPtr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inDoorbellPtr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #11, !srcloc !255
  %irqcount = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 12
  %6 = ptrtoint ptr %irqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqcount, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %irqcount, align 4
  %inIRQ = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 13
  %8 = ptrtoint ptr %inIRQ to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inIRQ, align 4
  %inc3 = add i32 %9, 1
  store i32 %inc3, ptr %inIRQ, align 4
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 174, label %do.end6
    i32 128, label %sw.bb9
    i32 129, label %sw.bb12
  ]

do.end6:                                          ; preds = %if.end
  %cardState = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 46
  %11 = ptrtoint ptr %cardState to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cardState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then7, label %do.end6.sw.epilog_crit_edge

do.end6.sw.epilog_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then7:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dsp_is_loaded = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 61
  %13 = ptrtoint ptr %dsp_is_loaded to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %dsp_is_loaded, align 4
  %wait = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 1134, ptr noundef nonnull @.str.16) #11
  %errorcnt = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 59
  %14 = ptrtoint ptr %errorcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %errorcnt, align 4
  %inc10 = add i32 %15, 1
  store i32 %inc10, ptr %errorcnt, align 4
  %totalerrorcnt = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 60
  %16 = ptrtoint ptr %totalerrorcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %totalerrorcnt, align 4
  %inc11 = add i32 %17, 1
  store i32 %inc11, ptr %totalerrorcnt, align 4
  %sharedBufferPtr = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 22
  %18 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sharedBufferPtr, align 4
  %cardCommand = getelementptr inbounds %struct.KorgSharedBuffer, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %cardCommand to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cardCommand, align 4
  %cardState.i = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 46
  %21 = ptrtoint ptr %cardState.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 10, ptr %cardState.i, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sharedBufferPtr13 = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 22
  %22 = ptrtoint ptr %sharedBufferPtr13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sharedBufferPtr13, align 4
  %cardCommand14 = getelementptr inbounds %struct.KorgSharedBuffer, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %cardCommand14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cardCommand14, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %cardState15 = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 46
  %25 = ptrtoint ptr %cardState15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cardState15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp16 = icmp ugt i32 %26, 6
  br i1 %cmp16, label %sw.default.if.then18_crit_edge, label %lor.lhs.false

sw.default.if.then18_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false:                                    ; preds = %sw.default
  %idleMonitorOn = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 48
  %27 = ptrtoint ptr %idleMonitorOn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idleMonitorOn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool17.not = icmp eq i32 %28, 0
  br i1 %tobool17.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %sw.default.if.then18_crit_edge
  %currentBuffer = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 41
  %29 = ptrtoint ptr %currentBuffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %currentBuffer, align 4
  %inc19 = add i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc19)
  %cmp21 = icmp sgt i32 %inc19, 7
  %spec.select = select i1 %cmp21, i32 0, i32 %inc19
  %31 = ptrtoint ptr %currentBuffer to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %currentBuffer, align 4
  %running = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 47
  %32 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool25.not = icmp eq i32 %33, 0
  br i1 %tobool25.not, label %if.then18.sw.epilog_crit_edge, label %if.end27

if.then18.sw.epilog_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end27:                                         ; preds = %if.then18
  %capture_substream = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 43
  %34 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %capture_substream, align 4
  %tobool28.not = icmp eq ptr %35, null
  br i1 %tobool28.not, label %if.end27.if.end33_crit_edge, label %if.then29

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %36 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %capture_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %37) #11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end27.if.end33_crit_edge
  %playback_substream = getelementptr inbounds %struct.snd_korg1212, ptr %dev_id, i32 0, i32 42
  %38 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %playback_substream, align 4
  %tobool34.not = icmp eq ptr %39, null
  br i1 %tobool34.not, label %if.end33.sw.epilog_crit_edge, label %if.then35

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %40 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %playback_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %41) #11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then35, %if.end33.sw.epilog_crit_edge, %if.then18.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb12, %sw.bb9, %if.then7, %do.end6.sw.epilog_crit_edge
  %42 = ptrtoint ptr %inIRQ to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inIRQ, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %inIRQ, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_korg1212_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %idleMonitorOn.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %idleMonitorOn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idleMonitorOn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.snd_korg1212_TurnOffIdleMonitor.exit_crit_edge, label %if.then.i

entry.snd_korg1212_TurnOffIdleMonitor.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_TurnOffIdleMonitor.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @snd_korg1212_SendStopAndWait(ptr noundef %1) #11
  %4 = ptrtoint ptr %idleMonitorOn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idleMonitorOn.i, align 4
  br label %snd_korg1212_TurnOffIdleMonitor.exit

snd_korg1212_TurnOffIdleMonitor.exit:             ; preds = %if.then.i, %entry.snd_korg1212_TurnOffIdleMonitor.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !259
  tail call void @arm_heavy_mb() #11
  %statusRegPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %statusRegPtr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %statusRegPtr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #11, !srcloc !255
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_korg1212_Send1212Command(ptr nocapture noundef %korg1212, i32 noundef %doorbellVal, i32 noundef %mailBox0Val, i32 noundef %mailBox1Val, i32 noundef %mailBox2Val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %outDoorbellPtr = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 30
  %0 = ptrtoint ptr %outDoorbellPtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outDoorbellPtr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %mailbox3Ptr = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 35
  %2 = tail call i32 @llvm.bswap.i32(i32 %mailBox2Val)
  %mailbox2Ptr = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 34
  %3 = tail call i32 @llvm.bswap.i32(i32 %mailBox1Val)
  %mailbox1Ptr = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 33
  %4 = tail call i32 @llvm.bswap.i32(i32 %mailBox0Val)
  %mailbox0Ptr = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 32
  %5 = tail call i32 @llvm.bswap.i32(i32 %doorbellVal)
  br label %do.body1

do.body1:                                         ; preds = %for.inc.do.body1_crit_edge, %for.cond.preheader
  %retryCount.01 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.do.body1_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !260
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %mailbox3Ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mailbox3Ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #11, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !261
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %mailbox2Ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mailbox2Ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %2) #11, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !262
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %mailbox1Ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mailbox1Ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %3) #11, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !263
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %mailbox0Ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mailbox0Ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %4) #11, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %outDoorbellPtr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %outDoorbellPtr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %5) #11, !srcloc !255
  %16 = zext i32 %doorbellVal to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %doorbellVal, label %if.end22 [
    i32 160, label %do.body1.cleanup_crit_edge
    i32 164, label %do.body1.cleanup_crit_edge20
    i32 175, label %do.body1.cleanup_crit_edge21
  ]

do.body1.cleanup_crit_edge21:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1.cleanup_crit_edge20:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %do.body1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2791724) #11
  %18 = ptrtoint ptr %mailbox3Ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mailbox3Ptr, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  %21 = and i32 %20, -65536
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %and = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end22.for.inc_crit_edge, label %if.then27

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then27:                                        ; preds = %if.end22
  %23 = xor i32 %22, %doorbellVal
  %24 = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp31 = icmp eq i32 %24, 0
  br i1 %cmp31, label %for.end, label %if.then27.for.inc_crit_edge

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.then27.for.inc_crit_edge, %if.end22.for.inc_crit_edge
  %inc = add nuw nsw i32 %retryCount.01, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.do.body1_crit_edge

for.inc.do.body1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %cmdRetryCount4 = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 49
  %25 = ptrtoint ptr %cmdRetryCount4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmdRetryCount4, align 4
  %add5 = add i32 %26, 5
  store i32 %add5, ptr %cmdRetryCount4, align 4
  br label %29

for.end:                                          ; preds = %if.then27
  %cmdRetryCount = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 49
  %27 = ptrtoint ptr %cmdRetryCount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmdRetryCount, align 4
  %add = add i32 %28, %retryCount.01
  store i32 %add, ptr %cmdRetryCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retryCount.01)
  %cmp36 = icmp ugt i32 %retryCount.01, 4
  br i1 %cmp36, label %for.end._crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %29

29:                                               ; preds = %for.end._crit_edge, %for.end.thread
  br label %cleanup

cleanup:                                          ; preds = %29, %for.end.cleanup_crit_edge, %do.body1.cleanup_crit_edge, %do.body1.cleanup_crit_edge20, %do.body1.cleanup_crit_edge21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %entry.cleanup_crit_edge ], [ 10, %29 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %do.body1.cleanup_crit_edge ], [ 0, %do.body1.cleanup_crit_edge20 ], [ 0, %do.body1.cleanup_crit_edge21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_korg1212_downloadDSPCode(ptr noundef %korg1212) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cardState = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 46
  %0 = ptrtoint ptr %cardState to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cardState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup53_crit_edge, label %if.end

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cardState to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %cardState, align 4
  %dma_dsp = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 15
  %3 = ptrtoint ptr %dma_dsp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_dsp, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %retVal.sroa.6.0.insert.insert.i = and i32 %6, 65535
  %7 = lshr i32 %6, 8
  %retVal.sroa.5.0.insert.shift.i = and i32 %7, 16711680
  %retVal.sroa.5.0.insert.insert.i = or i32 %retVal.sroa.5.0.insert.shift.i, %retVal.sroa.6.0.insert.insert.i
  %8 = shl i32 %6, 8
  %retVal.sroa.0.0.insert.shift.i = and i32 %8, -16777216
  %retVal.sroa.0.0.insert.insert.i = or i32 %retVal.sroa.5.0.insert.insert.i, %retVal.sroa.0.0.insert.shift.i
  %9 = tail call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 175, i32 noundef %retVal.sroa.0.0.insert.insert.i, i32 noundef 0, i32 noundef 0)
  %dsp_is_loaded = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 61
  %10 = ptrtoint ptr %dsp_is_loaded to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dsp_is_loaded, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1210) #11
  %11 = ptrtoint ptr %dsp_is_loaded to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dsp_is_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.then22, label %if.end.if.end52_crit_edge

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then22:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wait = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 8
  %call2476 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %14 = ptrtoint ptr %dsp_is_loaded to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsp_is_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not77.not = icmp eq i32 %15, 0
  br i1 %tobool27.not77.not, label %if.then22.cleanup_crit_edge, label %if.then22.if.end47_crit_edge

if.then22.if.end47_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then22.cleanup_crit_edge
  %__ret23.179 = phi i32 [ %__ret23.1, %cleanup.cleanup_crit_edge ], [ 1000, %if.then22.cleanup_crit_edge ]
  %call44 = call i32 @schedule_timeout(i32 noundef %__ret23.179) #11
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %16 = ptrtoint ptr %dsp_is_loaded to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dsp_is_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool31.not = icmp eq i32 %call44, 0
  %spec.store.select54 = select i1 %tobool31.not, i32 1, i32 %call44
  %__ret23.1 = select i1 %tobool27.not, i32 %call44, i32 %spec.store.select54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1)
  %tobool37.not = icmp eq i32 %__ret23.1, 0
  %not.tobool27.not = xor i1 %tobool27.not, true
  %18 = select i1 %not.tobool27.not, i1 true, i1 %tobool37.not
  br i1 %18, label %cleanup.if.end47_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.if.end47_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end47:                                         ; preds = %cleanup.if.end47_crit_edge, %if.then22.if.end47_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  %19 = ptrtoint ptr %dsp_is_loaded to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %dsp_is_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool50.not = icmp eq i32 %.pr, 0
  br i1 %tobool50.not, label %if.end47.cleanup53_crit_edge, label %if.end47.if.end52_crit_edge

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end47.cleanup53_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

if.end52:                                         ; preds = %if.end47.if.end52_crit_edge, %if.end.if.end52_crit_edge
  %20 = call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 164, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  call void @msleep(i32 noundef 200) #11
  %PlayDataPhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 24
  %21 = ptrtoint ptr %PlayDataPhy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %PlayDataPhy.i, align 4
  %trunc.i.i = trunc i32 %22 to i16
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %trunc.i.i) #11
  %retVal.sroa.6.0.insert.insert.i.i = zext i16 %rev.i.i to i32
  %retVal.sroa.5.0.insert.insert.i.i = and i32 %22, -65536
  %retVal.sroa.0.0.insert.insert.i.i = or i32 %retVal.sroa.5.0.insert.insert.i.i, %retVal.sroa.6.0.insert.insert.i.i
  %RecDataPhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 23
  %23 = ptrtoint ptr %RecDataPhy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %RecDataPhy.i, align 4
  %trunc.i65.i = trunc i32 %24 to i16
  %rev.i66.i = call i16 @llvm.bswap.i16(i16 %trunc.i65.i) #11
  %retVal.sroa.6.0.insert.insert.i67.i = zext i16 %rev.i66.i to i32
  %retVal.sroa.5.0.insert.insert.i68.i = and i32 %24, -65536
  %retVal.sroa.0.0.insert.insert.i69.i = or i32 %retVal.sroa.5.0.insert.insert.i68.i, %retVal.sroa.6.0.insert.insert.i67.i
  %25 = call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 3, i32 noundef %retVal.sroa.0.0.insert.insert.i.i, i32 noundef %retVal.sroa.0.0.insert.insert.i69.i, i32 noundef 4096) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 8589920) #11
  %VolumeTablePhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 26
  %27 = ptrtoint ptr %VolumeTablePhy.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %VolumeTablePhy.i, align 4
  %trunc.i70.i = trunc i32 %28 to i16
  %rev.i71.i = call i16 @llvm.bswap.i16(i16 %trunc.i70.i) #11
  %retVal.sroa.6.0.insert.insert.i72.i = zext i16 %rev.i71.i to i32
  %retVal.sroa.5.0.insert.insert.i73.i = and i32 %28, -65536
  %retVal.sroa.0.0.insert.insert.i74.i = or i32 %retVal.sroa.5.0.insert.insert.i73.i, %retVal.sroa.6.0.insert.insert.i72.i
  %RoutingTablePhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 27
  %29 = ptrtoint ptr %RoutingTablePhy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %RoutingTablePhy.i, align 4
  %trunc.i75.i = trunc i32 %30 to i16
  %rev.i76.i = call i16 @llvm.bswap.i16(i16 %trunc.i75.i) #11
  %retVal.sroa.6.0.insert.insert.i77.i = zext i16 %rev.i76.i to i32
  %retVal.sroa.5.0.insert.insert.i78.i = and i32 %30, -65536
  %retVal.sroa.0.0.insert.insert.i79.i = or i32 %retVal.sroa.5.0.insert.insert.i78.i, %retVal.sroa.6.0.insert.insert.i77.i
  %AdatTimeCodePhy.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 28
  %31 = ptrtoint ptr %AdatTimeCodePhy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %AdatTimeCodePhy.i, align 4
  %trunc.i80.i = trunc i32 %32 to i16
  %rev.i81.i = call i16 @llvm.bswap.i16(i16 %trunc.i80.i) #11
  %retVal.sroa.6.0.insert.insert.i82.i = zext i16 %rev.i81.i to i32
  %retVal.sroa.5.0.insert.insert.i83.i = and i32 %32, -65536
  %retVal.sroa.0.0.insert.insert.i84.i = or i32 %retVal.sroa.5.0.insert.insert.i83.i, %retVal.sroa.6.0.insert.insert.i82.i
  %33 = call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 6, i32 noundef %retVal.sroa.0.0.insert.insert.i74.i, i32 noundef %retVal.sroa.0.0.insert.insert.i79.i, i32 noundef %retVal.sroa.0.0.insert.insert.i84.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 8589920) #11
  %sharedBufferPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 22
  %35 = ptrtoint ptr %sharedBufferPtr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sharedBufferPtr.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 32767, ptr %36, align 2
  %38 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.i = getelementptr %struct.KorgSharedBuffer, ptr %38, i32 0, i32 2, i32 0
  %39 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 8, ptr %arrayidx24.i, align 2
  %40 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.1.i = getelementptr [12 x i16], ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 32767, ptr %arrayidx.1.i, align 2
  %42 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.1.i = getelementptr %struct.KorgSharedBuffer, ptr %42, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 9, ptr %arrayidx24.1.i, align 2
  %44 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.2.i = getelementptr [12 x i16], ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 32767, ptr %arrayidx.2.i, align 2
  %46 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.2.i = getelementptr %struct.KorgSharedBuffer, ptr %46, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 8, ptr %arrayidx24.2.i, align 2
  %48 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.3.i = getelementptr [12 x i16], ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 32767, ptr %arrayidx.3.i, align 2
  %50 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.3.i = getelementptr %struct.KorgSharedBuffer, ptr %50, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 9, ptr %arrayidx24.3.i, align 2
  %52 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.4.i = getelementptr [12 x i16], ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 32767, ptr %arrayidx.4.i, align 2
  %54 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.4.i = getelementptr %struct.KorgSharedBuffer, ptr %54, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %arrayidx24.4.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 8, ptr %arrayidx24.4.i, align 2
  %56 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.5.i = getelementptr [12 x i16], ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 32767, ptr %arrayidx.5.i, align 2
  %58 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.5.i = getelementptr %struct.KorgSharedBuffer, ptr %58, i32 0, i32 2, i32 5
  %59 = ptrtoint ptr %arrayidx24.5.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 9, ptr %arrayidx24.5.i, align 2
  %60 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.6.i = getelementptr [12 x i16], ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 32767, ptr %arrayidx.6.i, align 2
  %62 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.6.i = getelementptr %struct.KorgSharedBuffer, ptr %62, i32 0, i32 2, i32 6
  %63 = ptrtoint ptr %arrayidx24.6.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 8, ptr %arrayidx24.6.i, align 2
  %64 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.7.i = getelementptr [12 x i16], ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 32767, ptr %arrayidx.7.i, align 2
  %66 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.7.i = getelementptr %struct.KorgSharedBuffer, ptr %66, i32 0, i32 2, i32 7
  %67 = ptrtoint ptr %arrayidx24.7.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 9, ptr %arrayidx24.7.i, align 2
  %68 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.8.i = getelementptr [12 x i16], ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 32767, ptr %arrayidx.8.i, align 2
  %70 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.8.i = getelementptr %struct.KorgSharedBuffer, ptr %70, i32 0, i32 2, i32 8
  %71 = ptrtoint ptr %arrayidx24.8.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 8, ptr %arrayidx24.8.i, align 2
  %72 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.9.i = getelementptr [12 x i16], ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 32767, ptr %arrayidx.9.i, align 2
  %74 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.9.i = getelementptr %struct.KorgSharedBuffer, ptr %74, i32 0, i32 2, i32 9
  %75 = ptrtoint ptr %arrayidx24.9.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 9, ptr %arrayidx24.9.i, align 2
  %76 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.10.i = getelementptr [12 x i16], ptr %76, i32 0, i32 10
  %77 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 32767, ptr %arrayidx.10.i, align 2
  %78 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.10.i = getelementptr %struct.KorgSharedBuffer, ptr %78, i32 0, i32 2, i32 10
  %79 = ptrtoint ptr %arrayidx24.10.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 8, ptr %arrayidx24.10.i, align 2
  %80 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx.11.i = getelementptr [12 x i16], ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 32767, ptr %arrayidx.11.i, align 2
  %82 = load ptr, ptr %sharedBufferPtr.i, align 4
  %arrayidx24.11.i = getelementptr %struct.KorgSharedBuffer, ptr %82, i32 0, i32 2, i32 11
  %83 = ptrtoint ptr %arrayidx24.11.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 9, ptr %arrayidx24.11.i, align 2
  call fastcc void @snd_korg1212_WriteADCSensitivity(ptr noundef %korg1212) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 8589920) #11
  %clkSrcRate.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 50
  %85 = ptrtoint ptr %clkSrcRate.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %clkSrcRate.i, align 4
  %arrayidx26.i = getelementptr [6 x i16], ptr @ClockSourceSelector, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx26.i, align 2
  %conv27.i = zext i16 %88 to i32
  %89 = call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 5, i32 noundef %conv27.i, i32 noundef 0, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 8589920) #11
  %lock.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 4
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %idleMonitorOn.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 48
  %91 = ptrtoint ptr %idleMonitorOn.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %idleMonitorOn.i.i, align 4
  %call5.i.i = call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #11
  %92 = ptrtoint ptr %cardState to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %cardState, align 4
  br label %cleanup53

cleanup53:                                        ; preds = %if.end52, %if.end47.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ 1, %entry.cleanup53_crit_edge ], [ -16, %if.end47.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_korg1212_free_pcm(ptr nocapture noundef readonly %pcm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %pcm1 = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcm1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pcm1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_korg1212_SendStopAndWait(ptr noundef %korg1212) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %dsp_stop_is_processed = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 62
  %0 = ptrtoint ptr %dsp_stop_is_processed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dsp_stop_is_processed, align 4
  %stop_pending_cnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 7
  %1 = ptrtoint ptr %stop_pending_cnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stop_pending_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.snd_korg1212_SendStop.exit_crit_edge

entry.snd_korg1212_SendStop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_SendStop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sharedBufferPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 22
  %3 = ptrtoint ptr %sharedBufferPtr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sharedBufferPtr.i, align 4
  %cardCommand.i = getelementptr inbounds %struct.KorgSharedBuffer, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cardCommand.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cardCommand.i, align 4
  %6 = ptrtoint ptr %stop_pending_cnt.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %stop_pending_cnt.i, align 4
  %timer.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %7, 1
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #11
  br label %snd_korg1212_SendStop.exit

snd_korg1212_SendStop.exit:                       ; preds = %if.then.i, %entry.snd_korg1212_SendStop.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 583) #11
  %8 = ptrtoint ptr %dsp_stop_is_processed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsp_stop_is_processed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then21, label %snd_korg1212_SendStop.exit.if.end48_crit_edge

snd_korg1212_SendStop.exit.if.end48_crit_edge:    ; preds = %snd_korg1212_SendStop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then21:                                        ; preds = %snd_korg1212_SendStop.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wait = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 8
  %call2368 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %11 = ptrtoint ptr %dsp_stop_is_processed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dsp_stop_is_processed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool26.not69.not = icmp eq i32 %12, 0
  br i1 %tobool26.not69.not, label %if.then21.cleanup_crit_edge, label %if.then21.for.end_crit_edge

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %__ret22.171 = phi i32 [ %__ret22.1, %cleanup.cleanup_crit_edge ], [ 150, %if.then21.cleanup_crit_edge ]
  %call45 = call i32 @schedule_timeout(i32 noundef %__ret22.171) #11
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %13 = ptrtoint ptr %dsp_stop_is_processed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dsp_stop_is_processed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool26.not = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool31.not = icmp eq i32 %call45, 0
  %spec.store.select50 = select i1 %tobool31.not, i32 1, i32 %call45
  %__ret22.1 = select i1 %tobool26.not, i32 %call45, i32 %spec.store.select50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %tobool38.not = icmp eq i32 %__ret22.1, 0
  %not.tobool26.not = xor i1 %tobool26.not, true
  %15 = select i1 %not.tobool26.not, i1 true, i1 %tobool38.not
  br i1 %15, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then21.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end48

if.end48:                                         ; preds = %for.end, %snd_korg1212_SendStop.exit.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_korg1212_WriteADCSensitivity(ptr noundef %korg1212) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cardState = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 46
  %0 = ptrtoint ptr %cardState to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cardState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %idleMonitorOn = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 48
  %2 = ptrtoint ptr %idleMonitorOn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idleMonitorOn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body4_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.do.body4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @snd_korg1212_SendStopAndWait(ptr noundef %korg1212)
  br label %do.body4

do.body4:                                         ; preds = %if.then, %lor.lhs.false.do.body4_crit_edge
  %tobool139.not = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.do.body4_crit_edge ]
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  tail call void @arm_heavy_mb() #11
  %mailbox3Ptr = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 35
  %4 = ptrtoint ptr %mailbox3Ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mailbox3Ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #11, !srcloc !255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 858992) #11
  %clkSrcRate = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 50
  %7 = ptrtoint ptr %clkSrcRate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clkSrcRate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %9 = icmp ult i32 %8, 5
  %10 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %switch.idx.cast.not = icmp eq i32 %10, 0
  %tobool105.not = select i1 %9, i1 %switch.idx.cast.not, i1 false
  %leftADCInSens = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 54
  %11 = ptrtoint ptr %leftADCInSens to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %leftADCInSens, align 4
  %bf.shl = shl i16 %12, 8
  %rightADCInSens = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 55
  %13 = ptrtoint ptr %rightADCInSens to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rightADCInSens, align 2
  %bf.shl28 = shl i16 %14, 8
  %bf.set30 = or i16 %bf.shl28, 1
  %sensRegPtr = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 37
  %conv64 = zext i16 %bf.set30 to i32
  %conv50 = zext i16 %bf.shl to i32
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %do.body4
  %controlValue.05 = phi i16 [ -32768, %do.body4 ], [ %spec.select, %for.end.for.body_crit_edge ]
  %channel.04 = phi i32 [ 0, %do.body4 ], [ %inc, %for.end.for.body_crit_edge ]
  %conv38 = and i16 %controlValue.05, -1282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  tail call void @arm_heavy_mb() #11
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv38)
  %16 = ptrtoint ptr %sensRegPtr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sensRegPtr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %15) #11, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 858992) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel.04)
  %cmp46 = icmp eq i32 %channel.04, 0
  br label %for.body45

for.body45:                                       ; preds = %if.end77.for.body45_crit_edge, %for.body
  %controlValue.13 = phi i16 [ %conv38, %for.body ], [ %28, %if.end77.for.body45_crit_edge ]
  %bitPosition.01 = phi i32 [ 15, %for.body ], [ %dec, %if.end77.for.body45_crit_edge ]
  %shl = shl nuw i32 1, %bitPosition.01
  br i1 %cmp46, label %if.then48, label %if.else62

if.then48:                                        ; preds = %for.body45
  %and51 = and i32 %shl, %conv50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else57, label %if.then53

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %19 = or i16 %controlValue.13, 1024
  br label %if.end77

if.else57:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %20 = and i16 %controlValue.13, -1025
  br label %if.end77

if.else62:                                        ; preds = %for.body45
  %and66 = and i32 %shl, %conv64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else72, label %if.then68

if.then68:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #13
  %21 = or i16 %controlValue.13, 1024
  br label %if.end77

if.else72:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #13
  %22 = and i16 %controlValue.13, -1025
  br label %if.end77

if.end77:                                         ; preds = %if.else72, %if.then68, %if.else57, %if.then53
  %controlValue.2 = phi i16 [ %19, %if.then53 ], [ %20, %if.else57 ], [ %21, %if.then68 ], [ %22, %if.else72 ]
  %23 = and i16 %controlValue.2, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %sensRegPtr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sensRegPtr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %24) #11, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 858992) #11
  %28 = or i16 %controlValue.2, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %30 = ptrtoint ptr %sensRegPtr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sensRegPtr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %29) #11, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 858992) #11
  %dec = add nsw i32 %bitPosition.01, -1
  %cmp43.not = icmp eq i32 %bitPosition.01, 0
  br i1 %cmp43.not, label %for.end, label %if.end77.for.body45_crit_edge

if.end77.for.body45_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body45

for.end:                                          ; preds = %if.end77
  %33 = and i16 %controlValue.2, -1282
  %34 = or i16 %33, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  tail call void @arm_heavy_mb() #11
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %sensRegPtr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sensRegPtr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %35) #11, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 858992) #11
  %39 = or i16 %33, 1025
  %spec.select = select i1 %tobool105.not, i16 %34, i16 %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %40 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %41 = ptrtoint ptr %sensRegPtr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sensRegPtr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %40) #11, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #11
  %44 = or i16 %spec.select, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = ptrtoint ptr %sensRegPtr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sensRegPtr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %47, i16 %45) #11, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 858992) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %sensRegPtr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sensRegPtr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %40) #11, !srcloc !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 858992) #11
  %inc = add nuw nsw i32 %channel.04, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.body135.preheader, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body135.preheader:                            ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 858992) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 858992) #11
  br i1 %tobool139.not, label %for.body135.preheader.if.end148_crit_edge, label %if.then140

for.body135.preheader.if.end148_crit_edge:        ; preds = %for.body135.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then140:                                       ; preds = %for.body135.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %62 = tail call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0)
  br label %if.end148

if.end148:                                        ; preds = %if.then140, %for.body135.preheader.if.end148_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %open_mutex.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #11
  %opencnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %opencnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opencnt.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %opencnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %entry.snd_korg1212_OpenCard.exit_crit_edge

entry.snd_korg1212_OpenCard.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_OpenCard.exit

if.then.i:                                        ; preds = %entry
  %idleMonitorOn.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %idleMonitorOn.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idleMonitorOn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.snd_korg1212_TurnOffIdleMonitor.exit.i_crit_edge, label %if.then.i.i

if.then.i.snd_korg1212_TurnOffIdleMonitor.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_TurnOffIdleMonitor.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @snd_korg1212_SendStopAndWait(ptr noundef %1) #11
  %8 = ptrtoint ptr %idleMonitorOn.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idleMonitorOn.i.i, align 4
  br label %snd_korg1212_TurnOffIdleMonitor.exit.i

snd_korg1212_TurnOffIdleMonitor.exit.i:           ; preds = %if.then.i.i, %if.then.i.snd_korg1212_TurnOffIdleMonitor.exit.i_crit_edge
  %cardState.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 46
  %9 = ptrtoint ptr %cardState.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %cardState.i.i, align 4
  br label %snd_korg1212_OpenCard.exit

snd_korg1212_OpenCard.exit:                       ; preds = %snd_korg1212_TurnOffIdleMonitor.exit.i, %entry.snd_korg1212_OpenCard.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #11
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw, ptr @snd_korg1212_playback_info, i32 64)
  %dma_play = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %dma_play to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_play, align 4
  %13 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime1, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 53
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i25

if.then.i25:                                      ; preds = %snd_korg1212_OpenCard.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %dma_buffer_p2.i, align 8
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 50
  %18 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dma_area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 51
  %21 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %12, i32 0, i32 3
  %22 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes.i, align 4
  br label %snd_pcm_set_runtime_buffer.exit

if.else.i:                                        ; preds = %snd_korg1212_OpenCard.exit
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dma_buffer_p2.i, align 8
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 50
  %25 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dma_area3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 51
  %26 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dma_addr4.i, align 8
  br label %snd_pcm_set_runtime_buffer.exit

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.else.i, %if.then.i25
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %23, %if.then.i25 ]
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 52
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink.i, ptr %27, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %playback_substream = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 42
  %29 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %substream, ptr %playback_substream, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !242) #11
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid, align 8
  %playback_pid = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 45
  %36 = ptrtoint ptr %playback_pid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %playback_pid, align 4
  %periodsize = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 39
  %37 = ptrtoint ptr %periodsize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %periodsize, align 4
  %channels = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 40
  %38 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %channels, align 4
  %errorcnt = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 59
  %39 = ptrtoint ptr %errorcnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %errorcnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 13, i32 noundef 1024, i32 noundef 1024) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channels = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channels, align 4
  %mul = shl i32 %3, 1
  %playDataBufsPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %playDataBufsPtr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playDataBufsPtr.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry ]
  %dst.02.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %5, %entry ]
  %6 = call ptr @memset(ptr %dst.02.i, i32 0, i32 %mul)
  %incdec.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %dst.02.i, i32 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8192
  br i1 %exitcond.not.i, label %snd_korg1212_silence.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

snd_korg1212_silence.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %playback_pid = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 45
  %7 = ptrtoint ptr %playback_pid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %playback_pid, align 4
  %playback_substream = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 42
  %8 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %playback_substream, align 4
  %periodsize = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 39
  %9 = ptrtoint ptr %periodsize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %periodsize, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  tail call fastcc void @snd_korg1212_CloseCard(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_ioctl(ptr noundef %substream, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %offset = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arg, align 4
  %mul = shl i32 %2, 4
  %first = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %arg, i32 0, i32 2
  %3 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %first, align 4
  %step = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 256, ptr %step, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @snd_pcm_lib_ioctl(ptr noundef %substream, i32 noundef %cmd, ptr noundef %arg) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %pstr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 1
  %2 = ptrtoint ptr %pstr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pstr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  %playback_pid = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 45
  %capture_pid = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 44
  %other_pid.0.in = select i1 %cmp8, ptr %capture_pid, ptr %playback_pid
  %6 = ptrtoint ptr %other_pid.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %other_pid.0 = load i32, ptr %other_pid.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %other_pid.0)
  %cmp12 = icmp sgt i32 %other_pid.0, 0
  br i1 %cmp12, label %land.lhs.true, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %this_pid.0.in = select i1 %cmp8, ptr %playback_pid, ptr %capture_pid
  %7 = ptrtoint ptr %this_pid.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %this_pid.0 = load i32, ptr %this_pid.0.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %this_pid.0, i32 %other_pid.0)
  %cmp14.not = icmp eq i32 %this_pid.0, %other_pid.0
  br i1 %cmp14.not, label %land.lhs.true.if.end24_crit_edge, label %if.then16

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then16:                                        ; preds = %land.lhs.true
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %clkRate = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 52
  %10 = ptrtoint ptr %clkRate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clkRate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp18.not = icmp eq i32 %9, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br i1 %cmp18.not, label %if.then16.cleanup_crit_edge, label %if.then20

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_snd_pcm_hw_param_setempty(ptr noundef %params, i32 noundef 11) #11
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  %arrayidx.i.i59 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i59, align 4
  %14 = ptrtoint ptr %playback_pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %playback_pid, align 4
  %16 = ptrtoint ptr %capture_pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capture_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not.i.i = icmp ne i32 %15, %17
  %18 = or i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %19 = icmp sgt i32 %18, -1
  %tobool.not.i = and i1 %cmp.not.i.i, %19
  br i1 %tobool.not.i, label %if.end24.if.then29_crit_edge, label %if.end.i

if.end24.if.then29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end.i:                                         ; preds = %if.end24
  %20 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %13, label %if.end.i.if.then29_crit_edge [
    i32 44100, label %if.end.i.if.end31_crit_edge
    i32 48000, label %sw.bb1.i
  ]

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end.i.if.then29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end.i.if.then29_crit_edge, %if.end24.if.then29_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.if.then29_crit_edge ], [ -16, %if.end24.if.then29_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br label %cleanup

if.end31:                                         ; preds = %sw.bb1.i, %if.end.i.if.end31_crit_edge
  %snd_korg1212_SetRate.s48.sink.i = phi ptr [ @snd_korg1212_SetRate.s48, %sw.bb1.i ], [ @snd_korg1212_SetRate.s44, %if.end.i.if.end31_crit_edge ]
  %clkSource2.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 51
  %21 = ptrtoint ptr %clkSource2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clkSource2.i, align 4
  %arrayidx3.i = getelementptr [3 x i32], ptr %snd_korg1212_SetRate.s48.sink.i, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %parm.0.i = load i32, ptr %arrayidx3.i, align 4
  %clkSrcRate.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 50
  %24 = ptrtoint ptr %clkSrcRate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %parm.0.i, ptr %clkSrcRate.i, align 4
  %clkRate.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 52
  %25 = ptrtoint ptr %clkRate.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %13, ptr %clkRate.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 8589920) #11
  %27 = ptrtoint ptr %clkSrcRate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clkSrcRate.i, align 4
  %arrayidx5.i = getelementptr [6 x i16], ptr @ClockSourceSelector, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx5.i, align 2
  %conv.i = zext i16 %30 to i32
  %31 = tail call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %1, i32 noundef 5, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #11
  %arrayidx.i.i60 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i60, align 4
  %channels = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 40
  %34 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %channels, align 4
  %periodsize = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 39
  %35 = ptrtoint ptr %periodsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 32768, ptr %periodsize, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then29, %if.then20, %if.then16.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then20 ], [ %retval.0.i.ph, %if.then29 ], [ 0, %if.end31 ], [ 0, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %stop_pending_cnt = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %stop_pending_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stop_pending_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %setcnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 57
  %4 = ptrtoint ptr %setcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %setcnt.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %setcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %snd_korg1212_SetupForPlay.exit, label %snd_korg1212_SetupForPlay.exit.thread

snd_korg1212_SetupForPlay.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %currentBuffer13 = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 41
  %6 = ptrtoint ptr %currentBuffer13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %currentBuffer13, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %9

snd_korg1212_SetupForPlay.exit:                   ; preds = %if.end
  %cardState.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 46
  %7 = ptrtoint ptr %cardState.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %cardState.i.i, align 4
  %call.i = tail call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %1, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  %currentBuffer = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 41
  %8 = ptrtoint ptr %currentBuffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %currentBuffer, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br i1 %cmp.not.i.not, label %snd_korg1212_SetupForPlay.exit._crit_edge, label %snd_korg1212_SetupForPlay.exit.cleanup_crit_edge

snd_korg1212_SetupForPlay.exit.cleanup_crit_edge: ; preds = %snd_korg1212_SetupForPlay.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

snd_korg1212_SetupForPlay.exit._crit_edge:        ; preds = %snd_korg1212_SetupForPlay.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %9

9:                                                ; preds = %snd_korg1212_SetupForPlay.exit._crit_edge, %snd_korg1212_SetupForPlay.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %9, %snd_korg1212_SetupForPlay.exit.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ -11, %do.end3 ], [ 0, %9 ], [ -22, %snd_korg1212_SetupForPlay.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %running = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 47
  %3 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %running, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %running, align 4
  %playcnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 58
  %5 = ptrtoint ptr %playcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %playcnt.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %playcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %snd_korg1212_TriggerPlay.exit, label %sw.bb.snd_korg1212_TriggerPlay.exit.thread_crit_edge

sw.bb.snd_korg1212_TriggerPlay.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_TriggerPlay.exit.thread

snd_korg1212_TriggerPlay.exit:                    ; preds = %sw.bb
  %cardState.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 46
  %7 = ptrtoint ptr %cardState.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %cardState.i.i, align 4
  %call.i = tail call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %snd_korg1212_TriggerPlay.exit.snd_korg1212_TriggerPlay.exit.thread_crit_edge, label %snd_korg1212_TriggerPlay.exit.sw.epilog_crit_edge

snd_korg1212_TriggerPlay.exit.sw.epilog_crit_edge: ; preds = %snd_korg1212_TriggerPlay.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

snd_korg1212_TriggerPlay.exit.snd_korg1212_TriggerPlay.exit.thread_crit_edge: ; preds = %snd_korg1212_TriggerPlay.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_TriggerPlay.exit.thread

snd_korg1212_TriggerPlay.exit.thread:             ; preds = %snd_korg1212_TriggerPlay.exit.snd_korg1212_TriggerPlay.exit.thread_crit_edge, %sw.bb.snd_korg1212_TriggerPlay.exit.thread_crit_edge
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %running2 = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 47
  %8 = ptrtoint ptr %running2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %running2, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %running2, align 4
  %playcnt.i10 = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 58
  %10 = ptrtoint ptr %playcnt.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %playcnt.i10, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %playcnt.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i11 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i11, label %if.end.i13, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i13:                                       ; preds = %sw.bb1
  %setcnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 57
  %12 = ptrtoint ptr %setcnt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %setcnt.i, align 4
  %cardState.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 46
  %13 = ptrtoint ptr %cardState.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cardState.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %cmp.not.i12 = icmp eq i32 %14, 10
  br i1 %cmp.not.i12, label %if.end.i13.if.end2.i_crit_edge, label %if.then1.i

if.end.i13.if.end2.i_crit_edge:                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i13
  %stop_pending_cnt.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %stop_pending_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stop_pending_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then1.i.if.end2.i_crit_edge

if.then1.i.if.end2.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %sharedBufferPtr.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %sharedBufferPtr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sharedBufferPtr.i.i, align 4
  %cardCommand.i.i = getelementptr inbounds %struct.KorgSharedBuffer, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cardCommand.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %cardCommand.i.i, align 4
  %20 = ptrtoint ptr %stop_pending_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 100, ptr %stop_pending_cnt.i.i, align 4
  %timer.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %21, 1
  %call.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #11
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.i, %if.then1.i.if.end2.i_crit_edge, %if.end.i13.if.end2.i_crit_edge
  %22 = ptrtoint ptr %cardState.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %cardState.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end2.i, %sw.bb1.sw.epilog_crit_edge, %snd_korg1212_TriggerPlay.exit.thread, %snd_korg1212_TriggerPlay.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %snd_korg1212_TriggerPlay.exit.thread ], [ -22, %snd_korg1212_TriggerPlay.exit.sw.epilog_crit_edge ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.end2.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_korg1212_playback_pointer(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %currentBuffer = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %currentBuffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentBuffer, align 4
  %mul = shl i32 %3, 10
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_playback_silence(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mul.i = shl i32 %pos, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %5
  %mul.i7 = shl i32 %count, 3
  %div.i9 = udiv i32 %mul.i7, %5
  %channels = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 4
  %mul = shl i32 %7, 1
  %add.i = add i32 %div.i9, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add.i)
  %cmp.i = icmp sgt i32 %add.i, 8192
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i, !prof !275

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i9)
  %cmp221.i = icmp sgt i32 %div.i9, 0
  br i1 %cmp221.i, label %for.body.preheader.i, label %for.cond.preheader.i.snd_korg1212_silence.exit_crit_edge

for.cond.preheader.i.snd_korg1212_silence.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_silence.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %playDataBufsPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %playDataBufsPtr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %playDataBufsPtr.i, align 4
  %add.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %9, i32 %div.i
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1268, i32 noundef 9, ptr noundef null) #11
  br label %snd_korg1212_silence.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dst.02.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %10 = call ptr @memset(ptr %dst.02.i, i32 0, i32 %mul)
  %incdec.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %dst.02.i, i32 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i9
  br i1 %exitcond.not.i, label %for.body.i.snd_korg1212_silence.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.snd_korg1212_silence.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_silence.exit

snd_korg1212_silence.exit:                        ; preds = %for.body.i.snd_korg1212_silence.exit_crit_edge, %do.end.i, %for.cond.preheader.i.snd_korg1212_silence.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %for.cond.preheader.i.snd_korg1212_silence.exit_crit_edge ], [ 0, %for.body.i.snd_korg1212_silence.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_playback_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %mul.i.i = shl i32 %pos, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %5
  %mul.i52.i = shl i32 %count, 3
  %div.i54.i = udiv i32 %mul.i52.i, %5
  %channels.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels.i, align 4
  %mul.i = shl i32 %7, 1
  %playDataBufsPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %playDataBufsPtr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %playDataBufsPtr.i, align 4
  %add.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %9, i32 %div.i.i
  %add.i = add i32 %div.i54.i, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add.i)
  %cmp.i = icmp sgt i32 %add.i, 8192
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i, !prof !275

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i54.i)
  %cmp2462.i = icmp sgt i32 %div.i54.i, 0
  br i1 %cmp2462.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.snd_korg1212_copy_from.exit_crit_edge

for.cond.preheader.i.snd_korg1212_copy_from.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_from.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br label %if.end8.i.i.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1341, i32 noundef 9, ptr noundef null) #11
  br label %snd_korg1212_copy_from.exit

if.end8.i.i.i:                                    ; preds = %if.end31.i.if.end8.i.i.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end31.i.if.end8.i.i.i_crit_edge ]
  %dst.066.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end31.i.if.end8.i.i.i_crit_edge ]
  %src.addr.063.i = phi ptr [ %src, %for.body.lr.ph.i ], [ %add.ptr32.i, %if.end31.i.if.end8.i.i.i_crit_edge ]
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.snd_korg1212_copy_from.exit_crit_edge, label %if.then27.i.i.i, !prof !276

land.rhs16.i.i.i.snd_korg1212_copy_from.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_from.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %snd_korg1212_copy_from.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %dst.066.i, i32 noundef %mul.i, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src.addr.063.i, i32 %mul.i, i32 -1226833920) #14, !srcloc !277
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !276

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst.066.i, i32 noundef %mul.i) #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !242) #11
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !278
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst.066.i, ptr noundef %src.addr.063.i, i32 noundef %mul.i) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #11, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %mul.i, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %mul.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end31.i, label %if.then11.i.i.i, !prof !276

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i32 %mul.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst.066.i, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %snd_korg1212_copy_from.exit

if.end31.i:                                       ; preds = %if.end.i.i.i
  %incdec.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %dst.066.i, i32 1
  %add.ptr32.i = getelementptr i8, ptr %src.addr.063.i, i32 %mul.i
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i54.i
  br i1 %exitcond.not.i, label %if.end31.i.snd_korg1212_copy_from.exit_crit_edge, label %if.end31.i.if.end8.i.i.i_crit_edge

if.end31.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.end31.i.snd_korg1212_copy_from.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_from.exit

snd_korg1212_copy_from.exit:                      ; preds = %if.end31.i.snd_korg1212_copy_from.exit_crit_edge, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.snd_korg1212_copy_from.exit_crit_edge, %do.end.i, %for.cond.preheader.i.snd_korg1212_copy_from.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -14, %if.then11.i.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.snd_korg1212_copy_from.exit_crit_edge ], [ 0, %for.cond.preheader.i.snd_korg1212_copy_from.exit_crit_edge ], [ 0, %if.end31.i.snd_korg1212_copy_from.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_playback_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr nocapture noundef readonly %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %mul.i.i = shl i32 %pos, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %5
  %mul.i52.i = shl i32 %count, 3
  %div.i54.i = udiv i32 %mul.i52.i, %5
  %channels.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels.i, align 4
  %mul.i = shl i32 %7, 1
  %add.i = add i32 %div.i54.i, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add.i)
  %cmp.i = icmp sgt i32 %add.i, 8192
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i, !prof !275

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i54.i)
  %cmp2462.i = icmp sgt i32 %div.i54.i, 0
  br i1 %cmp2462.i, label %for.body.i.preheader, label %for.cond.preheader.i.snd_korg1212_copy_from.exit_crit_edge

for.cond.preheader.i.snd_korg1212_copy_from.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_from.exit

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %playDataBufsPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %playDataBufsPtr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %playDataBufsPtr.i, align 4
  %add.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %9, i32 %div.i.i
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1341, i32 noundef 9, ptr noundef null) #11
  br label %snd_korg1212_copy_from.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.068.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %dst.066.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.i.preheader ]
  %src.addr.063.i = phi ptr [ %add.ptr32.i, %for.body.i.for.body.i_crit_edge ], [ %src, %for.body.i.preheader ]
  %10 = call ptr @memcpy(ptr %dst.066.i, ptr %src.addr.063.i, i32 %mul.i)
  %incdec.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %dst.066.i, i32 1
  %add.ptr32.i = getelementptr i8, ptr %src.addr.063.i, i32 %mul.i
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i54.i
  br i1 %exitcond.not.i, label %for.body.i.snd_korg1212_copy_from.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.snd_korg1212_copy_from.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_from.exit

snd_korg1212_copy_from.exit:                      ; preds = %for.body.i.snd_korg1212_copy_from.exit_crit_edge, %do.end.i, %for.cond.preheader.i.snd_korg1212_copy_from.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %for.cond.preheader.i.snd_korg1212_copy_from.exit_crit_edge ], [ 0, %for.body.i.snd_korg1212_copy_from.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_korg1212_CloseCard(ptr noundef %korg1212) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %open_mutex = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #11
  %opencnt = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 56
  %0 = ptrtoint ptr %opencnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opencnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %opencnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %cardState = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 46
  %2 = ptrtoint ptr %cardState to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cardState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 2, i32 noundef 8, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8.not = icmp eq i32 %call, 0
  br i1 %cmp8.not, label %if.then2.if.end16thread-pre-split_crit_edge, label %if.then2.return_crit_edge

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then2.if.end16thread-pre-split_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16thread-pre-split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp13 = icmp ugt i32 %3, 6
  br i1 %cmp13, label %if.then14, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @snd_korg1212_SendStopAndWait(ptr noundef %korg1212)
  br label %if.end16thread-pre-split

if.end16thread-pre-split:                         ; preds = %if.then14, %if.then2.if.end16thread-pre-split_crit_edge
  %4 = ptrtoint ptr %cardState to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %cardState, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16thread-pre-split, %if.else.if.end16_crit_edge
  %5 = phi i32 [ %.pr, %if.end16thread-pre-split ], [ %3, %if.else.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp18 = icmp ugt i32 %5, 4
  br i1 %cmp18, label %if.then19, label %if.end16.return_crit_edge

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 8589920) #11
  %lock.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %idleMonitorOn.i = getelementptr inbounds %struct.snd_korg1212, ptr %korg1212, i32 0, i32 48
  %7 = ptrtoint ptr %idleMonitorOn.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %idleMonitorOn.i, align 4
  %call5.i = tail call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %korg1212, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %8 = ptrtoint ptr %cardState to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %cardState, align 4
  br label %return

return:                                           ; preds = %if.then19, %if.end16.return_crit_edge, %if.then2.return_crit_edge, %entry.return_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_snd_pcm_hw_param_setempty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %open_mutex.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #11
  %opencnt.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %opencnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opencnt.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %opencnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %entry.snd_korg1212_OpenCard.exit_crit_edge

entry.snd_korg1212_OpenCard.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_OpenCard.exit

if.then.i:                                        ; preds = %entry
  %idleMonitorOn.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %idleMonitorOn.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idleMonitorOn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.snd_korg1212_TurnOffIdleMonitor.exit.i_crit_edge, label %if.then.i.i

if.then.i.snd_korg1212_TurnOffIdleMonitor.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_TurnOffIdleMonitor.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @snd_korg1212_SendStopAndWait(ptr noundef %1) #11
  %8 = ptrtoint ptr %idleMonitorOn.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idleMonitorOn.i.i, align 4
  br label %snd_korg1212_TurnOffIdleMonitor.exit.i

snd_korg1212_TurnOffIdleMonitor.exit.i:           ; preds = %if.then.i.i, %if.then.i.snd_korg1212_TurnOffIdleMonitor.exit.i_crit_edge
  %cardState.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 46
  %9 = ptrtoint ptr %cardState.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %cardState.i.i, align 4
  br label %snd_korg1212_OpenCard.exit

snd_korg1212_OpenCard.exit:                       ; preds = %snd_korg1212_TurnOffIdleMonitor.exit.i, %entry.snd_korg1212_OpenCard.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #11
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw, ptr @snd_korg1212_capture_info, i32 64)
  %dma_rec = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %dma_rec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_rec, align 4
  %13 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime1, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 53
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i24

if.then.i24:                                      ; preds = %snd_korg1212_OpenCard.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %dma_buffer_p2.i, align 8
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 50
  %18 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dma_area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 51
  %21 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %12, i32 0, i32 3
  %22 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes.i, align 4
  br label %snd_pcm_set_runtime_buffer.exit

if.else.i:                                        ; preds = %snd_korg1212_OpenCard.exit
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dma_buffer_p2.i, align 8
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 50
  %25 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dma_area3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 51
  %26 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dma_addr4.i, align 8
  br label %snd_pcm_set_runtime_buffer.exit

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.else.i, %if.then.i24
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %23, %if.then.i24 ]
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 52
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink.i, ptr %27, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %capture_substream = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 43
  %29 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %substream, ptr %capture_substream, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !242) #11
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid, align 8
  %capture_pid = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 44
  %36 = ptrtoint ptr %capture_pid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %capture_pid, align 4
  %periodsize = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 39
  %37 = ptrtoint ptr %periodsize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %periodsize, align 4
  %channels = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 40
  %38 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %channels, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 13, i32 noundef 1024, i32 noundef 1024) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %capture_pid = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %capture_pid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %capture_pid, align 4
  %capture_substream = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 43
  %3 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %capture_substream, align 4
  %periodsize = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %periodsize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %periodsize, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  tail call fastcc void @snd_korg1212_CloseCard(ptr noundef %1)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_korg1212_capture_pointer(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %currentBuffer = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %currentBuffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentBuffer, align 4
  %mul = shl i32 %3, 10
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_capture_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %mul.i.i = shl i32 %pos, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %5
  %mul.i52.i = shl i32 %count, 3
  %div.i54.i = udiv i32 %mul.i52.i, %5
  %channels.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels.i, align 4
  %mul.i = shl i32 %7, 1
  %recordDataBufsPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %recordDataBufsPtr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recordDataBufsPtr.i, align 4
  %add.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %9, i32 %div.i.i
  %add.i = add i32 %div.i54.i, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add.i)
  %cmp.i = icmp sgt i32 %add.i, 8192
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i, !prof !275

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i54.i)
  %cmp2458.i = icmp sgt i32 %div.i54.i, 0
  br i1 %cmp2458.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.snd_korg1212_copy_to.exit_crit_edge

for.cond.preheader.i.snd_korg1212_copy_to.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_to.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br label %if.end8.i.i.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1302, i32 noundef 9, ptr noundef null) #11
  br label %snd_korg1212_copy_to.exit

if.end8.i.i.i:                                    ; preds = %if.end31.i.if.end8.i.i.i_crit_edge, %for.body.lr.ph.i
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end31.i.if.end8.i.i.i_crit_edge ]
  %src.062.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end31.i.if.end8.i.i.i_crit_edge ]
  %dst.addr.059.i = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr32.i, %if.end31.i.if.end8.i.i.i_crit_edge ]
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.snd_korg1212_copy_to.exit_crit_edge, label %if.then27.i.i.i, !prof !276

land.rhs16.i.i.i.snd_korg1212_copy_to.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_to.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %snd_korg1212_copy_to.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %src.062.i, i32 noundef %mul.i, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst.addr.059.i, i32 %mul.i, i32 -1226833920) #14, !srcloc !281
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src.062.i, i32 noundef %mul.i) #11
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %dst.addr.059.i, ptr noundef %src.062.i, i32 noundef %mul.i) #11
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %mul.i, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %mul.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool28.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool28.not.i, label %if.end31.i, label %copy_to_user.exit.i.snd_korg1212_copy_to.exit_crit_edge

copy_to_user.exit.i.snd_korg1212_copy_to.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_to.exit

if.end31.i:                                       ; preds = %copy_to_user.exit.i
  %incdec.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %src.062.i, i32 1
  %add.ptr32.i = getelementptr i8, ptr %dst.addr.059.i, i32 %mul.i
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i54.i
  br i1 %exitcond.not.i, label %if.end31.i.snd_korg1212_copy_to.exit_crit_edge, label %if.end31.i.if.end8.i.i.i_crit_edge

if.end31.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.end31.i.snd_korg1212_copy_to.exit_crit_edge:   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_to.exit

snd_korg1212_copy_to.exit:                        ; preds = %if.end31.i.snd_korg1212_copy_to.exit_crit_edge, %copy_to_user.exit.i.snd_korg1212_copy_to.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.snd_korg1212_copy_to.exit_crit_edge, %do.end.i, %for.cond.preheader.i.snd_korg1212_copy_to.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.snd_korg1212_copy_to.exit_crit_edge ], [ 0, %for.cond.preheader.i.snd_korg1212_copy_to.exit_crit_edge ], [ 0, %if.end31.i.snd_korg1212_copy_to.exit_crit_edge ], [ -14, %copy_to_user.exit.i.snd_korg1212_copy_to.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_capture_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr nocapture noundef writeonly %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %mul.i.i = shl i32 %pos, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %5
  %mul.i52.i = shl i32 %count, 3
  %div.i54.i = udiv i32 %mul.i52.i, %5
  %channels.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels.i, align 4
  %mul.i = shl i32 %7, 1
  %add.i = add i32 %div.i54.i, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add.i)
  %cmp.i = icmp sgt i32 %add.i, 8192
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i, !prof !275

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i54.i)
  %cmp2458.i = icmp sgt i32 %div.i54.i, 0
  br i1 %cmp2458.i, label %for.body.i.preheader, label %for.cond.preheader.i.snd_korg1212_copy_to.exit_crit_edge

for.cond.preheader.i.snd_korg1212_copy_to.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_to.exit

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %recordDataBufsPtr.i = getelementptr inbounds %struct.snd_korg1212, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %recordDataBufsPtr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recordDataBufsPtr.i, align 4
  %add.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %9, i32 %div.i.i
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1302, i32 noundef 9, ptr noundef null) #11
  br label %snd_korg1212_copy_to.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.065.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %src.062.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.i.preheader ]
  %dst.addr.059.i = phi ptr [ %add.ptr32.i, %for.body.i.for.body.i_crit_edge ], [ %dst, %for.body.i.preheader ]
  %10 = call ptr @memcpy(ptr %dst.addr.059.i, ptr %src.062.i, i32 %mul.i)
  %incdec.ptr.i = getelementptr %struct.KorgAudioFrame, ptr %src.062.i, i32 1
  %add.ptr32.i = getelementptr i8, ptr %dst.addr.059.i, i32 %mul.i
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i54.i
  br i1 %exitcond.not.i, label %for.body.i.snd_korg1212_copy_to.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.snd_korg1212_copy_to.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_copy_to.exit

snd_korg1212_copy_to.exit:                        ; preds = %for.body.i.snd_korg1212_copy_to.exit_crit_edge, %do.end.i, %for.cond.preheader.i.snd_korg1212_copy_to.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %for.cond.preheader.i.snd_korg1212_copy_to.exit_crit_edge ], [ 0, %for.body.i.snd_korg1212_copy_to.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_korg1212_control_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %1 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp = icmp ugt i32 %2, 7
  %cond = select i1 %cmp, i32 2, i32 1
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32767, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %sharedBufferPtr = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sharedBufferPtr, align 4
  %arrayidx = getelementptr [12 x i16], ptr %5, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = tail call i16 @llvm.abs.i16(i16 %7, i1 false)
  %9 = zext i16 %8 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp5 = icmp sgt i32 %3, 7
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sharedBufferPtr, align 4
  %add = add nuw i32 %3, 1
  %arrayidx10 = getelementptr [12 x i16], ptr %12, i32 0, i32 %add
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx10, align 2
  %15 = tail call i16 @llvm.abs.i16(i16 %14, i1 false)
  %16 = zext i16 %15 to i32
  %arrayidx23 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %5)
  %cmp3 = icmp sgt i32 %5, 32766
  br i1 %cmp3, label %land.lhs.true4, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true4:                                   ; preds = %entry
  %sharedBufferPtr = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sharedBufferPtr, align 4
  %arrayidx7 = getelementptr [12 x i16], ptr %7, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx7, align 2
  %10 = tail call i16 @llvm.abs.i16(i16 %9, i1 false)
  %11 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp12.not = icmp eq i32 %5, %11
  br i1 %cmp12.not, label %land.lhs.true4.if.end_crit_edge, label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14 = getelementptr %struct.snd_korg1212, ptr %1, i32 0, i32 53, i32 %3
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp15.inv = icmp slt i32 %13, 1
  %14 = sub nsw i32 0, %5
  %15 = select i1 %cmp15.inv, i32 %5, i32 %14
  %conv20 = trunc i32 %15 to i16
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv20, ptr %arrayidx7, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %entry.if.end_crit_edge
  %change.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true4.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp24 = icmp sgt i32 %3, 7
  br i1 %cmp24, label %if.then26, label %if.end.if.end72_crit_edge

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then26:                                        ; preds = %if.end
  %arrayidx28 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %18)
  %cmp34 = icmp sgt i32 %18, 32766
  br i1 %cmp34, label %land.lhs.true36, label %if.then26.if.end72_crit_edge

if.then26.if.end72_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true36:                                  ; preds = %if.then26
  %sharedBufferPtr40 = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %sharedBufferPtr40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sharedBufferPtr40, align 4
  %add = add nuw i32 %3, 1
  %arrayidx42 = getelementptr [12 x i16], ptr %20, i32 0, i32 %add
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx42, align 2
  %23 = tail call i16 @llvm.abs.i16(i16 %22, i1 false)
  %24 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %24)
  %cmp54.not = icmp eq i32 %18, %24
  br i1 %cmp54.not, label %land.lhs.true36.if.end72_crit_edge, label %if.then56

land.lhs.true36.if.end72_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then56:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx59 = getelementptr %struct.snd_korg1212, ptr %1, i32 0, i32 53, i32 %add
  %25 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp60.inv = icmp slt i32 %26, 1
  %27 = sub nsw i32 0, %18
  %28 = select i1 %cmp60.inv, i32 %18, i32 %27
  %conv66 = trunc i32 %28 to i16
  %29 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv66, ptr %arrayidx42, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.then56, %land.lhs.true36.if.end72_crit_edge, %if.then26.if.end72_crit_edge, %if.end.if.end72_crit_edge
  %change.1 = phi i32 [ 1, %if.then56 ], [ %change.0, %land.lhs.true36.if.end72_crit_edge ], [ %change.0, %if.then26.if.end72_crit_edge ], [ %change.0, %if.end.if.end72_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 %change.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_route_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ugt i32 %1, 7
  %cond = select i1 %cmp, i32 2, i32 1
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef %cond, i32 noundef 12, ptr noundef nonnull @channelName) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_route_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %sharedBufferPtr = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sharedBufferPtr, align 4
  %arrayidx = getelementptr %struct.KorgSharedBuffer, ptr %5, i32 0, i32 2, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp sgt i32 %3, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sharedBufferPtr, align 4
  %add = add nuw i32 %3, 1
  %arrayidx5 = getelementptr %struct.KorgSharedBuffer, ptr %10, i32 0, i32 2, i32 %add
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %12 to i32
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv6, ptr %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_route_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp = icmp ult i32 %5, 12
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sharedBufferPtr = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sharedBufferPtr, align 4
  %arrayidx3 = getelementptr [12 x i16], ptr %7, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx3, align 2
  %conv = sext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp4.not = icmp eq i32 %5, %conv
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv8 = trunc i32 %5 to i16
  %arrayidx10 = getelementptr %struct.KorgSharedBuffer, ptr %7, i32 0, i32 2, i32 %3
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv8, ptr %arrayidx10, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %change.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp11 = icmp sgt i32 %3, 7
  br i1 %cmp11, label %if.then13, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then13:                                        ; preds = %if.end
  %arrayidx15 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %cmp16 = icmp ult i32 %12, 12
  br i1 %cmp16, label %land.lhs.true18, label %if.then13.if.end36_crit_edge

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true18:                                  ; preds = %if.then13
  %sharedBufferPtr21 = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %sharedBufferPtr21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sharedBufferPtr21, align 4
  %add = add nuw i32 %3, 1
  %arrayidx23 = getelementptr [12 x i16], ptr %14, i32 0, i32 %add
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx23, align 2
  %conv24 = sext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv24)
  %cmp25.not = icmp eq i32 %12, %conv24
  br i1 %cmp25.not, label %land.lhs.true18.if.end36_crit_edge, label %if.then27

land.lhs.true18.if.end36_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then27:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  %conv30 = trunc i32 %12 to i16
  %arrayidx34 = getelementptr %struct.KorgSharedBuffer, ptr %14, i32 0, i32 2, i32 %add
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv30, ptr %arrayidx34, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %land.lhs.true18.if.end36_crit_edge, %if.then13.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %change.1 = phi i32 [ 1, %if.then27 ], [ %change.0, %land.lhs.true18.if.end36_crit_edge ], [ %change.0, %if.then13.if.end36_crit_edge ], [ %change.0, %if.end.if.end36_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 %change.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_korg1212_control_phase_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %1 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp = icmp ugt i32 %2, 7
  %cond = select i1 %cmp, i32 2, i32 1
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_phase_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %arrayidx = getelementptr %struct.snd_korg1212, ptr %1, i32 0, i32 53, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp sgt i32 %3, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw i32 %3, 1
  %arrayidx3 = getelementptr %struct.snd_korg1212, ptr %1, i32 0, i32 53, i32 %add
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_phase_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %lnot.ext = zext i1 %tobool to i32
  %arrayidx2 = getelementptr %struct.snd_korg1212, ptr %1, i32 0, i32 53, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lnot.ext, ptr %arrayidx2, align 4
  %sharedBufferPtr = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sharedBufferPtr, align 4
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %arrayidx4 = getelementptr [12 x i16], ptr %8, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx4, align 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp ne i32 %14, 0
  %.lobit = lshr i16 %12, 15
  %15 = zext i1 %cmp to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %.lobit, i16 %15)
  %cmp10.not = icmp eq i16 %.lobit, %15
  br i1 %cmp10.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = tail call i16 @llvm.abs.i16(i16 %12, i1 false)
  %17 = sub i16 0, %16
  %18 = select i1 %tobool, i16 %17, i16 %16
  %arrayidx22 = getelementptr [12 x i16], ptr %8, i32 0, i32 %3
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx22, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %change.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp23 = icmp sgt i32 %3, 7
  br i1 %cmp23, label %if.then25, label %if.end.if.end72_crit_edge

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then25:                                        ; preds = %if.end
  %arrayidx27 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28 = icmp ne i32 %21, 0
  %lnot.ext32 = zext i1 %tobool28 to i32
  %add = add nuw i32 %3, 1
  %arrayidx34 = getelementptr %struct.snd_korg1212, ptr %1, i32 0, i32 53, i32 %add
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %lnot.ext32, ptr %arrayidx34, align 4
  %23 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sharedBufferPtr, align 4
  %25 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %private_value, align 4
  %add38 = add i32 %26, 1
  %arrayidx39 = getelementptr [12 x i16], ptr %24, i32 0, i32 %add38
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx39, align 2
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp43 = icmp ne i32 %30, 0
  %.lobit104 = lshr i16 %28, 15
  %31 = zext i1 %cmp43 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %.lobit104, i16 %31)
  %cmp47.not = icmp eq i16 %.lobit104, %31
  br i1 %cmp47.not, label %if.then25.if.end72_crit_edge, label %if.then49

if.then25.if.end72_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then49:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %32 = tail call i16 @llvm.abs.i16(i16 %28, i1 false)
  %33 = sub i16 0, %32
  %34 = select i1 %tobool28, i16 %33, i16 %32
  %arrayidx70 = getelementptr [12 x i16], ptr %24, i32 0, i32 %add
  %35 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx70, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.then49, %if.then25.if.end72_crit_edge, %if.end.if.end72_crit_edge
  %change.1 = phi i32 [ 1, %if.then49 ], [ %change.0, %if.then25.if.end72_crit_edge ], [ %change.0, %if.end.if.end72_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 %change.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_sync_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @clockSourceTypeName) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_sync_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %clkSource = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %clkSource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clkSource, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_sync_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %rem = urem i32 %3, 3
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %clkSource = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %clkSource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clkSource, align 4
  store i32 %rem, ptr %clkSource, align 4
  %playback_pid.i.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %playback_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %playback_pid.i.i.i, align 4
  %capture_pid.i.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %capture_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capture_pid.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i.i.i = icmp ne i32 %7, %9
  %10 = or i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %11 = icmp sgt i32 %10, -1
  %tobool.not.i.i = and i1 %cmp.not.i.i.i, %11
  br i1 %tobool.not.i.i, label %entry.snd_korg1212_SetClockSource.exit_crit_edge, label %if.end.i.i

entry.snd_korg1212_SetClockSource.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_SetClockSource.exit

if.end.i.i:                                       ; preds = %entry
  %clkRate.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 52
  %12 = ptrtoint ptr %clkRate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clkRate.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %13, label %if.end.i.i.snd_korg1212_SetClockSource.exit_crit_edge [
    i32 44100, label %if.end.i.i.sw.epilog.i.i_crit_edge
    i32 48000, label %sw.bb1.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end.i.i.snd_korg1212_SetClockSource.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_korg1212_SetClockSource.exit

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %snd_korg1212_SetRate.s48.sink.i.i = phi ptr [ @snd_korg1212_SetRate.s48, %sw.bb1.i.i ], [ @snd_korg1212_SetRate.s44, %if.end.i.i.sw.epilog.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr [3 x i32], ptr %snd_korg1212_SetRate.s48.sink.i.i, i32 0, i32 %rem
  %15 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %parm.0.i.i = load i32, ptr %arrayidx3.i.i, align 4
  %clkSrcRate.i.i = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 50
  %16 = ptrtoint ptr %clkSrcRate.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %parm.0.i.i, ptr %clkSrcRate.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 8589920) #11
  %18 = ptrtoint ptr %clkSrcRate.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clkSrcRate.i.i, align 4
  %arrayidx5.i.i = getelementptr [6 x i16], ptr @ClockSourceSelector, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx5.i.i, align 2
  %conv.i.i = zext i16 %21 to i32
  %22 = tail call fastcc i32 @snd_korg1212_Send1212Command(ptr noundef %1, i32 noundef 5, i32 noundef %conv.i.i, i32 noundef 0, i32 noundef 0) #11
  br label %snd_korg1212_SetClockSource.exit

snd_korg1212_SetClockSource.exit:                 ; preds = %sw.epilog.i.i, %if.end.i.i.snd_korg1212_SetClockSource.exit_crit_edge, %entry.snd_korg1212_SetClockSource.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %5)
  %cmp = icmp ne i32 %rem, %5
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_korg1212_control_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  store i32 127, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %leftADCInSens = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %leftADCInSens to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %leftADCInSens, align 4
  %conv = zext i16 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value, align 8
  %rightADCInSens = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 55
  %5 = ptrtoint ptr %rightADCInSens to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rightADCInSens, align 2
  %conv1 = zext i16 %6 to i32
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %arrayidx3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_korg1212_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %4 = icmp ult i32 %3, 128
  br i1 %4, label %land.lhs.true4, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true4:                                   ; preds = %entry
  %leftADCInSens = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 54
  %5 = ptrtoint ptr %leftADCInSens to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %leftADCInSens, align 4
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp7.not = icmp eq i32 %3, %conv
  br i1 %cmp7.not, label %land.lhs.true4.if.end_crit_edge, label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = trunc i32 %3 to i16
  %7 = ptrtoint ptr %leftADCInSens to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv11, ptr %leftADCInSens, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not = phi i1 [ false, %if.then ], [ true, %land.lhs.true4.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ]
  %arrayidx14 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %9)
  %10 = icmp ult i32 %9, 128
  br i1 %10, label %land.lhs.true22, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true22:                                  ; preds = %if.end
  %rightADCInSens = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 55
  %11 = ptrtoint ptr %rightADCInSens to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rightADCInSens, align 2
  %conv25 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv25)
  %cmp26.not = icmp eq i32 %9, %conv25
  br i1 %cmp26.not, label %land.lhs.true22.if.end33_crit_edge, label %if.end33.thread

land.lhs.true22.if.end33_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end33.thread:                                  ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  %conv31 = trunc i32 %9 to i16
  %13 = ptrtoint ptr %rightADCInSens to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv31, ptr %rightADCInSens, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %if.then35

if.end33:                                         ; preds = %land.lhs.true22.if.end33_crit_edge, %if.end.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br i1 %tobool.not, label %if.end33.if.end36_crit_edge, label %if.end33.if.then35_crit_edge

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %if.end33.if.then35_crit_edge, %if.end33.thread
  tail call fastcc void @snd_korg1212_WriteADCSensitivity(ptr noundef %1)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %change.156 = phi i32 [ 1, %if.then35 ], [ 0, %if.end33.if.end36_crit_edge ]
  ret i32 %change.156
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_korg1212_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef %longname) #11
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %add = add i32 %11, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.67, i32 noundef %add) #11
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.68) #11
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.69, i32 noundef 32768) #11
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %clkSrcRate = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 50
  %18 = ptrtoint ptr %clkSrcRate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clkSrcRate, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @clockSourceName, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.70, ptr noundef %21) #11
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %leftADCInSens = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 54
  %24 = ptrtoint ptr %leftADCInSens to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %leftADCInSens, align 4
  %conv = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.71, i32 noundef %conv) #11
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %rightADCInSens = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 55
  %28 = ptrtoint ptr %rightADCInSens to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rightADCInSens, align 2
  %conv10 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.72, i32 noundef %conv10) #11
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.73) #11
  %sharedBufferPtr = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %n.061 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %arrayidx14 = getelementptr [12 x ptr], ptr @channelName, i32 0, i32 %n.061
  %34 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx14, align 4
  %36 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sharedBufferPtr, align 4
  %arrayidx15 = getelementptr %struct.KorgSharedBuffer, ptr %37, i32 0, i32 2, i32 %n.061
  %38 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx15, align 2
  %idxprom = zext i16 %39 to i32
  %arrayidx16 = getelementptr [12 x ptr], ptr @channelName, i32 0, i32 %idxprom
  %40 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr [12 x i16], ptr %37, i32 0, i32 %n.061
  %42 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx18, align 2
  %conv19 = sext i16 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.74, i32 noundef %n.061, ptr noundef %35, ptr noundef %41, i32 noundef %conv19) #11
  %inc = add nuw nsw i32 %n.061, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.75) #11
  %46 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer, align 4
  %48 = ptrtoint ptr %sharedBufferPtr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sharedBufferPtr, align 4
  %AdatTimeCode = getelementptr inbounds %struct.KorgSharedBuffer, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %AdatTimeCode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %AdatTimeCode, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.76, i32 noundef %51) #11
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %cardState = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 46
  %54 = ptrtoint ptr %cardState to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cardState, align 4
  %arrayidx24 = getelementptr [11 x ptr], ptr @stateName, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.77, ptr noundef %57) #11
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer, align 4
  %idleMonitorOn = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 48
  %60 = ptrtoint ptr %idleMonitorOn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %idleMonitorOn, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %59, ptr noundef nonnull @.str.78, i32 noundef %61) #11
  %62 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer, align 4
  %cmdRetryCount = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 49
  %64 = ptrtoint ptr %cmdRetryCount to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cmdRetryCount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %63, ptr noundef nonnull @.str.79, i32 noundef %65) #11
  %66 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer, align 4
  %irqcount = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 12
  %68 = ptrtoint ptr %irqcount to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irqcount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %67, ptr noundef nonnull @.str.80, i32 noundef %69) #11
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  %totalerrorcnt = getelementptr inbounds %struct.snd_korg1212, ptr %1, i32 0, i32 60
  %72 = ptrtoint ptr %totalerrorcnt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %totalerrorcnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.81, i32 noundef %73) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240}
!llvm.named.register.sp = !{!242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @__UNIQUE_ID_description242, !1, !"__UNIQUE_ID_description242", i1 false, i1 false}
!1 = !{!"../sound/pci/korg1212/korg1212.c", i32 389, i32 1}
!2 = !{ptr @__UNIQUE_ID_file243, !3, !"__UNIQUE_ID_file243", i1 false, i1 false}
!3 = !{!"../sound/pci/korg1212/korg1212.c", i32 390, i32 1}
!4 = !{ptr @__UNIQUE_ID_license244, !3, !"__UNIQUE_ID_license244", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_firmware245, !6, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!6 = !{!"../sound/pci/korg1212/korg1212.c", i32 391, i32 1}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/korg1212/korg1212.c", i32 397, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/korg1212/korg1212.c", i32 398, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/korg1212/korg1212.c", i32 399, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/korg1212/korg1212.c", i32 400, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/korg1212/korg1212.c", i32 401, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/korg1212/korg1212.c", i32 402, i32 1}
!22 = !{ptr @__UNIQUE_ID_author252, !23, !"__UNIQUE_ID_author252", i1 false, i1 false}
!23 = !{!"../sound/pci/korg1212/korg1212.c", i32 403, i32 1}
!24 = !{ptr @__initcall__kmod_snd_korg1212__253_2381_korg1212_driver_init6, !25, !"__initcall__kmod_snd_korg1212__253_2381_korg1212_driver_init6", i1 false, i1 false}
!25 = !{!"../sound/pci/korg1212/korg1212.c", i32 2381, i32 1}
!26 = !{ptr @__exitcall_korg1212_driver_exit, !25, !"__exitcall_korg1212_driver_exit", i1 false, i1 false}
!27 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!28 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!29 = !{ptr @index, !30, !"index", i1 false, i1 false}
!30 = !{!"../sound/pci/korg1212/korg1212.c", i32 393, i32 12}
!31 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!32 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!33 = !{ptr @id, !34, !"id", i1 false, i1 false}
!34 = !{!"../sound/pci/korg1212/korg1212.c", i32 394, i32 14}
!35 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!36 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!37 = !{ptr @enable, !38, !"enable", i1 false, i1 false}
!38 = !{!"../sound/pci/korg1212/korg1212.c", i32 395, i32 13}
!39 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @korg1212_driver, !41, !"korg1212_driver", i1 false, i1 false}
!41 = !{!"../sound/pci/korg1212/korg1212.c", i32 2375, i32 26}
!42 = !{ptr @snd_korg1212_ids, !43, !"snd_korg1212_ids", i1 false, i1 false}
!43 = !{!"../sound/pci/korg1212/korg1212.c", i32 405, i32 35}
!44 = !{ptr @snd_korg1212_probe.dev, !45, !"dev", i1 false, i1 false}
!45 = !{!"../sound/pci/korg1212/korg1212.c", i32 2338, i32 13}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/korg1212/korg1212.c", i32 2360, i32 23}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/korg1212/korg1212.c", i32 2362, i32 26}
!50 = !{ptr @snd_korg1212_create.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../sound/pci/korg1212/korg1212.c", i32 2110, i32 9}
!52 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @snd_korg1212_create.__key.5, !54, !"__key", i1 false, i1 false}
!54 = !{!"../sound/pci/korg1212/korg1212.c", i32 2111, i32 9}
!55 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @snd_korg1212_create.__key.7, !57, !"__key", i1 false, i1 false}
!57 = !{!"../sound/pci/korg1212/korg1212.c", i32 2112, i32 2}
!58 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @snd_korg1212_create.__key.9, !60, !"__key", i1 false, i1 false}
!60 = !{!"../sound/pci/korg1212/korg1212.c", i32 2113, i32 2}
!61 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.11, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/korg1212/korg1212.c", i32 2164, i32 3}
!64 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/korg1212/korg1212.c", i32 2259, i32 36}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/korg1212/korg1212.c", i32 2261, i32 3}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/korg1212/korg1212.c", i32 605, i32 4}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/korg1212/korg1212.c", i32 1134, i32 4}
!73 = !{ptr @ClockSourceSelector, !74, !"ClockSourceSelector", i1 false, i1 false}
!74 = !{!"../sound/pci/korg1212/korg1212.c", i32 457, i32 18}
!75 = !{ptr @snd_korg1212_playback_ops, !76, !"snd_korg1212_playback_ops", i1 false, i1 false}
!76 = !{!"../sound/pci/korg1212/korg1212.c", i32 1686, i32 33}
!77 = !{ptr @snd_korg1212_playback_info, !78, !"snd_korg1212_playback_info", i1 false, i1 false}
!78 = !{!"../sound/pci/korg1212/korg1212.c", i32 1219, i32 38}
!79 = !{ptr @snd_korg1212_SetRate.s44, !80, !"s44", i1 false, i1 false}
!80 = !{!"../sound/pci/korg1212/korg1212.c", i32 815, i32 37}
!81 = !{ptr @snd_korg1212_SetRate.s48, !82, !"s48", i1 false, i1 false}
!82 = !{!"../sound/pci/korg1212/korg1212.c", i32 820, i32 37}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!85 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!90 = !{ptr @snd_korg1212_capture_ops, !91, !"snd_korg1212_capture_ops", i1 false, i1 false}
!91 = !{!"../sound/pci/korg1212/korg1212.c", i32 1699, i32 33}
!92 = !{ptr @snd_korg1212_capture_info, !93, !"snd_korg1212_capture_info", i1 false, i1 false}
!93 = !{!"../sound/pci/korg1212/korg1212.c", i32 1240, i32 38}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/korg1212/korg1212.c", i32 2023, i32 9}
!96 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.23, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/korg1212/korg1212.c", i32 2024, i32 2}
!100 = !{ptr @.str.24, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.25, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/korg1212/korg1212.c", i32 2025, i32 9}
!104 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/korg1212/korg1212.c", i32 2025, i32 33}
!108 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/korg1212/korg1212.c", i32 2025, i32 57}
!112 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/korg1212/korg1212.c", i32 2025, i32 81}
!116 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/korg1212/korg1212.c", i32 2026, i32 9}
!120 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/korg1212/korg1212.c", i32 2026, i32 33}
!124 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/korg1212/korg1212.c", i32 2026, i32 57}
!128 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/korg1212/korg1212.c", i32 2026, i32 81}
!132 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/korg1212/korg1212.c", i32 2030, i32 26}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/korg1212/korg1212.c", i32 2038, i32 26}
!138 = !{ptr @snd_korg1212_controls, !139, !"snd_korg1212_controls", i1 false, i1 false}
!139 = !{!"../sound/pci/korg1212/korg1212.c", i32 2022, i32 38}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/korg1212/korg1212.c", i32 443, i32 2}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/korg1212/korg1212.c", i32 444, i32 2}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/korg1212/korg1212.c", i32 445, i32 2}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/korg1212/korg1212.c", i32 446, i32 2}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/korg1212/korg1212.c", i32 447, i32 2}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/korg1212/korg1212.c", i32 448, i32 2}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/korg1212/korg1212.c", i32 449, i32 2}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/korg1212/korg1212.c", i32 450, i32 2}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/korg1212/korg1212.c", i32 451, i32 2}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/korg1212/korg1212.c", i32 452, i32 2}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/korg1212/korg1212.c", i32 453, i32 2}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/korg1212/korg1212.c", i32 454, i32 2}
!164 = !{ptr @channelName, !165, !"channelName", i1 false, i1 false}
!165 = !{!"../sound/pci/korg1212/korg1212.c", i32 442, i32 27}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/korg1212/korg1212.c", i32 431, i32 53}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/korg1212/korg1212.c", i32 431, i32 61}
!170 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/korg1212/korg1212.c", i32 431, i32 71}
!172 = !{ptr @clockSourceTypeName, !173, !"clockSourceTypeName", i1 false, i1 false}
!173 = !{!"../sound/pci/korg1212/korg1212.c", i32 431, i32 27}
!174 = !{ptr @.str.67, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/korg1212/korg1212.c", i32 2056, i32 2}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/korg1212/korg1212.c", i32 2057, i32 2}
!178 = !{ptr @.str.69, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/korg1212/korg1212.c", i32 2058, i32 2}
!180 = !{ptr @.str.70, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/korg1212/korg1212.c", i32 2059, i32 2}
!182 = !{ptr @.str.71, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/korg1212/korg1212.c", i32 2060, i32 2}
!184 = !{ptr @.str.72, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/korg1212/korg1212.c", i32 2061, i32 2}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/korg1212/korg1212.c", i32 2062, i32 9}
!188 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/korg1212/korg1212.c", i32 2064, i32 17}
!190 = !{ptr @.str.75, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/korg1212/korg1212.c", i32 2068, i32 2}
!192 = !{ptr @.str.76, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/korg1212/korg1212.c", i32 2069, i32 9}
!194 = !{ptr @.str.77, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/korg1212/korg1212.c", i32 2070, i32 9}
!196 = !{ptr @.str.78, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/korg1212/korg1212.c", i32 2071, i32 9}
!198 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/korg1212/korg1212.c", i32 2072, i32 9}
!200 = !{ptr @.str.80, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/korg1212/korg1212.c", i32 2073, i32 9}
!202 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/korg1212/korg1212.c", i32 2074, i32 9}
!204 = !{ptr @.str.82, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/korg1212/korg1212.c", i32 434, i32 2}
!206 = !{ptr @.str.83, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/korg1212/korg1212.c", i32 435, i32 2}
!208 = !{ptr @.str.84, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/korg1212/korg1212.c", i32 436, i32 2}
!210 = !{ptr @.str.85, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/korg1212/korg1212.c", i32 437, i32 2}
!212 = !{ptr @.str.86, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/korg1212/korg1212.c", i32 438, i32 2}
!214 = !{ptr @.str.87, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/korg1212/korg1212.c", i32 439, i32 2}
!216 = !{ptr @clockSourceName, !217, !"clockSourceName", i1 false, i1 false}
!217 = !{!"../sound/pci/korg1212/korg1212.c", i32 433, i32 27}
!218 = !{ptr @.str.88, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/korg1212/korg1212.c", i32 418, i32 2}
!220 = !{ptr @.str.89, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/korg1212/korg1212.c", i32 419, i32 2}
!222 = !{ptr @.str.90, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/korg1212/korg1212.c", i32 420, i32 2}
!224 = !{ptr @.str.91, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/korg1212/korg1212.c", i32 421, i32 2}
!226 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/pci/korg1212/korg1212.c", i32 422, i32 2}
!228 = !{ptr @.str.93, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/korg1212/korg1212.c", i32 423, i32 2}
!230 = !{ptr @.str.94, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/korg1212/korg1212.c", i32 424, i32 2}
!232 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/korg1212/korg1212.c", i32 425, i32 2}
!234 = !{ptr @.str.96, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/korg1212/korg1212.c", i32 426, i32 2}
!236 = !{ptr @.str.97, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/korg1212/korg1212.c", i32 427, i32 2}
!238 = !{ptr @.str.98, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/korg1212/korg1212.c", i32 428, i32 2}
!240 = !{ptr @stateName, !241, !"stateName", i1 false, i1 false}
!241 = !{!"../sound/pci/korg1212/korg1212.c", i32 417, i32 27}
!242 = !{!"sp"}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"auto-init"}
!253 = !{i8 0, i8 2}
!254 = !{i64 2154796224}
!255 = !{i64 4288698}
!256 = !{i64 4289116}
!257 = !{i64 2154809534}
!258 = !{i64 2154809764}
!259 = !{i64 2154797538}
!260 = !{i64 2154787222}
!261 = !{i64 2154787651}
!262 = !{i64 2154788080}
!263 = !{i64 2154788509}
!264 = !{i64 2154788941}
!265 = !{i64 2154790194}
!266 = !{i64 2154798365}
!267 = !{i64 2154799428}
!268 = !{i64 4288078}
!269 = !{i64 2154800688}
!270 = !{i64 2154801713}
!271 = !{i64 2154802854}
!272 = !{i64 2154803881}
!273 = !{i64 2154804906}
!274 = !{i64 2154805932}
!275 = !{!"branch_weights", i32 1, i32 2000}
!276 = !{!"branch_weights", i32 2000, i32 1}
!277 = !{i64 2153966920, i64 2153966945}
!278 = !{i64 6462475}
!279 = !{i64 6462672}
!280 = !{i64 2153947905}
!281 = !{i64 2153967601, i64 2153967626}
