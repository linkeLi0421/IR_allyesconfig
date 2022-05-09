; ModuleID = '/llk/IR_all_yes/sound/pci/rme9652/rme9652.c_pt.bc'
source_filename = "../sound/pci/rme9652/rme9652.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
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
%struct.snd_rme9652 = type { i32, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_mmap_status = type { i32, i32, [4 x i8], i32, [0 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_pcm_channel_info = type { i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__param_str_index = internal constant [18 x i8] c"snd_rme9652.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype242 = internal constant [40 x i8] c"snd_rme9652.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index243 = internal constant [76 x i8] c"snd_rme9652.parm=index:Index value for RME Digi9652 (Hammerfall) soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_rme9652.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype244 = internal constant [39 x i8] c"snd_rme9652.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id245 = internal constant [71 x i8] c"snd_rme9652.parm=id:ID string for RME Digi9652 (Hammerfall) soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_rme9652.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype246 = internal constant [42 x i8] c"snd_rme9652.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable247 = internal constant [73 x i8] c"snd_rme9652.parm=enable:Enable/disable specific RME96{52,36} soundcards.\00", section ".modinfo", align 1
@__param_str_precise_ptr = internal constant [24 x i8] c"snd_rme9652.precise_ptr\00", align 1
@__param_arr_precise_ptr = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @precise_ptr }, align 4
@__param_precise_ptr = internal constant %struct.kernel_param { ptr @__param_str_precise_ptr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_precise_ptr } }, section "__param", align 4
@__UNIQUE_ID_precise_ptrtype248 = internal constant [47 x i8] c"snd_rme9652.parmtype=precise_ptr:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_precise_ptr249 = internal constant [77 x i8] c"snd_rme9652.parm=precise_ptr:Enable precise pointer (doesn't work reliably).\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [60 x i8] c"snd_rme9652.author=Paul Davis <pbd@op.net>, Winfried Ritsch\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [46 x i8] c"snd_rme9652.description=RME Digi9652/Digi9636\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [47 x i8] c"snd_rme9652.file=sound/pci/rme9652/snd-rme9652\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [24 x i8] c"snd_rme9652.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_snd_rme9652__256_2595_rme9652_driver_init6 = internal global ptr @rme9652_driver_init, section ".initcall6.init", align 4
@rme9652_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_rme9652_ids, ptr @snd_rme9652_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rme9652_driver_exit = internal global ptr @rme9652_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@precise_ptr = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_rme9652\00", [20 x i8] zeroinitializer }, align 32
@snd_rme9652_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4334, i32 16324, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_rme9652_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %d\00", [44 x i8] zeroinitializer }, align 32
@snd_rme9652_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rme9652->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rme9652\00", [24 x i8] zeroinitializer }, align 32
@snd_rme9652_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2451, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to remap region 0x%lx-0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_rme9652_create\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/rme9652/rme9652.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_rme9652_create._entry_ptr = internal global ptr @snd_rme9652_create._entry, section ".printk_index", align 4
@snd_rme9652_create._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 2457, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_rme9652_create._entry_ptr.11 = internal global ptr @snd_rme9652_create._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RME Digi9636 (Rev 1.5)\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RME Digi9636\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RME Digi9636 (Rev G)\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RME Digi9652 (Rev G)\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RME Digi9652 (Rev 1.5)\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RME Digi9652\00", [19 x i8] zeroinitializer }, align 32
@snd_rme9652_initialize_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 1731, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: no buffers available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_rme9652_initialize_memory\00", [34 x i8] zeroinitializer }, align 32
@snd_rme9652_initialize_memory._entry_ptr = internal global ptr @snd_rme9652_initialize_memory._entry, section ".printk_index", align 4
@snd_rme9652_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme9652_playback_open, ptr @snd_rme9652_playback_release, ptr @snd_rme9652_ioctl, ptr @snd_rme9652_hw_params, ptr null, ptr @snd_rme9652_prepare, ptr @snd_rme9652_trigger, ptr null, ptr @snd_rme9652_hw_pointer, ptr null, ptr @snd_rme9652_hw_silence, ptr @snd_rme9652_playback_copy, ptr @snd_rme9652_playback_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_rme9652_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme9652_capture_open, ptr @snd_rme9652_capture_release, ptr @snd_rme9652_ioctl, ptr @snd_rme9652_hw_params, ptr null, ptr @snd_rme9652_prepare, ptr @snd_rme9652_trigger, ptr null, ptr @snd_rme9652_hw_pointer, ptr null, ptr null, ptr @snd_rme9652_capture_copy, ptr @snd_rme9652_capture_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_rme9652_playback_subinfo = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4194823, i64 1024, i32 1728, i32 44100, i32 96000, i32 10, i32 26, i32 1703936, i32 2560, i32 851968, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_period_sizes = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @period_sizes, i32 8, i32 0 }, [20 x i8] zeroinitializer }, align 32
@period_sizes = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192], [32 x i8] zeroinitializer }, align 32
@__const.snd_rme9652_hw_rule_rate_channels.t = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 44100, i32 48000, i8 32, [3 x i8] zeroinitializer }, align 4
@__const.snd_rme9652_hw_rule_rate_channels.t.23 = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 88200, i32 96000, i8 32, [3 x i8] zeroinitializer }, align 4
@rme9652_hw_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 376, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Unexpected hw_pointer position (bufid == 0): status: %x offset: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rme9652_hw_pointer\00", [45 x i8] zeroinitializer }, align 32
@rme9652_hw_pointer._entry_ptr = internal global ptr @rme9652_hw_pointer._entry, section ".printk_index", align 4
@rme9652_hw_pointer._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 387, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Unexpected hw_pointer position (bufid == 1): status: %x offset: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rme9652_hw_pointer._entry_ptr.28 = internal global ptr @rme9652_hw_pointer._entry.26, section ".printk_index", align 4
@channel_map_9652_ds = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01\03\05\07\09\0B\0D\0F\11\13\15\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00", [38 x i8] zeroinitializer }, align 32
@channel_map_9636_ds = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01\03\05\07\09\0B\0D\0F\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00", [38 x i8] zeroinitializer }, align 32
@channel_map_9652_ss = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19", [38 x i8] zeroinitializer }, align 32
@channel_map_9636_ss = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\18\19\FF\FF\FF\FF\FF\FF\FF\FF", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_rme9652_capture_subinfo = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4194819, i64 1024, i32 1728, i32 44100, i32 96000, i32 10, i32 26, i32 1703936, i32 2560, i32 851968, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_rme9652_controls = internal constant { [14 x %struct.snd_kcontrol_new], [160 x i8] } { [14 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_rme9652_control_spdif_info, ptr @snd_rme9652_control_spdif_get, ptr @snd_rme9652_control_spdif_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.34, i32 0, i32 259, i32 0, ptr @snd_rme9652_control_spdif_stream_info, ptr @snd_rme9652_control_spdif_stream_get, ptr @snd_rme9652_control_spdif_stream_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.35, i32 0, i32 1, i32 0, ptr @snd_rme9652_control_spdif_mask_info, ptr @snd_rme9652_control_spdif_mask_get, ptr null, %union.anon.84 zeroinitializer, i32 59 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.36, i32 0, i32 1, i32 0, ptr @snd_rme9652_control_spdif_mask_info, ptr @snd_rme9652_control_spdif_mask_get, ptr null, %union.anon.84 zeroinitializer, i32 31 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_rme9652_info_spdif_in, ptr @snd_rme9652_get_spdif_in, ptr @snd_rme9652_put_spdif_in, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_rme9652_get_spdif_out, ptr @snd_rme9652_put_spdif_out, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_rme9652_info_sync_mode, ptr @snd_rme9652_get_sync_mode, ptr @snd_rme9652_put_sync_mode, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_rme9652_info_sync_pref, ptr @snd_rme9652_get_sync_pref, ptr @snd_rme9652_put_sync_pref, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_rme9652_info_thru, ptr @snd_rme9652_get_thru, ptr @snd_rme9652_put_thru, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 5, i32 0, ptr @snd_rme9652_info_spdif_rate, ptr @snd_rme9652_get_spdif_rate, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 5, i32 0, ptr @snd_rme9652_info_adat_sync, ptr @snd_rme9652_get_adat_sync, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 5, i32 0, ptr @snd_rme9652_info_adat_sync, ptr @snd_rme9652_get_adat_sync, ptr null, %union.anon.84 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 5, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_rme9652_get_tc_valid, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_rme9652_get_passthru, ptr @snd_rme9652_put_passthru, %union.anon.84 zeroinitializer, i32 0 }], [160 x i8] zeroinitializer }, align 32
@snd_rme9652_adat3_check = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 5, i32 0, ptr @snd_rme9652_info_adat_sync, ptr @snd_rme9652_get_adat_sync, ptr null, %union.anon.84 zeroinitializer, i32 2 }, [48 x i8] zeroinitializer }, align 32
@snd_rme9652_adat1_input = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_rme9652_info_adat1_in, ptr @snd_rme9652_get_adat1_in, ptr @snd_rme9652_put_adat1_in, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Pro Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Input Connector\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IEC958 Output also on ADAT1\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Sync Mode\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Preferred Sync Source\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channels Thru\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEC958 Sample Rate\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADAT1 Sync Check\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADAT2 Sync Check\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Timecode Valid\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Passthru\00", [23 x i8] zeroinitializer }, align 32
@snd_rme9652_info_spdif_in.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49], [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT1\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Coaxial\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@snd_rme9652_info_sync_mode.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52], [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AutoSync\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Word Clock\00", [21 x i8] zeroinitializer }, align 32
@snd_rme9652_info_sync_pref.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IEC958 In\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAT1 In\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAT2 In\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAT3 In\00", [23 x i8] zeroinitializer }, align 32
@rme9652_spdif_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.6, i32 748, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: unknown S/PDIF input rate (bits = 0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rme9652_spdif_sample_rate\00", [38 x i8] zeroinitializer }, align 32
@rme9652_spdif_sample_rate._entry_ptr = internal global ptr @rme9652_spdif_sample_rate._entry, section ".printk_index", align 4
@snd_rme9652_info_adat_sync.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"No Lock\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Lock\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No Lock Sync\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Lock Sync\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADAT3 Sync Check\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADAT1 Input Source\00", [45 x i8] zeroinitializer }, align 32
@snd_rme9652_info_adat1_in.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s (Card #%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Buffers: capture %p playback %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IRQ: %d Registers bus: 0x%lx VM: 0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Control register: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Latency: %d samples (2 periods of %lu bytes)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hardware pointer (frames): %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Passthru: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Clock mode: autosync\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Clock mode: word clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Clock mode: word clock (no signal)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Clock mode: master\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Pref. sync source: ADAT1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Pref. sync source: ADAT2\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Pref. sync source: ADAT3\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pref. sync source: IEC958\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0AADAT1 Input source: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADAT1 optical\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 input: ADAT1\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 input: Coaxial\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 input: Internal\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEC958 input: ???\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IEC958 output: Coaxial & ADAT1\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IEC958 output: Coaxial only\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IEC958 quality: Professional\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IEC958 quality: Consumer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 emphasis: on\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 emphasis: off\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IEC958 Dolby: on\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEC958 Dolby: off\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IEC958 sample rate: error flag set\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IEC958 sample rate: undetermined\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 sample rate: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADAT Sample rate: %dHz\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADAT1: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sync\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADAT1: No Lock\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADAT2: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADAT2: No Lock\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADAT3: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADAT3: No Lock\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Timecode signal: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Punch Status:\0A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%2d:  on \00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%2d: off \00", [22 x i8] zeroinitializer }, align 32
@switch.table.snd_rme9652_get_sync_pref = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_rme9652_put_sync_pref = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_rme9652_get_adat_sync = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 4, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_rme9652_get_adat_sync.113 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 262144, i32 131072, i32 65536], [20 x i8] zeroinitializer }, align 32
@switch.table.rme9652_spdif_sample_rate = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 64000, i32 32000, i32 32000, i32 96000, i32 88200, i32 48000, i32 44100, i32 32000], [32 x i8] zeroinitializer }, align 32
@switch.table.snd_rme9652_proc_read = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 16, i64 3, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"rme9652_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2589, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 26, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 27, i32 14 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 28, i32 13 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"precise_ptr\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 29, i32 13 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2595, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"snd_rme9652_ids\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 287, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2551, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2579, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2442, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2444, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2450, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2457, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2487, i32 25 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2489, i32 25 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2495, i32 24 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2500, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2506, i32 25 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2508, i32 25 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1730, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [25 x i8] c"snd_rme9652_playback_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2365, i32 33 }
@___asan_gen_.211 = private unnamed_addr constant [24 x i8] c"snd_rme9652_capture_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2378, i32 33 }
@___asan_gen_.214 = private unnamed_addr constant [29 x i8] c"snd_rme9652_playback_subinfo\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2145, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant [28 x i8] c"hw_constraints_period_sizes\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2194, i32 48 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"period_sizes\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2192, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 374, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 385, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c"channel_map_9652_ds\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 263, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c"channel_map_9636_ds\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 272, i32 19 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c"channel_map_9652_ss\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 250, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c"channel_map_9636_ss\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 255, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2087, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 230, i32 6 }
@___asan_gen_.257 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 214, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 156, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [28 x i8] c"snd_rme9652_capture_subinfo\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2169, i32 38 }
@___asan_gen_.265 = private unnamed_addr constant [21 x i8] c"snd_rme9652_controls\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1439, i32 38 }
@___asan_gen_.268 = private unnamed_addr constant [24 x i8] c"snd_rme9652_adat3_check\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1494, i32 38 }
@___asan_gen_.271 = private unnamed_addr constant [24 x i8] c"snd_rme9652_adat1_input\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1497, i32 38 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1442, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1450, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1458, i32 11 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1468, i32 11 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1475, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1476, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1477, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1478, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1481, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1487, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1488, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1489, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1490, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1491, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 955, i32 28 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 955, i32 40 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 955, i32 49 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 955, i32 60 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1096, i32 28 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1097, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1097, i32 15 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1097, i32 25 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1182, i32 28 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1183, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1183, i32 16 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1183, i32 28 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1183, i32 40 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 746, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1341, i32 28 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1342, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1342, i32 14 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1342, i32 22 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1342, i32 38 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1495, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1498, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 891, i32 28 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1548, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1549, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1551, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1553, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1555, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1560, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1562, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1564, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1568, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1572, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1574, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1577, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1583, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1586, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1589, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1592, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1600, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1609, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1612, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1615, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1618, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1623, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1625, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1629, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1631, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1635, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1637, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1641, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1643, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1649, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1652, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1654, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1659, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1666, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1668, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1673, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1675, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1680, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1682, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1687, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1692, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1696, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.527 = private constant [31 x i8] c"../sound/pci/rme9652/rme9652.c\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1698, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant [39 x i8] c"switch.table.snd_rme9652_get_sync_pref\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [39 x i8] c"switch.table.snd_rme9652_put_sync_pref\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [39 x i8] c"switch.table.snd_rme9652_get_adat_sync\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [43 x i8] c"switch.table.snd_rme9652_get_adat_sync.113\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [39 x i8] c"switch.table.rme9652_spdif_sample_rate\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [35 x i8] c"switch.table.snd_rme9652_proc_read\00", align 1
@llvm.compiler.used = appending global [167 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_enable247, ptr @__UNIQUE_ID_enabletype246, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_id245, ptr @__UNIQUE_ID_idtype244, ptr @__UNIQUE_ID_index243, ptr @__UNIQUE_ID_indextype242, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_precise_ptr249, ptr @__UNIQUE_ID_precise_ptrtype248, ptr @__exitcall_rme9652_driver_exit, ptr @__initcall__kmod_snd_rme9652__256_2595_rme9652_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_precise_ptr, ptr @rme9652_driver_exit, ptr @rme9652_hw_pointer._entry, ptr @rme9652_hw_pointer._entry.26, ptr @rme9652_hw_pointer._entry_ptr, ptr @rme9652_hw_pointer._entry_ptr.28, ptr @rme9652_spdif_sample_rate._entry, ptr @rme9652_spdif_sample_rate._entry_ptr, ptr @snd_rme9652_create._entry, ptr @snd_rme9652_create._entry.9, ptr @snd_rme9652_create._entry_ptr, ptr @snd_rme9652_create._entry_ptr.11, ptr @snd_rme9652_initialize_memory._entry, ptr @snd_rme9652_initialize_memory._entry_ptr, ptr @rme9652_driver, ptr @index, ptr @id, ptr @enable, ptr @precise_ptr, ptr @.str, ptr @snd_rme9652_ids, ptr @snd_rme9652_probe.dev, ptr @.str.1, ptr @snd_rme9652_create.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @snd_rme9652_playback_ops, ptr @snd_rme9652_capture_ops, ptr @snd_rme9652_playback_subinfo, ptr @hw_constraints_period_sizes, ptr @period_sizes, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @channel_map_9652_ds, ptr @channel_map_9636_ds, ptr @channel_map_9652_ss, ptr @channel_map_9636_ss, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @snd_rme9652_capture_subinfo, ptr @snd_rme9652_controls, ptr @snd_rme9652_adat3_check, ptr @snd_rme9652_adat1_input, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @snd_rme9652_info_spdif_in.texts, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @snd_rme9652_info_sync_mode.texts, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @snd_rme9652_info_sync_pref.texts, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @snd_rme9652_info_adat_sync.texts, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @snd_rme9652_info_adat1_in.texts, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @switch.table.snd_rme9652_get_sync_pref, ptr @switch.table.snd_rme9652_put_sync_pref, ptr @switch.table.snd_rme9652_get_adat_sync, ptr @switch.table.snd_rme9652_get_adat_sync.113, ptr @switch.table.rme9652_spdif_sample_rate, ptr @switch.table.snd_rme9652_proc_read], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rme9652_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @precise_ptr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_create._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_initialize_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_playback_subinfo to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_period_sizes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @period_sizes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rme9652_hw_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rme9652_hw_pointer._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_map_9652_ds to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_map_9636_ds to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_map_9652_ss to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_map_9636_ss to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_capture_subinfo to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_controls to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_adat3_check to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_adat1_input to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_info_spdif_in.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_info_sync_mode.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_info_sync_pref.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rme9652_spdif_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_info_adat_sync.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme9652_info_adat1_in.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme9652_get_sync_pref to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme9652_put_sync_pref to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme9652_get_adat_sync to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme9652_get_adat_sync.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rme9652_spdif_sample_rate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme9652_proc_read to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rme9652_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rme9652_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rme9652_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @rme9652_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm.i.i = alloca ptr, align 4
  %rev.i = alloca i16, align 2
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #14
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !314
  %1 = load i32, ptr @snd_rme9652_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_rme9652_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 232, ptr noundef nonnull %card) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_rme9652_card_free, ptr %private_free, align 4
  %13 = load i32, ptr @snd_rme9652_probe.dev, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %11, align 4
  %pci9 = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 33
  %15 = ptrtoint ptr %pci9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pci, ptr %pci9, align 4
  %16 = load ptr, ptr %card, align 4
  %17 = load i32, ptr @snd_rme9652_probe.dev, align 4
  %arrayidx10 = getelementptr [32 x i8], ptr @precise_ptr, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10, align 1, !range !315
  %20 = zext i8 %19 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rev.i) #14
  %21 = ptrtoint ptr %rev.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %rev.i, align 2, !annotation !314
  %irq.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %irq.i, align 4
  %card2.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 31
  %23 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %16, ptr %card2.i, align 4
  %call.i = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 8, ptr noundef nonnull %rev.i) #14
  %24 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rev.i, align 2
  %trunc.i = trunc i16 %25 to i8
  %26 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.end7.snd_rme9652_create.exit.thread_crit_edge [
    i8 3, label %if.end7.sw.epilog.i_crit_edge
    i8 4, label %if.end7.sw.epilog.i_crit_edge48
    i8 8, label %if.end7.sw.epilog.i_crit_edge49
    i8 9, label %if.end7.sw.epilog.i_crit_edge50
  ]

if.end7.sw.epilog.i_crit_edge50:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end7.sw.epilog.i_crit_edge49:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end7.sw.epilog.i_crit_edge48:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end7.sw.epilog.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end7.snd_rme9652_create.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_rme9652_create.exit.thread

sw.epilog.i:                                      ; preds = %if.end7.sw.epilog.i_crit_edge, %if.end7.sw.epilog.i_crit_edge48, %if.end7.sw.epilog.i_crit_edge49, %if.end7.sw.epilog.i_crit_edge50
  %call4.i = call i32 @pcim_enable_device(ptr noundef %pci) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %sw.epilog.i.snd_rme9652_create.exit.thread_crit_edge, label %do.body.i

sw.epilog.i.snd_rme9652_create.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_rme9652_create.exit.thread

do.body.i:                                        ; preds = %sw.epilog.i
  %lock.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_rme9652_create.__key, i16 noundef signext 3) #14
  %call7.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.body.i.snd_rme9652_create.exit.thread_crit_edge, label %if.end11.i

do.body.i.snd_rme9652_create.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_rme9652_create.exit.thread

if.end11.i:                                       ; preds = %do.body.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %27 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 3
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %port.i, align 4
  %call13.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %28, i32 noundef 1024) #14
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 4
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call13.i, ptr %iobase.i, align 4
  %cmp15.i = icmp eq ptr %call13.i, null
  br i1 %cmp15.i, label %do.end20.i, label %if.end24.i

do.end20.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev21.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %31 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev21.i, align 8
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port.i, align 4
  %sub.i = add i32 %34, 1023
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, i32 noundef %34, i32 noundef %sub.i) #17
  br label %snd_rme9652_create.exit.thread

if.end24.i:                                       ; preds = %if.end11.i
  %irq26.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %35 = ptrtoint ptr %irq26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq26.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %36, ptr noundef nonnull @snd_rme9652_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end34.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev32.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %37 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev32.i, align 8
  %39 = ptrtoint ptr %irq26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq26.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.10, i32 noundef %40) #17
  br label %snd_rme9652_create.exit.thread

if.end34.i:                                       ; preds = %if.end24.i
  %41 = ptrtoint ptr %irq26.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq26.i, align 4
  %43 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 33
  %44 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %sync_irq.i, align 4
  %precise_ptr38.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 5
  %45 = ptrtoint ptr %precise_ptr38.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %20, ptr %precise_ptr38.i, align 4
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase.i, align 4
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #14, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %49 = and i32 %48, 49153
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %49)
  %cmp41.i = icmp eq i32 %49, 16384
  %spec.select.i = select i1 %cmp41.i, i32 15, i32 11
  %50 = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 27
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select.i, ptr %50, align 4
  %52 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rev.i, align 2
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.114)
  switch i16 %53, label %if.end34.i.sw.epilog81.i_crit_edge [
    i16 8, label %sw.bb47.i
    i16 9, label %sw.bb56.i
    i16 4, label %sw.bb62.i
    i16 3, label %sw.bb68.i
  ]

if.end34.i.sw.epilog81.i_crit_edge:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog81.i

sw.bb47.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 2
  %55 = ptrtoint ptr %driver.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 5930472396341589504, ptr %driver.i, align 1
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %57)
  %cmp50.i = icmp eq i32 %57, 15
  %spec.select209.i = select i1 %cmp50.i, ptr @.str.13, ptr @.str.14
  br label %sw.epilog81.sink.split.i

sw.bb56.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %driver57.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 2
  %58 = ptrtoint ptr %driver57.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 5930472396341589504, ptr %driver57.i, align 1
  br label %sw.epilog81.sink.split.i

sw.bb62.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %driver63.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 2
  %59 = ptrtoint ptr %driver63.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 5930472396341719552, ptr %driver63.i, align 1
  br label %sw.epilog81.sink.split.i

sw.bb68.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %driver69.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 2
  %60 = ptrtoint ptr %driver69.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 5930472396341719552, ptr %driver69.i, align 1
  %61 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %62)
  %cmp73.i = icmp eq i32 %62, 15
  %spec.select210.i = select i1 %cmp73.i, ptr @.str.18, ptr @.str.19
  br label %sw.epilog81.sink.split.i

sw.epilog81.sink.split.i:                         ; preds = %sw.bb68.i, %sw.bb62.i, %sw.bb56.i, %sw.bb47.i
  %spec.select210.sink.i = phi ptr [ %spec.select210.i, %sw.bb68.i ], [ @.str.17, %sw.bb62.i ], [ @.str.15, %sw.bb56.i ], [ %spec.select209.i, %sw.bb47.i ]
  %.sink.i = phi i8 [ 26, %sw.bb68.i ], [ 26, %sw.bb62.i ], [ 18, %sw.bb56.i ], [ 18, %sw.bb47.i ]
  %63 = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 10
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %spec.select210.sink.i, ptr %63, align 4
  %ss_channels80.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 16
  %65 = ptrtoint ptr %ss_channels80.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink.i, ptr %ss_channels80.i, align 1
  br label %sw.epilog81.i

sw.epilog81.i:                                    ; preds = %sw.epilog81.sink.split.i, %if.end34.i.sw.epilog81.i_crit_edge
  %ss_channels82.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 16
  %66 = ptrtoint ptr %ss_channels82.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ss_channels82.i, align 1
  %conv83.i = zext i8 %67 to i16
  %sub84.i = add nsw i16 %conv83.i, -2
  %div205.i = sdiv i16 %sub84.i, 2
  %68 = trunc i16 %div205.i to i8
  %conv86.i = add i8 %68, 2
  %ds_channels.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 15
  %69 = ptrtoint ptr %ds_channels.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv86.i, ptr %ds_channels.i, align 4
  %70 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci9, align 4
  call void @pci_set_master(ptr noundef %71) #14
  %72 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci9, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %call.i.i.i.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev.i.i.i, i32 noundef 2, i32 noundef 0, i32 noundef 1769472) #14
  %74 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pci9, align 4
  %dev.i56.i.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %call.i.i57.i.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev.i56.i.i, i32 noundef 2, i32 noundef 0, i32 noundef 1769472) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  %tobool3.not.i.i = icmp eq ptr %call.i.i57.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool3.not.i.i
  br i1 %or.cond.i.i, label %snd_rme9652_initialize_memory.exit.thread.i, label %if.end92.i

snd_rme9652_initialize_memory.exit.thread.i:      ; preds = %sw.epilog81.i
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card2.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %77, i32 0, i32 27
  %78 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i, align 8
  %card_name.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 10
  %80 = ptrtoint ptr %card_name.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card_name.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.20, ptr noundef %81) #17
  br label %snd_rme9652_create.exit.thread

if.end92.i:                                       ; preds = %sw.epilog81.i
  %capture_dma_buf.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 18
  %82 = call ptr @memcpy(ptr %capture_dma_buf.i.i, ptr %call.i.i.i.i, i32 32)
  %playback_dma_buf.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 17
  %83 = call ptr @memcpy(ptr %playback_dma_buf.i.i, ptr %call.i.i57.i.i, i32 32)
  %addr.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i.i.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addr.i.i, align 4
  %add.i.i = add i32 %85, 65535
  %and.i.i = and i32 %add.i.i, -65536
  %addr5.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 18, i32 2
  %86 = ptrtoint ptr %addr5.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and.i.i, ptr %addr5.i.i, align 4
  %addr6.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i.i57.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %addr6.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr6.i.i, align 4
  %add7.i.i = add i32 %88, 65535
  %and8.i.i = and i32 %add7.i.i, -65536
  %addr10.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 17, i32 2
  %89 = ptrtoint ptr %addr10.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and8.i.i, ptr %addr10.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %90 = call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %91 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %92, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %90) #14, !srcloc !319
  %93 = ptrtoint ptr %addr10.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %addr10.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %95 = call i32 @llvm.bswap.i32(i32 %94) #14
  %96 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %97, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i.i, i32 %95) #14, !srcloc !319
  %98 = ptrtoint ptr %addr5.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr5.i.i, align 4
  %100 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %addr.i.i, align 4
  %sub.i.i = sub i32 %99, %101
  %area.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 18, i32 1
  %102 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %area.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %103, i32 %sub.i.i
  store ptr %add.ptr.i.i, ptr %area.i.i, align 4
  %104 = ptrtoint ptr %addr10.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %addr10.i.i, align 4
  %106 = ptrtoint ptr %addr6.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr6.i.i, align 4
  %sub22.i.i = sub i32 %105, %107
  %area24.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 17, i32 1
  %108 = ptrtoint ptr %area24.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %area24.i.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %109, i32 %sub22.i.i
  store ptr %add.ptr25.i.i, ptr %area24.i.i, align 4
  %capture_buffer.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 19
  %110 = ptrtoint ptr %capture_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr.i.i, ptr %capture_buffer.i.i, align 4
  %playback_buffer.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 20
  %111 = ptrtoint ptr %playback_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr25.i.i, ptr %playback_buffer.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #14
  %112 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !314
  %card_name.i182.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 10
  %113 = ptrtoint ptr %card_name.i182.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %card_name.i182.i, align 4
  %call.i183.i = call i32 @snd_pcm_new(ptr noundef %16, ptr noundef %114, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183.i)
  %cmp.i.i = icmp slt i32 %call.i183.i, 0
  br i1 %cmp.i.i, label %snd_rme9652_create_pcm.exit.thread.i, label %if.end97.i

snd_rme9652_create_pcm.exit.thread.i:             ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #14
  br label %snd_rme9652_create.exit.thread

if.end97.i:                                       ; preds = %if.end92.i
  %115 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pcm.i.i, align 4
  %pcm1.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 32
  %117 = ptrtoint ptr %pcm1.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %pcm1.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm, ptr %116, i32 0, i32 11
  %118 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %11, ptr %private_data.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.snd_pcm, ptr %116, i32 0, i32 7
  %119 = ptrtoint ptr %card_name.i182.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %card_name.i182.i, align 4
  %call3.i.i = call ptr @strcpy(ptr noundef %name.i.i, ptr noundef %120) #18
  call void @snd_pcm_set_ops(ptr noundef %116, i32 noundef 0, ptr noundef nonnull @snd_rme9652_playback_ops) #14
  %121 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %122, i32 noundef 1, ptr noundef nonnull @snd_rme9652_capture_ops) #14
  %123 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pcm.i.i, align 4
  %info_flags.i.i = getelementptr inbounds %struct.snd_pcm, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %info_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 2097152, ptr %info_flags.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #14
  %spdif_ctl.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 34
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end97.i
  %idx.046.i.i = phi i32 [ 0, %if.end97.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [14 x %struct.snd_kcontrol_new], ptr @snd_rme9652_controls, i32 0, i32 %idx.046.i.i
  %call.i186.i = call ptr @snd_ctl_new1(ptr noundef %arrayidx.i.i, ptr noundef %11) #14
  %call1.i.i = call i32 @snd_ctl_add(ptr noundef %16, ptr noundef %call.i186.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %for.body.i.i.snd_rme9652_create.exit.thread_crit_edge, label %if.end.i187.i

for.body.i.i.snd_rme9652_create.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_rme9652_create.exit.thread

if.end.i187.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %idx.046.i.i)
  %cmp3.i.i = icmp eq i32 %idx.046.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i187.i.for.inc.i.i_crit_edge

if.end.i187.i.for.inc.i.i_crit_edge:              ; preds = %if.end.i187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then4.i.i:                                     ; preds = %if.end.i187.i
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %spdif_ctl.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i186.i, ptr %spdif_ctl.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then4.i.i, %if.end.i187.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %idx.046.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 14
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %127 = ptrtoint ptr %ss_channels82.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ss_channels82.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %128)
  %cmp6.i.i = icmp eq i8 %128, 26
  br i1 %cmp6.i.i, label %if.then8.i.i, label %for.end.i.i.if.end15.i.i_crit_edge

for.end.i.i.if.end15.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

if.then8.i.i:                                     ; preds = %for.end.i.i
  %call9.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_rme9652_adat3_check, ptr noundef %11) #14
  %call10.i.i = call i32 @snd_ctl_add(ptr noundef %16, ptr noundef %call9.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %if.then8.i.i.snd_rme9652_create.exit.thread_crit_edge, label %if.then8.i.i.if.end15.i.i_crit_edge

if.then8.i.i.if.end15.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

if.then8.i.i.snd_rme9652_create.exit.thread_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_rme9652_create.exit.thread

if.end15.i.i:                                     ; preds = %if.then8.i.i.if.end15.i.i_crit_edge, %for.end.i.i.if.end15.i.i_crit_edge
  %129 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %130)
  %cmp16.i.i = icmp sgt i32 %130, 14
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end15.i.i.if.end102.i_crit_edge

if.end15.i.i.if.end102.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %call19.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_rme9652_adat1_input, ptr noundef %11) #14
  %call20.i.i = call i32 @snd_ctl_add(ptr noundef %16, ptr noundef %call19.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %if.then18.i.i.snd_rme9652_create.exit.thread_crit_edge, label %if.then18.i.i.if.end102.i_crit_edge

if.then18.i.i.if.end102.i_crit_edge:              ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102.i

if.then18.i.i.snd_rme9652_create.exit.thread_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_rme9652_create.exit.thread

if.end102.i:                                      ; preds = %if.then18.i.i.if.end102.i_crit_edge, %if.end15.i.i.if.end102.i_crit_edge
  %131 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %card2.i, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %132, ptr noundef nonnull @.str.3, ptr noundef %11, ptr noundef nonnull @snd_rme9652_proc_read, ptr noundef null) #14
  %last_spdif_sample_rate.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 28
  %133 = ptrtoint ptr %last_spdif_sample_rate.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %last_spdif_sample_rate.i, align 4
  %last_adat_sample_rate.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 29
  %134 = ptrtoint ptr %last_adat_sample_rate.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %last_adat_sample_rate.i, align 4
  %playback_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 22
  %135 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 21
  %136 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %capture_pid.i, align 4
  %capture_substream.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 23
  %137 = ptrtoint ptr %capture_substream.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %capture_substream.i, align 4
  %playback_substream.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 24
  %138 = ptrtoint ptr %playback_substream.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %playback_substream.i, align 4
  %control_register.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 6
  %139 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 16398, ptr %control_register.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %140 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i191.i = getelementptr i8, ptr %141, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i191.i, i32 239075328) #14, !srcloc !319
  call fastcc void @rme9652_reset_hw_pointer(ptr noundef %11) #14
  %142 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %control_register.i.i, align 4
  %and.i.i.i = lshr i32 %143, 1
  %shr.i.i.i = and i32 %and.i.i.i, 7
  %add.i.i.i = or i32 %shr.i.i.i, 8
  %shl.i.i.i = shl nuw i32 1, %add.i.i.i
  %period_bytes.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 14
  %144 = ptrtoint ptr %period_bytes.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %shl.i.i.i, ptr %period_bytes.i.i.i, align 4
  %mul.i.i.i = shl nuw nsw i32 %shl.i.i.i, 1
  %sub.i.i.i = add nuw nsw i32 %mul.i.i.i, 65535
  %and3.i.i.i = and i32 %sub.i.i.i, 65472
  %hw_offsetmask.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 11
  %145 = ptrtoint ptr %hw_offsetmask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %and3.i.i.i, ptr %hw_offsetmask.i.i.i, align 4
  %max_jitter.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 13
  %146 = ptrtoint ptr %max_jitter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 80, ptr %max_jitter.i.i.i, align 4
  br label %for.body.i195.i

for.body.i195.i:                                  ; preds = %for.body.i195.i.for.body.i195.i_crit_edge, %if.end102.i
  %k.014.i.i = phi i32 [ 0, %if.end102.i ], [ %inc.i193.i, %for.body.i195.i.for.body.i195.i_crit_edge ]
  %mul.i.i = shl nuw nsw i32 %k.014.i.i, 2
  %add.i192.i = add nuw nsw i32 %mul.i.i, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %147 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %148, i32 %add.i192.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i, i32 0) #14, !srcloc !319
  %inc.i193.i = add nuw nsw i32 %k.014.i.i, 1
  %exitcond.not.i194.i = icmp eq i32 %inc.i193.i, 26
  br i1 %exitcond.not.i194.i, label %snd_rme9652_set_defaults.exit.i, label %for.body.i195.i.for.body.i195.i_crit_edge

for.body.i195.i.for.body.i195.i_crit_edge:        ; preds = %for.body.i195.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i195.i

snd_rme9652_set_defaults.exit.i:                  ; preds = %for.body.i195.i
  %thru_bits.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 7
  %149 = ptrtoint ptr %thru_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %thru_bits.i.i, align 4
  %passthru.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %11, i32 0, i32 26
  %150 = ptrtoint ptr %passthru.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %passthru.i.i, align 4
  %call.i196.i = call fastcc i32 @rme9652_set_rate(ptr noundef %11, i32 noundef 48000) #14
  %151 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %152)
  %cmp104.i = icmp eq i32 %152, 15
  br i1 %cmp104.i, label %if.then106.i, label %snd_rme9652_set_defaults.exit.i.if.end15_crit_edge

snd_rme9652_set_defaults.exit.i.if.end15_crit_edge: ; preds = %snd_rme9652_set_defaults.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then106.i:                                     ; preds = %snd_rme9652_set_defaults.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %153 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %control_register.i.i, align 4
  %or.i.i.i.i = or i32 %154, 786432
  store i32 %or.i.i.i.i, ptr %control_register.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %155 = call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #14
  %156 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %157, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %155) #14, !srcloc !319
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 32) #14
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 4) #14
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 64) #14
  %158 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %control_register.i.i, align 4
  %and.i.i.i.i = and i32 %159, -524289
  store i32 %and.i.i.i.i, ptr %control_register.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %160 = call i32 @llvm.bswap.i32(i32 %and.i.i.i.i) #14
  %161 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i7.i.i.i = getelementptr i8, ptr %162, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i.i.i, i32 %160) #14, !srcloc !319
  %163 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %control_register.i.i, align 4
  %or.i.i5.i.i = or i32 %164, 524288
  store i32 %or.i.i5.i.i, ptr %control_register.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %165 = call i32 @llvm.bswap.i32(i32 %or.i.i5.i.i) #14
  %166 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i7.i.i = getelementptr i8, ptr %167, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i7.i.i, i32 %165) #14, !srcloc !319
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 32) #14
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 17) #14
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 19) #14
  %168 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %control_register.i.i, align 4
  %and.i.i8.i.i = and i32 %169, -524289
  store i32 %and.i.i8.i.i, ptr %control_register.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %170 = call i32 @llvm.bswap.i32(i32 %and.i.i8.i.i) #14
  %171 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i7.i9.i.i = getelementptr i8, ptr %172, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i9.i.i, i32 %170) #14, !srcloc !319
  %173 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %control_register.i.i, align 4
  %or.i.i11.i.i = or i32 %174, 524288
  store i32 %or.i.i11.i.i, ptr %control_register.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %175 = call i32 @llvm.bswap.i32(i32 %or.i.i11.i.i) #14
  %176 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i13.i.i = getelementptr i8, ptr %177, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i13.i.i, i32 %175) #14, !srcloc !319
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 32) #14
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 6) #14
  call fastcc void @rme9652_spdif_write_byte(ptr noundef %11, i32 noundef 2) #14
  %178 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %control_register.i.i, align 4
  %and.i.i14.i.i = and i32 %179, -524289
  store i32 %and.i.i14.i.i, ptr %control_register.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @arm_heavy_mb() #14
  %180 = call i32 @llvm.bswap.i32(i32 %and.i.i14.i.i) #14
  %181 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i7.i15.i.i = getelementptr i8, ptr %182, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i15.i.i, i32 %180) #14, !srcloc !319
  br label %if.end15

snd_rme9652_create.exit.thread:                   ; preds = %if.then18.i.i.snd_rme9652_create.exit.thread_crit_edge, %if.then8.i.i.snd_rme9652_create.exit.thread_crit_edge, %for.body.i.i.snd_rme9652_create.exit.thread_crit_edge, %snd_rme9652_create_pcm.exit.thread.i, %snd_rme9652_initialize_memory.exit.thread.i, %do.end31.i, %do.end20.i, %do.body.i.snd_rme9652_create.exit.thread_crit_edge, %sw.epilog.i.snd_rme9652_create.exit.thread_crit_edge, %if.end7.snd_rme9652_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call10.i.i, %if.then8.i.i.snd_rme9652_create.exit.thread_crit_edge ], [ %call20.i.i, %if.then18.i.i.snd_rme9652_create.exit.thread_crit_edge ], [ %call.i183.i, %snd_rme9652_create_pcm.exit.thread.i ], [ -12, %snd_rme9652_initialize_memory.exit.thread.i ], [ %call7.i, %do.body.i.snd_rme9652_create.exit.thread_crit_edge ], [ %call4.i, %sw.epilog.i.snd_rme9652_create.exit.thread_crit_edge ], [ -19, %if.end7.snd_rme9652_create.exit.thread_crit_edge ], [ -16, %do.end31.i ], [ -16, %do.end20.i ], [ %call1.i.i, %for.body.i.i.snd_rme9652_create.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rev.i) #14
  br label %cleanup

if.end15:                                         ; preds = %if.then106.i, %snd_rme9652_set_defaults.exit.i.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rev.i) #14
  %183 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %card_name.i182.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %card_name.i182.i, align 4
  %call16 = call ptr @strcpy(ptr noundef %shortname, ptr noundef %186) #19
  %longname = getelementptr inbounds %struct.snd_card, ptr %184, i32 0, i32 4
  %187 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %port.i, align 4
  %189 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %irq.i, align 4
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.1, ptr noundef %shortname, i32 noundef %188, i32 noundef %190)
  %191 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %card, align 4
  %call21 = call i32 @snd_card_register(ptr noundef %192) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %193 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %195 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %194, ptr %driver_data.i.i, align 4
  %196 = load i32, ptr @snd_rme9652_probe.dev, align 4
  %inc25 = add i32 %196, 1
  store i32 %inc25, ptr @snd_rme9652_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end15.cleanup_crit_edge, %snd_rme9652_create.exit.thread, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call21, %if.end15.cleanup_crit_edge ], [ %retval.0.i.ph, %snd_rme9652_create.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_rme9652_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %irq = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %control_register.i, align 4
  %and.i = and i32 %5, -34
  store i32 %and.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %iobase.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #14, !srcloc !319
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !319
  %capture_substream = getelementptr inbounds %struct.snd_rme9652, ptr %dev_id, i32 0, i32 23
  %6 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %capture_substream, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pcm = getelementptr inbounds %struct.snd_rme9652, ptr %dev_id, i32 0, i32 32
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %9, i32 0, i32 8, i32 1, i32 4
  %10 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %11) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %playback_substream = getelementptr inbounds %struct.snd_rme9652, ptr %dev_id, i32 0, i32 24
  %12 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %playback_substream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %pcm6 = getelementptr inbounds %struct.snd_rme9652, ptr %dev_id, i32 0, i32 32
  %14 = ptrtoint ptr %pcm6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm6, align 4
  %substream9 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 8, i32 0, i32 4
  %16 = ptrtoint ptr %substream9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream9, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %17) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then5 ], [ 1, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #14
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_rme9652_playback_subinfo, i32 64)
  %playback_dma_buf = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime1, align 4
  %tobool.not.i = icmp eq ptr %playback_dma_buf, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 53
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %playback_dma_buf, ptr %dma_buffer_p2.i, align 8
  %area.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %area.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 50
  %10 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dma_area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 51
  %13 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 17, i32 3
  %14 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes.i, align 4
  br label %snd_pcm_set_runtime_buffer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dma_buffer_p2.i, align 8
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 50
  %17 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dma_area3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 51
  %18 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma_addr4.i, align 8
  br label %snd_pcm_set_runtime_buffer.exit

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %15, %if.then.i ]
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 52
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %19, align 4
  %capture_substream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 23
  %21 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %capture_substream, align 4
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %if.then, label %snd_pcm_set_runtime_buffer.exit.if.end_crit_edge

snd_pcm_set_runtime_buffer.exit.if.end_crit_edge: ; preds = %snd_pcm_set_runtime_buffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %snd_pcm_set_runtime_buffer.exit
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control_register.i, align 4
  %and.i = and i32 %24, -34
  store i32 %and.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %iobase.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #14, !srcloc !319
  %passthru.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 26
  %28 = ptrtoint ptr %passthru.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %passthru.i, align 4
  %thru_bits7.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 7
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %if.then
  %i.155.i = phi i32 [ %inc11.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %if.then ]
  %shl6.i = shl nuw nsw i32 1, %i.155.i
  %neg.i = xor i32 %shl6.i, -1
  %29 = ptrtoint ptr %thru_bits7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %thru_bits7.i, align 4
  %and.i34 = and i32 %30, %neg.i
  store i32 %and.i34, ptr %thru_bits7.i, align 4
  %mul8.i = shl i32 %i.155.i, 2
  %add9.i = add nuw nsw i32 %mul8.i, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %31 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %32, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 0) #14, !srcloc !319
  %inc11.i = add nuw nsw i32 %i.155.i, 1
  %exitcond57.not.i = icmp eq i32 %inc11.i, 26
  br i1 %exitcond57.not.i, label %for.body5.i.if.end_crit_edge, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i

for.body5.i.if.end_crit_edge:                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %for.body5.i.if.end_crit_edge, %snd_pcm_set_runtime_buffer.exit.if.end_crit_edge
  %33 = tail call i32 @llvm.read_register.i32(metadata !304) #14
  %and.i35 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i35 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid, align 8
  %playback_pid = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %39 = ptrtoint ptr %playback_pid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %playback_pid, align 4
  %playback_substream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 24
  %40 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %substream, ptr %playback_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %call3 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #14
  %call4 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 13, ptr noundef nonnull @hw_constraints_period_sizes) #14
  %call5 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @snd_rme9652_hw_rule_channels, ptr noundef %1, i32 noundef 10, i32 noundef -1) #14
  %call6 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @snd_rme9652_hw_rule_channels_rate, ptr noundef %1, i32 noundef 11, i32 noundef -1) #14
  %call7 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_rme9652_hw_rule_rate_channels, ptr noundef %1, i32 noundef 10, i32 noundef -1) #14
  %creg_spdif = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %creg_spdif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %creg_spdif, align 4
  %creg_spdif_stream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %creg_spdif_stream to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %creg_spdif_stream, align 4
  %spdif_ctl = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 34
  %44 = ptrtoint ptr %spdif_ctl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spdif_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %45, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %access, align 4
  %and = and i32 %47, -257
  store i32 %and, ptr %access, align 4
  %card = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 31
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card, align 4
  %50 = load ptr, ptr %spdif_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %50, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %49, i32 noundef 3, ptr noundef %id) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_playback_release(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %playback_pid = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %playback_pid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %playback_pid, align 4
  %playback_substream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 24
  %3 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %playback_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %spdif_ctl = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %spdif_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spdif_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %access, align 4
  %or = or i32 %7, 256
  store i32 %or, ptr %access, align 4
  %card = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %10 = load ptr, ptr %spdif_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %9, i32 noundef 3, ptr noundef %id) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_ioctl(ptr noundef %substream, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %cmd, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %1 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %capture_substream.i = getelementptr inbounds %struct.snd_rme9652, ptr %4, i32 0, i32 23
  %playback_substream.i = getelementptr inbounds %struct.snd_rme9652, ptr %4, i32 0, i32 24
  %other.0.in.i = select i1 %cmp.i, ptr %capture_substream.i, ptr %playback_substream.i
  %7 = ptrtoint ptr %other.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %other.0.i = load ptr, ptr %other.0.in.i, align 4
  %running.i = getelementptr inbounds %struct.snd_rme9652, ptr %4, i32 0, i32 25
  %8 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %sw.bb.if.end6.i_crit_edge, label %if.then2.i

sw.bb.if.end6.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call fastcc i32 @rme9652_hw_pointer(ptr noundef %4) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %sw.bb.if.end6.i_crit_edge
  %.sink.i = phi i32 [ %call.i, %if.then2.i ], [ 0, %sw.bb.if.end6.i_crit_edge ]
  %status4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 37
  %10 = ptrtoint ptr %status4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %status4.i, align 4
  %hw_ptr5.i = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hw_ptr5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %hw_ptr5.i, align 4
  %tobool7.not.i = icmp eq ptr %other.0.i, null
  br i1 %tobool7.not.i, label %if.end6.i.return_crit_edge, label %if.then8.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then8.i:                                       ; preds = %if.end6.i
  %runtime9.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %other.0.i, i32 0, i32 11
  %13 = ptrtoint ptr %runtime9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime9.i, align 4
  %group.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %15 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %group.i, align 4
  %substreams.i = getelementptr inbounds %struct.snd_pcm_group, ptr %16, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then8.i
  %.pn.in.i = phi ptr [ %substreams.i, %if.then8.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %substreams.i
  br i1 %cmp12.not.i, label %for.cond.i.return_crit_edge, label %for.body.i

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

for.body.i:                                       ; preds = %for.cond.i
  %s.0.i = getelementptr i8, ptr %.pn.i, i32 -140
  %cmp13.i = icmp eq ptr %s.0.i, %other.0.i
  br i1 %cmp13.i, label %if.then14.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %status4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %status4.i, align 4
  %hw_ptr16.i = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %hw_ptr16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_ptr16.i, align 4
  %status17.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 37
  %22 = ptrtoint ptr %status17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %status17.i, align 4
  %hw_ptr18.i = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %hw_ptr18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %hw_ptr18.i, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %25 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %26)
  %cmp.i8 = icmp ugt i32 %26, 25
  br i1 %cmp.i8, label %do.end.i, label %if.end21.i, !prof !320

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2032, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end21.i:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %private_data.i9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %27 = ptrtoint ptr %private_data.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data.i9, align 4
  %channel_map.i = getelementptr inbounds %struct.snd_rme9652, ptr %28, i32 0, i32 30
  %29 = ptrtoint ptr %channel_map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel_map.i, align 4
  %31 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %26, i32 26) #14, !srcloc !321
  %and.i = and i32 %31, %26
  %arrayidx.i = getelementptr i8, ptr %30, i32 %and.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %33 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 16
  %offset.i = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %arg, i32 0, i32 1
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i, ptr %offset.i, align 4
  %first.i = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %arg, i32 0, i32 2
  %35 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %first.i, align 4
  %step.i = getelementptr inbounds %struct.snd_pcm_channel_info, ptr %arg, i32 0, i32 3
  %36 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32, ptr %step.i, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @snd_pcm_lib_ioctl(ptr noundef %substream, i32 noundef %cmd, ptr noundef %arg) #14
  br label %return

return:                                           ; preds = %sw.epilog, %if.end21.i, %do.end.i, %if.then14.i, %for.cond.i.return_crit_edge, %if.end6.i.return_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.epilog ], [ 0, %if.end6.i.return_crit_edge ], [ 0, %if.then14.i ], [ -22, %do.end.i ], [ 0, %if.end21.i ], [ 0, %for.cond.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %pstr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 1
  %2 = ptrtoint ptr %pstr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pstr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %control_register = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control_register, align 4
  %and = and i32 %7, -3585
  %creg_spdif_stream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %creg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %creg_spdif_stream, align 4
  %or = or i32 %9, %and
  store i32 %or, ptr %control_register, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #14, !srcloc !319
  %playback_pid = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %capture_pid = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %capture_pid2 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %playback_pid3 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %this_pid.0.in = phi ptr [ %playback_pid, %if.then ], [ %capture_pid2, %if.else ]
  %other_pid.0.in = phi ptr [ %capture_pid, %if.then ], [ %playback_pid3, %if.else ]
  %13 = ptrtoint ptr %other_pid.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %other_pid.0 = load i32, ptr %other_pid.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %other_pid.0)
  %cmp4 = icmp sgt i32 %other_pid.0, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.else18_crit_edge

if.end.if.else18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else18

land.lhs.true:                                    ; preds = %if.end
  %14 = ptrtoint ptr %this_pid.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %this_pid.0 = load i32, ptr %this_pid.0.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %this_pid.0, i32 %other_pid.0)
  %cmp5.not = icmp eq i32 %this_pid.0, %other_pid.0
  br i1 %cmp5.not, label %land.lhs.true.if.else18_crit_edge, label %if.then6

land.lhs.true.if.else18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else18

if.then6:                                         ; preds = %land.lhs.true
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %control_register.i, align 4
  %and.i = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %iobase.i9.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %iobase.i9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i9.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  %22 = and i32 %21, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool5.not.i = icmp eq i32 %22, 0
  %cond.i = select i1 %tobool5.not.i, i32 88200, i32 96000
  %cond6.i = select i1 %tobool5.not.i, i32 44100, i32 48000
  %retval.0.i = select i1 %tobool.not.i, i32 %cond6.i, i32 %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %retval.0.i)
  %cmp8.not = icmp eq i32 %16, %retval.0.i
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  tail call void @_snd_pcm_hw_param_setempty(ptr noundef %params, i32 noundef 11) #14
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %arrayidx.i.i63 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %23 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i63, align 4
  %period_bytes = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %period_bytes, align 4
  %div62 = lshr i32 %26, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %div62)
  %cmp13.not = icmp eq i32 %24, %div62
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br i1 %cmp13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_snd_pcm_hw_param_setempty(ptr noundef %params, i32 noundef 13) #14
  br label %cleanup

if.else18:                                        ; preds = %land.lhs.true.if.else18_crit_edge, %if.end.if.else18_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %arrayidx.i.i64 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx.i.i64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i64, align 4
  %call22 = tail call fastcc i32 @rme9652_set_rate(ptr noundef %1, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_snd_pcm_hw_param_setempty(ptr noundef %params, i32 noundef 11) #14
  br label %cleanup

if.end25:                                         ; preds = %if.else18
  %arrayidx.i.i65 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %arrayidx.i.i65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i65, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %running.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 25
  %31 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i66 = icmp eq i32 %32, 0
  br i1 %tobool.not.i66, label %if.end25.if.end.i_crit_edge, label %if.then.i

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %control_register.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %control_register.i.i, align 4
  %and.i.i = and i32 %34, -34
  store i32 %and.i.i, ptr %control_register.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %iobase.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %35) #14, !srcloc !319
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end25.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %30)
  %tobool1.not6.i = icmp ult i32 %30, 128
  br i1 %tobool1.not6.i, label %if.end.i.while.end.i_crit_edge, label %while.body.preheader.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end.i
  %shr.i = lshr i32 %30, 7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %n.08.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %frames.addr.07.i = phi i32 [ %shr2.i, %while.body.i.while.body.i_crit_edge ], [ %shr.i, %while.body.preheader.i ]
  %inc.i = add nuw nsw i32 %n.08.i, 1
  %shr2.i = lshr i32 %frames.addr.07.i, 1
  %tobool1.not.i = icmp ult i32 %frames.addr.07.i, 2
  br i1 %tobool1.not.i, label %while.end.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo.i = shl nuw i32 %inc.i, 1
  %phi.bo9.i = and i32 %phi.bo.i, 14
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %if.end.i.while.end.i_crit_edge
  %n.0.lcssa.i = phi i32 [ 0, %if.end.i.while.end.i_crit_edge ], [ %phi.bo9.i, %while.end.loopexit.i ]
  %control_register.i67 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %control_register.i67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %control_register.i67, align 4
  %and.i68 = and i32 %39, -15
  %or.i = or i32 %and.i68, %n.0.lcssa.i
  store i32 %or.i, ptr %control_register.i67, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %iobase.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %40) #14, !srcloc !319
  %43 = ptrtoint ptr %control_register.i67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %control_register.i67, align 4
  %and.i2.i = lshr i32 %44, 1
  %shr.i.i = and i32 %and.i2.i, 7
  %add.i.i = or i32 %shr.i.i, 8
  %shl.i.i = shl nuw i32 1, %add.i.i
  %period_bytes.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 14
  %45 = ptrtoint ptr %period_bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl.i.i, ptr %period_bytes.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %shl.i.i, 1
  %sub.i.i = add nuw nsw i32 %mul.i.i, 65535
  %and3.i.i = and i32 %sub.i.i, 65472
  %hw_offsetmask.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %hw_offsetmask.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and3.i.i, ptr %hw_offsetmask.i.i, align 4
  %max_jitter.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %max_jitter.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 80, ptr %max_jitter.i.i, align 4
  br i1 %tobool.not.i66, label %while.end.i.rme9652_set_interrupt_interval.exit_crit_edge, label %if.then7.i

while.end.i.rme9652_set_interrupt_interval.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rme9652_set_interrupt_interval.exit

if.then7.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i = or i32 %44, 33
  %48 = ptrtoint ptr %control_register.i67 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i.i, ptr %control_register.i67, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %50 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %51, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5.i, i32 %49) #14, !srcloc !319
  br label %rme9652_set_interrupt_interval.exit

rme9652_set_interrupt_interval.exit:              ; preds = %if.then7.i, %while.end.i.rme9652_set_interrupt_interval.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %rme9652_set_interrupt_interval.exit, %if.then24, %if.then14, %if.end11.cleanup_crit_edge, %if.then9
  %retval.0 = phi i32 [ -16, %if.then9 ], [ -16, %if.then14 ], [ %call22, %if.then24 ], [ 0, %rme9652_set_interrupt_interval.exit ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %running = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rme9652_reset_hw_pointer(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %running1 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %running1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running1, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %cmd, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %6
  %or = or i32 %shl, %3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stream3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream3, align 4
  %shl4 = shl nuw i32 1, %8
  %neg = xor i32 %shl4, -1
  %and = and i32 %3, %neg
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2087, i32 noundef 9, ptr noundef nonnull @.str.29) #14
  br label %cleanup87

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %running.0 = phi i32 [ %and, %sw.bb2 ], [ %or, %sw.bb ]
  %stream20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %9 = ptrtoint ptr %stream20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %capture_substream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 23
  %playback_substream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 24
  %other.0.in = select i1 %cmp, ptr %capture_substream, ptr %playback_substream
  %11 = ptrtoint ptr %other.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %other.0 = load ptr, ptr %other.0.in, align 4
  %tobool23.not = icmp eq ptr %other.0, null
  br i1 %tobool23.not, label %if.else66, label %if.then24

if.then24:                                        ; preds = %sw.epilog
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %13, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then24
  %.pn.in = phi ptr [ %substreams, %if.then24 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %14 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp28.not = icmp eq ptr %.pn, %substreams
  br i1 %cmp28.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %s.0 = getelementptr i8, ptr %.pn, i32 -140
  %cmp31 = icmp eq ptr %s.0, %other.0
  br i1 %cmp31, label %if.then32, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then32:                                        ; preds = %for.body
  %runtime.i = getelementptr i8, ptr %.pn, i32 -20
  %15 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %substream, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp33 = icmp eq i32 %cmd, 1
  %stream35 = getelementptr i8, ptr %.pn, i32 -92
  %18 = ptrtoint ptr %stream35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream35, align 4
  %shl36 = shl nuw i32 1, %19
  br i1 %cmp33, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %or37 = or i32 %shl36, %running.0
  br label %_ok

if.else38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %neg41 = xor i32 %shl36, -1
  %and42 = and i32 %running.0, %neg41
  br label %_ok

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp50 = icmp eq i32 %cmd, 1
  br i1 %cmp50, label %if.then51, label %if.else58

if.then51:                                        ; preds = %for.end
  %and52 = and i32 %running.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp55 = icmp eq i32 %10, 1
  %or.cond147 = select i1 %tobool53.not, i1 %cmp55, i1 false
  br i1 %or.cond147, label %if.then56, label %if.then51._ok_crit_edge

if.then51._ok_crit_edge:                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %_ok

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %playback_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %playback_buffer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %playback_buffer.i, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 1769472)
  br label %_ok

if.else58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %running.0)
  %tobool59.not = icmp eq i32 %running.0, 0
  br i1 %tobool59.not, label %_ok.thread, label %land.lhs.true60

_ok.thread:                                       ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #16
  %runtime.i134139 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %23 = ptrtoint ptr %runtime.i134139 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime.i134139, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %substream, ptr %24, align 8
  %26 = ptrtoint ptr %running1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %running1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool73.not140 = icmp ne i32 %27, 0
  br label %if.else77

land.lhs.true60:                                  ; preds = %if.else58
  br i1 %cmp, label %if.then63, label %land.lhs.true60._ok_crit_edge

land.lhs.true60._ok_crit_edge:                    ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  br label %_ok

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  %playback_buffer.i132 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %playback_buffer.i132 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %playback_buffer.i132, align 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 1769472)
  br label %_ok

if.else66:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp68 = icmp eq i32 %10, 1
  br i1 %cmp68, label %if.then69, label %if.else66._ok_crit_edge

if.else66._ok_crit_edge:                          ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #16
  br label %_ok

if.then69:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #16
  %playback_buffer.i133 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 20
  %31 = ptrtoint ptr %playback_buffer.i133 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %playback_buffer.i133, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 1769472)
  br label %_ok

_ok:                                              ; preds = %if.then69, %if.else66._ok_crit_edge, %if.then63, %land.lhs.true60._ok_crit_edge, %if.then56, %if.then51._ok_crit_edge, %if.else38, %if.then34
  %running.3 = phi i32 [ %running.0, %if.then69 ], [ %running.0, %if.else66._ok_crit_edge ], [ %or37, %if.then34 ], [ %and42, %if.else38 ], [ %running.0, %land.lhs.true60._ok_crit_edge ], [ %running.0, %if.then63 ], [ %running.0, %if.then51._ok_crit_edge ], [ %running.0, %if.then56 ]
  %runtime.i134 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %34 = ptrtoint ptr %runtime.i134 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %runtime.i134, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %substream, ptr %35, align 8
  %37 = ptrtoint ptr %running1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %running1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool73.not = icmp ne i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %running.3)
  %tobool75.not = icmp eq i32 %running.3, 0
  %or.cond = select i1 %tobool73.not, i1 true, i1 %tobool75.not
  br i1 %or.cond, label %_ok.if.else77_crit_edge, label %if.then76

_ok.if.else77_crit_edge:                          ; preds = %_ok
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else77

if.then76:                                        ; preds = %_ok
  call void @__sanitizer_cov_trace_pc() #16
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %control_register.i, align 4
  %or.i = or i32 %40, 33
  store i32 %or.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %iobase.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %41) #14, !srcloc !319
  br label %if.end84

if.else77:                                        ; preds = %_ok.if.else77_crit_edge, %_ok.thread
  %tobool75.not146 = phi i1 [ true, %_ok.thread ], [ %tobool75.not, %_ok.if.else77_crit_edge ]
  %tobool73.not145 = phi i1 [ %tobool73.not140, %_ok.thread ], [ %tobool73.not, %_ok.if.else77_crit_edge ]
  %running.3144 = phi i32 [ 0, %_ok.thread ], [ %running.3, %_ok.if.else77_crit_edge ]
  %or.cond131 = select i1 %tobool73.not145, i1 %tobool75.not146, i1 false
  br i1 %or.cond131, label %if.then82, label %if.else77.if.end84_crit_edge

if.else77.if.end84_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

if.then82:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #16
  %control_register.i135 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %control_register.i135 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %control_register.i135, align 4
  %and.i = and i32 %45, -34
  store i32 %and.i, ptr %control_register.i135, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %46 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %iobase.i.i136 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %iobase.i.i136 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i.i136, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %48, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i137, i32 %46) #14, !srcloc !319
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.else77.if.end84_crit_edge, %if.then76
  %running.3143 = phi i32 [ %running.3144, %if.else77.if.end84_crit_edge ], [ %running.3144, %if.then82 ], [ %running.3, %if.then76 ]
  %49 = ptrtoint ptr %running1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %running.3143, ptr %running1, align 4
  br label %cleanup87

cleanup87:                                        ; preds = %if.end84, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end84 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_hw_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @rme9652_hw_pointer(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_hw_silence(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %channel)
  %0 = icmp ugt i32 %channel, 25
  br i1 %0, label %rme9652_channel_buffer_location.exit.thread, label %if.end22.i, !prof !320

rme9652_channel_buffer_location.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1829, i32 noundef 9, ptr noundef null) #14
  br label %do.end

if.end22.i:                                       ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %pstr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 1
  %3 = ptrtoint ptr %pstr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pstr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %channel_map.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 30
  %7 = ptrtoint ptr %channel_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %channel
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp27.i = icmp eq i32 %6, 1
  %capture_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 19
  %playback_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 20
  %capture_buffer.i.sink = select i1 %cmp27.i, ptr %capture_buffer.i, ptr %playback_buffer.i
  %11 = ptrtoint ptr %capture_buffer.i.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %capture_buffer.i.sink, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %if.end22.i.do.end_crit_edge, label %if.end23, !prof !320

if.end22.i.do.end_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %if.end22.i.do.end_crit_edge, %rme9652_channel_buffer_location.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1927, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %pos
  %13 = call ptr @memset(ptr %add.ptr, i32 0, i32 %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_playback_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add = add i32 %count, %pos
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp = icmp ugt i32 %add, 65536
  br i1 %cmp, label %do.end, label %if.end21, !prof !320

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1852, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %channel)
  %2 = icmp ugt i32 %channel, 25
  br i1 %2, label %rme9652_channel_buffer_location.exit.thread, label %if.end22.i, !prof !320

rme9652_channel_buffer_location.exit.thread:      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1829, i32 noundef 9, ptr noundef null) #14
  br label %do.end41

if.end22.i:                                       ; preds = %if.end21
  %pstr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 1
  %3 = ptrtoint ptr %pstr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pstr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %channel_map.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %channel_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %channel
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp27.i = icmp eq i32 %6, 1
  %capture_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 19
  %playback_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 20
  %capture_buffer.i.sink = select i1 %cmp27.i, ptr %capture_buffer.i, ptr %playback_buffer.i
  %11 = ptrtoint ptr %capture_buffer.i.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %capture_buffer.i.sink, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 %mul.i
  %tobool23.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool23.not, label %if.end22.i.do.end41_crit_edge, label %if.end57, !prof !320

if.end22.i.do.end41_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

do.end41:                                         ; preds = %if.end22.i.do.end41_crit_edge, %rme9652_channel_buffer_location.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1858, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end57:                                         ; preds = %if.end22.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %pos
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end57
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !322

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end57
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %count, i32 -1226833920) #20, !srcloc !323
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !322

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count) #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !304) #14
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !324
  %and.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !326
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %src, i32 noundef %count) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #14, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !326
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !322

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %do.end41, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end41 ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_playback_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr nocapture noundef readonly %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %channel)
  %0 = icmp ugt i32 %channel, 25
  br i1 %0, label %rme9652_channel_buffer_location.exit.thread, label %if.end22.i, !prof !320

rme9652_channel_buffer_location.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1829, i32 noundef 9, ptr noundef null) #14
  br label %do.end

if.end22.i:                                       ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %pstr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 1
  %3 = ptrtoint ptr %pstr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pstr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %channel_map.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 30
  %7 = ptrtoint ptr %channel_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %channel
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp27.i = icmp eq i32 %6, 1
  %capture_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 19
  %playback_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 20
  %capture_buffer.i.sink = select i1 %cmp27.i, ptr %capture_buffer.i, ptr %playback_buffer.i
  %11 = ptrtoint ptr %capture_buffer.i.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %capture_buffer.i.sink, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %if.end22.i.do.end_crit_edge, label %if.end23, !prof !320

if.end22.i.do.end_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %if.end22.i.do.end_crit_edge, %rme9652_channel_buffer_location.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1875, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %pos
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rme9652_set_thru(ptr nocapture noundef %rme9652, i32 noundef %channel, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %passthru = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 26
  %0 = ptrtoint ptr %passthru to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %passthru, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp slt i32 %channel, 0
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %thru_bits7 = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 7
  %iobase.i49 = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 4
  br i1 %tobool.not, label %if.then.for.body5_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.body5_crit_edge:                      ; preds = %if.then
  br label %for.body5

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.054
  %1 = ptrtoint ptr %thru_bits7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %thru_bits7, align 4
  %or = or i32 %2, %shl
  store i32 %or, ptr %thru_bits7, align 4
  %mul = shl i32 %i.054, 2
  %add = add nuw nsw i32 %mul, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %3 = ptrtoint ptr %iobase.i49 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i49, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #14, !srcloc !319
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.body.if.end28_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %if.then.for.body5_crit_edge
  %i.155 = phi i32 [ %inc11, %for.body5.for.body5_crit_edge ], [ 0, %if.then.for.body5_crit_edge ]
  %shl6 = shl nuw nsw i32 1, %i.155
  %neg = xor i32 %shl6, -1
  %5 = ptrtoint ptr %thru_bits7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %thru_bits7, align 4
  %and = and i32 %6, %neg
  store i32 %and, ptr %thru_bits7, align 4
  %mul8 = shl i32 %i.155, 2
  %add9 = add nuw nsw i32 %mul8, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %iobase.i49 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %8, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #14, !srcloc !319
  %inc11 = add nuw nsw i32 %i.155, 1
  %exitcond57.not = icmp eq i32 %inc11, 26
  br i1 %exitcond57.not, label %for.body5.if.end28_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.body5.if.end28_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.else13:                                        ; preds = %entry
  %channel_map = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 30
  %9 = ptrtoint ptr %channel_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channel_map, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %channel
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool14.not = icmp eq i32 %enable, 0
  %shl20 = shl nuw i32 1, %conv
  br i1 %tobool14.not, label %if.else19, label %if.then15

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  %thru_bits17 = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 7
  %13 = ptrtoint ptr %thru_bits17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %thru_bits17, align 4
  %or18 = or i32 %14, %shl20
  store i32 %or18, ptr %thru_bits17, align 4
  br label %if.end24

if.else19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  %neg21 = xor i32 %shl20, -1
  %thru_bits22 = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 7
  %15 = ptrtoint ptr %thru_bits22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %thru_bits22, align 4
  %and23 = and i32 %16, %neg21
  store i32 %and23, ptr %thru_bits22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else19, %if.then15
  %17 = phi i32 [ 0, %if.else19 ], [ 16777216, %if.then15 ]
  %mul25 = shl nuw nsw i32 %conv, 2
  %add26 = add nuw nsw i32 %mul25, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %iobase.i51 = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 4
  %18 = ptrtoint ptr %iobase.i51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %19, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %17) #14, !srcloc !319
  br label %if.end28

if.end28:                                         ; preds = %if.end24, %for.body5.if.end28_crit_edge, %for.body.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_hw_rule_channels(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %list = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #14
  %2 = getelementptr inbounds [2 x i32], ptr %list, i32 0, i32 1
  %ds_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %ds_channels to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ds_channels, align 4
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %list, align 4
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ss_channels, align 1
  %conv1 = zext i8 %7 to i32
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv1, ptr %2, align 4
  %call2 = call i32 @snd_interval_list(ptr noundef %arrayidx.i, i32 noundef 2, ptr noundef nonnull %list, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_hw_rule_channels_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  %t19 = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i51 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %3)
  %cmp = icmp ugt i32 %3, 48000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #14
  %4 = getelementptr inbounds i8, ptr %t, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %ds_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %ds_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ds_channels, align 4
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %t, align 4
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %max, align 4
  %openmin = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %openmin to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 47, ptr %openmin, align 4
  %call14 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %max15 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %11 = ptrtoint ptr %max15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %12)
  %cmp16 = icmp ult i32 %12, 88200
  br i1 %cmp16, label %if.then18, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t19) #14
  %13 = getelementptr inbounds i8, ptr %t19, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ss_channels, align 1
  %conv21 = zext i8 %16 to i32
  %17 = ptrtoint ptr %t19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv21, ptr %t19, align 4
  %max22 = getelementptr inbounds %struct.snd_interval, ptr %t19, i32 0, i32 1
  %18 = ptrtoint ptr %max22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv21, ptr %max22, align 4
  %openmin25 = getelementptr inbounds %struct.snd_interval, ptr %t19, i32 0, i32 2
  %19 = ptrtoint ptr %openmin25 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 47, ptr %openmin25, align 4
  %call41 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t19) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t19) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call14, %if.then ], [ %call41, %if.then18 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_hw_rule_rate_channels(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  %t8 = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i17 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ss_channels, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #14
  %6 = call ptr @memcpy(ptr %t, ptr @__const.snd_rme9652_hw_rule_rate_channels.t, i32 12)
  %call3 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i17, ptr noundef nonnull %t) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max, align 4
  %ds_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %ds_channels to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ds_channels, align 4
  %conv4 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv4)
  %cmp5.not = icmp ugt i32 %8, %conv4
  br i1 %cmp5.not, label %if.else.cleanup_crit_edge, label %if.then7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t8) #14
  %11 = call ptr @memcpy(ptr %t8, ptr @__const.snd_rme9652_hw_rule_rate_channels.t.23, i32 12)
  %call9 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i17, ptr noundef nonnull %t8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t8) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call9, %if.then7 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_lib_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rme9652_hw_pointer(ptr nocapture noundef %rme9652) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %period_bytes = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 14
  %0 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period_bytes, align 4
  %div93 = lshr i32 %1, 2
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #14, !srcloc !316
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %precise_ptr = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 5
  %6 = ptrtoint ptr %precise_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %precise_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 %div93
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %5, 65472
  %prev_hw_offset = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 12
  %8 = ptrtoint ptr %prev_hw_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prev_hw_offset, align 4
  %sub = sub i32 %9, %and2
  %and3 = and i32 %sub, 65535
  %max_jitter = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 13
  %10 = ptrtoint ptr %max_jitter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_jitter, align 4
  %mul = shl i32 %11, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %mul)
  %cmp.not = icmp sgt i32 %and3, %mul
  br i1 %cmp.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %prev_hw_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and2, ptr %prev_hw_offset, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.if.end7_crit_edge
  %offset.0 = phi i32 [ %and2, %if.else ], [ %9, %if.end.if.end7_crit_edge ]
  %hw_offsetmask = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 11
  %13 = ptrtoint ptr %hw_offsetmask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_offsetmask, align 4
  %and8 = and i32 %14, %offset.0
  %div994 = lshr i32 %and8, 2
  %and10 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_cmp4(i32 %div994, i32 %div93)
  %cmp11 = icmp ult i32 %div994, %div93
  br i1 %cmp11, label %if.then12, label %if.else30

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %div994, i32 %11)
  %cmp14 = icmp ugt i32 %div994, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool16.not = icmp eq i32 %and10, 0
  br i1 %cmp14, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.then12
  br i1 %tobool16.not, label %if.then15.if.end23_crit_edge, label %do.end

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %card = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 31
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24, i32 noundef %5, i32 noundef %div994) #17
  br label %if.end23

if.else19:                                        ; preds = %if.then12
  br i1 %tobool16.not, label %if.else19.cleanup_crit_edge, label %if.else19.if.end23_crit_edge

if.else19.if.end23_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.else19.if.end23_crit_edge, %do.end, %if.then15.if.end23_crit_edge
  %19 = ptrtoint ptr %max_jitter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_jitter, align 4
  %sub25 = sub i32 %div994, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp26 = icmp slt i32 %sub25, 0
  br i1 %cmp26, label %if.then27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %mul28 = shl nuw nsw i32 %div93, 1
  %add = add nsw i32 %sub25, %mul28
  br label %cleanup

if.else30:                                        ; preds = %if.end7
  %add32 = add i32 %11, %div93
  call void @__sanitizer_cov_trace_cmp4(i32 %div994, i32 %add32)
  %cmp33 = icmp ugt i32 %div994, %add32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool35.not = icmp eq i32 %and10, 0
  br i1 %cmp33, label %if.then34, label %if.else43

if.then34:                                        ; preds = %if.else30
  br i1 %tobool35.not, label %do.end39, label %if.then34.if.end47_crit_edge

if.then34.if.end47_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

do.end39:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  %card40 = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 31
  %21 = ptrtoint ptr %card40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card40, align 4
  %dev41 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef %5, i32 noundef %div994) #17
  br label %if.end47

if.else43:                                        ; preds = %if.else30
  br i1 %tobool35.not, label %if.else43.if.end47_crit_edge, label %if.else43.cleanup_crit_edge

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else43.if.end47_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %if.else43.if.end47_crit_edge, %do.end39, %if.then34.if.end47_crit_edge
  %25 = ptrtoint ptr %max_jitter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_jitter, align 4
  %sub49 = sub i32 %div994, %26
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.else43.cleanup_crit_edge, %if.then27, %if.end23.cleanup_crit_edge, %if.else19.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %if.else19.cleanup_crit_edge ], [ %div93, %if.else43.cleanup_crit_edge ], [ %add, %if.then27 ], [ %sub25, %if.end23.cleanup_crit_edge ], [ %sub49, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_snd_pcm_hw_param_setempty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rme9652_set_rate(ptr noundef %rme9652, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %playback_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 22
  %0 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 21
  %2 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capture_pid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp5.not.i = icmp ne i32 %1, %3
  %4 = or i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %5 = icmp sgt i32 %4, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %tobool.not = and i1 %cmp5.not.i, %5
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 6
  %6 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control_register.i, align 4
  %and.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %iobase.i9.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 4
  %8 = ptrtoint ptr %iobase.i9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i9.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  %cond.i = select i1 %tobool5.not.i, i32 88200, i32 96000
  %cond6.i = select i1 %tobool5.not.i, i32 44100, i32 48000
  %retval.0.i = select i1 %tobool.not.i, i32 %cond6.i, i32 %cond.i
  %12 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %rate, label %if.end.cleanup.sink.split_crit_edge [
    i32 44100, label %sw.bb
    i32 48000, label %sw.bb4
    i32 88200, label %sw.bb8
    i32 96000, label %sw.bb12
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %retval.0.i)
  %cmp = icmp ugt i32 %retval.0.i, 48000
  br i1 %cmp, label %sw.bb.land.lhs.true_crit_edge, label %sw.bb.if.end22_crit_edge

sw.bb.if.end22_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

sw.bb.land.lhs.true_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %retval.0.i)
  %cmp5 = icmp ugt i32 %retval.0.i, 48000
  br i1 %cmp5, label %sw.bb4.land.lhs.true_crit_edge, label %sw.bb4.if.end22_crit_edge

sw.bb4.if.end22_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

sw.bb4.land.lhs.true_crit_edge:                   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %retval.0.i)
  %cmp9 = icmp ult i32 %retval.0.i, 48000
  br i1 %cmp9, label %sw.bb8.land.lhs.true_crit_edge, label %sw.bb8.if.end22_crit_edge

sw.bb8.if.end22_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

sw.bb8.land.lhs.true_crit_edge:                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %retval.0.i)
  %cmp13 = icmp ult i32 %retval.0.i, 48000
  br i1 %cmp13, label %sw.bb12.land.lhs.true_crit_edge, label %sw.bb12.if.end22_crit_edge

sw.bb12.if.end22_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

sw.bb12.land.lhs.true_crit_edge:                  ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb12.land.lhs.true_crit_edge, %sw.bb8.land.lhs.true_crit_edge, %sw.bb4.land.lhs.true_crit_edge, %sw.bb.land.lhs.true_crit_edge
  %rate.addr.0 = phi i32 [ 320, %sw.bb12.land.lhs.true_crit_edge ], [ 256, %sw.bb8.land.lhs.true_crit_edge ], [ 64, %sw.bb4.land.lhs.true_crit_edge ], [ 0, %sw.bb.land.lhs.true_crit_edge ]
  %13 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capture_pid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp18 = icmp sgt i32 %14, -1
  br i1 %cmp18, label %land.lhs.true.cleanup.sink.split_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %playback_pid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp19 = icmp sgt i32 %16, -1
  br i1 %cmp19, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end22:                                         ; preds = %lor.lhs.false.if.end22_crit_edge, %sw.bb12.if.end22_crit_edge, %sw.bb8.if.end22_crit_edge, %sw.bb4.if.end22_crit_edge, %sw.bb.if.end22_crit_edge
  %rate.addr.098 = phi i32 [ %rate.addr.0, %lor.lhs.false.if.end22_crit_edge ], [ 0, %sw.bb.if.end22_crit_edge ], [ 64, %sw.bb4.if.end22_crit_edge ], [ 256, %sw.bb8.if.end22_crit_edge ], [ 320, %sw.bb12.if.end22_crit_edge ]
  %running = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 25
  %17 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %control_register.i, align 4
  br i1 %tobool23.not, label %if.end30.critedge, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %and.i86 = and i32 %20, -34
  %21 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i86, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i86) #14
  %23 = ptrtoint ptr %iobase.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i9.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #14, !srcloc !319
  %25 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %control_register.i, align 4
  %and.c = and i32 %26, -321
  %or.c = or i32 %and.c, %rate.addr.098
  store i32 %or.c, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.c) #14
  %28 = ptrtoint ptr %iobase.i9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i9.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #14, !srcloc !319
  %30 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %control_register.i, align 4
  %or.i = or i32 %31, 33
  store i32 %or.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %33 = ptrtoint ptr %iobase.i9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase.i9.i, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %34, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i89, i32 %32) #14, !srcloc !319
  br label %if.end30

if.end30.critedge:                                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %and.c83 = and i32 %20, -321
  %or.c84 = or i32 %and.c83, %rate.addr.098
  %35 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.c84, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.c84) #14
  %37 = ptrtoint ptr %iobase.i9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i9.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %36) #14, !srcloc !319
  br label %if.end30

if.end30:                                         ; preds = %if.end30.critedge, %if.then24
  %and31 = and i32 %rate.addr.098, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %ss_channels40 = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 16
  %39 = ptrtoint ptr %ss_channels40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ss_channels40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %40)
  %cmp42 = icmp eq i8 %40, 26
  %channel_map45 = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 30
  %channel_map_9652_ds.channel_map_9636_ds = select i1 %cmp42, ptr @channel_map_9652_ds, ptr @channel_map_9636_ds
  %channel_map_9652_ss.channel_map_9636_ss = select i1 %cmp42, ptr @channel_map_9652_ss, ptr @channel_map_9636_ss
  %channel_map_9652_ss.sink = select i1 %tobool32.not, ptr %channel_map_9652_ss.channel_map_9636_ss, ptr %channel_map_9652_ds.channel_map_9636_ds
  %41 = ptrtoint ptr %channel_map45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %channel_map_9652_ss.sink, ptr %channel_map45, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end30, %lor.lhs.false.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end30 ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ -16, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -16, %land.lhs.true.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rme9652_reset_hw_pointer(ptr nocapture noundef %rme9652) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #14, !srcloc !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 0) #14, !srcloc !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #14, !srcloc !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 0) #14, !srcloc !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 0) #14, !srcloc !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 0) #14, !srcloc !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 0) #14, !srcloc !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 0) #14, !srcloc !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #14
  %prev_hw_offset = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 12
  %24 = ptrtoint ptr %prev_hw_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %prev_hw_offset, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
define internal i32 @snd_rme9652_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #14
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_rme9652_capture_subinfo, i32 64)
  %capture_dma_buf = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime1, align 4
  %tobool.not.i = icmp eq ptr %capture_dma_buf, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 53
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %capture_dma_buf, ptr %dma_buffer_p2.i, align 8
  %area.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %area.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 50
  %10 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dma_area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 18, i32 2
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 51
  %13 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 18, i32 3
  %14 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes.i, align 4
  br label %snd_pcm_set_runtime_buffer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dma_buffer_p2.i, align 8
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 50
  %17 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dma_area3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 51
  %18 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma_addr4.i, align 8
  br label %snd_pcm_set_runtime_buffer.exit

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %15, %if.then.i ]
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 52
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %19, align 4
  %playback_substream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %playback_substream, align 4
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %if.then, label %snd_pcm_set_runtime_buffer.exit.if.end_crit_edge

snd_pcm_set_runtime_buffer.exit.if.end_crit_edge: ; preds = %snd_pcm_set_runtime_buffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %snd_pcm_set_runtime_buffer.exit
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control_register.i, align 4
  %and.i = and i32 %24, -34
  store i32 %and.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %iobase.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #14, !srcloc !319
  %passthru.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 26
  %28 = ptrtoint ptr %passthru.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %passthru.i, align 4
  %thru_bits7.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 7
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %if.then
  %i.155.i = phi i32 [ %inc11.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %if.then ]
  %shl6.i = shl nuw nsw i32 1, %i.155.i
  %neg.i = xor i32 %shl6.i, -1
  %29 = ptrtoint ptr %thru_bits7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %thru_bits7.i, align 4
  %and.i28 = and i32 %30, %neg.i
  store i32 %and.i28, ptr %thru_bits7.i, align 4
  %mul8.i = shl i32 %i.155.i, 2
  %add9.i = add nuw nsw i32 %mul8.i, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %31 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %32, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 0) #14, !srcloc !319
  %inc11.i = add nuw nsw i32 %i.155.i, 1
  %exitcond57.not.i = icmp eq i32 %inc11.i, 26
  br i1 %exitcond57.not.i, label %for.body5.i.if.end_crit_edge, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i

for.body5.i.if.end_crit_edge:                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %for.body5.i.if.end_crit_edge, %snd_pcm_set_runtime_buffer.exit.if.end_crit_edge
  %33 = tail call i32 @llvm.read_register.i32(metadata !304) #14
  %and.i29 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i29 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid, align 8
  %capture_pid = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %capture_pid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %capture_pid, align 4
  %capture_substream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 23
  %40 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %substream, ptr %capture_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %call3 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #14
  %call4 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 13, ptr noundef nonnull @hw_constraints_period_sizes) #14
  %call5 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @snd_rme9652_hw_rule_channels, ptr noundef %1, i32 noundef 10, i32 noundef -1) #14
  %call6 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @snd_rme9652_hw_rule_channels_rate, ptr noundef %1, i32 noundef 11, i32 noundef -1) #14
  %call7 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_rme9652_hw_rule_rate_channels, ptr noundef %1, i32 noundef 10, i32 noundef -1) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_capture_release(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %capture_pid = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %capture_pid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %capture_pid, align 4
  %capture_substream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %capture_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_capture_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add = add i32 %count, %pos
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp = icmp ugt i32 %add, 65536
  br i1 %cmp, label %do.end, label %if.end21, !prof !320

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1888, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %channel)
  %2 = icmp ugt i32 %channel, 25
  br i1 %2, label %rme9652_channel_buffer_location.exit.thread, label %if.end22.i, !prof !320

rme9652_channel_buffer_location.exit.thread:      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1829, i32 noundef 9, ptr noundef null) #14
  br label %do.end41

if.end22.i:                                       ; preds = %if.end21
  %pstr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 1
  %3 = ptrtoint ptr %pstr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pstr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %channel_map.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %channel_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %channel
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp27.i = icmp eq i32 %6, 1
  %capture_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 19
  %playback_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 20
  %capture_buffer.i.sink = select i1 %cmp27.i, ptr %capture_buffer.i, ptr %playback_buffer.i
  %11 = ptrtoint ptr %capture_buffer.i.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %capture_buffer.i.sink, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 %mul.i
  %tobool23.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool23.not, label %if.end22.i.do.end41_crit_edge, label %if.end57, !prof !320

if.end22.i.do.end41_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

do.end41:                                         ; preds = %if.end22.i.do.end41_crit_edge, %rme9652_channel_buffer_location.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1894, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end57:                                         ; preds = %if.end22.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %pos
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end57
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !322

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end57
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst, i32 %count, i32 -1226833920) #20, !srcloc !327
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %count) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %dst, ptr noundef %add.ptr, i32 noundef %count) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %count, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %count, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool59.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool59.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %do.end41, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end41 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_capture_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr nocapture noundef writeonly %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %channel)
  %0 = icmp ugt i32 %channel, 25
  br i1 %0, label %rme9652_channel_buffer_location.exit.thread, label %if.end22.i, !prof !320

rme9652_channel_buffer_location.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1829, i32 noundef 9, ptr noundef null) #14
  br label %do.end

if.end22.i:                                       ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %pstr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 1
  %3 = ptrtoint ptr %pstr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pstr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %channel_map.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 30
  %7 = ptrtoint ptr %channel_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %channel
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp27.i = icmp eq i32 %6, 1
  %capture_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 19
  %playback_buffer.i = getelementptr inbounds %struct.snd_rme9652, ptr %2, i32 0, i32 20
  %capture_buffer.i.sink = select i1 %cmp27.i, ptr %capture_buffer.i, ptr %playback_buffer.i
  %11 = ptrtoint ptr %capture_buffer.i.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %capture_buffer.i.sink, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %if.end22.i.do.end_crit_edge, label %if.end23, !prof !320

if.end22.i.do.end_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %if.end22.i.do.end_crit_edge, %rme9652_channel_buffer_location.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1911, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %pos
  %13 = call ptr @memcpy(ptr %dst, ptr %add.ptr, i32 %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme9652_control_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_rme9652_control_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %creg_spdif = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %creg_spdif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %creg_spdif, align 4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.i = zext i1 %not.tobool.not.i to i32
  %and1.i = lshr i32 %3, 10
  %4 = and i32 %and1.i, 2
  %or.i = or i32 %4, %cond.i
  %and14.i = lshr i32 %3, 7
  %5 = and i32 %and14.i, 8
  %and6.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, i32 0, i32 12
  %.pn.i = select i1 %tobool.not.i, i32 %5, i32 %cond8.i
  %storemerge.in.i = or i32 %or.i, %.pn.i
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge.i, ptr %value, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_control_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and13.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, i32 0, i32 1024
  %and20.i = shl nuw nsw i32 %conv.i, 7
  %4 = and i32 %and20.i, 1024
  %cond15.pn.i = select i1 %tobool.not.i, i32 %4, i32 %cond15.i
  %5 = shl nuw nsw i32 %and.i, 9
  %and4.i = shl nuw nsw i32 %conv.i, 10
  %6 = and i32 %and4.i, 2048
  %or7.i = or i32 %5, %6
  %val.0.i = or i32 %cond15.pn.i, %or7.i
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %creg_spdif = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %creg_spdif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %creg_spdif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %8)
  %cmp = icmp ne i32 %val.0.i, %8
  %conv = zext i1 %cmp to i32
  %9 = ptrtoint ptr %creg_spdif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val.0.i, ptr %creg_spdif, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme9652_control_spdif_stream_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_rme9652_control_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %creg_spdif_stream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %creg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %creg_spdif_stream, align 4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.i = zext i1 %not.tobool.not.i to i32
  %and1.i = lshr i32 %3, 10
  %4 = and i32 %and1.i, 2
  %or.i = or i32 %4, %cond.i
  %and14.i = lshr i32 %3, 7
  %5 = and i32 %and14.i, 8
  %and6.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, i32 0, i32 12
  %.pn.i = select i1 %tobool.not.i, i32 %5, i32 %cond8.i
  %storemerge.in.i = or i32 %or.i, %.pn.i
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge.i, ptr %value, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_control_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and13.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, i32 0, i32 1024
  %and20.i = shl nuw nsw i32 %conv.i, 7
  %4 = and i32 %and20.i, 1024
  %cond15.pn.i = select i1 %tobool.not.i, i32 %4, i32 %cond15.i
  %5 = shl nuw nsw i32 %and.i, 9
  %and4.i = shl nuw nsw i32 %conv.i, 10
  %6 = and i32 %and4.i, 2048
  %or7.i = or i32 %5, %6
  %val.0.i = or i32 %cond15.pn.i, %or7.i
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %creg_spdif_stream = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %creg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %creg_spdif_stream, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %8)
  %cmp = icmp ne i32 %val.0.i, %8
  %conv = zext i1 %cmp to i32
  %9 = ptrtoint ptr %creg_spdif_stream to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val.0.i, ptr %creg_spdif_stream, align 4
  %control_register = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control_register, align 4
  %and = and i32 %11, -3585
  %or = or i32 %val.0.i, %and
  store i32 %or, ptr %control_register, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #14, !srcloc !319
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme9652_control_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_rme9652_control_spdif_mask_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %1 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_info_spdif_in(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @snd_rme9652_info_spdif_in.texts) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_spdif_in(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %control_register.i, align 4
  %and.i = lshr i32 %3, 14
  %shr.i = and i32 %and.i, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_put_spdif_in(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %playback_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_pid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not.i = icmp ne i32 %3, %5
  %6 = or i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %7 = icmp sgt i32 %6, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %tobool.not = and i1 %cmp5.not.i, %7
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %rem = urem i32 %9, 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control_register.i, align 4
  %and.i = lshr i32 %11, 14
  %shr.i = and i32 %and.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %shr.i)
  %cmp = icmp ne i32 %rem, %shr.i
  %conv = zext i1 %cmp to i32
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %and.i16 = and i32 %11, -49153
  %and1.i = shl nuw nsw i32 %rem, 14
  %or.i = or i32 %and.i16, %and1.i
  %12 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %control_register.i, align 4
  %running.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end6.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i = and i32 %or.i, -34
  %15 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %iobase.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %16) #14, !srcloc !319
  %19 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  %22 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #14, !srcloc !319
  %24 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %control_register.i, align 4
  %or.i.i = or i32 %25, 33
  store i32 %or.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %27 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %28, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3.i, i32 %26) #14, !srcloc !319
  br label %if.end5

if.end6.critedge.i:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %iobase.i4.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %iobase.i4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i4.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %31, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %29) #14, !srcloc !319
  br label %if.end5

if.end5:                                          ; preds = %if.end6.critedge.i, %if.then.i, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end5 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_spdif_out(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %control_register.i, align 4
  %and.i = lshr i32 %3, 12
  %and.lobit.i = and i32 %and.i, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.lobit.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_put_spdif_out(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %playback_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_pid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not.i = icmp ne i32 %3, %5
  %6 = or i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %7 = icmp sgt i32 %6, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %tobool.not = and i1 %cmp5.not.i, %7
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %and = and i32 %9, 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control_register.i, align 4
  %and.i = lshr i32 %11, 12
  %and.lobit.i = and i32 %and.i, 1
  %12 = xor i32 %and.lobit.i, %and
  %and.i11 = and i32 %11, -4097
  %13 = shl nuw nsw i32 %and, 12
  %and.sink.i = or i32 %and.i11, %13
  store i32 %and.sink.i, ptr %control_register.i, align 4
  %running.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i, label %if.end8.critedge.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i = and i32 %and.sink.i, -34
  %16 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %iobase.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %17) #14, !srcloc !319
  %20 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %23 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #14, !srcloc !319
  %25 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %control_register.i, align 4
  %or.i.i = or i32 %26, 33
  store i32 %or.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %28 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 %27) #14, !srcloc !319
  br label %rme9652_set_spdif_output.exit

if.end8.critedge.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.sink.i) #14
  %iobase.i5.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %iobase.i5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %32, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %30) #14, !srcloc !319
  br label %rme9652_set_spdif_output.exit

rme9652_set_spdif_output.exit:                    ; preds = %if.end8.critedge.i, %if.then3.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %rme9652_set_spdif_output.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %rme9652_set_spdif_output.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_info_sync_mode(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @snd_rme9652_info_sync_mode.texts) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_sync_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %control_register.i, align 4
  %and.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = lshr i32 %3, 4
  %and2.lobit.i = and i32 %and2.i, 1
  %retval.0.i = select i1 %tobool.not.i, i32 %and2.lobit.i, i32 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_put_sync_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %rem = urem i32 %3, 3
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %control_register.i, align 4
  %6 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %rem, label %entry.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and.i8 = and i32 %5, -8209
  br label %sw.epilog.i.sink.split

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and3.i = and i32 %5, -8209
  %or.i = or i32 %and3.i, 16
  br label %sw.epilog.i.sink.split

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or7.i = or i32 %5, 8208
  br label %sw.epilog.i.sink.split

sw.epilog.i.sink.split:                           ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %or7.i.sink = phi i32 [ %or7.i, %sw.bb5.i ], [ %or.i, %sw.bb1.i ], [ %and.i8, %sw.bb.i ]
  %7 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or7.i.sink, ptr %control_register.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.i.sink.split, %entry.sw.epilog.i_crit_edge
  %running.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i9 = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control_register.i, align 4
  br i1 %tobool.not.i9, label %if.end11.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i = and i32 %11, -34
  %12 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %iobase.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #14, !srcloc !319
  %16 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  %19 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #14, !srcloc !319
  %21 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control_register.i, align 4
  %or.i.i = or i32 %22, 33
  store i32 %or.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %24 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 %23) #14, !srcloc !319
  br label %rme9652_set_sync_mode.exit

if.end11.critedge.i:                              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %iobase.i5.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %iobase.i5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %28, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %26) #14, !srcloc !319
  br label %rme9652_set_sync_mode.exit

rme9652_set_sync_mode.exit:                       ; preds = %if.end11.critedge.i, %if.then.i
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = lshr i32 %5, 4
  %and2.lobit.i = and i32 %and2.i, 1
  %retval.0.i = select i1 %tobool.not.i, i32 %and2.lobit.i, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %retval.0.i)
  %cmp = icmp ne i32 %rem, %retval.0.i
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_info_sync_pref(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ss_channels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %3)
  %cmp = icmp eq i8 %3, 26
  %cond = select i1 %cmp, i32 4, i32 3
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %cond, ptr noundef nonnull @snd_rme9652_info_sync_pref.texts) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_sync_pref(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %control_register.i, align 4
  %and.i = lshr i32 %3, 16
  %4 = and i32 %and.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.snd_rme9652_get_sync_pref, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_put_sync_pref(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %playback_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_pid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not.i = icmp ne i32 %3, %5
  %6 = or i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %7 = icmp sgt i32 %6, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %tobool.not = and i1 %cmp5.not.i, %7
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ss_channels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %9)
  %cmp = icmp eq i8 %9, 26
  %cond = select i1 %cmp, i32 4, i32 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %rem = urem i32 %11, %cond
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %control_register.i, align 4
  %and.i = lshr i32 %13, 16
  %14 = and i32 %and.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.snd_rme9652_put_sync_pref, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %switch.load)
  %cmp3 = icmp ne i32 %rem, %switch.load
  %conv4 = zext i1 %cmp3 to i32
  %and.i17 = and i32 %13, -196609
  %16 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i17, ptr %control_register.i, align 4
  %17 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %rem, label %if.end.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb8.i
    i32 2, label %sw.bb2.i18
    i32 3, label %sw.bb5.i
  ]

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb2.i18:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or4.i = or i32 %and.i17, 65536
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or7.i = or i32 %and.i17, 131072
  br label %sw.epilog.sink.split.i

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or10.i = or i32 %13, 196608
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb8.i, %sw.bb5.i, %sw.bb2.i18
  %or10.sink.i = phi i32 [ %or10.i, %sw.bb8.i ], [ %or7.i, %sw.bb5.i ], [ %or4.i, %sw.bb2.i18 ]
  %18 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or10.sink.i, ptr %control_register.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end.sw.epilog.i_crit_edge
  %running.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control_register.i, align 4
  br i1 %tobool.not.i, label %if.end14.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i = and i32 %22, -34
  %23 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %iobase.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %24) #14, !srcloc !319
  %27 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  %30 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #14, !srcloc !319
  %32 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %control_register.i, align 4
  %or.i.i = or i32 %33, 33
  store i32 %or.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %35 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %36, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3.i, i32 %34) #14, !srcloc !319
  br label %rme9652_set_sync_pref.exit

if.end14.critedge.i:                              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %37 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  %iobase.i4.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %iobase.i4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase.i4.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %39, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %37) #14, !srcloc !319
  br label %rme9652_set_sync_pref.exit

rme9652_set_sync_pref.exit:                       ; preds = %if.end14.critedge.i, %if.then.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %rme9652_set_sync_pref.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv4, %rme9652_set_sync_pref.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_rme9652_info_thru(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 8
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ss_channels, align 1
  %conv = zext i8 %4 to i32
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_thru(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %thru_bits1 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %thru_bits1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %thru_bits1, align 4
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ss_channels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not = icmp eq i8 %5, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = lshr i32 %3, %k.010
  %7 = and i32 %6, 1
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %k.010
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %k.010, 1
  %9 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ss_channels, align 1
  %conv = zext i8 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_put_thru(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %playback_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_pid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not.i = icmp ne i32 %3, %5
  %6 = or i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %7 = icmp sgt i32 %6, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %tobool.not = and i1 %cmp5.not.i, %7
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ss_channels, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp48.not = icmp eq i8 %9, 0
  br i1 %cmp48.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %thru_bits.050 = phi i32 [ 0, %for.body.lr.ph ], [ %thru_bits.1, %for.body.for.body_crit_edge ]
  %chn.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %chn.049
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  %shl = shl nuw i32 1, %chn.049
  %or = select i1 %tobool2.not, i32 0, i32 %shl
  %thru_bits.1 = or i32 %or, %thru_bits.050
  %inc = add nuw nsw i32 %chn.049, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %thru_bits.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %thru_bits.1, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %thru_bits5 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %thru_bits5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %thru_bits5, align 4
  %xor = xor i32 %13, %thru_bits.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool6 = icmp ne i32 %xor, 0
  br i1 %tobool6, label %for.cond8.preheader, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

for.cond8.preheader:                              ; preds = %for.end
  %14 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ss_channels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1152.not = icmp eq i8 %15, 0
  br i1 %cmp1152.not, label %for.cond8.preheader.if.end23_crit_edge, label %for.cond8.preheader.for.body13_crit_edge

for.cond8.preheader.for.body13_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body13

for.cond8.preheader.if.end23_crit_edge:           ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

for.body13:                                       ; preds = %for.inc20.for.body13_crit_edge, %for.cond8.preheader.for.body13_crit_edge
  %chn.153 = phi i32 [ %inc21, %for.inc20.for.body13_crit_edge ], [ 0, %for.cond8.preheader.for.body13_crit_edge ]
  %shl14 = shl nuw i32 1, %chn.153
  %and = and i32 %shl14, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.body13.for.inc20_crit_edge, label %if.end17

for.body13.for.inc20_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc20

if.end17:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  %and19 = and i32 %shl14, %thru_bits.0.lcssa
  tail call fastcc void @rme9652_set_thru(ptr noundef %1, i32 noundef %chn.153, i32 noundef %and19)
  br label %for.inc20

for.inc20:                                        ; preds = %if.end17, %for.body13.for.inc20_crit_edge
  %inc21 = add nuw nsw i32 %chn.153, 1
  %16 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ss_channels, align 1
  %conv10 = zext i8 %17 to i32
  %cmp11 = icmp ult i32 %inc21, %conv10
  br i1 %cmp11, label %for.inc20.for.body13_crit_edge, label %for.inc20.if.end23_crit_edge

for.inc20.if.end23_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

for.inc20.for.body13_crit_edge:                   ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body13

if.end23:                                         ; preds = %for.inc20.if.end23_crit_edge, %for.cond8.preheader.if.end23_crit_edge, %for.end.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  %lnot.ext = zext i1 %tobool6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end23 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme9652_info_spdif_rate(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
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
  store i32 96000, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_spdif_rate(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %call = tail call fastcc i32 @rme9652_spdif_sample_rate(ptr noundef %1)
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_info_adat_sync(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_rme9652_info_adat_sync.texts) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_adat_sync(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme9652_get_adat_sync, i32 0, i32 %1
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep14 = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme9652_get_adat_sync.113, i32 0, i32 %1
  %6 = ptrtoint ptr %switch.gep14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load15 = load i32, ptr %switch.gep14, align 4
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !316
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %and = and i32 %10, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %and3 = and i32 %10, %switch.load15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, i32 0, i32 2
  %or = or i32 %cond5, %cond
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_tc_valid(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #14, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %5 = lshr i32 %4, 3
  %and.lobit = and i32 %5, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.lobit, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_passthru(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %passthru = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %passthru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %passthru, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_put_passthru(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %playback_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_pid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not.i = icmp ne i32 %3, %5
  %6 = or i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %7 = icmp sgt i32 %6, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %tobool.not = and i1 %cmp5.not.i, %7
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %passthru = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %passthru to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %passthru, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp ne i32 %11, %13
  %conv = zext i1 %cmp to i32
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %14 = ptrtoint ptr %passthru to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %passthru, align 4
  %thru_bits7.i2.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 7
  %iobase.i49.i3.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  br i1 %tobool.not.i, label %if.then4.for.body5.i.i_crit_edge, label %if.then4.for.body.i.i_crit_edge

if.then4.for.body.i.i_crit_edge:                  ; preds = %if.then4
  br label %for.body.i.i

if.then4.for.body5.i.i_crit_edge:                 ; preds = %if.then4
  br label %for.body5.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then4.for.body.i.i_crit_edge
  %i.054.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.054.i.i
  %15 = ptrtoint ptr %thru_bits7.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %thru_bits7.i2.i, align 4
  %or.i.i = or i32 %16, %shl.i.i
  store i32 %or.i.i, ptr %thru_bits7.i2.i, align 4
  %mul.i.i = shl i32 %i.054.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %iobase.i49.i3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i49.i3.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #14, !srcloc !319
  %inc.i.i = add nuw nsw i32 %i.054.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 26
  br i1 %exitcond.not.i.i, label %rme9652_set_thru.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

rme9652_set_thru.exit.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16399, ptr %control_register.i, align 4
  tail call fastcc void @rme9652_reset_hw_pointer(ptr noundef %1) #14
  %20 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %23 = ptrtoint ptr %iobase.i49.i3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i49.i3.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #14, !srcloc !319
  br label %rme9652_set_passthru.exit

for.body5.i.i:                                    ; preds = %for.body5.i.i.for.body5.i.i_crit_edge, %if.then4.for.body5.i.i_crit_edge
  %i.155.i.i = phi i32 [ %inc11.i.i, %for.body5.i.i.for.body5.i.i_crit_edge ], [ 0, %if.then4.for.body5.i.i_crit_edge ]
  %shl6.i.i = shl nuw nsw i32 1, %i.155.i.i
  %neg.i.i = xor i32 %shl6.i.i, -1
  %25 = ptrtoint ptr %thru_bits7.i2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %thru_bits7.i2.i, align 4
  %and.i.i = and i32 %26, %neg.i.i
  store i32 %and.i.i, ptr %thru_bits7.i2.i, align 4
  %mul8.i.i = shl i32 %i.155.i.i, 2
  %add9.i.i = add nuw nsw i32 %mul8.i.i, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %iobase.i49.i3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i49.i3.i, align 4
  %add.ptr.i50.i.i = getelementptr i8, ptr %28, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i.i, i32 0) #14, !srcloc !319
  %inc11.i.i = add nuw nsw i32 %i.155.i.i, 1
  %exitcond57.not.i.i = icmp eq i32 %inc11.i.i, 26
  br i1 %exitcond57.not.i.i, label %rme9652_set_thru.exit4.i, label %for.body5.i.i.for.body5.i.i_crit_edge

for.body5.i.i.for.body5.i.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i.i

rme9652_set_thru.exit4.i:                         ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %control_register.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %control_register.i.i, align 4
  %and.i5.i = and i32 %30, -34
  store i32 %and.i5.i, ptr %control_register.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i5.i) #14
  %32 = ptrtoint ptr %iobase.i49.i3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i49.i3.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 %31) #14, !srcloc !319
  br label %rme9652_set_passthru.exit

rme9652_set_passthru.exit:                        ; preds = %rme9652_set_thru.exit4.i, %rme9652_set_thru.exit.i
  %.sink.i = phi i32 [ 0, %rme9652_set_thru.exit4.i ], [ 1, %rme9652_set_thru.exit.i ]
  %34 = ptrtoint ptr %passthru to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i, ptr %passthru, align 4
  br label %if.end6

if.end6:                                          ; preds = %rme9652_set_passthru.exit, %if.end.if.end6_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end6 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rme9652_spdif_sample_rate(ptr nocapture noundef %s) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %s, i32 0, i32 4
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_rev = getelementptr inbounds %struct.snd_rme9652, ptr %s, i32 0, i32 27
  %4 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp = icmp eq i32 %5, 15
  br i1 %cmp, label %if.then1, label %if.end41

if.then1:                                         ; preds = %if.end
  %control_register.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %s, i32 0, i32 6
  %6 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control_register.i.i, align 4
  %or.i.i = or i32 %7, 524288
  store i32 %or.i.i, ptr %control_register.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %8) #14, !srcloc !319
  tail call fastcc void @rme9652_spdif_write_byte(ptr noundef %s, i32 noundef 32) #14
  tail call fastcc void @rme9652_spdif_write_byte(ptr noundef %s, i32 noundef 30) #14
  %11 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %control_register.i.i, align 4
  %and.i.i = and i32 %12, -524289
  store i32 %and.i.i, ptr %control_register.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3.i, i32 %13) #14, !srcloc !319
  %16 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %control_register.i.i, align 4
  %or.i5.i = or i32 %17, 524288
  store i32 %or.i5.i, ptr %control_register.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i5.i) #14
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %20, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 %18) #14, !srcloc !319
  tail call fastcc void @rme9652_spdif_write_byte(ptr noundef %s, i32 noundef 33) #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then1
  %i.011.i.i = phi i32 [ 0, %if.then1 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %val.010.i.i = phi i32 [ 0, %if.then1 ], [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mask.09.i.i = phi i32 [ 128, %if.then1 ], [ %35, %for.body.i.i.for.body.i.i_crit_edge ]
  %21 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control_register.i.i, align 4
  %or.i.i.i = or i32 %22, 1048576
  store i32 %or.i.i.i, ptr %control_register.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #14
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %23) #14, !srcloc !319
  %26 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  %or.i9.i = select i1 %tobool.not.i.i, i32 0, i32 %mask.09.i.i
  %spec.select.i.i = or i32 %or.i9.i, %val.010.i.i
  %30 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %control_register.i.i, align 4
  %and.i.i.i = and i32 %31, -1048577
  store i32 %and.i.i.i, ptr %control_register.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #14
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %34, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i.i, i32 %32) #14, !srcloc !319
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %35 = lshr i32 %mask.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %rme9652_spdif_read_codec.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

rme9652_spdif_read_codec.exit:                    ; preds = %for.body.i.i
  %36 = ptrtoint ptr %control_register.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %control_register.i.i, align 4
  %and.i11.i = and i32 %37, -524289
  store i32 %and.i11.i, ptr %control_register.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %38 = tail call i32 @llvm.bswap.i32(i32 %and.i11.i) #14
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %40, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 %38) #14, !srcloc !319
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp3.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %cmp3.not, label %rme9652_spdif_read_codec.exit.if.else29_crit_edge, label %if.end5

rme9652_spdif_read_codec.exit.if.else29_crit_edge: ; preds = %rme9652_spdif_read_codec.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else29

if.end5:                                          ; preds = %rme9652_spdif_read_codec.exit
  %div = sdiv i32 3072000, %spec.select.i.i
  %41 = add nsw i32 %div, -30401
  call void @__sanitizer_cov_trace_const_cmp4(i32 3199, i32 %41)
  %42 = icmp ult i32 %41, 3199
  br i1 %42, label %if.end5.cleanup_crit_edge, label %if.else9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else9:                                         ; preds = %if.end5
  %43 = add nsw i32 %div, -41901
  call void @__sanitizer_cov_trace_const_cmp4(i32 4099, i32 %43)
  %44 = icmp ult i32 %43, 4099
  br i1 %44, label %if.else9.cleanup_crit_edge, label %if.else14

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else14:                                        ; preds = %if.else9
  %45 = add nsw i32 %div, -46001
  call void @__sanitizer_cov_trace_const_cmp4(i32 4399, i32 %45)
  %46 = icmp ult i32 %45, 4399
  br i1 %46, label %if.else14.cleanup_crit_edge, label %if.else19

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else19:                                        ; preds = %if.else14
  %47 = add nsw i32 %div, -60801
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %47)
  %48 = icmp ult i32 %47, 6399
  br i1 %48, label %if.else19.cleanup_crit_edge, label %if.else24

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else24:                                        ; preds = %if.else19
  %49 = add nsw i32 %div, -83701
  call void @__sanitizer_cov_trace_const_cmp4(i32 8299, i32 %49)
  %50 = icmp ult i32 %49, 8299
  br i1 %50, label %if.else24.cleanup_crit_edge, label %if.else24.if.else29_crit_edge

if.else24.if.else29_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else29

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else29:                                        ; preds = %if.else24.if.else29_crit_edge, %rme9652_spdif_read_codec.exit.if.else29_crit_edge
  %y.07782879297 = phi i32 [ %div, %if.else24.if.else29_crit_edge ], [ 0, %rme9652_spdif_read_codec.exit.if.else29_crit_edge ]
  %51 = add nsw i32 %y.07782879297, -92001
  call void @__sanitizer_cov_trace_const_cmp4(i32 7999, i32 %51)
  %52 = icmp ult i32 %51, 7999
  %spec.select = select i1 %52, i32 96000, i32 0
  br label %cleanup

if.end41:                                         ; preds = %if.end
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #14, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %56 = and i32 %55, 49153
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %shr = lshr exact i32 %57, 22
  %switch.maskindex = trunc i32 %shr to i8
  %switch.shifted = lshr i8 -7, %switch.maskindex
  %58 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %switch.lobit.not = icmp eq i8 %58, 0
  br i1 %switch.lobit.not, label %do.end, label %switch.lookup

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %card = getelementptr inbounds %struct.snd_rme9652, ptr %s, i32 0, i32 31
  %59 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 27
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  %card_name = getelementptr inbounds %struct.snd_rme9652, ptr %s, i32 0, i32 10
  %63 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.57, ptr noundef %64, i32 noundef %57) #17
  br label %cleanup

switch.lookup:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.rme9652_spdif_sample_rate, i32 0, i32 %shr
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %if.else29, %if.else24.cleanup_crit_edge, %if.else19.cleanup_crit_edge, %if.else14.cleanup_crit_edge, %if.else9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %entry.cleanup_crit_edge ], [ 32000, %if.end5.cleanup_crit_edge ], [ 44100, %if.else9.cleanup_crit_edge ], [ 48000, %if.else14.cleanup_crit_edge ], [ 64000, %if.else19.cleanup_crit_edge ], [ 88200, %if.else24.cleanup_crit_edge ], [ %spec.select, %if.else29 ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rme9652_spdif_write_byte(ptr nocapture noundef %rme9652, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 6
  %iobase.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %rme9652, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %mask.019 = phi i32 [ 128, %entry ], [ %20, %if.end.for.body_crit_edge ]
  %and = and i32 %mask.019, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control_register.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %or.i = or i32 %1, 2097152
  %2 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %4 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #14, !srcloc !319
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %and.i = and i32 %1, -2097153
  %6 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %8 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 %7) #14, !srcloc !319
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control_register.i, align 4
  %or.i10 = or i32 %11, 1048576
  store i32 %or.i10, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i10) #14
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %12) #14, !srcloc !319
  %15 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %control_register.i, align 4
  %and.i15 = and i32 %16, -1048577
  store i32 %and.i15, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i15) #14
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 %17) #14, !srcloc !319
  %inc = add nuw nsw i32 %i.020, 1
  %20 = lshr i32 %mask.019, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_info_adat1_in(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_rme9652_info_adat1_in.texts) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_get_adat1_in(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %control_register.i, align 4
  %and.i = lshr i32 %3, 22
  %and.lobit.i = and i32 %and.i, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.lobit.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme9652_put_adat1_in(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %playback_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %playback_pid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_pid.i, align 4
  %capture_pid.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %capture_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_pid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not.i = icmp ne i32 %3, %5
  %6 = or i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %7 = icmp sgt i32 %6, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %tobool.not = and i1 %cmp5.not.i, %7
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %rem = and i32 %9, 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %control_register.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control_register.i, align 4
  %and.i = lshr i32 %11, 22
  %and.lobit.i = and i32 %and.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %and.lobit.i)
  %.not = icmp eq i32 %rem, %and.lobit.i
  %12 = xor i32 %and.lobit.i, %rem
  br i1 %.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %and.i15 = and i32 %11, -4194305
  %13 = shl nuw nsw i32 %rem, 22
  %and.sink.i = or i32 %and.i15, %13
  %14 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.sink.i, ptr %control_register.i, align 4
  %running.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i = icmp eq i32 %16, 0
  br i1 %tobool2.not.i, label %if.end8.critedge.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i = and i32 %and.sink.i, -34
  %17 = ptrtoint ptr %control_register.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %iobase.i.i.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %18) #14, !srcloc !319
  %21 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  %24 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #14, !srcloc !319
  %26 = ptrtoint ptr %control_register.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %control_register.i, align 4
  %or.i.i = or i32 %27, 33
  store i32 %or.i.i, ptr %control_register.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %29 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %30, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 %28) #14, !srcloc !319
  br label %if.end5

if.end8.critedge.i:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.sink.i) #14
  %iobase.i5.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %iobase.i5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %31) #14, !srcloc !319
  br label %if.end5

if.end5:                                          ; preds = %if.end8.critedge.i, %if.then3.i, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end5 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_rme9652_proc_read(ptr nocapture noundef readonly %entry1, ptr noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %thru_bits2 = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %thru_bits2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %thru_bits2, align 4
  %iobase.i = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !316
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %card_name = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card_name, align 4
  %card = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %add = add i32 %15, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.65, ptr noundef %11, i32 noundef %add) #14
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %capture_buffer = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %capture_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %capture_buffer, align 4
  %playback_buffer = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %playback_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %playback_buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.66, ptr noundef %19, ptr noundef %21) #14
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %irq = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %port = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i, align 4
  %30 = ptrtoint ptr %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.67, i32 noundef %25, i32 noundef %27, i32 noundef %30) #14
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %control_register = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %control_register, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.68, i32 noundef %34) #14
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.69) #14
  %37 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %control_register, align 4
  %and = lshr i32 %38, 1
  %shr = and i32 %and, 7
  %shl = shl nuw nsw i32 64, %shr
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  %period_bytes = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 14
  %41 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %period_bytes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.70, i32 noundef %shl, i32 noundef %42) #14
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  %call13 = tail call fastcc i32 @rme9652_hw_pointer(ptr noundef %1)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.71, i32 noundef %call13) #14
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  %passthru = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 26
  %47 = ptrtoint ptr %passthru to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %passthru, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not = icmp eq i32 %48, 0
  %cond = select i1 %tobool.not, ptr @.str.74, ptr @.str.73
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.72, ptr noundef nonnull %cond) #14
  %49 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %control_register, align 4
  %and16 = and i32 %50, 8208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp = icmp eq i32 %and16, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.75) #14
  %53 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %control_register, align 4
  %and35 = lshr i32 %54, 16
  %55 = and i32 %and35, 3
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %55, label %if.then33.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
    i32 2, label %sw.bb39
    i32 3, label %sw.bb41
  ]

if.else:                                          ; preds = %entry
  %and19 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %if.else
  %and22 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  br i1 %tobool23.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull @.str.76) #14
  br label %if.end44

if.else26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull @.str.77) #14
  br label %if.end44

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.78) #14
  br label %if.end44

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %62, ptr noundef nonnull @.str.79) #14
  br label %if.end44

sw.bb37:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %64, ptr noundef nonnull @.str.80) #14
  br label %if.end44

sw.bb39:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %66, ptr noundef nonnull @.str.81) #14
  br label %if.end44

sw.bb41:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %68, ptr noundef nonnull @.str.82) #14
  br label %if.end44

if.then33.unreachabledefault:                     ; preds = %if.then
  unreachable

if.end44:                                         ; preds = %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb, %if.else28, %if.else26, %if.then24
  %hw_rev = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 27
  %69 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %70)
  %cmp45 = icmp sgt i32 %70, 14
  br i1 %cmp45, label %if.then46, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buffer, align 4
  %73 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %control_register, align 4
  %and49 = and i32 %74, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.85, ptr @.str.49
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %72, ptr noundef nonnull @.str.84, ptr noundef nonnull %cond51) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end44.if.end52_crit_edge
  %75 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %76, ptr noundef nonnull @.str.69) #14
  %77 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %control_register, align 4
  %and55 = lshr i32 %78, 14
  %shr56 = and i32 %and55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr56)
  %.not = icmp eq i32 %shr56, 3
  br i1 %.not, label %if.end52.sw.epilog66_crit_edge, label %switch.lookup

if.end52.sw.epilog66_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog66

switch.lookup:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.snd_rme9652_proc_read, i32 0, i32 %shr56
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %switch.lookup, %if.end52.sw.epilog66_crit_edge
  %.str.89.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.89, %if.end52.sw.epilog66_crit_edge ]
  %80 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %81, ptr noundef nonnull %.str.89.sink) #14
  %82 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %control_register, align 4
  %and68 = and i32 %83, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %.str.91..str.90 = select i1 %tobool69.not, ptr @.str.91, ptr @.str.90
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull %.str.91..str.90) #14
  %86 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %control_register, align 4
  %and76 = and i32 %87, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %.str.93.sink = select i1 %tobool77.not, ptr @.str.93, ptr @.str.92
  %88 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %89, ptr noundef nonnull %.str.93.sink) #14
  %90 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %control_register, align 4
  %and84 = and i32 %91, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %.str.95.sink = select i1 %tobool85.not, ptr @.str.95, ptr @.str.94
  %92 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %93, ptr noundef nonnull %.str.95.sink) #14
  %94 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %control_register, align 4
  %and92 = and i32 %95, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %.str.97.sink = select i1 %tobool93.not, ptr @.str.97, ptr @.str.96
  %96 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %97, ptr noundef nonnull %.str.97.sink) #14
  %call99 = tail call fastcc i32 @rme9652_spdif_sample_rate(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then101, label %if.else103

if.then101:                                       ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %99, ptr noundef nonnull @.str.98) #14
  br label %if.end110

if.else103:                                       ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp104 = icmp eq i32 %call99, 0
  %100 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buffer, align 4
  br i1 %cmp104, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %101, ptr noundef nonnull @.str.99) #14
  br label %if.end110

if.else107:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %101, ptr noundef nonnull @.str.100, i32 noundef %call99) #14
  br label %if.end110

if.end110:                                        ; preds = %if.else107, %if.then105, %if.then101
  %102 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %103, ptr noundef nonnull @.str.69) #14
  %104 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buffer, align 4
  %106 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %control_register, align 4
  %and.i = and i32 %107, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %108 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iobase.i, align 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  %111 = and i32 %110, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool5.not.i = icmp eq i32 %111, 0
  %cond.i = select i1 %tobool5.not.i, i32 88200, i32 96000
  %cond6.i = select i1 %tobool5.not.i, i32 44100, i32 48000
  %retval.0.i = select i1 %tobool.not.i, i32 %cond6.i, i32 %cond.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %105, ptr noundef nonnull @.str.101, i32 noundef %retval.0.i) #14
  %and115 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.else121, label %if.then117

if.then117:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  %and114 = and i32 %7, 262144
  %112 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool119.not = icmp eq i32 %and114, 0
  %cond120 = select i1 %tobool119.not, ptr @.str.60, ptr @.str.103
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %113, ptr noundef nonnull @.str.102, ptr noundef nonnull %cond120) #14
  br label %if.end123

if.else121:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  %114 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %115, ptr noundef nonnull @.str.104) #14
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.then117
  %and125 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.else131, label %if.then127

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %and124 = and i32 %7, 131072
  %116 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool129.not = icmp eq i32 %and124, 0
  %cond130 = select i1 %tobool129.not, ptr @.str.60, ptr @.str.103
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %117, ptr noundef nonnull @.str.105, ptr noundef nonnull %cond130) #14
  br label %if.end133

if.else131:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %118 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %119, ptr noundef nonnull @.str.106) #14
  br label %if.end133

if.end133:                                        ; preds = %if.else131, %if.then127
  %and135 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.else141, label %if.then137

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  %and134 = and i32 %7, 65536
  %120 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool139.not = icmp eq i32 %and134, 0
  %cond140 = select i1 %tobool139.not, ptr @.str.60, ptr @.str.103
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %121, ptr noundef nonnull @.str.107, ptr noundef nonnull %cond140) #14
  br label %if.end143

if.else141:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %123, ptr noundef nonnull @.str.108) #14
  br label %if.end143

if.end143:                                        ; preds = %if.else141, %if.then137
  %124 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %125, ptr noundef nonnull @.str.69) #14
  %126 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %buffer, align 4
  %and146 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  %cond148 = select i1 %tobool147.not, ptr @.str.74, ptr @.str.73
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %127, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond148) #14
  %128 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %129, ptr noundef nonnull @.str.110) #14
  %ss_channels = getelementptr inbounds %struct.snd_rme9652, ptr %1, i32 0, i32 16
  %130 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ss_channels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp150263.not = icmp eq i8 %131, 0
  br i1 %cmp150263.not, label %if.end143.for.end_crit_edge, label %if.end143.for.body_crit_edge

if.end143.for.body_crit_edge:                     ; preds = %if.end143
  br label %for.body

if.end143.for.end_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end143.for.body_crit_edge
  %i.0264 = phi i32 [ %add160, %for.inc.for.body_crit_edge ], [ 0, %if.end143.for.body_crit_edge ]
  %shl152 = shl nuw i32 1, %i.0264
  %and153 = and i32 %shl152, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %132 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %buffer, align 4
  %add160 = add nuw nsw i32 %i.0264, 1
  %.str.112..str.111 = select i1 %tobool154.not, ptr @.str.112, ptr @.str.111
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %133, ptr noundef nonnull %.str.112..str.111, i32 noundef %add160) #14
  %134 = and i32 %add160, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp163 = icmp eq i32 %134, 0
  br i1 %cmp163, label %if.then165, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then165:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %135 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %136, ptr noundef nonnull @.str.69) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then165, %for.body.for.inc_crit_edge
  %137 = ptrtoint ptr %ss_channels to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ss_channels, align 1
  %conv = zext i8 %138 to i32
  %cmp150 = icmp ult i32 %add160, %conv
  br i1 %cmp150, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end143.for.end_crit_edge
  %139 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %140, ptr noundef nonnull @.str.69) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !58, !60, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !286, !288, !290, !292, !294, !296, !298, !300, !302}
!llvm.named.register.sp = !{!304}
!llvm.module.flags = !{!305, !306, !307, !308, !309, !310, !311, !312}
!llvm.ident = !{!313}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../sound/pci/rme9652/rme9652.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype242, !1, !"__UNIQUE_ID_indextype242", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_index243, !4, !"__UNIQUE_ID_index243", i1 false, i1 false}
!4 = !{!"../sound/pci/rme9652/rme9652.c", i32 32, i32 1}
!5 = !{ptr @__param_id, !6, !"__param_id", i1 false, i1 false}
!6 = !{!"../sound/pci/rme9652/rme9652.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_idtype244, !6, !"__UNIQUE_ID_idtype244", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_id245, !9, !"__UNIQUE_ID_id245", i1 false, i1 false}
!9 = !{!"../sound/pci/rme9652/rme9652.c", i32 34, i32 1}
!10 = !{ptr @__param_enable, !11, !"__param_enable", i1 false, i1 false}
!11 = !{!"../sound/pci/rme9652/rme9652.c", i32 35, i32 1}
!12 = !{ptr @__UNIQUE_ID_enabletype246, !11, !"__UNIQUE_ID_enabletype246", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable247, !14, !"__UNIQUE_ID_enable247", i1 false, i1 false}
!14 = !{!"../sound/pci/rme9652/rme9652.c", i32 36, i32 1}
!15 = !{ptr @__param_precise_ptr, !16, !"__param_precise_ptr", i1 false, i1 false}
!16 = !{!"../sound/pci/rme9652/rme9652.c", i32 37, i32 1}
!17 = !{ptr @__UNIQUE_ID_precise_ptrtype248, !16, !"__UNIQUE_ID_precise_ptrtype248", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_precise_ptr249, !19, !"__UNIQUE_ID_precise_ptr249", i1 false, i1 false}
!19 = !{!"../sound/pci/rme9652/rme9652.c", i32 38, i32 1}
!20 = !{ptr @__UNIQUE_ID_author250, !21, !"__UNIQUE_ID_author250", i1 false, i1 false}
!21 = !{!"../sound/pci/rme9652/rme9652.c", i32 39, i32 1}
!22 = !{ptr @__UNIQUE_ID_description251, !23, !"__UNIQUE_ID_description251", i1 false, i1 false}
!23 = !{!"../sound/pci/rme9652/rme9652.c", i32 40, i32 1}
!24 = !{ptr @__UNIQUE_ID_file252, !25, !"__UNIQUE_ID_file252", i1 false, i1 false}
!25 = !{!"../sound/pci/rme9652/rme9652.c", i32 41, i32 1}
!26 = !{ptr @__UNIQUE_ID_license253, !25, !"__UNIQUE_ID_license253", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_snd_rme9652__256_2595_rme9652_driver_init6, !28, !"__initcall__kmod_snd_rme9652__256_2595_rme9652_driver_init6", i1 false, i1 false}
!28 = !{!"../sound/pci/rme9652/rme9652.c", i32 2595, i32 1}
!29 = !{ptr @__exitcall_rme9652_driver_exit, !28, !"__exitcall_rme9652_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!32 = !{ptr @index, !33, !"index", i1 false, i1 false}
!33 = !{!"../sound/pci/rme9652/rme9652.c", i32 26, i32 12}
!34 = !{ptr @__param_str_id, !6, !"__param_str_id", i1 false, i1 false}
!35 = !{ptr @__param_arr_id, !6, !"__param_arr_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/pci/rme9652/rme9652.c", i32 27, i32 14}
!38 = !{ptr @__param_str_enable, !11, !"__param_str_enable", i1 false, i1 false}
!39 = !{ptr @__param_arr_enable, !11, !"__param_arr_enable", i1 false, i1 false}
!40 = !{ptr @enable, !41, !"enable", i1 false, i1 false}
!41 = !{!"../sound/pci/rme9652/rme9652.c", i32 28, i32 13}
!42 = !{ptr @__param_str_precise_ptr, !16, !"__param_str_precise_ptr", i1 false, i1 false}
!43 = !{ptr @__param_arr_precise_ptr, !16, !"__param_arr_precise_ptr", i1 false, i1 false}
!44 = !{ptr @precise_ptr, !45, !"precise_ptr", i1 false, i1 false}
!45 = !{!"../sound/pci/rme9652/rme9652.c", i32 29, i32 13}
!46 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rme9652_driver, !48, !"rme9652_driver", i1 false, i1 false}
!48 = !{!"../sound/pci/rme9652/rme9652.c", i32 2589, i32 26}
!49 = !{ptr @snd_rme9652_ids, !50, !"snd_rme9652_ids", i1 false, i1 false}
!50 = !{!"../sound/pci/rme9652/rme9652.c", i32 287, i32 35}
!51 = !{ptr @snd_rme9652_probe.dev, !52, !"dev", i1 false, i1 false}
!52 = !{!"../sound/pci/rme9652/rme9652.c", i32 2551, i32 13}
!53 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/rme9652/rme9652.c", i32 2579, i32 26}
!55 = !{ptr @snd_rme9652_create.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../sound/pci/rme9652/rme9652.c", i32 2442, i32 2}
!57 = !{ptr @.str.2, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.3, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/rme9652/rme9652.c", i32 2444, i32 33}
!60 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/rme9652/rme9652.c", i32 2450, i32 3}
!62 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.7, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @snd_rme9652_create._entry, !61, !"_entry", i1 false, i1 false}
!67 = !{ptr @snd_rme9652_create._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/rme9652/rme9652.c", i32 2457, i32 3}
!70 = !{ptr @snd_rme9652_create._entry.9, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @snd_rme9652_create._entry_ptr.11, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/rme9652/rme9652.c", i32 2485, i32 24}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/rme9652/rme9652.c", i32 2487, i32 25}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/rme9652/rme9652.c", i32 2489, i32 25}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/rme9652/rme9652.c", i32 2495, i32 24}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/rme9652/rme9652.c", i32 2499, i32 24}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/rme9652/rme9652.c", i32 2500, i32 24}
!84 = !{ptr @.str.18, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/rme9652/rme9652.c", i32 2506, i32 25}
!86 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/rme9652/rme9652.c", i32 2508, i32 25}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/rme9652/rme9652.c", i32 1730, i32 3}
!90 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @snd_rme9652_initialize_memory._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @snd_rme9652_initialize_memory._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @snd_rme9652_playback_ops, !94, !"snd_rme9652_playback_ops", i1 false, i1 false}
!94 = !{!"../sound/pci/rme9652/rme9652.c", i32 2365, i32 33}
!95 = !{ptr @snd_rme9652_playback_subinfo, !96, !"snd_rme9652_playback_subinfo", i1 false, i1 false}
!96 = !{!"../sound/pci/rme9652/rme9652.c", i32 2145, i32 38}
!97 = !{ptr @hw_constraints_period_sizes, !98, !"hw_constraints_period_sizes", i1 false, i1 false}
!98 = !{!"../sound/pci/rme9652/rme9652.c", i32 2194, i32 48}
!99 = !{ptr @period_sizes, !100, !"period_sizes", i1 false, i1 false}
!100 = !{!"../sound/pci/rme9652/rme9652.c", i32 2192, i32 27}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/rme9652/rme9652.c", i32 374, i32 5}
!103 = !{ptr @.str.25, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rme9652_hw_pointer._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @rme9652_hw_pointer._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/rme9652/rme9652.c", i32 385, i32 5}
!108 = !{ptr @rme9652_hw_pointer._entry.26, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rme9652_hw_pointer._entry_ptr.28, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @channel_map_9652_ds, !111, !"channel_map_9652_ds", i1 false, i1 false}
!111 = !{!"../sound/pci/rme9652/rme9652.c", i32 263, i32 19}
!112 = !{ptr @channel_map_9636_ds, !113, !"channel_map_9636_ds", i1 false, i1 false}
!113 = !{!"../sound/pci/rme9652/rme9652.c", i32 272, i32 19}
!114 = !{ptr @channel_map_9652_ss, !115, !"channel_map_9652_ss", i1 false, i1 false}
!115 = !{!"../sound/pci/rme9652/rme9652.c", i32 250, i32 19}
!116 = !{ptr @channel_map_9636_ss, !117, !"channel_map_9636_ss", i1 false, i1 false}
!117 = !{!"../sound/pci/rme9652/rme9652.c", i32 255, i32 19}
!118 = !{ptr @.str.29, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/rme9652/rme9652.c", i32 2087, i32 3}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!122 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.31, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!125 = !{ptr @.str.32, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!127 = !{ptr @snd_rme9652_capture_ops, !128, !"snd_rme9652_capture_ops", i1 false, i1 false}
!128 = !{!"../sound/pci/rme9652/rme9652.c", i32 2378, i32 33}
!129 = !{ptr @snd_rme9652_capture_subinfo, !130, !"snd_rme9652_capture_subinfo", i1 false, i1 false}
!130 = !{!"../sound/pci/rme9652/rme9652.c", i32 2169, i32 38}
!131 = !{ptr @.str.33, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/rme9652/rme9652.c", i32 1442, i32 11}
!133 = !{ptr @.str.34, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/rme9652/rme9652.c", i32 1450, i32 11}
!135 = !{ptr @.str.35, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/rme9652/rme9652.c", i32 1458, i32 11}
!137 = !{ptr @.str.36, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/rme9652/rme9652.c", i32 1468, i32 11}
!139 = !{ptr @.str.37, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/rme9652/rme9652.c", i32 1475, i32 1}
!141 = !{ptr @.str.38, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/rme9652/rme9652.c", i32 1476, i32 1}
!143 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/rme9652/rme9652.c", i32 1477, i32 1}
!145 = !{ptr @.str.40, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/rme9652/rme9652.c", i32 1478, i32 1}
!147 = !{ptr @.str.41, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/rme9652/rme9652.c", i32 1481, i32 10}
!149 = !{ptr @.str.42, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/rme9652/rme9652.c", i32 1487, i32 1}
!151 = !{ptr @.str.43, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/rme9652/rme9652.c", i32 1488, i32 1}
!153 = !{ptr @.str.44, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/rme9652/rme9652.c", i32 1489, i32 1}
!155 = !{ptr @.str.45, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/rme9652/rme9652.c", i32 1490, i32 1}
!157 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/rme9652/rme9652.c", i32 1491, i32 1}
!159 = !{ptr @snd_rme9652_controls, !160, !"snd_rme9652_controls", i1 false, i1 false}
!160 = !{!"../sound/pci/rme9652/rme9652.c", i32 1439, i32 38}
!161 = !{ptr @.str.47, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/rme9652/rme9652.c", i32 955, i32 40}
!163 = !{ptr @.str.48, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/rme9652/rme9652.c", i32 955, i32 49}
!165 = !{ptr @.str.49, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/rme9652/rme9652.c", i32 955, i32 60}
!167 = !{ptr @snd_rme9652_info_spdif_in.texts, !168, !"texts", i1 false, i1 false}
!168 = !{!"../sound/pci/rme9652/rme9652.c", i32 955, i32 28}
!169 = !{ptr @.str.50, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/rme9652/rme9652.c", i32 1097, i32 3}
!171 = !{ptr @.str.51, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/rme9652/rme9652.c", i32 1097, i32 15}
!173 = !{ptr @.str.52, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/rme9652/rme9652.c", i32 1097, i32 25}
!175 = !{ptr @snd_rme9652_info_sync_mode.texts, !176, !"texts", i1 false, i1 false}
!176 = !{!"../sound/pci/rme9652/rme9652.c", i32 1096, i32 28}
!177 = !{ptr @.str.53, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/rme9652/rme9652.c", i32 1183, i32 3}
!179 = !{ptr @.str.54, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/rme9652/rme9652.c", i32 1183, i32 16}
!181 = !{ptr @.str.55, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/rme9652/rme9652.c", i32 1183, i32 28}
!183 = !{ptr @.str.56, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/rme9652/rme9652.c", i32 1183, i32 40}
!185 = !{ptr @snd_rme9652_info_sync_pref.texts, !186, !"texts", i1 false, i1 false}
!186 = !{!"../sound/pci/rme9652/rme9652.c", i32 1182, i32 28}
!187 = !{ptr @.str.57, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/rme9652/rme9652.c", i32 746, i32 3}
!189 = !{ptr @.str.58, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @rme9652_spdif_sample_rate._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @rme9652_spdif_sample_rate._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.59, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/rme9652/rme9652.c", i32 1342, i32 3}
!194 = !{ptr @.str.60, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/rme9652/rme9652.c", i32 1342, i32 14}
!196 = !{ptr @.str.61, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/rme9652/rme9652.c", i32 1342, i32 22}
!198 = !{ptr @.str.62, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/rme9652/rme9652.c", i32 1342, i32 38}
!200 = !{ptr @snd_rme9652_info_adat_sync.texts, !201, !"texts", i1 false, i1 false}
!201 = !{!"../sound/pci/rme9652/rme9652.c", i32 1341, i32 28}
!202 = !{ptr @.str.63, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/rme9652/rme9652.c", i32 1495, i32 1}
!204 = !{ptr @snd_rme9652_adat3_check, !205, !"snd_rme9652_adat3_check", i1 false, i1 false}
!205 = !{!"../sound/pci/rme9652/rme9652.c", i32 1494, i32 38}
!206 = !{ptr @.str.64, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/rme9652/rme9652.c", i32 1498, i32 1}
!208 = !{ptr @snd_rme9652_adat1_input, !209, !"snd_rme9652_adat1_input", i1 false, i1 false}
!209 = !{!"../sound/pci/rme9652/rme9652.c", i32 1497, i32 38}
!210 = !{ptr @snd_rme9652_info_adat1_in.texts, !211, !"texts", i1 false, i1 false}
!211 = !{!"../sound/pci/rme9652/rme9652.c", i32 891, i32 28}
!212 = !{ptr @.str.65, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/rme9652/rme9652.c", i32 1548, i32 2}
!214 = !{ptr @.str.66, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/rme9652/rme9652.c", i32 1549, i32 2}
!216 = !{ptr @.str.67, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/rme9652/rme9652.c", i32 1551, i32 2}
!218 = !{ptr @.str.68, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/rme9652/rme9652.c", i32 1553, i32 2}
!220 = !{ptr @.str.69, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/rme9652/rme9652.c", i32 1555, i32 2}
!222 = !{ptr @.str.70, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/rme9652/rme9652.c", i32 1560, i32 2}
!224 = !{ptr @.str.71, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/rme9652/rme9652.c", i32 1562, i32 2}
!226 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/pci/rme9652/rme9652.c", i32 1564, i32 2}
!228 = !{ptr @.str.73, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.74, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.75, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/rme9652/rme9652.c", i32 1568, i32 3}
!232 = !{ptr @.str.76, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/rme9652/rme9652.c", i32 1572, i32 4}
!234 = !{ptr @.str.77, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/rme9652/rme9652.c", i32 1574, i32 4}
!236 = !{ptr @.str.78, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/rme9652/rme9652.c", i32 1577, i32 3}
!238 = !{ptr @.str.79, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/rme9652/rme9652.c", i32 1583, i32 4}
!240 = !{ptr @.str.80, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/rme9652/rme9652.c", i32 1586, i32 4}
!242 = !{ptr @.str.81, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/rme9652/rme9652.c", i32 1589, i32 4}
!244 = !{ptr @.str.82, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/pci/rme9652/rme9652.c", i32 1592, i32 4}
!246 = distinct !{null, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/rme9652/rme9652.c", i32 1595, i32 4}
!248 = !{ptr @.str.84, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/rme9652/rme9652.c", i32 1600, i32 3}
!250 = !{ptr @.str.85, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.86, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/rme9652/rme9652.c", i32 1609, i32 3}
!253 = !{ptr @.str.87, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/rme9652/rme9652.c", i32 1612, i32 3}
!255 = !{ptr @.str.88, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/pci/rme9652/rme9652.c", i32 1615, i32 3}
!257 = !{ptr @.str.89, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/rme9652/rme9652.c", i32 1618, i32 3}
!259 = !{ptr @.str.90, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/pci/rme9652/rme9652.c", i32 1623, i32 3}
!261 = !{ptr @.str.91, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/rme9652/rme9652.c", i32 1625, i32 3}
!263 = !{ptr @.str.92, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/pci/rme9652/rme9652.c", i32 1629, i32 3}
!265 = !{ptr @.str.93, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/pci/rme9652/rme9652.c", i32 1631, i32 3}
!267 = !{ptr @.str.94, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/rme9652/rme9652.c", i32 1635, i32 3}
!269 = !{ptr @.str.95, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/pci/rme9652/rme9652.c", i32 1637, i32 3}
!271 = !{ptr @.str.96, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/pci/rme9652/rme9652.c", i32 1641, i32 3}
!273 = !{ptr @.str.97, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/pci/rme9652/rme9652.c", i32 1643, i32 3}
!275 = !{ptr @.str.98, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/pci/rme9652/rme9652.c", i32 1649, i32 3}
!277 = !{ptr @.str.99, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/pci/rme9652/rme9652.c", i32 1652, i32 3}
!279 = !{ptr @.str.100, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/pci/rme9652/rme9652.c", i32 1654, i32 3}
!281 = !{ptr @.str.101, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/pci/rme9652/rme9652.c", i32 1659, i32 2}
!283 = !{ptr @.str.102, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/pci/rme9652/rme9652.c", i32 1666, i32 3}
!285 = !{ptr @.str.103, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.104, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/pci/rme9652/rme9652.c", i32 1668, i32 3}
!288 = !{ptr @.str.105, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/pci/rme9652/rme9652.c", i32 1673, i32 3}
!290 = !{ptr @.str.106, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/pci/rme9652/rme9652.c", i32 1675, i32 3}
!292 = !{ptr @.str.107, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/pci/rme9652/rme9652.c", i32 1680, i32 3}
!294 = !{ptr @.str.108, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/pci/rme9652/rme9652.c", i32 1682, i32 3}
!296 = !{ptr @.str.109, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/rme9652/rme9652.c", i32 1687, i32 2}
!298 = !{ptr @.str.110, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/pci/rme9652/rme9652.c", i32 1692, i32 2}
!300 = !{ptr @.str.111, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/pci/rme9652/rme9652.c", i32 1696, i32 4}
!302 = !{ptr @.str.112, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/pci/rme9652/rme9652.c", i32 1698, i32 4}
!304 = !{!"sp"}
!305 = !{i32 1, !"wchar_size", i32 2}
!306 = !{i32 1, !"min_enum_size", i32 4}
!307 = !{i32 8, !"branch-target-enforcement", i32 0}
!308 = !{i32 8, !"sign-return-address", i32 0}
!309 = !{i32 8, !"sign-return-address-all", i32 0}
!310 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"uwtable", i32 1}
!312 = !{i32 7, !"frame-pointer", i32 2}
!313 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!314 = !{!"auto-init"}
!315 = !{i8 0, i8 2}
!316 = !{i64 4278344}
!317 = !{i64 2154778296}
!318 = !{i64 2154777446}
!319 = !{i64 4277926}
!320 = !{!"branch_weights", i32 1, i32 2000}
!321 = !{i64 709157, i64 709174}
!322 = !{!"branch_weights", i32 2000, i32 1}
!323 = !{i64 2153956148, i64 2153956173}
!324 = !{i64 6451703}
!325 = !{i64 6451900}
!326 = !{i64 2153937133}
!327 = !{i64 2153956829, i64 2153956854}
