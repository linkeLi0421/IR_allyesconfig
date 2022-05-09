; ModuleID = '/llk/IR_all_yes/sound/pci/hda/hda_intel.c_pt.bc'
source_filename = "../sound/pci/hda/hda_intel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.117 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.119, %struct.trace_event, ptr, ptr, %union.anon.120, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.119 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.122 = type { %struct.bpf_raw_event_map }
%union.anon.123 = type { %struct.bpf_raw_event_map }
%union.anon.124 = type { %struct.bpf_raw_event_map }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hda_controller_ops = type { ptr, ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.azx = type { %struct.hda_bus, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [2 x ptr], [2 x ptr], %struct.mutex, %struct.list_head, i32, i32, ptr, i32, i16, %struct.azx_dev }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.azx_dev = type { %struct.hdac_stream, i8 }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head, %struct.mutex }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.trace_event_raw_hda_pm = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.hda_intel = type { %struct.azx, %struct.work_struct, %struct.completion, %struct.delayed_work, %struct.list_head, i8, i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
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
%struct.snd_pcm_mmap_status = type { i32, i32, [4 x i8], i32, [0 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.firmware = type { i32, ptr, ptr }

@__tpstrtab_azx_suspend = internal constant [12 x i8] c"azx_suspend\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_suspend = dso_local global %struct.static_call_key { ptr @__traceiter_azx_suspend }, align 4
@__tracepoint_azx_suspend = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_azx_suspend, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_azx_suspend, ptr null, ptr @__traceiter_azx_suspend, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_suspend = internal constant ptr @__tracepoint_azx_suspend, section "__tracepoints_ptrs", align 4
@__tpstrtab_azx_resume = internal constant [11 x i8] c"azx_resume\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_resume = dso_local global %struct.static_call_key { ptr @__traceiter_azx_resume }, align 4
@__tracepoint_azx_resume = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_azx_resume, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_azx_resume, ptr null, ptr @__traceiter_azx_resume, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_resume = internal constant ptr @__tracepoint_azx_resume, section "__tracepoints_ptrs", align 4
@__tpstrtab_azx_runtime_suspend = internal constant [20 x i8] c"azx_runtime_suspend\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_runtime_suspend = dso_local global %struct.static_call_key { ptr @__traceiter_azx_runtime_suspend }, align 4
@__tracepoint_azx_runtime_suspend = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_azx_runtime_suspend, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_azx_runtime_suspend, ptr null, ptr @__traceiter_azx_runtime_suspend, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_runtime_suspend = internal constant ptr @__tracepoint_azx_runtime_suspend, section "__tracepoints_ptrs", align 4
@__tpstrtab_azx_runtime_resume = internal constant [19 x i8] c"azx_runtime_resume\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_azx_runtime_resume = dso_local global %struct.static_call_key { ptr @__traceiter_azx_runtime_resume }, align 4
@__tracepoint_azx_runtime_resume = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_azx_runtime_resume, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_azx_runtime_resume, ptr null, ptr @__traceiter_azx_runtime_resume, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_azx_runtime_resume = internal constant ptr @__tracepoint_azx_runtime_resume, section "__tracepoints_ptrs", align 4
@str__hda_intel__trace_system_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hda_intel\00", [22 x i8] zeroinitializer }, align 32
@trace_event_fields_hda_pm = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.117 { %struct.anon.118 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_hda_pm = internal global %struct.trace_event_class { ptr @str__hda_intel__trace_system_name, ptr @trace_event_raw_event_hda_pm, ptr @perf_trace_hda_pm, ptr @trace_event_reg, ptr @trace_event_fields_hda_pm, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hda_pm, i64 24), ptr getelementptr (i8, ptr @event_class_hda_pm, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hda_pm = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hda_pm, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hda_pm = internal global { [33 x i8], [63 x i8] } { [33 x i8] c"\22card index: %d\22, REC->dev_index\00", [63 x i8] zeroinitializer }, align 32
@event_azx_suspend = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hda_pm, %union.anon.119 { ptr @__tracepoint_azx_suspend }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hda_pm }, ptr @print_fmt_hda_pm, ptr null, %union.anon.120 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_azx_suspend = internal global ptr @event_azx_suspend, section "_ftrace_events", align 4
@event_azx_resume = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hda_pm, %union.anon.119 { ptr @__tracepoint_azx_resume }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hda_pm }, ptr @print_fmt_hda_pm, ptr null, %union.anon.120 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_azx_resume = internal global ptr @event_azx_resume, section "_ftrace_events", align 4
@event_azx_runtime_suspend = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hda_pm, %union.anon.119 { ptr @__tracepoint_azx_runtime_suspend }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hda_pm }, ptr @print_fmt_hda_pm, ptr null, %union.anon.120 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_azx_runtime_suspend = internal global ptr @event_azx_runtime_suspend, section "_ftrace_events", align 4
@event_azx_runtime_resume = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hda_pm, %union.anon.119 { ptr @__tracepoint_azx_runtime_resume }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hda_pm }, ptr @print_fmt_hda_pm, ptr null, %union.anon.120 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_azx_runtime_resume = internal global ptr @event_azx_runtime_resume, section "_ftrace_events", align 4
@__bpf_trace_tp_map_azx_suspend = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_azx_suspend, ptr @__bpf_trace_hda_pm, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_azx_resume = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_azx_resume, ptr @__bpf_trace_hda_pm, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_azx_runtime_suspend = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_azx_runtime_suspend, ptr @__bpf_trace_hda_pm, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_azx_runtime_resume = internal global %union.anon.124 { %struct.bpf_raw_event_map { ptr @__tracepoint_azx_runtime_resume, ptr @__bpf_trace_hda_pm, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__param_str_index = internal constant [20 x i8] c"snd_hda_intel.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype338 = internal constant [42 x i8] c"snd_hda_intel.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index339 = internal constant [67 x i8] c"snd_hda_intel.parm=index:Index value for Intel HD audio interface.\00", section ".modinfo", align 1
@__param_str_id = internal constant [17 x i8] c"snd_hda_intel.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype340 = internal constant [41 x i8] c"snd_hda_intel.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id341 = internal constant [62 x i8] c"snd_hda_intel.parm=id:ID string for Intel HD audio interface.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [21 x i8] c"snd_hda_intel.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype342 = internal constant [44 x i8] c"snd_hda_intel.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable343 = internal constant [59 x i8] c"snd_hda_intel.parm=enable:Enable Intel HD audio interface.\00", section ".modinfo", align 1
@__param_str_model = internal constant [20 x i8] c"snd_hda_intel.model\00", align 1
@__param_arr_model = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @model }, align 4
@__param_model = internal constant %struct.kernel_param { ptr @__param_str_model, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_model } }, section "__param", align 4
@__UNIQUE_ID_modeltype344 = internal constant [44 x i8] c"snd_hda_intel.parmtype=model:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_model345 = internal constant [52 x i8] c"snd_hda_intel.parm=model:Use the given board model.\00", section ".modinfo", align 1
@__param_str_position_fix = internal constant [27 x i8] c"snd_hda_intel.position_fix\00", align 1
@__param_arr_position_fix = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @position_fix }, align 4
@__param_position_fix = internal constant %struct.kernel_param { ptr @__param_str_position_fix, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_position_fix } }, section "__param", align 4
@__UNIQUE_ID_position_fixtype346 = internal constant [49 x i8] c"snd_hda_intel.parmtype=position_fix:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_position_fix347 = internal constant [156 x i8] c"snd_hda_intel.parm=position_fix:DMA pointer read method.(-1 = system default, 0 = auto, 1 = LPIB, 2 = POSBUF, 3 = VIACOMBO, 4 = COMBO, 5 = SKL+, 6 = FIFO).\00", section ".modinfo", align 1
@__param_str_bdl_pos_adj = internal constant [26 x i8] c"snd_hda_intel.bdl_pos_adj\00", align 1
@__param_arr_bdl_pos_adj = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @bdl_pos_adj }, align 4
@__param_bdl_pos_adj = internal constant %struct.kernel_param { ptr @__param_str_bdl_pos_adj, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_bdl_pos_adj } }, section "__param", align 4
@__UNIQUE_ID_bdl_pos_adjtype348 = internal constant [48 x i8] c"snd_hda_intel.parmtype=bdl_pos_adj:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_bdl_pos_adj349 = internal constant [63 x i8] c"snd_hda_intel.parm=bdl_pos_adj:BDL position adjustment offset.\00", section ".modinfo", align 1
@__param_str_probe_mask = internal constant [25 x i8] c"snd_hda_intel.probe_mask\00", align 1
@__param_arr_probe_mask = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @probe_mask }, align 4
@__param_probe_mask = internal constant %struct.kernel_param { ptr @__param_str_probe_mask, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_probe_mask } }, section "__param", align 4
@__UNIQUE_ID_probe_masktype350 = internal constant [47 x i8] c"snd_hda_intel.parmtype=probe_mask:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_probe_mask351 = internal constant [70 x i8] c"snd_hda_intel.parm=probe_mask:Bitmask to probe codecs (default = -1).\00", section ".modinfo", align 1
@__param_str_probe_only = internal constant [25 x i8] c"snd_hda_intel.probe_only\00", align 1
@__param_arr_probe_only = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @probe_only }, align 4
@__param_probe_only = internal constant %struct.kernel_param { ptr @__param_str_probe_only, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_probe_only } }, section "__param", align 4
@__UNIQUE_ID_probe_onlytype352 = internal constant [47 x i8] c"snd_hda_intel.parmtype=probe_only:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_probe_only353 = internal constant [72 x i8] c"snd_hda_intel.parm=probe_only:Only probing and no codec initialization.\00", section ".modinfo", align 1
@__param_str_jackpoll_ms = internal constant [26 x i8] c"snd_hda_intel.jackpoll_ms\00", align 1
@__param_arr_jackpoll_ms = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @jackpoll_ms }, align 4
@__param_jackpoll_ms = internal constant %struct.kernel_param { ptr @__param_str_jackpoll_ms, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_jackpoll_ms } }, section "__param", align 4
@__UNIQUE_ID_jackpoll_mstype354 = internal constant [48 x i8] c"snd_hda_intel.parmtype=jackpoll_ms:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_jackpoll_ms355 = internal constant [105 x i8] c"snd_hda_intel.parm=jackpoll_ms:Ms between polling for jack events (default = 0, using unsol events only)\00", section ".modinfo", align 1
@__param_str_single_cmd = internal constant [25 x i8] c"snd_hda_intel.single_cmd\00", align 1
@param_ops_bint = external dso_local constant %struct.kernel_param_ops, align 4
@single_cmd = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_single_cmd = internal constant %struct.kernel_param { ptr @__param_str_single_cmd, ptr null, ptr @param_ops_bint, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @single_cmd } }, section "__param", align 4
@__UNIQUE_ID_single_cmdtype356 = internal constant [39 x i8] c"snd_hda_intel.parmtype=single_cmd:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_single_cmd357 = internal constant [98 x i8] c"snd_hda_intel.parm=single_cmd:Use single command to communicate with codecs (for debugging only).\00", section ".modinfo", align 1
@__param_str_enable_msi = internal constant [25 x i8] c"snd_hda_intel.enable_msi\00", align 1
@enable_msi = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_enable_msi = internal constant %struct.kernel_param { ptr @__param_str_enable_msi, ptr null, ptr @param_ops_bint, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @enable_msi } }, section "__param", align 4
@__UNIQUE_ID_enable_msitype358 = internal constant [39 x i8] c"snd_hda_intel.parmtype=enable_msi:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_msi359 = internal constant [70 x i8] c"snd_hda_intel.parm=enable_msi:Enable Message Signaled Interrupt (MSI)\00", section ".modinfo", align 1
@__param_str_patch = internal constant [20 x i8] c"snd_hda_intel.patch\00", align 1
@__param_arr_patch = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @patch }, align 4
@__param_patch = internal constant %struct.kernel_param { ptr @__param_str_patch, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_patch } }, section "__param", align 4
@__UNIQUE_ID_patchtype360 = internal constant [44 x i8] c"snd_hda_intel.parmtype=patch:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_patch361 = internal constant [66 x i8] c"snd_hda_intel.parm=patch:Patch file for Intel HD audio interface.\00", section ".modinfo", align 1
@__param_str_beep_mode = internal constant [24 x i8] c"snd_hda_intel.beep_mode\00", align 1
@__param_arr_beep_mode = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @beep_mode }, align 4
@__param_beep_mode = internal constant %struct.kernel_param { ptr @__param_str_beep_mode, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_beep_mode } }, section "__param", align 4
@__UNIQUE_ID_beep_modetype362 = internal constant [47 x i8] c"snd_hda_intel.parmtype=beep_mode:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_beep_mode363 = internal constant [90 x i8] c"snd_hda_intel.parm=beep_mode:Select HDA Beep registration mode (0=off, 1=on) (default=1).\00", section ".modinfo", align 1
@__param_str_dmic_detect = internal constant [26 x i8] c"snd_hda_intel.dmic_detect\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@dmic_detect = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_dmic_detect = internal constant %struct.kernel_param { ptr @__param_str_dmic_detect, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @dmic_detect } }, section "__param", align 4
@__UNIQUE_ID_dmic_detecttype364 = internal constant [40 x i8] c"snd_hda_intel.parmtype=dmic_detect:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dmic_detect365 = internal constant [165 x i8] c"snd_hda_intel.parm=dmic_detect:Allow DSP driver selection (bypass this driver) (0=off, 1=on) (default=1); deprecated, use snd-intel-dspcfg.dsp_driver option instead\00", section ".modinfo", align 1
@__param_str_power_save = internal constant [25 x i8] c"snd_hda_intel.power_save\00", align 1
@param_ops_xint = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_xint, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@power_save = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_power_save = internal constant %struct.kernel_param { ptr @__param_str_power_save, ptr null, ptr @param_ops_xint, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @power_save } }, section "__param", align 4
@__UNIQUE_ID_power_savetype366 = internal constant [39 x i8] c"snd_hda_intel.parmtype=power_save:xint\00", section ".modinfo", align 1
@__UNIQUE_ID_power_save367 = internal constant [87 x i8] c"snd_hda_intel.parm=power_save:Automatic power-saving timeout (in second, 0 = disable).\00", section ".modinfo", align 1
@__param_str_pm_blacklist = internal constant [27 x i8] c"snd_hda_intel.pm_blacklist\00", align 1
@pm_blacklist = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_pm_blacklist = internal constant %struct.kernel_param { ptr @__param_str_pm_blacklist, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @pm_blacklist } }, section "__param", align 4
@__UNIQUE_ID_pm_blacklisttype368 = internal constant [41 x i8] c"snd_hda_intel.parmtype=pm_blacklist:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_pm_blacklist369 = internal constant [65 x i8] c"snd_hda_intel.parm=pm_blacklist:Enable power-management denylist\00", section ".modinfo", align 1
@__param_str_power_save_controller = internal constant [36 x i8] c"snd_hda_intel.power_save_controller\00", align 1
@power_save_controller = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_power_save_controller = internal constant %struct.kernel_param { ptr @__param_str_power_save_controller, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @power_save_controller } }, section "__param", align 4
@__UNIQUE_ID_power_save_controllertype370 = internal constant [50 x i8] c"snd_hda_intel.parmtype=power_save_controller:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_power_save_controller371 = internal constant [78 x i8] c"snd_hda_intel.parm=power_save_controller:Reset controller in power save mode.\00", section ".modinfo", align 1
@__param_str_align_buffer_size = internal constant [32 x i8] c"snd_hda_intel.align_buffer_size\00", align 1
@align_buffer_size = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_align_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_align_buffer_size, ptr null, ptr @param_ops_bint, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @align_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_align_buffer_sizetype372 = internal constant [46 x i8] c"snd_hda_intel.parmtype=align_buffer_size:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_align_buffer_size373 = internal constant [96 x i8] c"snd_hda_intel.parm=align_buffer_size:Force buffer and period sizes to be multiple of 128 bytes.\00", section ".modinfo", align 1
@__UNIQUE_ID_file374 = internal constant [47 x i8] c"snd_hda_intel.file=sound/pci/hda/snd-hda-intel\00", section ".modinfo", align 1
@__UNIQUE_ID_license375 = internal constant [26 x i8] c"snd_hda_intel.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description376 = internal constant [43 x i8] c"snd_hda_intel.description=Intel HDA driver\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_intel__390_2778_azx_driver_init6 = internal global ptr @azx_driver_init, section ".initcall6.init", align 4
@azx_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.5, ptr @azx_ids, ptr @azx_probe, ptr @azx_remove, ptr null, ptr null, ptr @azx_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @azx_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_azx_driver_exit = internal global ptr @azx_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_index\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"card index: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@model = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@position_fix = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@bdl_pos_adj = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@probe_mask = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@probe_only = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@jackpoll_ms = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@patch = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@beep_mode = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@card_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @card_list_lock, i64 52), ptr getelementptr (i8, ptr @card_list_lock, i64 52) }, ptr @card_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@card_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @card_list, ptr @card_list }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"card_list_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"card_list_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_hda_intel\00", [18 x i8] zeroinitializer }, align 32
@azx_ids = internal constant { [132 x %struct.pci_device_id], [1056 x i8] } { [132 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 7200, i32 -1, i32 -1, i32 0, i32 0, i32 35652609, i32 0 }, %struct.pci_device_id { i32 32902, i32 7456, i32 -1, i32 -1, i32 0, i32 0, i32 35652609, i32 0 }, %struct.pci_device_id { i32 32902, i32 7712, i32 -1, i32 -1, i32 0, i32 0, i32 35652609, i32 0 }, %struct.pci_device_id { i32 32902, i32 35872, i32 -1, i32 -1, i32 0, i32 0, i32 102761473, i32 0 }, %struct.pci_device_id { i32 32902, i32 36000, i32 -1, i32 -1, i32 0, i32 0, i32 102761473, i32 0 }, %struct.pci_device_id { i32 32902, i32 36128, i32 -1, i32 -1, i32 0, i32 0, i32 102761473, i32 0 }, %struct.pci_device_id { i32 32902, i32 36129, i32 -1, i32 -1, i32 0, i32 0, i32 102761473, i32 0 }, %struct.pci_device_id { i32 32902, i32 41456, i32 -1, i32 -1, i32 0, i32 0, i32 1176503297, i32 0 }, %struct.pci_device_id { i32 32902, i32 41584, i32 -1, i32 -1, i32 0, i32 0, i32 1176503297, i32 0 }, %struct.pci_device_id { i32 32902, i32 39968, i32 -1, i32 -1, i32 0, i32 0, i32 102761473, i32 0 }, %struct.pci_device_id { i32 32902, i32 39969, i32 -1, i32 -1, i32 0, i32 0, i32 102761473, i32 0 }, %struct.pci_device_id { i32 32902, i32 40096, i32 -1, i32 -1, i32 0, i32 0, i32 102761473, i32 0 }, %struct.pci_device_id { i32 32902, i32 41328, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 40304, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 41329, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 40305, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 41712, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 41800, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 40392, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 712, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 1736, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 61896, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 41968, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 61640, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 13512, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 15816, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 14536, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 19912, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 41160, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 17352, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 18701, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 20368, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 20369, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 20370, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 31440, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 20936, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 20941, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 20940, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 21704, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 19285, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 19288, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 23192, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 6808, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 12696, i32 -1, i32 -1, i32 0, i32 0, i32 1176503299, i32 0 }, %struct.pci_device_id { i32 32902, i32 2572, i32 -1, i32 -1, i32 0, i32 0, i32 100664324, i32 0 }, %struct.pci_device_id { i32 32902, i32 3084, i32 -1, i32 -1, i32 0, i32 0, i32 100664324, i32 0 }, %struct.pci_device_id { i32 32902, i32 3340, i32 -1, i32 -1, i32 0, i32 0, i32 100664324, i32 0 }, %struct.pci_device_id { i32 32902, i32 5644, i32 -1, i32 -1, i32 0, i32 0, i32 67175428, i32 0 }, %struct.pci_device_id { i32 32902, i32 15190, i32 -1, i32 -1, i32 0, i32 0, i32 35652610, i32 0 }, %struct.pci_device_id { i32 32902, i32 33051, i32 -1, i32 -1, i32 0, i32 0, i32 35652610, i32 0 }, %struct.pci_device_id { i32 32902, i32 2058, i32 -1, i32 -1, i32 0, i32 0, i32 35652610, i32 0 }, %struct.pci_device_id { i32 32902, i32 3844, i32 -1, i32 -1, i32 0, i32 0, i32 35652609, i32 0 }, %struct.pci_device_id { i32 32902, i32 8836, i32 -1, i32 -1, i32 0, i32 0, i32 102761473, i32 0 }, %struct.pci_device_id { i32 32902, i32 9832, i32 -1, i32 -1, i32 0, i32 0, i32 3145728, i32 0 }, %struct.pci_device_id { i32 32902, i32 10200, i32 -1, i32 -1, i32 0, i32 0, i32 3145728, i32 0 }, %struct.pci_device_id { i32 32902, i32 9882, i32 -1, i32 -1, i32 0, i32 0, i32 3145728, i32 0 }, %struct.pci_device_id { i32 32902, i32 10315, i32 -1, i32 -1, i32 0, i32 0, i32 3145728, i32 0 }, %struct.pci_device_id { i32 32902, i32 10558, i32 -1, i32 -1, i32 0, i32 0, i32 3145728, i32 0 }, %struct.pci_device_id { i32 32902, i32 10559, i32 -1, i32 -1, i32 0, i32 0, i32 3145728, i32 0 }, %struct.pci_device_id { i32 32902, i32 14910, i32 -1, i32 -1, i32 0, i32 0, i32 3145728, i32 0 }, %struct.pci_device_id { i32 32902, i32 14958, i32 -1, i32 -1, i32 0, i32 0, i32 3145728, i32 0 }, %struct.pci_device_id { i32 32902, i32 -1, i32 -1, i32 -1, i32 262912, i32 16777215, i32 2097152, i32 0 }, %struct.pci_device_id { i32 4098, i32 17275, i32 -1, i32 -1, i32 0, i32 0, i32 67845, i32 0 }, %struct.pci_device_id { i32 4098, i32 17283, i32 -1, i32 -1, i32 0, i32 0, i32 67845, i32 0 }, %struct.pci_device_id { i32 4130, i32 30733, i32 -1, i32 -1, i32 0, i32 0, i32 67857, i32 0 }, %struct.pci_device_id { i32 4130, i32 5207, i32 -1, i32 -1, i32 0, i32 0, i32 201459985, i32 0 }, %struct.pci_device_id { i32 4130, i32 5255, i32 -1, i32 -1, i32 0, i32 0, i32 201459985, i32 0 }, %struct.pci_device_id { i32 4130, i32 5498, i32 -1, i32 -1, i32 0, i32 0, i32 67176721, i32 0 }, %struct.pci_device_id { i32 4130, i32 5603, i32 -1, i32 -1, i32 0, i32 0, i32 201459985, i32 0 }, %struct.pci_device_id { i32 4098, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 4872, i32 -1, i32 -1, i32 0, i32 0, i32 536940807, i32 0 }, %struct.pci_device_id { i32 4098, i32 5498, i32 -1, i32 -1, i32 0, i32 0, i32 536940807, i32 0 }, %struct.pci_device_id { i32 4098, i32 5555, i32 -1, i32 -1, i32 0, i32 0, i32 536940807, i32 0 }, %struct.pci_device_id { i32 4098, i32 31035, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 31001, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 38415, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 38671, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 38976, i32 -1, i32 -1, i32 0, i32 0, i32 536940807, i32 0 }, %struct.pci_device_id { i32 4098, i32 43520, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43528, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43536, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43544, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43552, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43560, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43568, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43576, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43584, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43592, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43600, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43608, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43616, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43624, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43648, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43656, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43664, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 43672, i32 -1, i32 -1, i32 0, i32 0, i32 536936710, i32 0 }, %struct.pci_device_id { i32 4098, i32 39170, i32 -1, i32 -1, i32 0, i32 0, i32 536940807, i32 0 }, %struct.pci_device_id { i32 4098, i32 43680, i32 -1, i32 -1, i32 0, i32 0, i32 536940807, i32 0 }, %struct.pci_device_id { i32 4098, i32 43688, i32 -1, i32 -1, i32 0, i32 0, i32 536940807, i32 0 }, %struct.pci_device_id { i32 4098, i32 43696, i32 -1, i32 -1, i32 0, i32 0, i32 536940807, i32 0 }, %struct.pci_device_id { i32 4098, i32 43712, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43720, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43736, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43744, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43752, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43760, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43768, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43776, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43784, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43792, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43800, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43808, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43816, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4098, i32 43832, i32 -1, i32 -1, i32 0, i32 0, i32 604049671, i32 0 }, %struct.pci_device_id { i32 4358, i32 12936, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4358, i32 37232, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4358, i32 37184, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4153, i32 29954, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4281, i32 21601, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 -1, i32 -1, i32 -1, i32 262912, i32 16777215, i32 268439051, i32 0 }, %struct.pci_device_id { i32 25929, i32 4608, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 25929, i32 8704, i32 -1, i32 -1, i32 0, i32 0, i32 262156, i32 0 }, %struct.pci_device_id { i32 4354, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 8720910, i32 0 }, %struct.pci_device_id { i32 4354, i32 18, i32 -1, i32 -1, i32 0, i32 0, i32 8720910, i32 0 }, %struct.pci_device_id { i32 4354, i32 9, i32 -1, i32 -1, i32 0, i32 0, i32 360461, i32 0 }, %struct.pci_device_id { i32 5110, i32 20497, i32 -1, i32 -1, i32 0, i32 0, i32 70159, i32 0 }, %struct.pci_device_id { i32 6131, i32 12304, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 5549, i32 6519, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 -1, i32 -1, i32 -1, i32 262912, i32 16777215, i32 536936721, i32 0 }, %struct.pci_device_id { i32 4130, i32 -1, i32 -1, i32 -1, i32 262912, i32 16777215, i32 536936721, i32 0 }, %struct.pci_device_id { i32 7447, i32 12936, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id zeroinitializer], [1056 x i8] zeroinitializer }, align 32
@azx_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @azx_prepare, ptr @azx_complete, ptr @azx_suspend, ptr @azx_resume, ptr @azx_suspend, ptr @azx_resume, ptr @azx_suspend, ptr @azx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @azx_freeze_noirq, ptr @azx_thaw_noirq, ptr null, ptr null, ptr @azx_runtime_suspend, ptr @azx_runtime_resume, ptr @azx_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@azx_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@driver_denylist = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 5255, i32 4163, i32 34639, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5255, i32 5218, i32 52057, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5255, i32 5218, i32 52064, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@azx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 2080, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Skipping the device on the denylist\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"azx_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/hda/hda_intel.c\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@azx_probe._entry_ptr = internal global ptr @azx_probe._entry, section ".printk_index", align 4
@azx_probe.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, i8 2, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"HDAudio driver not selected, aborting probe\0A\00", [51 x i8] zeroinitializer }, align 32
@azx_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 2101, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"dmic_detect option is deprecated, pass snd-intel-dspcfg.dsp_driver=1 option instead\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@azx_probe._entry_ptr.15 = internal global ptr @azx_probe._entry.12, section ".printk_index", align 4
@azx_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.8, i32 2107, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error creating card!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@azx_probe._entry_ptr.19 = internal global ptr @azx_probe._entry.16, section ".printk_index", align 4
@azx_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.8, i32 2121, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error registering vga_switcheroo client\0A\00", [55 x i8] zeroinitializer }, align 32
@azx_probe._entry_ptr.22 = internal global ptr @azx_probe._entry.20, section ".printk_index", align 4
@azx_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 2136, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Applying patch firmware '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@azx_probe._entry_ptr.25 = internal global ptr @azx_probe._entry.23, section ".printk_index", align 4
@azx_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.8, i32 2148, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Haswell/Broadwell HDMI/DP must build in CONFIG_SND_HDA_I915\0A\00", [35 x i8] zeroinitializer }, align 32
@azx_probe._entry_ptr.28 = internal global ptr @azx_probe._entry.26, section ".printk_index", align 4
@azx_create.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @azx_dev_free, ptr null, ptr @azx_dev_disconnect }, [20 x i8] zeroinitializer }, align 32
@azx_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->open_mutex\00", [46 x i8] zeroinitializer }, align 32
@pci_hda_ops = internal constant { %struct.hda_controller_ops, [20 x i8] } { %struct.hda_controller_ops { ptr @disable_msi_reset_irq, ptr @azx_position_check, ptr null }, [20 x i8] zeroinitializer }, align 32
@azx_create.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&hda->irq_pending_work)\00", [54 x i8] zeroinitializer }, align 32
@azx_create.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.32, ptr @.str.8, ptr @.str.33, i8 1, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"azx_create\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable delay in RIRB handling\0A\00", [33 x i8] zeroinitializer }, align 32
@azx_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.8, i32 1831, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error creating device [card]!\0A\00", [33 x i8] zeroinitializer }, align 32
@azx_create._entry_ptr = internal global ptr @azx_create._entry, section ".printk_index", align 4
@azx_create.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&hda->probe_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@azx_create.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&hda->probe_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@azx_acquire_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.8, i32 780, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to grab IRQ %d, disabling device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"azx_acquire_irq\00", [16 x i8] zeroinitializer }, align 32
@azx_acquire_irq._entry_ptr = internal global ptr @azx_acquire_irq._entry, section ".printk_index", align 4
@azx_position_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.8, i32 666, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Invalid position buffer, using LPIB read method instead.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"azx_position_ok\00", [16 x i8] zeroinitializer }, align 32
@azx_position_ok._entry_ptr = internal global ptr @azx_position_ok._entry, section ".printk_index", align 4
@azx_position_ok.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"hda-intel: zero azx_dev->period_bytes\00", [58 x i8] zeroinitializer }, align 32
@azx_get_delay_from_lpib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.8, i32 604, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unstable LPIB (%d >= %d); disabling LPIB delay counting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"azx_get_delay_from_lpib\00", [40 x i8] zeroinitializer }, align 32
@azx_get_delay_from_lpib._entry_ptr = internal global ptr @azx_get_delay_from_lpib._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@msi_deny_list = internal constant { [11 x %struct.snd_pci_quirk], [48 x i8] } { [11 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 8593, i16 -1, i32 0, ptr @.str.51 }, %struct.snd_pci_quirk { i16 4156, i16 8594, i16 -1, i32 0, ptr @.str.51 }, %struct.snd_pci_quirk { i16 4156, i16 8695, i16 -1, i32 0, ptr @.str.51 }, %struct.snd_pci_quirk { i16 4156, i16 8698, i16 -1, i32 0, ptr @.str.51 }, %struct.snd_pci_quirk { i16 4163, i16 -32270, i16 -1, i32 0, ptr @.str.52 }, %struct.snd_pci_quirk { i16 4163, i16 -32266, i16 -1, i32 0, ptr @.str.52 }, %struct.snd_pci_quirk { i16 4163, i16 -32211, i16 -1, i32 0, ptr @.str.52 }, %struct.snd_pci_quirk { i16 4473, i16 -1212, i16 -1, i32 0, ptr @.str.53 }, %struct.snd_pci_quirk { i16 6217, i16 2184, i16 -1, i32 0, ptr @.str.54 }, %struct.snd_pci_quirk { i16 -24416, i16 1397, i16 -1, i32 0, ptr @.str.55 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@check_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.8, i32 1680, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"msi for device %04x:%04x set to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"check_msi\00", [22 x i8] zeroinitializer }, align 32
@check_msi._entry_ptr = internal global ptr @check_msi._entry, section ".printk_index", align 4
@check_msi._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.8, i32 1687, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Disabling MSI\0A\00", [17 x i8] zeroinitializer }, align 32
@check_msi._entry_ptr.50 = internal global ptr @check_msi._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ASUS\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Toshiba Satellite C870\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASRock\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Aopen MZ915-M\00", [18 x i8] zeroinitializer }, align 32
@azx_irq_pending_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.8, i32 726, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"IRQ timing workaround is activated for card #%d. Suggest a bigger bdl_pos_adj.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azx_irq_pending_work\00", [43 x i8] zeroinitializer }, align 32
@azx_irq_pending_work._entry_ptr = internal global ptr @azx_irq_pending_work._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@assign_position_fix.callbacks = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @azx_get_pos_lpib, ptr @azx_get_pos_posbuf, ptr @azx_via_get_position, ptr @azx_get_pos_lpib, ptr @azx_get_pos_posbuf, ptr @azx_get_pos_fifo], [36 x i8] zeroinitializer }, align 32
@position_fix_list = internal constant { [15 x %struct.snd_pci_quirk], [48 x i8] } { [15 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4136, i16 460, i16 -1, i32 1, ptr @.str.65 }, %struct.snd_pci_quirk { i16 4136, i16 478, i16 -1, i32 1, ptr @.str.66 }, %struct.snd_pci_quirk { i16 4156, i16 12397, i16 -1, i32 1, ptr @.str.67 }, %struct.snd_pci_quirk { i16 4163, i16 -32451, i16 -1, i32 1, ptr @.str.68 }, %struct.snd_pci_quirk { i16 4163, i16 -32333, i16 -1, i32 1, ptr @.str.52 }, %struct.snd_pci_quirk { i16 4163, i16 -32281, i16 -1, i32 1, ptr @.str.69 }, %struct.snd_pci_quirk { i16 4173, i16 -28567, i16 -1, i32 1, ptr @.str.70 }, %struct.snd_pci_quirk { i16 4318, i16 -13431, i16 -1, i32 1, ptr @.str.71 }, %struct.snd_pci_quirk { i16 4759, i16 12646, i16 -1, i32 1, ptr @.str.72 }, %struct.snd_pci_quirk { i16 5208, i16 -24542, i16 -1, i32 1, ptr @.str.73 }, %struct.snd_pci_quirk { i16 5218, i16 4098, i16 -1, i32 1, ptr @.str.74 }, %struct.snd_pci_quirk { i16 5477, i16 -32232, i16 -1, i32 1, ptr @.str.75 }, %struct.snd_pci_quirk { i16 6217, i16 2184, i16 -1, i32 1, ptr @.str.76 }, %struct.snd_pci_quirk { i16 -32634, i16 9475, i16 -1, i32 1, ptr @.str.77 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@check_position_fix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.8, i32 1548, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"position_fix set to %d for device %04x:%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_position_fix\00", [45 x i8] zeroinitializer }, align 32
@check_position_fix._entry_ptr = internal global ptr @check_position_fix._entry, section ".printk_index", align 4
@check_position_fix.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.8, ptr @.str.61, i8 1, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Using VIACOMBO position fix\0A\00", [35 x i8] zeroinitializer }, align 32
@check_position_fix.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.8, ptr @.str.62, i8 1, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Using FIFO position fix\0A\00", [39 x i8] zeroinitializer }, align 32
@check_position_fix.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.8, ptr @.str.63, i8 1, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Using LPIB position fix\0A\00", [39 x i8] zeroinitializer }, align 32
@check_position_fix.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.8, ptr @.str.64, i8 1, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Using SKL position fix\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Dell D820\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Precision 390\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP dv3\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASUS P5AD2\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASUS M2V\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sony VPCS11V9E\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Macbook Pro 7,1\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Shuttle\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ga-ma770-ud3\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MSI Wind U115\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Biostar Microtech\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"775Dual-VSTA\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DG965OT AAD63733-203\00", [43 x i8] zeroinitializer }, align 32
@azx_check_snoop_available._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.8, i32 1699, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Force to %s mode by module option\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"azx_check_snoop_available\00", [38 x i8] zeroinitializer }, align 32
@azx_check_snoop_available._entry_ptr = internal global ptr @azx_check_snoop_available._entry, section ".printk_index", align 4
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"snoop\00", [26 x i8] zeroinitializer }, align 32
@azx_check_snoop_available._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.79, ptr @.str.8, i32 1723, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Force to non-snoop mode\0A\00", [39 x i8] zeroinitializer }, align 32
@azx_check_snoop_available._entry_ptr.84 = internal global ptr @azx_check_snoop_available._entry.82, section ".printk_index", align 4
@probe_mask_list = internal constant { [10 x %struct.snd_pci_quirk], [32 x i8] } { [10 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4116, i16 1463, i16 -1, i32 1, ptr @.str.90 }, %struct.snd_pci_quirk { i16 6058, i16 8208, i16 -1, i32 1, ptr @.str.91 }, %struct.snd_pci_quirk { i16 6058, i16 8364, i16 -1, i32 1, ptr @.str.92 }, %struct.snd_pci_quirk { i16 4136, i16 8364, i16 -1, i32 1, ptr @.str.93 }, %struct.snd_pci_quirk { i16 6080, i16 16517, i16 -1, i32 1, ptr @.str.94 }, %struct.snd_pci_quirk { i16 4163, i16 4706, i16 -1, i32 259, ptr @.str.95 }, %struct.snd_pci_quirk { i16 4166, i16 4706, i16 -1, i32 259, ptr @.str.96 }, %struct.snd_pci_quirk { i16 5464, i16 849, i16 -1, i32 261, ptr @.str.97 }, %struct.snd_pci_quirk { i16 14881, i16 1037, i16 -1, i32 257, ptr @.str.98 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@check_probe_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.8, i32 1636, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"probe_mask set to 0x%x for device %04x:%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_probe_mask\00", [47 x i8] zeroinitializer }, align 32
@check_probe_mask._entry_ptr = internal global ptr @check_probe_mask._entry, section ".printk_index", align 4
@check_probe_mask._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.8, i32 1646, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"codec_mask forced to 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@check_probe_mask._entry_ptr.89 = internal global ptr @check_probe_mask._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thinkpad Z60\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Thinkpad X/T/R60\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Thinkpad X/T/R61\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Studio Desktop\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Medion MD96630\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASUS W5Fm\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASUS W5F\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Schenker Dock 15\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WinFast VP200 H\00", [16 x i8] zeroinitializer }, align 32
@azx_probe_continue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.8, i32 2257, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"HSW/BDW HD-audio HDMI/DP requires binding with gfx driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azx_probe_continue\00", [45 x i8] zeroinitializer }, align 32
@azx_probe_continue._entry_ptr = internal global ptr @azx_probe_continue._entry, section ".printk_index", align 4
@azx_max_codecs = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [56 x i8] zeroinitializer }, align 32
@azx_probe_continue._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.8, i32 2315, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot probe codecs, giving up\0A\00", [32 x i8] zeroinitializer }, align 32
@azx_probe_continue._entry_ptr.103 = internal global ptr @azx_probe_continue._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ICH HD audio\00", [19 x i8] zeroinitializer }, align 32
@azx_first_init.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.105, ptr @.str.8, ptr @.str.106, i8 1, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"azx_first_init\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disabling 64bit MSI\0A\00", [43 x i8] zeroinitializer }, align 32
@azx_first_init.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.105, ptr @.str.8, ptr @.str.107, i8 1, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"chipset global capabilities = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@azx_first_init.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.105, ptr @.str.8, ptr @.str.108, i8 1, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disabling 64bit DMA\0A\00", [43 x i8] zeroinitializer }, align 32
@azx_first_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.105, ptr @.str.8, i32 1979, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"number of I/O streams is %d, forcing separate stream tags\00", [38 x i8] zeroinitializer }, align 32
@azx_first_init._entry_ptr = internal global ptr @azx_first_init._entry, section ".printk_index", align 4
@azx_first_init._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.105, ptr @.str.8, i32 2001, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no codecs found!\0A\00", [46 x i8] zeroinitializer }, align 32
@azx_first_init._entry_ptr.112 = internal global ptr @azx_first_init._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDA-Intel\00", [22 x i8] zeroinitializer }, align 32
@driver_short_names = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %i\00", [45 x i8] zeroinitializer }, align 32
@azx_init_pci.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.115, ptr @.str.8, ptr @.str.116, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"azx_init_pci\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Clearing TCSEL\0A\00", [16 x i8] zeroinitializer }, align 32
@azx_init_pci.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.115, ptr @.str.8, ptr @.str.117, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting ATI snoop: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@azx_init_pci.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.115, ptr @.str.8, ptr @.str.118, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Setting Nvidia snoop: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@azx_init_pci.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.115, ptr @.str.8, ptr @.str.119, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SCH snoop: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@intel_get_lctl_scf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.8, i32 484, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set audio clock frequency to 6MHz\00", [62 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel_get_lctl_scf\00", [45 x i8] zeroinitializer }, align 32
@intel_get_lctl_scf._entry_ptr = internal global ptr @intel_get_lctl_scf._entry, section ".printk_index", align 4
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDA Intel\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDA Intel PCH\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDA Intel MID\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDA Intel HDMI\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDA ATI SB\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDA ATI HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDA VIA VT82xx\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDA SIS966\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDA ULI M5461\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDA NVidia\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDA Teradici\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDA Creative\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDA C-Media\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDA Zhaoxin\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HD-Audio Generic\00", [47 x i8] zeroinitializer }, align 32
@power_save_denylist = internal constant { [15 x %struct.snd_pci_quirk], [48 x i8] } { [15 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 6217, i16 -14190, i16 -1, i32 0, ptr @.str.141 }, %struct.snd_pci_quirk { i16 6217, i16 919, i16 -1, i32 0, ptr @.str.142 }, %struct.snd_pci_quirk { i16 6217, i16 30306, i16 -1, i32 0, ptr @.str.143 }, %struct.snd_pci_quirk { i16 4163, i16 -30925, i16 -1, i32 0, ptr @.str.144 }, %struct.snd_pci_quirk { i16 4136, i16 1175, i16 -1, i32 0, ptr @.str.145 }, %struct.snd_pci_quirk { i16 5208, i16 -24574, i16 -1, i32 0, ptr @.str.146 }, %struct.snd_pci_quirk { i16 -32634, i16 8256, i16 -1, i32 0, ptr @.str.147 }, %struct.snd_pci_quirk { i16 -32634, i16 8279, i16 -1, i32 0, ptr @.str.148 }, %struct.snd_pci_quirk { i16 -32634, i16 8292, i16 -1, i32 0, ptr @.str.149 }, %struct.snd_pci_quirk { i16 -32634, i16 8296, i16 -1, i32 0, ptr @.str.150 }, %struct.snd_pci_quirk { i16 6058, i16 8743, i16 -1, i32 0, ptr @.str.151 }, %struct.snd_pci_quirk { i16 6058, i16 13947, i16 -1, i32 0, ptr @.str.152 }, %struct.snd_pci_quirk { i16 6058, i16 13991, i16 -1, i32 0, ptr @.str.153 }, %struct.snd_pci_quirk { i16 5681, i16 -8169, i16 -1, i32 0, ptr @.str.154 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@set_default_power_save._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.8, i32 2216, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"device %04x:%04x is on the power_save denylist, forcing power_save to 0\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set_default_power_save\00", [41 x i8] zeroinitializer }, align 32
@set_default_power_save._entry_ptr = internal global ptr @set_default_power_save._entry, section ".printk_index", align 4
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Asrock B85M-ITX\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Asrock N68C-S UCC\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Asrock H81M-HDS\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Asus Prime X370-Pro\00", [44 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dell Precision T3600\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Gigabyte P55A-UD3 / Z87-D3HP\00", [35 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Intel DZ77BH-55K\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel NUC5i7RYB\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Intel SDP 8086:2064\00", [44 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel NUC7i3BNB\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Lenovo X1 Carbon 3rd Gen\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Lenovo IdeaCentre B550\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Lenovo C50 All in one\00", [42 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Packard Bell NEC IMEDIA 5204\00", [35 x i8] zeroinitializer }, align 32
@azx_firmware_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.8, i32 2028, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Cannot load firmware, continue without patching\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"azx_firmware_cb\00", [16 x i8] zeroinitializer }, align 32
@azx_firmware_cb._entry_ptr = internal global ptr @azx_firmware_cb._entry, section ".printk_index", align 4
@.str.157 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/pci/hda/hda_intel_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_azx_suspend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.158 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_azx_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_azx_runtime_suspend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_azx_runtime_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.azx_first_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 8, i32 4, i32 4, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.azx_first_init.160 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 4, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 2572, i64 3084, i64 3340, i64 5644, i64 18701, i64 20368, i64 20369, i64 20370]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 16, i64 3844, i64 8836]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.166 = private unnamed_addr constant [34 x i8] c"str__hda_intel__trace_system_name\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 36, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant [26 x i8] c"trace_event_fields_hda_pm\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [30 x i8] c"trace_event_type_funcs_hda_pm\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"print_fmt_hda_pm\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"event_azx_suspend\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"event_azx_resume\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 32, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant [26 x i8] c"event_azx_runtime_suspend\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 38, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant [25 x i8] c"event_azx_runtime_resume\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 43, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"single_cmd\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 119, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"enable_msi\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 120, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [12 x i8] c"dmic_detect\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 128, i32 13 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"param_ops_xint\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 170, i32 38 }
@___asan_gen_.202 = private unnamed_addr constant [11 x i8] c"power_save\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 176, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [13 x i8] c"pm_blacklist\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 181, i32 13 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"power_save_controller\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 189, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant [18 x i8] c"align_buffer_size\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 196, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"azx_driver\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2767, i32 26 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 11, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 110, i32 12 }
@___asan_gen_.229 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 111, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 112, i32 13 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 113, i32 14 }
@___asan_gen_.238 = private unnamed_addr constant [13 x i8] c"position_fix\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 114, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant [12 x i8] c"bdl_pos_adj\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 115, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"probe_mask\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 116, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant [11 x i8] c"probe_only\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 117, i32 12 }
@___asan_gen_.250 = private unnamed_addr constant [12 x i8] c"jackpoll_ms\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 118, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 122, i32 14 }
@___asan_gen_.256 = private unnamed_addr constant [10 x i8] c"beep_mode\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 125, i32 13 }
@___asan_gen_.259 = private unnamed_addr constant [15 x i8] c"card_list_lock\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [10 x i8] c"card_list\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 898, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 897, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2778, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant [8 x i8] c"azx_ids\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2395, i32 35 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"azx_pm\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1164, i32 32 }
@___asan_gen_.280 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2072, i32 13 }
@___asan_gen_.283 = private unnamed_addr constant [16 x i8] c"driver_denylist\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2057, i32 35 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2080, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2097, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2101, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2107, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2121, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2135, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2148, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1765, i32 37 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1784, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [12 x i8] c"pci_hda_ops\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2064, i32 40 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1795, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1823, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1831, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1837, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 778, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 665, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 683, i32 6 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 602, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [14 x i8] c"msi_deny_list\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1653, i32 35 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1678, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1687, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1654, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1658, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1661, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1662, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1663, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 724, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 87, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [10 x i8] c"callbacks\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1574, i32 38 }
@___asan_gen_.466 = private unnamed_addr constant [18 x i8] c"position_fix_list\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1511, i32 35 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1546, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1554, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1558, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1562, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1566, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1512, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1513, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1514, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1515, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1517, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1518, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1519, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1520, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1521, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1522, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1523, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1524, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1525, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1698, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1723, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant [16 x i8] c"probe_mask_list\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1604, i32 35 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1634, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1645, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1608, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1609, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1610, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1612, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1614, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1616, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1617, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1618, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1620, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2256, i32 5 }
@___asan_gen_.601 = private unnamed_addr constant [15 x i8] c"azx_max_codecs\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2225, i32 27 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2315, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1864, i32 40 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1889, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1899, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1925, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 1978, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2001, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2008, i32 23 }
@___asan_gen_.640 = private unnamed_addr constant [19 x i8] c"driver_short_names\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 345, i32 27 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2012, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 395, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 403, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 412, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 438, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 484, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 346, i32 21 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 347, i32 21 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 348, i32 21 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 350, i32 22 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 351, i32 21 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 352, i32 25 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 354, i32 21 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 355, i32 21 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 356, i32 21 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 357, i32 24 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 358, i32 22 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 359, i32 21 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 361, i32 24 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 362, i32 25 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 363, i32 25 }
@___asan_gen_.721 = private unnamed_addr constant [20 x i8] c"power_save_denylist\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2171, i32 35 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2215, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2173, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2175, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2177, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2179, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2181, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2184, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2186, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2188, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2190, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2192, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2194, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2196, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2198, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2200, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.782 = private constant [29 x i8] c"../sound/pci/hda/hda_intel.c\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.782, i32 2028, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant [37 x i8] c"../sound/pci/hda/./hda_intel_trace.h\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 27, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.791, i32 108, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [28 x i8] c"switch.table.azx_first_init\00", align 1
@___asan_gen_.794 = private unnamed_addr constant [32 x i8] c"switch.table.azx_first_init.160\00", align 1
@llvm.compiler.used = appending global [313 x ptr] [ptr @__UNIQUE_ID_align_buffer_size373, ptr @__UNIQUE_ID_align_buffer_sizetype372, ptr @__UNIQUE_ID_bdl_pos_adj349, ptr @__UNIQUE_ID_bdl_pos_adjtype348, ptr @__UNIQUE_ID_beep_mode363, ptr @__UNIQUE_ID_beep_modetype362, ptr @__UNIQUE_ID_description376, ptr @__UNIQUE_ID_dmic_detect365, ptr @__UNIQUE_ID_dmic_detecttype364, ptr @__UNIQUE_ID_enable343, ptr @__UNIQUE_ID_enable_msi359, ptr @__UNIQUE_ID_enable_msitype358, ptr @__UNIQUE_ID_enabletype342, ptr @__UNIQUE_ID_file374, ptr @__UNIQUE_ID_id341, ptr @__UNIQUE_ID_idtype340, ptr @__UNIQUE_ID_index339, ptr @__UNIQUE_ID_indextype338, ptr @__UNIQUE_ID_jackpoll_ms355, ptr @__UNIQUE_ID_jackpoll_mstype354, ptr @__UNIQUE_ID_license375, ptr @__UNIQUE_ID_model345, ptr @__UNIQUE_ID_modeltype344, ptr @__UNIQUE_ID_patch361, ptr @__UNIQUE_ID_patchtype360, ptr @__UNIQUE_ID_pm_blacklist369, ptr @__UNIQUE_ID_pm_blacklisttype368, ptr @__UNIQUE_ID_position_fix347, ptr @__UNIQUE_ID_position_fixtype346, ptr @__UNIQUE_ID_power_save367, ptr @__UNIQUE_ID_power_save_controller371, ptr @__UNIQUE_ID_power_save_controllertype370, ptr @__UNIQUE_ID_power_savetype366, ptr @__UNIQUE_ID_probe_mask351, ptr @__UNIQUE_ID_probe_masktype350, ptr @__UNIQUE_ID_probe_only353, ptr @__UNIQUE_ID_probe_onlytype352, ptr @__UNIQUE_ID_single_cmd357, ptr @__UNIQUE_ID_single_cmdtype356, ptr @__bpf_trace_tp_map_azx_resume, ptr @__bpf_trace_tp_map_azx_runtime_resume, ptr @__bpf_trace_tp_map_azx_runtime_suspend, ptr @__bpf_trace_tp_map_azx_suspend, ptr @__event_azx_resume, ptr @__event_azx_runtime_resume, ptr @__event_azx_runtime_suspend, ptr @__event_azx_suspend, ptr @__exitcall_azx_driver_exit, ptr @__initcall__kmod_snd_hda_intel__390_2778_azx_driver_init6, ptr @__param_align_buffer_size, ptr @__param_bdl_pos_adj, ptr @__param_beep_mode, ptr @__param_dmic_detect, ptr @__param_enable, ptr @__param_enable_msi, ptr @__param_id, ptr @__param_index, ptr @__param_jackpoll_ms, ptr @__param_model, ptr @__param_patch, ptr @__param_pm_blacklist, ptr @__param_position_fix, ptr @__param_power_save, ptr @__param_power_save_controller, ptr @__param_probe_mask, ptr @__param_probe_only, ptr @__param_single_cmd, ptr @__tracepoint_azx_resume, ptr @__tracepoint_azx_runtime_resume, ptr @__tracepoint_azx_runtime_suspend, ptr @__tracepoint_azx_suspend, ptr @__tracepoint_ptr_azx_resume, ptr @__tracepoint_ptr_azx_runtime_resume, ptr @__tracepoint_ptr_azx_runtime_suspend, ptr @__tracepoint_ptr_azx_suspend, ptr @azx_acquire_irq._entry, ptr @azx_acquire_irq._entry_ptr, ptr @azx_check_snoop_available._entry, ptr @azx_check_snoop_available._entry.82, ptr @azx_check_snoop_available._entry_ptr, ptr @azx_check_snoop_available._entry_ptr.84, ptr @azx_create._entry, ptr @azx_create._entry_ptr, ptr @azx_driver_exit, ptr @azx_firmware_cb._entry, ptr @azx_firmware_cb._entry_ptr, ptr @azx_first_init._entry, ptr @azx_first_init._entry.110, ptr @azx_first_init._entry_ptr, ptr @azx_first_init._entry_ptr.112, ptr @azx_get_delay_from_lpib._entry, ptr @azx_get_delay_from_lpib._entry_ptr, ptr @azx_irq_pending_work._entry, ptr @azx_irq_pending_work._entry_ptr, ptr @azx_position_ok._entry, ptr @azx_position_ok._entry_ptr, ptr @azx_probe._entry, ptr @azx_probe._entry.12, ptr @azx_probe._entry.16, ptr @azx_probe._entry.20, ptr @azx_probe._entry.23, ptr @azx_probe._entry.26, ptr @azx_probe._entry_ptr, ptr @azx_probe._entry_ptr.15, ptr @azx_probe._entry_ptr.19, ptr @azx_probe._entry_ptr.22, ptr @azx_probe._entry_ptr.25, ptr @azx_probe._entry_ptr.28, ptr @azx_probe_continue._entry, ptr @azx_probe_continue._entry.101, ptr @azx_probe_continue._entry_ptr, ptr @azx_probe_continue._entry_ptr.103, ptr @check_msi._entry, ptr @check_msi._entry.48, ptr @check_msi._entry_ptr, ptr @check_msi._entry_ptr.50, ptr @check_position_fix._entry, ptr @check_position_fix._entry_ptr, ptr @check_probe_mask._entry, ptr @check_probe_mask._entry.87, ptr @check_probe_mask._entry_ptr, ptr @check_probe_mask._entry_ptr.89, ptr @event_azx_resume, ptr @event_azx_runtime_resume, ptr @event_azx_runtime_suspend, ptr @event_azx_suspend, ptr @event_class_hda_pm, ptr @intel_get_lctl_scf._entry, ptr @intel_get_lctl_scf._entry_ptr, ptr @set_default_power_save._entry, ptr @set_default_power_save._entry_ptr, ptr @str__hda_intel__trace_system_name, ptr @trace_event_fields_hda_pm, ptr @trace_event_type_funcs_hda_pm, ptr @print_fmt_hda_pm, ptr @single_cmd, ptr @enable_msi, ptr @dmic_detect, ptr @param_ops_xint, ptr @power_save, ptr @pm_blacklist, ptr @power_save_controller, ptr @align_buffer_size, ptr @azx_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @index, ptr @id, ptr @enable, ptr @model, ptr @position_fix, ptr @bdl_pos_adj, ptr @probe_mask, ptr @probe_only, ptr @jackpoll_ms, ptr @patch, ptr @beep_mode, ptr @card_list_lock, ptr @card_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @azx_ids, ptr @azx_pm, ptr @azx_probe.dev, ptr @driver_denylist, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @azx_create.ops, ptr @azx_create.__key, ptr @.str.29, ptr @pci_hda_ops, ptr @azx_create.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @azx_create.__key.35, ptr @.str.36, ptr @azx_create.__key.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @msi_deny_list, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @init_completion.__key, ptr @.str.58, ptr @assign_position_fix.callbacks, ptr @position_fix_list, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @probe_mask_list, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @azx_max_codecs, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @driver_short_names, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @power_save_denylist, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @switch.table.azx_first_init, ptr @switch.table.azx_first_init.160], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__hda_intel__trace_system_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hda_pm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hda_pm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hda_pm to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_azx_suspend to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_azx_resume to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_azx_runtime_suspend to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_azx_runtime_resume to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @single_cmd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_detect to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_xint to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_save to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_blacklist to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_save_controller to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @align_buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @position_fix to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdl_pos_adj to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_mask to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_only to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jackpoll_ms to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_ids to i32), i32 4224, i32 5280, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_denylist to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_create.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_hda_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_create.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_create.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_create.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_acquire_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_position_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_get_delay_from_lpib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_deny_list to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_msi._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_irq_pending_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assign_position_fix.callbacks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @position_fix_list to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_position_fix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_check_snoop_available._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_check_snoop_available._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_mask_list to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_probe_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_probe_mask._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe_continue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_max_codecs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_probe_continue._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_first_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_first_init._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_short_names to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_get_lctl_scf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_save_denylist to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_default_power_save._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azx_firmware_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.azx_first_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.azx_first_init.160 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_suspend(ptr nocapture readnone %__data, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_suspend, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %chip) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_resume(ptr nocapture readnone %__data, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_resume, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %chip) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_runtime_suspend(ptr nocapture readnone %__data, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_runtime_suspend, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %chip) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_azx_runtime_resume(ptr nocapture readnone %__data, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_runtime_resume, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %chip) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hda_pm(ptr noundef %__data, ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !566

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !567

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev_index = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_index, align 8
  %dev_index6 = getelementptr inbounds %struct.trace_event_raw_hda_pm, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %dev_index6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dev_index6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hda_pm(ptr noundef %__data, ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !568
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !556) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dev_index = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 3
  %27 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_index, align 8
  %dev_index17 = getelementptr inbounds %struct.trace_event_raw_hda_pm, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %dev_index17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dev_index17, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hda_pm(ptr noundef %__data, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %chip to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @azx_driver, ptr noundef null, ptr noundef nonnull @.str.5) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @azx_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @azx_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hda_pm(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev_index = getelementptr inbounds %struct.trace_event_raw_hda_pm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_index, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_xint(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @power_save, align 4
  %call = tail call i32 @param_set_int(ptr noundef %val, ptr noundef %kp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @power_save, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @card_list_lock, i32 noundef 0) #12
  %.pn24 = load ptr, ptr @card_list, align 4
  %cmp1.not26 = icmp eq ptr %.pn24, @card_list
  br i1 %cmp1.not26, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn24, %if.end.for.body_crit_edge ]
  %hda.028 = getelementptr i8, ptr %.pn27, i32 -2104
  %probe_continued = getelementptr i8, ptr %.pn27, i32 8
  %2 = ptrtoint ptr %probe_continued to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %probe_continued, align 8
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false4:                                   ; preds = %for.body
  %disabled = getelementptr i8, ptr %.pn27, i32 -492
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load5 = load i16, ptr %disabled, align 4
  %5 = and i16 %bf.load5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not = icmp eq i16 %5, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false4.for.inc_crit_edge

lor.lhs.false4.for.inc_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end11:                                         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load i32, ptr @power_save, align 4
  %mul = mul i32 %6, 1000
  tail call void @snd_hda_set_power_save(ptr noundef %hda.028, i32 noundef %mul) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %lor.lhs.false4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp1.not = icmp eq ptr %.pn, @card_list
  br i1 %cmp1.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @card_list_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_set_power_save(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #0 align 64 {
entry:
  %card = alloca ptr, align 4
  %chip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #12
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !568
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip) #12
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %chip, align 4, !annotation !568
  %call = tail call ptr @pci_match_id(ptr noundef nonnull @driver_denylist, ptr noundef %pci) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @azx_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !569
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @azx_probe.dev, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %5 = load i8, ptr @dmic_detect, align 1, !range !569
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %do.end25, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @snd_intel_dsp_driver_probe(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8)
  %switch = icmp ult i32 %call8, 2
  br i1 %switch, label %if.then7.if.end27_crit_edge, label %do.body12

if.then7.if.end27_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

do.body12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_probe.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_probe, %if.then17)) #12
          to label %cleanup [label %if.then17], !srcloc !570

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_probe.__UNIQUE_ID_ddebug389, ptr noundef %dev18, ptr noundef nonnull @.str.11) #12
  br label %cleanup

do.end25:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26, ptr noundef nonnull @.str.13) #15
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.then7.if.end27_crit_edge
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %6 = load i32, ptr @azx_probe.dev, align 4
  %arrayidx29 = getelementptr [32 x i32], ptr @index, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx29, align 4
  %arrayidx30 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %6
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx30, align 4
  %call31 = call i32 @snd_card_new(ptr noundef %dev28, i32 noundef %8, ptr noundef %10, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.17) #15
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %13 = load i32, ptr @azx_probe.dev, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %call39 = call fastcc i32 @azx_create(ptr noundef %12, ptr noundef %pci, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end38.out_free_crit_edge, label %if.end42

if.end38.out_free_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end42:                                         ; preds = %if.end38
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %private_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %driver_data.i.i, align 4
  %disabled = getelementptr inbounds %struct.azx, ptr %17, i32 0, i32 21
  %22 = ptrtoint ptr %disabled to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %disabled, align 4
  %23 = load i32, ptr @azx_probe.dev, align 4
  %arrayidx55 = getelementptr [32 x ptr], ptr @patch, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %25, null
  %26 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %extract.t161 = icmp eq i16 %26, 0
  br i1 %tobool56.not, label %if.end42.if.end73_crit_edge, label %land.lhs.true57

if.end42.if.end73_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

land.lhs.true57:                                  ; preds = %if.end42
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool59.not = icmp eq i8 %28, 0
  br i1 %tobool59.not, label %land.lhs.true57.if.end73_crit_edge, label %do.end63

land.lhs.true57.if.end73_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

do.end63:                                         ; preds = %land.lhs.true57
  %dev64 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %29 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev64, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.24, ptr noundef nonnull %25) #15
  %31 = load i32, ptr @azx_probe.dev, align 4
  %arrayidx66 = getelementptr [32 x ptr], ptr @patch, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx66, align 4
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  %call68 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %33, ptr noundef %dev28, i32 noundef 3264, ptr noundef %35, ptr noundef nonnull @azx_firmware_cb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end63.out_free_crit_edge, label %do.end63.if.end73_crit_edge

do.end63.if.end73_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

do.end63.out_free_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end73:                                         ; preds = %do.end63.if.end73_crit_edge, %land.lhs.true57.if.end73_crit_edge, %if.end42.if.end73_crit_edge
  %schedule_probe.0.off0 = phi i1 [ %extract.t161, %land.lhs.true57.if.end73_crit_edge ], [ %extract.t161, %if.end42.if.end73_crit_edge ], [ false, %do.end63.if.end73_crit_edge ]
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %device, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i16 %37, label %if.end73.if.end116_crit_edge [
    i16 2572, label %if.end73.do.end114_crit_edge
    i16 3084, label %if.end73.do.end114_crit_edge163
    i16 3340, label %if.end73.do.end114_crit_edge164
    i16 5644, label %if.end73.do.end114_crit_edge165
    i16 18701, label %if.end73.do.end114_crit_edge166
    i16 20368, label %if.end73.do.end114_crit_edge167
    i16 20369, label %if.end73.do.end114_crit_edge168
    i16 20370, label %if.end73.do.end114_crit_edge169
  ]

if.end73.do.end114_crit_edge169:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.end73.do.end114_crit_edge168:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.end73.do.end114_crit_edge167:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.end73.do.end114_crit_edge166:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.end73.do.end114_crit_edge165:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.end73.do.end114_crit_edge164:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.end73.do.end114_crit_edge163:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.end73.do.end114_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.end73.if.end116_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

do.end114:                                        ; preds = %if.end73.do.end114_crit_edge, %if.end73.do.end114_crit_edge163, %if.end73.do.end114_crit_edge164, %if.end73.do.end114_crit_edge165, %if.end73.do.end114_crit_edge166, %if.end73.do.end114_crit_edge167, %if.end73.do.end114_crit_edge168, %if.end73.do.end114_crit_edge169
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %dev115 = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev115, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.27) #15
  br label %if.end116

if.end116:                                        ; preds = %do.end114, %if.end73.if.end116_crit_edge
  br i1 %schedule_probe.0.off0, label %if.then118, label %if.end116.if.end120_crit_edge

if.end116.if.end120_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  %probe_work = getelementptr inbounds %struct.hda_intel, ptr %17, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %probe_work, i32 noundef 0) #12
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end116.if.end120_crit_edge
  %44 = load i32, ptr @azx_probe.dev, align 4
  %inc121 = add i32 %44, 1
  store i32 %inc121, ptr @azx_probe.dev, align 4
  %45 = ptrtoint ptr %disabled to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load123 = load i16, ptr %disabled, align 4
  %46 = and i16 %bf.load123, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool127.not = icmp eq i16 %46, 0
  br i1 %tobool127.not, label %if.end120.cleanup_crit_edge, label %if.then128

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then128:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %probe_wait = getelementptr inbounds %struct.hda_intel, ptr %17, i32 0, i32 2
  call void @complete_all(ptr noundef %probe_wait) #12
  br label %cleanup

out_free:                                         ; preds = %do.end63.out_free_crit_edge, %if.end38.out_free_crit_edge
  %err.0 = phi i32 [ %call39, %if.end38.out_free_crit_edge ], [ %call68, %do.end63.out_free_crit_edge ]
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 4
  %call130 = call i32 @snd_card_free(ptr noundef %48) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then128, %if.end120.cleanup_crit_edge, %do.end36, %if.then17, %do.body12, %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call31, %do.end36 ], [ %err.0, %out_free ], [ -2, %if.then4 ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then17 ], [ 0, %if.then128 ], [ 0, %if.end120.cleanup_crit_edge ], [ -19, %do.body12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @azx_remove(ptr noundef %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %mutex.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #12
  %probe_work = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %probe_work) #12
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @snd_card_free(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @azx_shutdown(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %running = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool2.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  tail call void @azx_stop_chip(ptr noundef nonnull %3) #12
  %reg_lock.i.i = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i.i) #12
  %stream_list.i.i = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 27
  %5 = ptrtoint ptr %stream_list.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn17.i.i = load ptr, ptr %stream_list.i.i, align 4
  %cmp.not18.i.i = icmp eq ptr %.pn17.i.i, %stream_list.i.i
  br i1 %cmp.not18.i.i, label %if.then3.__azx_shutdown_chip.exit_crit_edge, label %if.then3.for.body.i.i_crit_edge

if.then3.for.body.i.i_crit_edge:                  ; preds = %if.then3
  br label %for.body.i.i

if.then3.__azx_shutdown_chip.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %__azx_shutdown_chip.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then3.for.body.i.i_crit_edge
  %.pn19.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn17.i.i, %if.then3.for.body.i.i_crit_edge ]
  %irq_pending.i.i = getelementptr i8, ptr %.pn19.i.i, i32 100
  %6 = ptrtoint ptr %irq_pending.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %irq_pending.i.i, align 8
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  store i8 %bf.clear.i.i, ptr %irq_pending.i.i, align 8
  %7 = ptrtoint ptr %.pn19.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn19.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %stream_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.__azx_shutdown_chip.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.__azx_shutdown_chip.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__azx_shutdown_chip.exit

__azx_shutdown_chip.exit:                         ; preds = %for.body.i.i.__azx_shutdown_chip.exit_crit_edge, %if.then3.__azx_shutdown_chip.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i.i) #12
  tail call void @snd_hdac_display_power(ptr noundef nonnull %3, i32 noundef 8, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %__azx_shutdown_chip.exit, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_intel_dsp_driver_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @azx_create(ptr noundef %card, ptr noundef %pci, i32 noundef %dev, i32 noundef %driver_caps, ptr nocapture noundef writeonly %rchip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rchip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rchip, align 4
  %call = tail call i32 @pcim_enable_device(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2120, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %open_mutex = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %open_mutex, ptr noundef nonnull @.str.29, ptr noundef nonnull @azx_create.__key) #12
  %card6 = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %card6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %card, ptr %card6, align 8
  %pci7 = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %pci7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pci, ptr %pci7, align 4
  %ops = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pci_hda_ops, ptr %ops, align 4
  %driver_caps8 = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %driver_caps8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %driver_caps, ptr %driver_caps8, align 8
  %and = and i32 %driver_caps, 255
  %driver_type = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %driver_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %driver_type, align 4
  %6 = load i32, ptr @enable_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i = icmp sgt i32 %6, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i166

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %msi.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 21
  %7 = ptrtoint ptr %msi.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %msi.i, align 4
  %bf.shl.i = select i1 %tobool.not.i, i16 0, i16 4096
  %bf.clear.i = and i16 %bf.load.i, -4097
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %msi.i, align 4
  br label %check_msi.exit

if.end.i166:                                      ; preds = %if.end4
  %msi2.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 21
  %8 = ptrtoint ptr %msi2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load3.i = load i16, ptr %msi2.i, align 4
  %bf.set5.i = or i16 %bf.load3.i, 4096
  store i16 %bf.set5.i, ptr %msi2.i, align 4
  %call.i165 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @msi_deny_list) #12
  %tobool6.not.i = icmp eq ptr %call.i165, null
  br i1 %tobool6.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card6, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  %13 = ptrtoint ptr %call.i165 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %call.i165, align 4
  %conv.i = zext i16 %14 to i32
  %subdevice.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i165, i32 0, i32 1
  %15 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subdevice.i, align 2
  %conv8.i = zext i16 %16 to i32
  %value.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i165, i32 0, i32 3
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %conv8.i, i32 noundef %18) #15
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  %21 = trunc i32 %20 to i16
  %22 = ptrtoint ptr %msi2.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load11.i = load i16, ptr %msi2.i, align 4
  %bf.value12.i = shl i16 %21, 12
  %bf.shl13.i = and i16 %bf.value12.i, 4096
  %bf.clear14.i = and i16 %bf.load11.i, -4097
  %bf.set15.i = or i16 %bf.shl13.i, %bf.clear14.i
  store i16 %bf.set15.i, ptr %msi2.i, align 4
  br label %check_msi.exit

if.end17.i:                                       ; preds = %if.end.i166
  %23 = ptrtoint ptr %driver_caps8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_caps8, align 8
  %and.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.check_msi.exit_crit_edge, label %do.end22.i

if.end17.i.check_msi.exit_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_msi.exit

do.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card6, align 8
  %dev24.i = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev24.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.49) #15
  %29 = ptrtoint ptr %msi2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load26.i = load i16, ptr %msi2.i, align 4
  %bf.clear27.i = and i16 %bf.load26.i, -4097
  store i16 %bf.clear27.i, ptr %msi2.i, align 4
  br label %check_msi.exit

check_msi.exit:                                   ; preds = %do.end22.i, %if.end17.i.check_msi.exit_crit_edge, %do.end.i, %if.then.i
  %dev_index = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %dev_index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dev, ptr %dev_index, align 8
  %arrayidx = getelementptr [32 x i32], ptr @jackpoll_ms, i32 0, i32 %dev
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = add i32 %32, -50
  call void @__sanitizer_cov_trace_const_cmp4(i32 59951, i32 %33)
  %34 = icmp ult i32 %33, 59951
  br i1 %34, label %if.else.i, label %check_msi.exit.if.end15_crit_edge

check_msi.exit.if.end15_crit_edge:                ; preds = %check_msi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.else.i:                                        ; preds = %check_msi.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %32) #12
  %jackpoll_interval = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 11
  %35 = ptrtoint ptr %jackpoll_interval to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call2.i, ptr %jackpoll_interval, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else.i, %check_msi.exit.if.end15_crit_edge
  %pcm_list = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 16
  %36 = ptrtoint ptr %pcm_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %pcm_list, ptr %pcm_list, align 4
  %prev.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 16, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pcm_list, ptr %prev.i, align 4
  %irq_pending_work = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %irq_pending_work, i32 noundef 0) #12
  %38 = ptrtoint ptr %irq_pending_work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %irq_pending_work, align 8
  %lockdep_map = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.31, ptr noundef nonnull @azx_create.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry20 = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i167 = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry20, ptr %prev.i167, align 4
  %func = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @azx_irq_pending_work, ptr %func, align 4
  %list = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %list, ptr %list, align 4
  %prev.i168 = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %prev.i168 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %list, ptr %prev.i168, align 4
  %probe_wait = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %probe_wait to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %probe_wait, align 4
  %wait.i = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @init_completion.__key) #12
  %arrayidx24 = getelementptr [32 x i32], ptr @position_fix, i32 0, i32 %dev
  %45 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx24, align 4
  %call25 = tail call fastcc i32 @check_position_fix(ptr noundef nonnull %call.i, i32 noundef %46)
  %arrayidx.i = getelementptr [7 x ptr], ptr @assign_position_fix.callbacks, i32 0, i32 %call25
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %get_position.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 13
  %arrayidx1.i = getelementptr %struct.azx, ptr %call.i, i32 0, i32 13, i32 1
  %49 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %arrayidx1.i, align 4
  %50 = ptrtoint ptr %get_position.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %get_position.i, align 8
  %51 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call25, label %if.end15.assign_position_fix.exit_crit_edge [
    i32 4, label %if.then.i169
    i32 2, label %if.end15.land.lhs.true.i_crit_edge
    i32 5, label %if.end15.land.lhs.true.i_crit_edge197
    i32 6, label %if.then14.i
  ]

if.end15.land.lhs.true.i_crit_edge197:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end15.land.lhs.true.i_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end15.assign_position_fix.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %assign_position_fix.exit

if.then.i169:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx1.i, align 4
  br label %assign_position_fix.exit

land.lhs.true.i:                                  ; preds = %if.end15.land.lhs.true.i_crit_edge, %if.end15.land.lhs.true.i_crit_edge197
  %53 = ptrtoint ptr %driver_caps8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %driver_caps8, align 8
  %and.i171 = and i32 %54, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171)
  %tobool.not.i172 = icmp eq i32 %and.i171, 0
  br i1 %tobool.not.i172, label %land.lhs.true.i.assign_position_fix.exit_crit_edge, label %if.then8.i

land.lhs.true.i.assign_position_fix.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %assign_position_fix.exit

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %get_delay.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 14
  %arrayidx9.i = getelementptr %struct.azx, ptr %call.i, i32 0, i32 14, i32 1
  %55 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @azx_get_delay_from_lpib, ptr %arrayidx9.i, align 4
  %56 = ptrtoint ptr %get_delay.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @azx_get_delay_from_lpib, ptr %get_delay.i, align 8
  br label %assign_position_fix.exit

if.then14.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %get_delay15.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 14
  %arrayidx16.i = getelementptr %struct.azx, ptr %call.i, i32 0, i32 14, i32 1
  %57 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @azx_get_delay_from_fifo, ptr %arrayidx16.i, align 4
  %58 = ptrtoint ptr %get_delay15.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @azx_get_delay_from_fifo, ptr %get_delay15.i, align 8
  br label %assign_position_fix.exit

assign_position_fix.exit:                         ; preds = %if.then14.i, %if.then8.i, %land.lhs.true.i.assign_position_fix.exit_crit_edge, %if.then.i169, %if.end15.assign_position_fix.exit_crit_edge
  %59 = load i32, ptr @single_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp26 = icmp slt i32 %59, 0
  %fallback_to_single_cmd = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 21
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %assign_position_fix.exit
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %fallback_to_single_cmd to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load = load i16, ptr %fallback_to_single_cmd, align 4
  %bf.set = or i16 %bf.load, 16384
  br label %if.end31

if.else:                                          ; preds = %assign_position_fix.exit
  call void @__sanitizer_cov_trace_pc() #14
  %61 = trunc i32 %59 to i16
  %62 = ptrtoint ptr %fallback_to_single_cmd to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load28 = load i16, ptr %fallback_to_single_cmd, align 4
  %bf.value = shl i16 %61, 13
  %bf.shl = and i16 %bf.value, 8192
  %bf.clear29 = and i16 %bf.load28, -8193
  %bf.set30 = or i16 %bf.clear29, %bf.shl
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %bf.set30.sink = phi i16 [ %bf.set30, %if.else ], [ %bf.set, %if.then27 ]
  %63 = ptrtoint ptr %fallback_to_single_cmd to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %bf.set30.sink, ptr %fallback_to_single_cmd, align 4
  %64 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card6, align 8
  %dev.i174 = getelementptr inbounds %struct.snd_card, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %dev.i174 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i174, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.80) #15
  %snoop1.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 21
  %68 = ptrtoint ptr %snoop1.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i175 = load i16, ptr %snoop1.i, align 4
  %bf.set.i176 = and i16 %bf.load.i175, -1537
  %bf.clear6.i = or i16 %bf.set.i176, 1024
  store i16 %bf.clear6.i, ptr %snoop1.i, align 4
  %arrayidx32 = getelementptr [32 x i32], ptr @bdl_pos_adj, i32 0, i32 %dev
  %69 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp33 = icmp slt i32 %70, 0
  br i1 %cmp33, label %if.then34, label %if.end31.if.end39_crit_edge

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then34:                                        ; preds = %if.end31
  %71 = ptrtoint ptr %pci7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci7, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %74)
  %cmp.i178 = icmp eq i16 %74, -32634
  br i1 %cmp.i178, label %if.then.i179, label %if.then34.if.end.i180_crit_edge

if.then34.if.end.i180_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i180

if.then.i179:                                     ; preds = %if.then34
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 8
  %75 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %device.i, align 2
  %77 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.162)
  switch i16 %76, label %if.then.i179.if.end.i180_crit_edge [
    i16 3844, label %if.then.i179.if.end39_crit_edge
    i16 8836, label %if.then.i179.if.end39_crit_edge198
  ]

if.then.i179.if.end39_crit_edge198:               ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then.i179.if.end39_crit_edge:                  ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then.i179.if.end.i180_crit_edge:               ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i180

if.end.i180:                                      ; preds = %if.then.i179.if.end.i180_crit_edge, %if.then34.if.end.i180_crit_edge
  %78 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %switch.inv.i = icmp ugt i32 %79, 1
  %..i = select i1 %switch.inv.i, i32 32, i32 1
  br label %if.end39

if.end39:                                         ; preds = %if.end.i180, %if.then.i179.if.end39_crit_edge, %if.then.i179.if.end39_crit_edge198, %if.end31.if.end39_crit_edge
  %.sink = phi i32 [ 32, %if.then.i179.if.end39_crit_edge ], [ 32, %if.then.i179.if.end39_crit_edge198 ], [ %..i, %if.end.i180 ], [ %70, %if.end31.if.end39_crit_edge ]
  %bdl_pos_adj38 = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 20
  %80 = ptrtoint ptr %bdl_pos_adj38 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.sink, ptr %bdl_pos_adj38, align 8
  %arrayidx40 = getelementptr [32 x ptr], ptr @model, i32 0, i32 %dev
  %81 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx40, align 4
  %call41 = tail call i32 @azx_bus_init(ptr noundef nonnull %call.i, ptr noundef %82) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end39.cleanup_crit_edge, label %if.end44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %83 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %84)
  %cmp49 = icmp eq i32 %84, 11
  br i1 %cmp49, label %do.body51, label %if.end44.if.end67_crit_edge

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

do.body51:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_create.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_create, %if.then56)) #12
          to label %do.end61 [label %if.then56], !srcloc !570

if.then56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card6, align 8
  %dev58 = getelementptr inbounds %struct.snd_card, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev58, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_create.__UNIQUE_ID_ddebug385, ptr noundef %88, ptr noundef nonnull @.str.33) #12
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %do.body51
  %needs_damn_long_delay = getelementptr inbounds %struct.hdac_bus, ptr %call.i, i32 0, i32 28
  %89 = ptrtoint ptr %needs_damn_long_delay to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load64 = load i16, ptr %needs_damn_long_delay, align 4
  %bf.set66 = or i16 %bf.load64, 64
  store i16 %bf.set66, ptr %needs_damn_long_delay, align 4
  br label %if.end67

if.end67:                                         ; preds = %do.end61, %if.end44.if.end67_crit_edge
  %arrayidx.i182 = getelementptr [32 x i32], ptr @probe_mask, i32 0, i32 %dev
  %90 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i182, align 4
  %codec_probe_mask.i = getelementptr inbounds %struct.azx, ptr %call.i, i32 0, i32 17
  %92 = ptrtoint ptr %codec_probe_mask.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %codec_probe_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %cmp.i183 = icmp eq i32 %91, -1
  br i1 %cmp.i183, label %if.then.i187, label %if.end67.if.end7.i_crit_edge

if.end67.if.end7.i_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i187:                                     ; preds = %if.end67
  %93 = ptrtoint ptr %pci7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pci7, align 4
  %call.i185 = tail call ptr @snd_pci_quirk_lookup(ptr noundef %94, ptr noundef nonnull @probe_mask_list) #12
  %tobool.not.i186 = icmp eq ptr %call.i185, null
  br i1 %tobool.not.i186, label %if.then.i187.if.end7.i_crit_edge, label %do.end.i192

if.then.i187.if.end7.i_crit_edge:                 ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

do.end.i192:                                      ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %card6, align 8
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %96, i32 0, i32 27
  %97 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev3.i, align 8
  %value.i189 = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i185, i32 0, i32 3
  %99 = ptrtoint ptr %value.i189 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %value.i189, align 4
  %101 = ptrtoint ptr %call.i185 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %call.i185, align 4
  %conv.i190 = zext i16 %102 to i32
  %subdevice.i191 = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i185, i32 0, i32 1
  %103 = ptrtoint ptr %subdevice.i191 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %subdevice.i191, align 2
  %conv4.i = zext i16 %104 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.85, i32 noundef %100, i32 noundef %conv.i190, i32 noundef %conv4.i) #15
  %105 = ptrtoint ptr %value.i189 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %value.i189, align 4
  %107 = ptrtoint ptr %codec_probe_mask.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %codec_probe_mask.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i192, %if.then.i187.if.end7.i_crit_edge, %if.end67.if.end7.i_crit_edge
  %108 = ptrtoint ptr %codec_probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %codec_probe_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp9.not.i = icmp eq i32 %109, -1
  %and.i193 = and i32 %109, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193)
  %tobool12.not.i = icmp eq i32 %and.i193, 0
  %or.cond.i = or i1 %cmp9.not.i, %tobool12.not.i
  br i1 %or.cond.i, label %if.end7.i.check_probe_mask.exit_crit_edge, label %if.then13.i

if.end7.i.check_probe_mask.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_probe_mask.exit

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %and15.i = and i32 %109, 255
  %codec_mask.i = getelementptr inbounds %struct.hdac_bus, ptr %call.i, i32 0, i32 18
  %110 = ptrtoint ptr %codec_mask.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and15.i, ptr %codec_mask.i, align 4
  %111 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %card6, align 8
  %dev20.i = getelementptr inbounds %struct.snd_card, ptr %112, i32 0, i32 27
  %113 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev20.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.88, i32 noundef %and15.i) #15
  br label %check_probe_mask.exit

check_probe_mask.exit:                            ; preds = %if.then13.i, %if.end7.i.check_probe_mask.exit_crit_edge
  %call68 = tail call i32 @snd_device_new(ptr noundef %card, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @azx_create.ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end73, label %do.body77

do.end73:                                         ; preds = %check_probe_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev74 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %115 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.34) #15
  tail call fastcc void @azx_free(ptr noundef nonnull %call.i)
  br label %cleanup

do.body77:                                        ; preds = %check_probe_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  %probe_work = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %probe_work, i32 noundef 0) #12
  %117 = ptrtoint ptr %probe_work to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -64, ptr %probe_work, align 4
  %lockdep_map85 = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map85, ptr noundef nonnull @.str.36, ptr noundef nonnull @azx_create.__key.35, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry88 = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %118 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %entry88, ptr %entry88, align 4
  %prev.i194 = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %prev.i194 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %entry88, ptr %prev.i194, align 4
  %func91 = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %120 = ptrtoint ptr %func91 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @azx_probe_work, ptr %func91, align 4
  %timer = getelementptr inbounds %struct.hda_intel, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.38, ptr noundef nonnull @azx_create.__key.37) #12
  %121 = ptrtoint ptr %rchip to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i, ptr %rchip, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body77, %do.end73, %if.end39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call68, %do.end73 ], [ 0, %do.body77 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call41, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @azx_firmware_cb(ptr noundef %fw, ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %context, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fw1 = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %fw1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fw, ptr %fw1, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_card, ptr %context, i32 0, i32 27
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.155) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %disabled = getelementptr inbounds %struct.azx, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %disabled to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %disabled, align 4
  %6 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not = icmp eq i16 %6, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @azx_probe_continue(ptr noundef %1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  tail call fastcc void @azx_free(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_dev_disconnect(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %shutdown = getelementptr inbounds %struct.hda_bus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %shutdown, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %shutdown, align 4
  %unsol_work = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 17
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %unsol_work) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @azx_irq_pending_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1904
  %irq_pending_warned = getelementptr i8, ptr %work, i32 208
  %0 = ptrtoint ptr %irq_pending_warned to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %irq_pending_warned, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr i8, ptr %work, i32 -472
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.56, i32 noundef %6) #15
  %7 = ptrtoint ptr %irq_pending_warned to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load5 = load i8, ptr %irq_pending_warned, align 8
  %bf.set = or i8 %bf.load5, -128
  store i8 %bf.set, ptr %irq_pending_warned, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %reg_lock = getelementptr i8, ptr %work, i32 -884
  %stream_list = getelementptr i8, ptr %work, i32 -908
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %8 = ptrtoint ptr %stream_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn7482 = load ptr, ptr %stream_list, align 4
  %cmp.not7683 = icmp eq ptr %.pn7482, %stream_list
  br i1 %cmp.not7683, label %if.end.for.end.thread_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end48.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  br label %if.then47

for.body:                                         ; preds = %for.body.backedge, %if.end.for.body_crit_edge
  %.pn78 = phi ptr [ %.pn78.be, %for.body.backedge ], [ %.pn7482, %if.end.for.body_crit_edge ]
  %pending.077 = phi i32 [ %pending.077.be, %for.body.backedge ], [ 0, %if.end.for.body_crit_edge ]
  %s.079 = getelementptr i8, ptr %.pn78, i32 -180
  %irq_pending = getelementptr i8, ptr %.pn78, i32 100
  %9 = ptrtoint ptr %irq_pending to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load14 = load i8, ptr %irq_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load14)
  %tobool17.not = icmp sgt i8 %bf.load14, -1
  br i1 %tobool17.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %substream = getelementptr i8, ptr %.pn78, i32 -112
  %10 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %running = getelementptr i8, ptr %.pn78, i32 -92
  %12 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load20 = load i8, ptr %running, align 8
  %13 = and i8 %bf.load20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast23.not = icmp eq i8 %13, 0
  br i1 %bf.cast23.not, label %lor.lhs.false19.cleanup_crit_edge, label %if.end25

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false19
  %call = tail call fastcc i32 @azx_position_ok(ptr noundef %add.ptr, ptr noundef %s.079)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp26 = icmp sgt i32 %call, 0
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %irq_pending to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load29 = load i8, ptr %irq_pending, align 8
  %bf.clear30 = and i8 %bf.load29, 127
  store i8 %bf.clear30, ptr %irq_pending, align 8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  %15 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %16) #12
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  br label %cleanup

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp35.not = icmp eq i32 %call, 0
  %inc = add i32 %pending.077, 1
  %spec.select = select i1 %cmp35.not, i32 %inc, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %pending.2 = phi i32 [ %pending.077, %lor.lhs.false19.cleanup_crit_edge ], [ %pending.077, %lor.lhs.false.cleanup_crit_edge ], [ %pending.077, %for.body.cleanup_crit_edge ], [ %pending.077, %if.then27 ], [ %spec.select, %if.else ]
  %17 = ptrtoint ptr %.pn78 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn78, align 4
  %cmp.not = icmp eq ptr %.pn, %stream_list
  br i1 %cmp.not, label %for.end, label %cleanup.for.body.backedge_crit_edge

cleanup.for.body.backedge_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

for.body.backedge:                                ; preds = %if.end48.for.body.backedge_crit_edge, %cleanup.for.body.backedge_crit_edge
  %.pn78.be = phi ptr [ %.pn, %cleanup.for.body.backedge_crit_edge ], [ %.pn74, %if.end48.for.body.backedge_crit_edge ]
  %pending.077.be = phi i32 [ %pending.2, %cleanup.for.body.backedge_crit_edge ], [ 0, %if.end48.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %cleanup
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.2)
  %tobool46.not = icmp eq i32 %pending.2, 0
  br i1 %tobool46.not, label %for.end.if.then47_crit_edge, label %if.end48

for.end.if.then47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.then47:                                        ; preds = %for.end.if.then47_crit_edge, %for.end.thread
  ret void

if.end48:                                         ; preds = %for.end
  tail call void @msleep(i32 noundef 1) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %18 = ptrtoint ptr %stream_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn74 = load ptr, ptr %stream_list, align 4
  %cmp.not76 = icmp eq ptr %.pn74, %stream_list
  br i1 %cmp.not76, label %if.end48.for.end.thread_crit_edge, label %if.end48.for.body.backedge_crit_edge

if.end48.for.body.backedge_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

if.end48.for.end.thread_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_position_fix(ptr nocapture noundef readonly %chip, i32 noundef %fix) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %fix)
  %switch = icmp ult i32 %fix, 7
  br i1 %switch, label %entry.cleanup_crit_edge, label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %pci = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %call = tail call ptr @snd_pci_quirk_lookup(ptr noundef %1, ptr noundef nonnull @position_fix_list) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %value = getelementptr inbounds %struct.snd_pci_quirk, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call, align 4
  %conv = zext i16 %9 to i32
  %subdevice = getelementptr inbounds %struct.snd_pci_quirk, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %subdevice to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subdevice, align 2
  %conv1 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.59, i32 noundef %7, i32 noundef %conv, i32 noundef %conv1) #15
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %driver_type = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 4
  %14 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp = icmp eq i32 %15, 8
  br i1 %cmp, label %do.body5, label %if.end16

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_position_fix.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_position_fix, %if.then10)) #12
          to label %cleanup [label %if.then10], !srcloc !570

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %card11 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %16 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card11, align 8
  %dev12 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_position_fix.__UNIQUE_ID_ddebug381, ptr noundef %19, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %driver_caps = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %20 = ptrtoint ptr %driver_caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_caps, align 8
  %and = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end37, label %do.body19

do.body19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_position_fix.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_position_fix, %if.then31)) #12
          to label %cleanup [label %if.then31], !srcloc !570

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %card32 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %22 = ptrtoint ptr %card32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card32, align 8
  %dev33 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_position_fix.__UNIQUE_ID_ddebug382, ptr noundef %25, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end16
  %and39 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end60, label %do.body42

do.body42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_position_fix.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_position_fix, %if.then54)) #12
          to label %cleanup [label %if.then54], !srcloc !570

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %card55 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %26 = ptrtoint ptr %card55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card55, align 8
  %dev56 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev56, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_position_fix.__UNIQUE_ID_ddebug383, ptr noundef %29, ptr noundef nonnull @.str.63) #12
  br label %cleanup

if.end60:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp62 = icmp eq i32 %15, 3
  br i1 %cmp62, label %do.body65, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_position_fix.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_position_fix, %if.then77)) #12
          to label %cleanup [label %if.then77], !srcloc !570

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  %card78 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %30 = ptrtoint ptr %card78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card78, align 8
  %dev79 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev79, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_position_fix.__UNIQUE_ID_ddebug384, ptr noundef %33, ptr noundef nonnull @.str.64) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body65, %if.end60.cleanup_crit_edge, %if.then54, %do.body42, %if.then31, %do.body19, %if.then10, %do.body5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end ], [ %fix, %entry.cleanup_crit_edge ], [ 3, %if.then10 ], [ 6, %if.then31 ], [ 1, %if.then54 ], [ 5, %if.then77 ], [ 0, %if.end60.cleanup_crit_edge ], [ 3, %do.body5 ], [ 6, %do.body19 ], [ 1, %do.body42 ], [ 5, %do.body65 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_bus_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @azx_free(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci1, align 4
  %freed = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 5
  %2 = ptrtoint ptr %freed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %freed, align 8
  %3 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_caps = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %4 = ptrtoint ptr %driver_caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_caps, align 8
  %and = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %running = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 21
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load4 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load4)
  %tobool7.not = icmp sgt i16 %bf.load4, -1
  br i1 %tobool7.not, label %land.lhs.true.if.end11_crit_edge, label %if.then8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !571
  tail call void @pm_runtime_forbid(ptr noundef %dev) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %running12 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 21
  %8 = ptrtoint ptr %running12 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load13 = load i16, ptr %running12, align 4
  %bf.clear14 = and i16 %bf.load13, 32767
  store i16 %bf.clear14, ptr %running12, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @card_list_lock, i32 noundef 0) #12
  %list.i = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 4
  %call.i.i.i66 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i66, label %if.end.i.i.i, label %if.end11.azx_del_card_list.exit_crit_edge

if.end11.azx_del_card_list.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %azx_del_card_list.exit

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %azx_del_card_list.exit

azx_del_card_list.exit:                           ; preds = %if.end.i.i.i, %if.end11.azx_del_card_list.exit_crit_edge
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @card_list_lock) #12
  %17 = ptrtoint ptr %freed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load15 = load i8, ptr %freed, align 8
  %bf.set17 = or i8 %bf.load15, 8
  store i8 %bf.set17, ptr %freed, align 8
  %probe_wait = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 2
  tail call void @complete_all(ptr noundef %probe_wait) #12
  %chip_init = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 28
  %18 = ptrtoint ptr %chip_init to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load18 = load i16, ptr %chip_init, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load18)
  %bf.cast20.not = icmp sgt i16 %bf.load18, -1
  br i1 %bf.cast20.not, label %azx_del_card_list.exit.if.end22_crit_edge, label %if.then21

azx_del_card_list.exit.if.end22_crit_edge:        ; preds = %azx_del_card_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %azx_del_card_list.exit
  %reg_lock.i = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  %stream_list.i = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 27
  %19 = ptrtoint ptr %stream_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn17.i = load ptr, ptr %stream_list.i, align 4
  %cmp.not18.i = icmp eq ptr %.pn17.i, %stream_list.i
  br i1 %cmp.not18.i, label %if.then21.azx_clear_irq_pending.exit_crit_edge, label %if.then21.for.body.i_crit_edge

if.then21.for.body.i_crit_edge:                   ; preds = %if.then21
  br label %for.body.i

if.then21.azx_clear_irq_pending.exit_crit_edge:   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %azx_clear_irq_pending.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then21.for.body.i_crit_edge
  %.pn19.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn17.i, %if.then21.for.body.i_crit_edge ]
  %irq_pending.i = getelementptr i8, ptr %.pn19.i, i32 100
  %20 = ptrtoint ptr %irq_pending.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %irq_pending.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %irq_pending.i, align 8
  %21 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %stream_list.i
  br i1 %cmp.not.i, label %for.body.i.azx_clear_irq_pending.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.azx_clear_irq_pending.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %azx_clear_irq_pending.exit

azx_clear_irq_pending.exit:                       ; preds = %for.body.i.azx_clear_irq_pending.exit_crit_edge, %if.then21.azx_clear_irq_pending.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #12
  tail call void @azx_stop_all_streams(ptr noundef %chip) #12
  tail call void @azx_stop_chip(ptr noundef %chip) #12
  br label %if.end22

if.end22:                                         ; preds = %azx_clear_irq_pending.exit, %azx_del_card_list.exit.if.end22_crit_edge
  %irq = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 5
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp = icmp sgt i32 %23, -1
  br i1 %cmp, label %if.then23, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @free_irq(i32 noundef %23, ptr noundef %chip) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end22.if.end25_crit_edge
  tail call void @snd_hdac_bus_free_stream_pages(ptr noundef %chip) #12
  tail call void @azx_free_streams(ptr noundef %chip) #12
  tail call void @snd_hdac_bus_exit(ptr noundef %chip) #12
  %fw = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 19
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %25) #12
  tail call void @snd_hdac_display_power(ptr noundef %chip, i32 noundef 8, i1 noundef zeroext false) #12
  %26 = ptrtoint ptr %freed to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load37 = load i8, ptr %freed, align 8
  %bf.set39 = or i8 %bf.load37, 4
  store i8 %bf.set39, ptr %freed, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @azx_probe_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2004
  tail call fastcc void @azx_probe_continue(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disable_msi_reset_irq(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %chip) #12
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq, align 4
  %card = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 8
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sync_irq, align 4
  %pci = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  tail call void @pci_disable_msi(ptr noundef %7) #12
  %msi = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 21
  %8 = ptrtoint ptr %msi to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %msi, align 4
  %bf.clear = and i16 %bf.load, -4097
  store i16 %bf.clear, ptr %msi, align 4
  %call3 = tail call fastcc i32 @azx_acquire_irq(ptr noundef %chip, i32 noundef 1)
  %call3.lobit = ashr i32 %call3, 31
  ret i32 %call3.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_position_check(ptr noundef %chip, ptr noundef %azx_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @azx_position_ok(ptr noundef %chip, ptr noundef %azx_dev)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %irq_pending = getelementptr inbounds %struct.azx_dev, ptr %azx_dev, i32 0, i32 1
  %1 = ptrtoint ptr %irq_pending to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %irq_pending, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %irq_pending, align 8
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %irq_pending3 = getelementptr inbounds %struct.azx_dev, ptr %azx_dev, i32 0, i32 1
  %2 = ptrtoint ptr %irq_pending3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load4 = load i8, ptr %irq_pending3, align 8
  %bf.set6 = or i8 %bf.load4, -128
  store i8 %bf.set6, ptr %irq_pending3, align 8
  %irq_pending_work = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %irq_pending_work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @azx_acquire_irq(ptr noundef %chip, i32 noundef %do_disconnect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %msi = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 21
  %4 = ptrtoint ptr %msi to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %msi, align 4
  %5 = lshr i16 %bf.load, 5
  %6 = and i16 %5, 128
  %7 = xor i16 %6, 128
  %8 = zext i16 %7 to i32
  %card = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 8
  %irq_descr = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 5
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @azx_interrupt, ptr noundef null, i32 noundef %8, ptr noundef %irq_descr, ptr noundef %chip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end10, label %do.end

do.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.39, i32 noundef %18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_disconnect)
  %tobool6.not = icmp eq i32 %do_disconnect, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.then7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 8
  %call9 = tail call i32 @snd_card_disconnect(ptr noundef %20) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  %irq12 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %irq12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq12, align 4
  %irq13 = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 5
  %25 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irq13, align 4
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 8
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %24, ptr %sync_irq, align 4
  %29 = load ptr, ptr %pci, align 4
  %30 = ptrtoint ptr %msi to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load18 = load i16, ptr %msi, align 4
  %31 = lshr i16 %bf.load18, 12
  %.lobit = and i16 %31, 1
  %32 = xor i16 %.lobit, 1
  %33 = zext i16 %32 to i32
  tail call void @pci_intx(ptr noundef %29, i32 noundef %33) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %if.then7 ], [ -1, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @azx_position_ok(ptr noundef %chip, ptr noundef %azx_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 10
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %stream3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream3, align 4
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !572
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !573
  %start_wallclk = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 18
  %10 = ptrtoint ptr %start_wallclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_wallclk, align 8
  %sub = sub i32 %9, %11
  %period_wallclk = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 19
  %12 = ptrtoint ptr %period_wallclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_wallclk, align 4
  %mul = shl i32 %13, 1
  %div = udiv i32 %mul, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div)
  %cmp = icmp ult i32 %sub, %div
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_position = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 13
  %arrayidx = getelementptr %struct.azx, ptr %chip, i32 0, i32 13, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 %15(ptr noundef %chip, ptr noundef %azx_dev) #12
  br label %if.end39

if.else:                                          ; preds = %if.end
  %call12 = tail call i32 @azx_get_pos_posbuf(ptr noundef %chip, ptr noundef %azx_dev) #12
  %16 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %call12, label %if.else30 [
    i32 0, label %if.else.do.end_crit_edge
    i32 -1, label %if.else.do.end_crit_edge193
  ]

if.else.do.end_crit_edge193:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.else.do.end_crit_edge, %if.else.do.end_crit_edge193
  %card = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.41) #15
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @azx_get_pos_lpib, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_position, align 8
  %cmp20 = icmp eq ptr %23, @azx_get_pos_lpib
  br i1 %cmp20, label %land.lhs.true, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true:                                    ; preds = %do.end
  %arrayidx22 = getelementptr %struct.azx, ptr %chip, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx22, align 4
  %cmp23 = icmp eq ptr %25, @azx_get_pos_lpib
  br i1 %cmp23, label %if.then24, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %use_posbuf = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 28
  %26 = ptrtoint ptr %use_posbuf to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %use_posbuf, align 4
  %bf.clear = and i16 %bf.load, -4097
  store i16 %bf.clear, ptr %use_posbuf, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %land.lhs.true.if.end27_crit_edge, %do.end.if.end27_crit_edge
  %call28 = tail call i32 @azx_get_pos_lpib(ptr noundef %chip, ptr noundef %azx_dev) #12
  %arrayidx29 = getelementptr %struct.azx, ptr %chip, i32 0, i32 14, i32 %5
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx29, align 4
  br label %if.end39

if.else30:                                        ; preds = %if.else
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @azx_get_pos_posbuf, ptr %arrayidx, align 4
  %driver_caps = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %29 = ptrtoint ptr %driver_caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %driver_caps, align 8
  %and = and i32 %30, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.else30.if.end39_crit_edge, label %if.then34

if.else30.if.end39_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx36 = getelementptr %struct.azx, ptr %chip, i32 0, i32 14, i32 %5
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @azx_get_delay_from_lpib, ptr %arrayidx36, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.else30.if.end39_crit_edge, %if.end27, %if.then8
  %pos.0 = phi i32 [ %call11, %if.then8 ], [ %call28, %if.end27 ], [ %call12, %if.then34 ], [ %call12, %if.else30.if.end39_crit_edge ]
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 4
  %32 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %33)
  %cmp41.not = icmp ult i32 %pos.0, %33
  %spec.store.select = select i1 %cmp41.not, i32 %pos.0, i32 0
  %period_bytes = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 5
  %34 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %period_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool45.not = icmp eq i32 %35, 0
  br i1 %tobool45.not, label %land.rhs, label %if.end90

land.rhs:                                         ; preds = %if.end39
  %.b191 = load i1, ptr @azx_position_ok.__already_done, align 1
  br i1 %.b191, label %land.rhs.cleanup_crit_edge, label %if.then54, !prof !566

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then54:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @azx_position_ok.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 684, i32 noundef 9, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end90:                                         ; preds = %if.end39
  %36 = ptrtoint ptr %period_wallclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %period_wallclk, align 4
  %mul93 = mul i32 %37, 5
  %div94189 = lshr i32 %mul93, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div94189)
  %cmp95 = icmp ult i32 %sub, %div94189
  br i1 %cmp95, label %land.lhs.true96, label %if.end90.if.end105_crit_edge

if.end90.if.end105_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

land.lhs.true96:                                  ; preds = %if.end90
  %rem = urem i32 %spec.store.select, %35
  %div101190 = lshr i32 %35, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %div101190)
  %cmp102 = icmp ugt i32 %rem, %div101190
  br i1 %cmp102, label %if.then103, label %land.lhs.true96.if.end105_crit_edge

land.lhs.true96.if.end105_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.then103:                                       ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  %bdl_pos_adj = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 20
  %38 = ptrtoint ptr %bdl_pos_adj to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bdl_pos_adj, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool104.not = icmp eq i32 %39, 0
  %cond = sext i1 %tobool104.not to i32
  br label %cleanup

if.end105:                                        ; preds = %land.lhs.true96.if.end105_crit_edge, %if.end90.if.end105_crit_edge
  %40 = ptrtoint ptr %start_wallclk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %start_wallclk, align 8
  %add = add i32 %41, %sub
  store i32 %add, ptr %start_wallclk, align 8
  %no_period_wakeup = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 16
  %42 = ptrtoint ptr %no_period_wakeup to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load109 = load i8, ptr %no_period_wakeup, align 8
  %43 = and i8 %bf.load109, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %bf.cast.not = icmp eq i8 %43, 0
  br i1 %bf.cast.not, label %if.end112, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end112:                                        ; preds = %if.end105
  %hw_ptr_base = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %hw_ptr_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_ptr_base, align 4
  %hw_ptr_interrupt = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 6
  %46 = ptrtoint ptr %hw_ptr_interrupt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hw_ptr_interrupt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp113.not = icmp eq i32 %45, %47
  br i1 %cmp113.not, label %if.end115, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end115:                                        ; preds = %if.end112
  %mul.i = shl i32 %spec.store.select, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %48 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %49
  %add118 = add i32 %div.i, %45
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %50 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %status, align 4
  %hw_ptr = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add118, i32 %53)
  %cmp119 = icmp ult i32 %add118, %53
  br i1 %cmp119, label %if.then120, label %if.end115.if.end122_crit_edge

if.end115.if.end122_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %54 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buffer_size, align 4
  %add121 = add i32 %55, %add118
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end115.if.end122_crit_edge
  %hwptr.0 = phi i32 [ %add121, %if.then120 ], [ %add118, %if.end115.if.end122_crit_edge ]
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %56 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %period_size, align 4
  %add124 = add i32 %57, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %hwptr.0, i32 %add124)
  %cmp125 = icmp ult i32 %hwptr.0, %add124
  br i1 %cmp125, label %if.then126, label %if.end122.cleanup_crit_edge

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  %bdl_pos_adj127 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 20
  %58 = ptrtoint ptr %bdl_pos_adj127 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bdl_pos_adj127, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool128.not = icmp eq i32 %59, 0
  %cond129 = sext i1 %tobool128.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %if.end122.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.then103, %if.then54, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then103 ], [ %cond129, %if.then126 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then54 ], [ 1, %if.end105.cleanup_crit_edge ], [ 1, %if.end112.cleanup_crit_edge ], [ 1, %if.end122.cleanup_crit_edge ], [ -1, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_get_pos_posbuf(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_get_pos_lpib(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_get_delay_from_lpib(ptr noundef %chip, ptr noundef %azx_dev, i32 noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 10
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %stream2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream2, align 4
  %call = tail call i32 @azx_get_pos_lpib(ptr noundef %chip, ptr noundef %azx_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 %pos, %call
  %sub3 = sub i32 %call, %pos
  %delay.0 = select i1 %cmp, i32 %sub, i32 %sub3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay.0)
  %cmp4 = icmp slt i32 %delay.0, 0
  br i1 %cmp4, label %if.then5, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then5:                                         ; preds = %entry
  %delay_negative_threshold = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 22
  %4 = ptrtoint ptr %delay_negative_threshold to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay_negative_threshold, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %delay.0, i32 %5)
  %cmp7.not = icmp slt i32 %delay.0, %5
  br i1 %cmp7.not, label %if.else9, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.else9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 4
  %6 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bufsize, align 4
  %add = add i32 %7, %delay.0
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then5.if.end12_crit_edge, %entry.if.end12_crit_edge
  %delay.1 = phi i32 [ %add, %if.else9 ], [ %delay.0, %entry.if.end12_crit_edge ], [ 0, %if.then5.if.end12_crit_edge ]
  %period_bytes = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 5
  %8 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %delay.1, i32 %9)
  %cmp14.not = icmp ult i32 %delay.1, %9
  br i1 %cmp14.not, label %if.end12.if.end18_crit_edge, label %do.end

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.44, i32 noundef %delay.1, i32 noundef %9) #15
  %driver_caps = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %14 = ptrtoint ptr %driver_caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_caps, align 8
  %and = and i32 %15, -33554433
  store i32 %and, ptr %driver_caps, align 8
  %arrayidx = getelementptr %struct.azx, ptr %chip, i32 0, i32 14, i32 %3
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end12.if.end18_crit_edge
  %delay.2 = phi i32 [ 0, %do.end ], [ %delay.1, %if.end12.if.end18_crit_edge ]
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %delay.2, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %20
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_via_get_position(ptr nocapture noundef readnone %chip, ptr nocapture noundef %azx_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_addr.i = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 8
  %0 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !572
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !574
  %substream = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 10
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %posbuf = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 2
  %8 = ptrtoint ptr %posbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %posbuf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %period_bytes = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 5
  %13 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period_bytes, align 8
  %rem = urem i32 %12, %14
  %fifo_size5 = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 7
  %15 = ptrtoint ptr %fifo_size5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifo_size5, align 8
  %sub = add i32 %16, -1
  %insufficient = getelementptr inbounds %struct.azx_dev, ptr %azx_dev, i32 0, i32 1
  %17 = ptrtoint ptr %insufficient to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %insufficient, align 8
  %18 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp7.not = icmp ugt i32 %3, %sub
  br i1 %cmp7.not, label %if.end9, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear12 = and i8 %bf.load, -65
  %19 = ptrtoint ptr %insufficient to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.clear12, ptr %insufficient, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp14.not = icmp ugt i32 %3, %sub
  br i1 %cmp14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 4
  %20 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bufsize, align 4
  %add = add i32 %21, %3
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %add.pn = phi i32 [ %add, %if.then15 ], [ %3, %if.end13.if.end19_crit_edge ]
  %rem25 = urem i32 %3, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %rem25, i32 %sub)
  %cmp26.not = icmp ult i32 %rem25, %sub
  br i1 %cmp26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %sub28 = sub i32 %3, %rem25
  br label %if.end44

if.else29:                                        ; preds = %if.end19
  %mini_pos.0 = sub i32 %add.pn, %sub
  %rem22 = urem i32 %mini_pos.0, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %rem22)
  %cmp30.not = icmp ult i32 %rem, %rem22
  %sub34 = sub i32 %mini_pos.0, %rem22
  br i1 %cmp30.not, label %if.else33, label %if.else29.if.end44_crit_edge

if.else29.if.end44_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  %add37 = add i32 %sub34, %14
  %bufsize39 = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 4
  %22 = ptrtoint ptr %bufsize39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufsize39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %23)
  %cmp40.not = icmp ult i32 %add37, %23
  %spec.store.select = select i1 %cmp40.not, i32 %add37, i32 0
  br label %if.end44

if.end44:                                         ; preds = %if.else33, %if.else29.if.end44_crit_edge, %if.then27
  %bound_pos.0 = phi i32 [ %sub28, %if.then27 ], [ %spec.store.select, %if.else33 ], [ %sub34, %if.else29.if.end44_crit_edge ]
  %add45 = add i32 %bound_pos.0, %rem
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add45, %if.end44 ], [ %3, %entry.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_get_pos_fifo(ptr nocapture noundef readnone %chip, ptr nocapture noundef %azx_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 10
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %sd_addr.i = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 8
  %4 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !572
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !574
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %delay4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %delay4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %delay4, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frame_bits.i, align 8
  %11 = shl i32 %10, 2
  %div1.i = and i32 %11, 536870908
  %insufficient = getelementptr inbounds %struct.azx_dev, ptr %azx_dev, i32 0, i32 1
  %12 = ptrtoint ptr %insufficient to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %insufficient, align 8
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %if.then7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div1.i)
  %cmp = icmp ult i32 %7, %div1.i
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = shl i32 %7, 3
  %div.i = udiv i32 %mul.i, %10
  %14 = ptrtoint ptr %delay4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.i, ptr %delay4, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear13 = and i8 %bf.load, -65
  %15 = ptrtoint ptr %insufficient to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.clear13, ptr %insufficient, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8, %if.end.if.end15_crit_edge
  %delay.0 = phi i32 [ %7, %if.then8 ], [ %div1.i, %if.else ], [ %div1.i, %if.end.if.end15_crit_edge ]
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp16 = icmp eq i32 %17, 1
  br i1 %cmp16, label %if.then17, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %delay.0)
  %cmp18 = icmp ult i32 %7, %delay.0
  br i1 %cmp18, label %if.then19, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 4
  %18 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bufsize, align 4
  %add = add i32 %19, %7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17.if.end21_crit_edge
  %pos.0 = phi i32 [ %add, %if.then19 ], [ %7, %if.then17.if.end21_crit_edge ]
  %sub = sub i32 %pos.0, %delay.0
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %entry.cleanup_crit_edge ], [ %sub, %if.end21 ], [ %7, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @azx_get_delay_from_fifo(ptr nocapture noundef readnone %chip, ptr nocapture noundef readonly %azx_dev, i32 noundef %pos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.hdac_stream, ptr %azx_dev, i32 0, i32 10
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_stop_all_streams(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_stop_chip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_free_stream_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_free_streams(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_display_power(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @azx_probe_continue(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pci2 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %pci2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci2, align 4
  %dev_index = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_index, align 8
  %disabled = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 21
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %disabled, align 4
  %5 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %init_failed = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load3 = load i8, ptr %init_failed, align 8
  %7 = and i8 %bf.load3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %probe_retry = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %probe_retry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %probe_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.probe_retry139_crit_edge

if.end.probe_retry139_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_retry139

if.end10:                                         ; preds = %if.end
  %bus_probing = getelementptr inbounds %struct.hda_bus, ptr %chip, i32 0, i32 6
  %10 = ptrtoint ptr %bus_probing to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load14 = load i8, ptr %bus_probing, align 4
  %bf.set = or i8 %bf.load14, 4
  store i8 %bf.set, ptr %bus_probing, align 4
  %bf.set18 = or i8 %bf.load3, 64
  %11 = ptrtoint ptr %init_failed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.set18, ptr %init_failed, align 8
  tail call void @snd_hdac_display_power(ptr noundef %chip, i32 noundef 8, i1 noundef zeroext true) #12
  %call112 = tail call fastcc i32 @azx_first_init(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.end10.if.then187_crit_edge, label %if.end116

if.end10.if.then187_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then187

if.end116:                                        ; preds = %if.end10
  %arrayidx = getelementptr [32 x i8], ptr @beep_mode, i32 0, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1, !range !569
  %14 = zext i8 %13 to i32
  %beep_mode = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 18
  %15 = ptrtoint ptr %beep_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %beep_mode, align 8
  %codec_mask = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 18
  %16 = ptrtoint ptr %codec_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %codec_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool119.not = icmp eq i32 %17, 0
  br i1 %tobool119.not, label %if.end116.if.end127_crit_edge, label %if.then120

if.end116.if.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then120:                                       ; preds = %if.end116
  %driver_type = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 4
  %18 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_type, align 4
  %arrayidx121 = getelementptr [18 x i32], ptr @azx_max_codecs, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx121, align 4
  %call122 = tail call i32 @azx_probe_codecs(ptr noundef %chip, i32 noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.then120.if.then187_crit_edge, label %if.then120.if.end127_crit_edge

if.then120.if.end127_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then120.if.then187_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then187

if.end127:                                        ; preds = %if.then120.if.end127_crit_edge, %if.end116.if.end127_crit_edge
  %fw = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 19
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  %tobool128.not = icmp eq ptr %23, null
  br i1 %tobool128.not, label %if.end127.probe_retry139_crit_edge, label %if.then129

if.end127.probe_retry139_crit_edge:               ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_retry139

if.then129:                                       ; preds = %if.end127
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %call133 = tail call i32 @snd_hda_load_patch(ptr noundef %chip, i32 noundef %25, ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then129.if.then187_crit_edge, label %if.then129.probe_retry139_crit_edge

if.then129.probe_retry139_crit_edge:              ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_retry139

if.then129.if.then187_crit_edge:                  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then187

probe_retry139:                                   ; preds = %if.then129.probe_retry139_crit_edge, %if.end127.probe_retry139_crit_edge, %if.end.probe_retry139_crit_edge
  %codec_mask140 = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 18
  %28 = ptrtoint ptr %codec_mask140 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %codec_mask140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool141.not = icmp eq i32 %29, 0
  br i1 %tobool141.not, label %probe_retry139.if.end166_crit_edge, label %land.lhs.true

probe_retry139.if.end166_crit_edge:               ; preds = %probe_retry139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

land.lhs.true:                                    ; preds = %probe_retry139
  %arrayidx142 = getelementptr [32 x i32], ptr @probe_only, i32 0, i32 %3
  %30 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx142, align 4
  %and143 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.then145, label %land.lhs.true.if.end166_crit_edge

land.lhs.true.if.end166_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then145:                                       ; preds = %land.lhs.true
  %call146 = tail call i32 @azx_codec_configure(ptr noundef %chip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then145.if.end166_crit_edge, label %if.then148

if.then145.if.end166_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then148:                                       ; preds = %if.then145
  %driver_caps149 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %32 = ptrtoint ptr %driver_caps149 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %driver_caps149, align 8
  %and150 = and i32 %33, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.then148.out_free_crit_edge, label %land.lhs.true152

if.then148.out_free_crit_edge:                    ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

land.lhs.true152:                                 ; preds = %if.then148
  %34 = ptrtoint ptr %probe_retry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %probe_retry, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %probe_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %inc)
  %cmp154 = icmp slt i32 %inc, 60
  br i1 %cmp154, label %if.then156, label %land.lhs.true152.out_free_crit_edge

land.lhs.true152.out_free_crit_edge:              ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.then156:                                       ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #14
  %probe_work = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %probe_work, i32 noundef 100) #12
  br label %cleanup

if.end166:                                        ; preds = %if.then145.if.end166_crit_edge, %land.lhs.true.if.end166_crit_edge, %probe_retry139.if.end166_crit_edge
  %card167 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %37 = ptrtoint ptr %card167 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card167, align 8
  %call168 = tail call i32 @snd_card_register(ptr noundef %38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.end166.if.then187_crit_edge, label %if.end172

if.end166.if.then187_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then187

if.end172:                                        ; preds = %if.end166
  %39 = ptrtoint ptr %disabled to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load173 = load i16, ptr %disabled, align 4
  %bf.set175 = or i16 %bf.load173, -32768
  store i16 %bf.set175, ptr %disabled, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @card_list_lock, i32 noundef 0) #12
  %list.i = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 4
  %40 = load ptr, ptr @card_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull @card_list, ptr noundef %40) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end172.azx_add_card_list.exit_crit_edge

if.end172.azx_add_card_list.exit_crit_edge:       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %azx_add_card_list.exit

if.end.i.i.i:                                     ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @card_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %list.i, ptr @card_list, align 4
  br label %azx_add_card_list.exit

azx_add_card_list.exit:                           ; preds = %if.end.i.i.i, %if.end172.azx_add_card_list.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @card_list_lock) #12
  %44 = load i32, ptr @power_save, align 4
  %45 = load i8, ptr @pm_blacklist, align 1, !range !569
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %azx_add_card_list.exit.set_default_power_save.exit_crit_edge, label %if.then.i

azx_add_card_list.exit.set_default_power_save.exit_crit_edge: ; preds = %azx_add_card_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_default_power_save.exit

if.then.i:                                        ; preds = %azx_add_card_list.exit
  %46 = ptrtoint ptr %pci2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci2, align 4
  %call.i = tail call ptr @snd_pci_quirk_lookup(ptr noundef %47, ptr noundef nonnull @power_save_denylist) #12
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.set_default_power_save.exit_crit_edge, label %land.lhs.true.i

if.then.i.set_default_power_save.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_default_power_save.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool2.not.i = icmp eq i32 %44, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.set_default_power_save.exit_crit_edge, label %do.end.i

land.lhs.true.i.set_default_power_save.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_default_power_save.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %card167 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card167, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %call.i, align 4
  %conv.i = zext i16 %53 to i32
  %subdevice.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %subdevice.i, align 2
  %conv4.i = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.139, i32 noundef %conv.i, i32 noundef %conv4.i) #15
  br label %set_default_power_save.exit

set_default_power_save.exit:                      ; preds = %do.end.i, %land.lhs.true.i.set_default_power_save.exit_crit_edge, %if.then.i.set_default_power_save.exit_crit_edge, %azx_add_card_list.exit.set_default_power_save.exit_crit_edge
  %val.1.i = phi i32 [ %44, %azx_add_card_list.exit.set_default_power_save.exit_crit_edge ], [ 0, %do.end.i ], [ 0, %land.lhs.true.i.set_default_power_save.exit_crit_edge ], [ %44, %if.then.i.set_default_power_save.exit_crit_edge ]
  %mul.i = mul i32 %val.1.i, 1000
  tail call void @snd_hda_set_power_save(ptr noundef %chip, i32 noundef %mul.i) #12
  %driver_caps176 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %56 = ptrtoint ptr %driver_caps176 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %driver_caps176, align 8
  %and177 = and i32 %57, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %set_default_power_save.exit.if.end190_crit_edge, label %if.then179

set_default_power_save.exit.if.end190_crit_edge:  ; preds = %set_default_power_save.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190

if.then179:                                       ; preds = %set_default_power_save.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev180 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev180, i1 noundef zeroext true) #12
  tail call void @pm_runtime_allow(ptr noundef %dev180) #12
  %call.i1 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev180, i32 noundef 13) #12
  br label %if.end190

out_free:                                         ; preds = %land.lhs.true152.out_free_crit_edge, %if.then148.out_free_crit_edge
  %card163 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %58 = ptrtoint ptr %card163 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card163, align 8
  %dev164 = getelementptr inbounds %struct.snd_card, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev164, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.102) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp185 = icmp slt i32 %call146, 0
  br i1 %cmp185, label %out_free.if.then187_crit_edge, label %out_free.if.end190_crit_edge

out_free.if.end190_crit_edge:                     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190

out_free.if.then187_crit_edge:                    ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then187

if.then187:                                       ; preds = %out_free.if.then187_crit_edge, %if.end166.if.then187_crit_edge, %if.then129.if.then187_crit_edge, %if.then120.if.then187_crit_edge, %if.end10.if.then187_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %driver_data.i.i, align 4
  %card188 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %63 = ptrtoint ptr %card188 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card188, align 8
  %call189 = tail call i32 @snd_card_free(ptr noundef %64) #12
  br label %cleanup

if.end190:                                        ; preds = %out_free.if.end190_crit_edge, %if.then179, %set_default_power_save.exit.if.end190_crit_edge
  %65 = ptrtoint ptr %init_failed to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load192 = load i8, ptr %init_failed, align 8
  %66 = and i8 %bf.load192, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %bf.cast195.not = icmp eq i8 %66, 0
  br i1 %bf.cast195.not, label %if.then196, label %if.end190.if.end199_crit_edge

if.end190.if.end199_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then196:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @snd_hdac_display_power(ptr noundef %chip, i32 noundef 8, i1 noundef zeroext false) #12
  br label %if.end199

if.end199:                                        ; preds = %if.then196, %if.end190.if.end199_crit_edge
  %probe_wait = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 2
  tail call void @complete_all(ptr noundef %probe_wait) #12
  %bus_probing203 = getelementptr inbounds %struct.hda_bus, ptr %chip, i32 0, i32 6
  %67 = ptrtoint ptr %bus_probing203 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load204 = load i8, ptr %bus_probing203, align 4
  %bf.clear205 = and i8 %bf.load204, -5
  store i8 %bf.clear205, ptr %bus_probing203, align 4
  %68 = ptrtoint ptr %probe_retry to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %probe_retry, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %if.then187, %if.then156, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @azx_first_init(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %tmp3 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_index = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_index, align 8
  %pci1 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci1, align 4
  %card2 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card2, align 8
  %driver_type = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp = icmp eq i32 %7, 10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp3) #12
  %8 = ptrtoint ptr %tmp3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %tmp3, align 2, !annotation !568
  %call = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef 64, ptr noundef nonnull %tmp3) #12
  %9 = ptrtoint ptr %tmp3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tmp3, align 2
  %11 = or i16 %10, 16
  %call5 = call i32 @pci_write_config_word(ptr noundef %3, i32 noundef 64, i16 noundef zeroext %11) #12
  %call6 = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 20, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call7 = call i32 @pcim_iomap_regions(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.104) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 47
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %addr = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 3
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %addr, align 4
  %call12 = call ptr @pcim_iomap_table(ptr noundef %3) #12
  %15 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call12, align 4
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 4
  %17 = ptrtoint ptr %remap_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %remap_addr, align 4
  %18 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp15 = icmp eq i32 %19, 3
  br i1 %cmp15, label %if.then17, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = call i32 @snd_hdac_bus_parse_capabilities(ptr noundef %chip) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end11.if.end19_crit_edge
  %gts_present = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 21
  %20 = ptrtoint ptr %gts_present to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %gts_present, align 4
  %bf.clear = and i16 %bf.load, -33
  store i16 %bf.clear, ptr %gts_present, align 4
  %21 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %if.end19.if.end45_crit_edge, label %if.then22

if.end19.if.end45_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then22:                                        ; preds = %if.end19
  %driver_caps = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %22 = ptrtoint ptr %driver_caps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %driver_caps, align 8
  %and = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then22.if.end35_crit_edge, label %do.body

if.then22.if.end35_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.body:                                          ; preds = %if.then22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_first_init.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_first_init, %if.then29)) #12
          to label %do.end [label %if.then29], !srcloc !570

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %24 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev30, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_first_init.__UNIQUE_ID_ddebug386, ptr noundef %25, ptr noundef nonnull @.str.106) #12
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  %no_64bit_msi = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 49
  %26 = ptrtoint ptr %no_64bit_msi to i32
  call void @__asan_loadN_noabort(i32 %26, i32 5)
  %bf.load32 = load i40, ptr %no_64bit_msi, align 1
  %bf.set34 = or i40 %bf.load32, 4294967296
  store i40 %bf.set34, ptr %no_64bit_msi, align 1
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.then22.if.end35_crit_edge
  %call36 = call i32 @pci_enable_msi(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end35.if.end45_crit_edge

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %gts_present to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load41 = load i16, ptr %gts_present, align 4
  %bf.clear42 = and i16 %bf.load41, -4097
  store i16 %bf.clear42, ptr %gts_present, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %if.end35.if.end45_crit_edge, %if.end19.if.end45_crit_edge
  call void @pci_set_master(ptr noundef %3) #12
  %28 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr, align 8
  %aligned_mmio.i = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 28
  %30 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %aligned_mmio.i, align 4
  %31 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %bf.cast.not.i = icmp eq i16 %31, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 @snd_hdac_aligned_read(ptr noundef %29, i32 noundef 65535) #12
  br label %snd_hdac_reg_readw.exit

cond.false.i:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %32 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #12, !srcloc !575
  %33 = call i16 @llvm.bswap.i16(i16 %32) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !576
  %conv.i = zext i16 %33 to i32
  br label %snd_hdac_reg_readw.exit

snd_hdac_reg_readw.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv3.i = trunc i32 %cond.i to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_first_init.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_first_init, %if.then64)) #12
          to label %do.end69 [label %if.then64], !srcloc !570

if.then64:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev65 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %34 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev65, align 8
  %conv66 = and i32 %cond.i, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_first_init.__UNIQUE_ID_ddebug387, ptr noundef %35, ptr noundef nonnull @.str.107, i32 noundef %conv66) #12
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %snd_hdac_reg_readw.exit
  %36 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci1, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %39)
  %cmp72 = icmp eq i16 %39, 4130
  %spec.select = select i1 %cmp72, i32 40, i32 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %39)
  %cmp79 = icmp eq i16 %39, 4098
  br i1 %cmp79, label %if.then81, label %do.end69.if.end94_crit_edge

do.end69.if.end94_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then81:                                        ; preds = %do.end69
  %call82 = call ptr @pci_get_device(i32 noundef 4098, i32 noundef 17285, ptr noundef null) #12
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.then81.if.end94_crit_edge, label %if.then84

if.then81.if.end94_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then84:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %revision = getelementptr inbounds %struct.pci_dev, ptr %call82, i32 0, i32 12
  %40 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %41)
  %cmp86 = icmp ult i8 %41, 48
  %42 = and i16 %conv3.i, -2
  %spec.select340 = select i1 %cmp86, i16 %42, i16 %conv3.i
  call void @pci_dev_put(ptr noundef nonnull %call82) #12
  br label %if.end94

if.end94:                                         ; preds = %if.then84, %if.then81.if.end94_crit_edge, %do.end69.if.end94_crit_edge
  %gcap.2 = phi i16 [ %conv3.i, %do.end69.if.end94_crit_edge ], [ %spec.select340, %if.then84 ], [ %conv3.i, %if.then81.if.end94_crit_edge ]
  %dma_bits.1 = phi i32 [ %spec.select, %do.end69.if.end94_crit_edge ], [ 40, %if.then84 ], [ 40, %if.then81.if.end94_crit_edge ]
  %43 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci1, align 4
  %vendor96 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %vendor96 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vendor96, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4318, i16 %46)
  %cmp98 = icmp eq i16 %46, 4318
  %spec.select341 = select i1 %cmp98, i32 40, i32 %dma_bits.1
  %driver_caps102 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %47 = ptrtoint ptr %driver_caps102 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %driver_caps102, align 8
  %and103 = and i32 %48, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end94.if.end126_crit_edge, label %do.body106

if.end94.if.end126_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

do.body106:                                       ; preds = %if.end94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_first_init.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_first_init, %if.then118)) #12
          to label %do.end122 [label %if.then118], !srcloc !570

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #14
  %dev119 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %49 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev119, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_first_init.__UNIQUE_ID_ddebug388, ptr noundef %50, ptr noundef nonnull @.str.108) #12
  br label %do.end122

do.end122:                                        ; preds = %if.then118, %do.body106
  %51 = and i16 %gcap.2, -2
  br label %if.end126

if.end126:                                        ; preds = %do.end122, %if.end94.if.end126_crit_edge
  %gcap.3 = phi i16 [ %51, %do.end122 ], [ %gcap.2, %if.end94.if.end126_crit_edge ]
  %52 = load i32, ptr @align_buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp127 = icmp sgt i32 %52, -1
  br i1 %cmp127, label %if.then129, label %if.else

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool130.not = icmp eq i32 %52, 0
  %53 = ptrtoint ptr %gts_present to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load135 = load i16, ptr %gts_present, align 4
  %bf.shl = select i1 %tobool130.not, i16 0, i16 256
  %bf.clear136 = and i16 %bf.load135, -257
  %bf.set137 = or i16 %bf.clear136, %bf.shl
  br label %if.end152

if.else:                                          ; preds = %if.end126
  %54 = ptrtoint ptr %driver_caps102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %driver_caps102, align 8
  %and139 = and i32 %55, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  %56 = ptrtoint ptr %gts_present to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load148 = load i16, ptr %gts_present, align 4
  br i1 %tobool140.not, label %if.else146, label %if.then141

if.then141:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear144 = and i16 %bf.load148, -257
  br label %if.end152

if.else146:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set150 = or i16 %bf.load148, 256
  br label %if.end152

if.end152:                                        ; preds = %if.else146, %if.then141, %if.then129
  %bf.clear144.sink = phi i16 [ %bf.clear144, %if.then141 ], [ %bf.set150, %if.else146 ], [ %bf.set137, %if.then129 ]
  %57 = ptrtoint ptr %gts_present to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %bf.clear144.sink, ptr %gts_present, align 4
  %conv153 = zext i16 %gcap.3 to i32
  %and154 = and i32 %conv153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  %spec.select342 = select i1 %tobool155.not, i32 32, i32 %spec.select341
  %dev158 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select342)
  %cmp159 = icmp eq i32 %spec.select342, 64
  br i1 %cmp159, label %if.end152.cond.end_crit_edge, label %cond.false

if.end152.cond.end_crit_edge:                     ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom = zext i32 %spec.select342 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end152.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end152.cond.end_crit_edge ]
  %call.i349 = call i32 @dma_set_mask(ptr noundef %dev158, i64 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %cmp.i = icmp eq i32 %call.i349, 0
  br i1 %cmp.i, label %cond.end.if.end166.sink.split_crit_edge, label %if.then163

cond.end.if.end166.sink.split_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166.sink.split

if.then163:                                       ; preds = %cond.end
  %call.i350 = call i32 @dma_set_mask(ptr noundef %dev158, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i350)
  %cmp.i351 = icmp eq i32 %call.i350, 0
  br i1 %cmp.i351, label %if.then163.if.end166.sink.split_crit_edge, label %if.then163.if.end166_crit_edge

if.then163.if.end166_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then163.if.end166.sink.split_crit_edge:        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166.sink.split

if.end166.sink.split:                             ; preds = %if.then163.if.end166.sink.split_crit_edge, %cond.end.if.end166.sink.split_crit_edge
  %.sink = phi i64 [ %cond, %cond.end.if.end166.sink.split_crit_edge ], [ 4294967295, %if.then163.if.end166.sink.split_crit_edge ]
  %call1.i352 = call i32 @dma_set_coherent_mask(ptr noundef %dev158, i64 noundef %.sink) #12
  br label %if.end166

if.end166:                                        ; preds = %if.end166.sink.split, %if.then163.if.end166_crit_edge
  %dma_parms.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 22
  %58 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end166.dma_set_max_seg_size.exit_crit_edge, label %if.then.i355

if.end166.dma_set_max_seg_size.exit_crit_edge:    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_max_seg_size.exit

if.then.i355:                                     ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %59, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i355, %if.end166.dma_set_max_seg_size.exit_crit_edge
  %61 = lshr i32 %conv153, 8
  %and170 = and i32 %61, 15
  %capture_streams = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 8
  %62 = ptrtoint ptr %capture_streams to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and170, ptr %capture_streams, align 4
  %63 = lshr i32 %conv153, 12
  %playback_streams = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 6
  %64 = ptrtoint ptr %playback_streams to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %playback_streams, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %gcap.3)
  %tobool175.not = icmp ult i16 %gcap.3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool177.not = icmp eq i32 %and170, 0
  %or.cond = select i1 %tobool175.not, i1 %tobool177.not, i1 false
  br i1 %or.cond, label %if.then178, label %dma_set_max_seg_size.exit.if.end188_crit_edge

dma_set_max_seg_size.exit.if.end188_crit_edge:    ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then178:                                       ; preds = %dma_set_max_seg_size.exit
  %65 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %driver_type, align 4
  %switch.tableidx = add i32 %66, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %67 = icmp ult i32 %switch.tableidx, 5
  br i1 %67, label %switch.lookup, label %if.then178.if.end188.sink.split_crit_edge

if.then178.if.end188.sink.split_crit_edge:        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188.sink.split

switch.lookup:                                    ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.azx_first_init, i32 0, i32 %switch.tableidx
  %68 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %68)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep361 = getelementptr inbounds [5 x i32], ptr @switch.table.azx_first_init.160, i32 0, i32 %switch.tableidx
  %69 = ptrtoint ptr %switch.gep361 to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load362 = load i32, ptr %switch.gep361, align 4
  br label %if.end188.sink.split

if.end188.sink.split:                             ; preds = %switch.lookup, %if.then178.if.end188.sink.split_crit_edge
  %.sink360 = phi i32 [ %switch.load, %switch.lookup ], [ 4, %if.then178.if.end188.sink.split_crit_edge ]
  %.sink359 = phi i32 [ %switch.load362, %switch.lookup ], [ 4, %if.then178.if.end188.sink.split_crit_edge ]
  %70 = ptrtoint ptr %playback_streams to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.sink360, ptr %playback_streams, align 4
  %71 = ptrtoint ptr %capture_streams to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink359, ptr %capture_streams, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.end188.sink.split, %dma_set_max_seg_size.exit.if.end188_crit_edge
  %capture_index_offset = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 9
  %72 = ptrtoint ptr %capture_index_offset to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %capture_index_offset, align 8
  %73 = ptrtoint ptr %capture_streams to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %capture_streams, align 4
  %playback_index_offset = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 7
  %75 = ptrtoint ptr %playback_index_offset to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %playback_index_offset, align 8
  %76 = ptrtoint ptr %playback_streams to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %playback_streams, align 4
  %add = add i32 %77, %74
  %num_streams = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 10
  %78 = ptrtoint ptr %num_streams to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add, ptr %num_streams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp193 = icmp sgt i32 %add, 15
  br i1 %cmp193, label %land.lhs.true195, label %if.end188.if.end209_crit_edge

if.end188.if.end209_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end209

land.lhs.true195:                                 ; preds = %if.end188
  %79 = ptrtoint ptr %driver_caps102 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %driver_caps102, align 8
  %and197 = and i32 %80, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %cmp198 = icmp eq i32 %and197, 0
  br i1 %cmp198, label %do.end203, label %land.lhs.true195.if.end209_crit_edge

land.lhs.true195.if.end209_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end209

do.end203:                                        ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card2, align 8
  %dev205 = getelementptr inbounds %struct.snd_card, ptr %82, i32 0, i32 27
  %83 = ptrtoint ptr %dev205 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev205, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.109, i32 noundef %add) #15
  %85 = ptrtoint ptr %driver_caps102 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %driver_caps102, align 8
  %or208 = or i32 %86, 1073741824
  store i32 %or208, ptr %driver_caps102, align 8
  br label %if.end209

if.end209:                                        ; preds = %do.end203, %land.lhs.true195.if.end209_crit_edge, %if.end188.if.end209_crit_edge
  %call210 = call i32 @azx_init_streams(ptr noundef %chip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.end209.cleanup_crit_edge, label %if.end214

if.end209.cleanup_crit_edge:                      ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end214:                                        ; preds = %if.end209
  %call217 = call i32 @snd_hdac_bus_alloc_stream_pages(ptr noundef %chip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.end214.cleanup_crit_edge, label %if.end221

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end221:                                        ; preds = %if.end214
  call fastcc void @azx_init_pci(ptr noundef %chip)
  %arrayidx222 = getelementptr [32 x i32], ptr @probe_only, i32 0, i32 %1
  %87 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx222, align 4
  %and223 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %cmp224 = icmp eq i32 %and223, 0
  call fastcc void @hda_intel_init_chip(ptr noundef %chip, i1 noundef zeroext %cmp224)
  %codec_mask = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 18
  %89 = ptrtoint ptr %codec_mask to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %codec_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool228.not = icmp eq i32 %90, 0
  br i1 %tobool228.not, label %do.end232, label %if.end221.if.end234_crit_edge

if.end221.if.end234_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end234

do.end232:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  %dev233 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %91 = ptrtoint ptr %dev233 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev233, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.111) #15
  br label %if.end234

if.end234:                                        ; preds = %do.end232, %if.end221.if.end234_crit_edge
  %call235 = call fastcc i32 @azx_acquire_irq(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp236 = icmp slt i32 %call235, 0
  br i1 %cmp236, label %if.end234.cleanup_crit_edge, label %if.end239

if.end234.cleanup_crit_edge:                      ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end239:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #14
  %driver = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 2
  %93 = call ptr @memcpy(ptr %driver, ptr @.str.113, i32 10)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 3
  %94 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %driver_type, align 4
  %arrayidx243 = getelementptr [18 x ptr], ptr @driver_short_names, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx243, align 4
  %call244 = call i32 @strscpy(ptr noundef %shortname, ptr noundef %97, i32 noundef 32) #12
  %longname = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 4
  %98 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr, align 4
  %irq = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 5
  %100 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq, align 4
  %call249 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.114, ptr noundef %shortname, i32 noundef %99, i32 noundef %101)
  br label %cleanup

cleanup:                                          ; preds = %if.end239, %if.end234.cleanup_crit_edge, %if.end214.cleanup_crit_edge, %if.end209.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end239 ], [ %call7, %if.end.cleanup_crit_edge ], [ %call210, %if.end209.cleanup_crit_edge ], [ %call217, %if.end214.cleanup_crit_edge ], [ -16, %if.end234.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_probe_codecs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_load_patch(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_codec_configure(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_parse_capabilities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_init_streams(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_alloc_stream_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @azx_init_pci(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  %data.i156 = alloca i8, align 1
  %data.i151 = alloca i8, align 1
  %data.i146 = alloca i8, align 1
  %data.i142 = alloca i8, align 1
  %data.i = alloca i8, align 1
  %snoop = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_caps = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %driver_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_caps, align 8
  %and = lshr i32 %1, 10
  %shr = and i32 %and, 3
  %and2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_init_pci.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_init_pci, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !570

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_init_pci.__UNIQUE_ID_ddebug377, ptr noundef %5, ptr noundef nonnull @.str.116) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %pci = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #12
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %data.i, align 1, !annotation !568
  %call.i = call i32 @pci_read_config_byte(ptr noundef %7, i32 noundef 68, ptr noundef nonnull %data.i) #12
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i, align 1
  %and.i = and i8 %10, -8
  store i8 %and.i, ptr %data.i, align 1
  %call8.i = call i32 @pci_write_config_byte(ptr noundef %7, i32 noundef 68, i8 noundef zeroext %and.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  %11 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %shr, label %if.end7.if.end111_crit_edge [
    i32 2, label %do.body9
    i32 3, label %do.body36
    i32 1, label %if.then62
  ]

if.end7.if.end111_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

do.body9:                                         ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_init_pci.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_init_pci, %if.then21)) #12
          to label %do.end27 [label %if.then21], !srcloc !570

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %card22 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %12 = ptrtoint ptr %card22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card22, align 8
  %dev23 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev23, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_init_pci.__UNIQUE_ID_ddebug378, ptr noundef %15, ptr noundef nonnull @.str.117, i32 noundef 1) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.body9
  %pci28 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %16 = ptrtoint ptr %pci28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci28, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i142) #12
  %18 = ptrtoint ptr %data.i142 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %data.i142, align 1, !annotation !568
  %call.i143 = call i32 @pci_read_config_byte(ptr noundef %17, i32 noundef 66, ptr noundef nonnull %data.i142) #12
  %19 = ptrtoint ptr %data.i142 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i142, align 1
  %and.i144 = and i8 %20, -8
  %or13.i = or i8 %and.i144, 2
  store i8 %or13.i, ptr %data.i142, align 1
  %call8.i145 = call i32 @pci_write_config_byte(ptr noundef %17, i32 noundef 66, i8 noundef zeroext %or13.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i142) #12
  br label %if.end111

do.body36:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_init_pci.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_init_pci, %if.then48)) #12
          to label %do.end55 [label %if.then48], !srcloc !570

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %card49 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %21 = ptrtoint ptr %card49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card49, align 8
  %dev50 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev50, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_init_pci.__UNIQUE_ID_ddebug379, ptr noundef %24, ptr noundef nonnull @.str.118, i32 noundef 1) #12
  br label %do.end55

do.end55:                                         ; preds = %if.then48, %do.body36
  %pci56 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %25 = ptrtoint ptr %pci56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci56, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i146) #12
  %27 = ptrtoint ptr %data.i146 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %data.i146, align 1, !annotation !568
  %call.i147 = call i32 @pci_read_config_byte(ptr noundef %26, i32 noundef 78, ptr noundef nonnull %data.i146) #12
  %28 = ptrtoint ptr %data.i146 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data.i146, align 1
  %or13.i149 = or i8 %29, 15
  store i8 %or13.i149, ptr %data.i146, align 1
  %call8.i150 = call i32 @pci_write_config_byte(ptr noundef %26, i32 noundef 78, i8 noundef zeroext %or13.i149) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i146) #12
  %30 = ptrtoint ptr %pci56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci56, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i151) #12
  %32 = ptrtoint ptr %data.i151 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %data.i151, align 1, !annotation !568
  %call.i152 = call i32 @pci_read_config_byte(ptr noundef %31, i32 noundef 77, ptr noundef nonnull %data.i151) #12
  %33 = ptrtoint ptr %data.i151 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data.i151, align 1
  %or13.i154 = or i8 %34, 1
  store i8 %or13.i154, ptr %data.i151, align 1
  %call8.i155 = call i32 @pci_write_config_byte(ptr noundef %31, i32 noundef 77, i8 noundef zeroext %or13.i154) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i151) #12
  %35 = ptrtoint ptr %pci56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci56, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i156) #12
  %37 = ptrtoint ptr %data.i156 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %data.i156, align 1, !annotation !568
  %call.i157 = call i32 @pci_read_config_byte(ptr noundef %36, i32 noundef 76, ptr noundef nonnull %data.i156) #12
  %38 = ptrtoint ptr %data.i156 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data.i156, align 1
  %or13.i159 = or i8 %39, 1
  store i8 %or13.i159, ptr %data.i156, align 1
  %call8.i160 = call i32 @pci_write_config_byte(ptr noundef %36, i32 noundef 76, i8 noundef zeroext %or13.i159) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i156) #12
  br label %if.end111

if.then62:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snoop) #12
  %40 = ptrtoint ptr %snoop to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %snoop, align 2, !annotation !568
  %pci63 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %41 = ptrtoint ptr %pci63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci63, align 4
  %call64 = call i32 @pci_read_config_word(ptr noundef %42, i32 noundef 120, ptr noundef nonnull %snoop) #12
  %43 = ptrtoint ptr %snoop to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %snoop, align 2
  %45 = and i16 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool74.not = icmp eq i16 %45, 0
  br i1 %tobool74.not, label %if.then62.do.body89_crit_edge, label %if.then75

if.then62.do.body89_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body89

if.then75:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %46 = and i16 %44, -2049
  %47 = ptrtoint ptr %snoop to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %snoop, align 2
  %48 = ptrtoint ptr %pci63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci63, align 4
  %call85 = call i32 @pci_write_config_word(ptr noundef %49, i32 noundef 120, i16 noundef zeroext %46) #12
  %50 = ptrtoint ptr %pci63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci63, align 4
  %call87 = call i32 @pci_read_config_word(ptr noundef %51, i32 noundef 120, ptr noundef nonnull %snoop) #12
  br label %do.body89

do.body89:                                        ; preds = %if.then75, %if.then62.do.body89_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @azx_init_pci.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@azx_init_pci, %if.then101)) #12
          to label %do.end110 [label %if.then101], !srcloc !570

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #14
  %card102 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %52 = ptrtoint ptr %card102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card102, align 8
  %dev103 = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev103, align 8
  %56 = ptrtoint ptr %snoop to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %snoop, align 2
  %58 = and i16 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool106.not = icmp eq i16 %58, 0
  %cond107 = select i1 %tobool106.not, ptr @.str.121, ptr @.str.120
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @azx_init_pci.__UNIQUE_ID_ddebug380, ptr noundef %55, ptr noundef nonnull @.str.119, ptr noundef nonnull %cond107) #12
  br label %do.end110

do.end110:                                        ; preds = %if.then101, %do.body89
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snoop) #12
  br label %if.end111

if.end111:                                        ; preds = %do.end110, %do.end55, %do.end27, %if.end7.if.end111_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hda_intel_init_chip(ptr noundef %chip, i1 noundef zeroext %full_reset) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pci2 = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %pci2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !568
  %call = tail call i32 @snd_hdac_set_codec_wakeup(ptr noundef %chip, i1 noundef zeroext true) #12
  %driver_type = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 72, ptr noundef nonnull %val) #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, -65
  store i32 %and, ptr %val, align 4
  %call4 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 72, i32 noundef %and) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @azx_init_chip(ptr noundef %chip, i1 noundef zeroext %full_reset) #12
  %7 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp6 = icmp eq i32 %8, 3
  br i1 %cmp6, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 72, ptr noundef nonnull %val) #12
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %or = or i32 %10, 64
  store i32 %or, ptr %val, align 4
  %call9 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 72, i32 noundef %or) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %call11 = call i32 @snd_hdac_set_codec_wakeup(ptr noundef %chip, i1 noundef zeroext false) #12
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %12)
  %cmp12 = icmp eq i16 %12, -32634
  br i1 %cmp12, label %land.lhs.true, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23192, i16 %14)
  %cmp15 = icmp eq i16 %14, 23192
  br i1 %cmp15, label %if.then17, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %remap_addr.i = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 4
  %15 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 4160
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !577
  %and.i = and i32 %17, 12288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !578
  call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %19, i32 4160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %and.i) #12, !srcloc !579
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %mlcap = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 8
  %20 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mlcap, align 4
  %cmp19.not = icmp eq ptr %21, null
  br i1 %cmp19.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  %add.ptr2.i = getelementptr i8, ptr %21, i32 68
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !572
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !580
  %and.i36 = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %cmp.not.i = icmp eq i32 %and.i36, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then21.if.end22_crit_edge

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end.i:                                         ; preds = %if.then21
  %and4.i = lshr i32 %23, 16
  %and5.i = lshr i32 %23, 23
  %24 = xor i32 %and4.i, %and5.i
  %25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i = icmp eq i32 %25, 0
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end.i.if.end22_crit_edge

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end9.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mlcap, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %27, i32 68
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #12, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !581
  %29 = and i32 %28, -257
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !582
  call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mlcap, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %31, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %29) #12, !srcloc !579
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end9.i
  %timeout.025.i.i = phi i32 [ 50, %if.end9.i ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mlcap, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %33, i32 68
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #12, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  %35 = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i, label %if.end12.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %dec.i.i = add nsw i32 %timeout.025.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 2147480) #12
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %intel_ml_lctl_set_power.exit.i, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

intel_ml_lctl_set_power.exit.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 21474800) #12
  br label %set_spa.i

if.end12.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 21474800) #12
  %and13.i = and i32 %23, -16
  %39 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mlcap, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 64
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !572
  %42 = call i32 @llvm.bswap.i32(i32 %41) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !584
  %and.i.i = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i31.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i31.i, label %for.cond.i.i, label %if.end12.i.intel_get_lctl_scf.exit.i_crit_edge

if.end12.i.intel_get_lctl_scf.exit.i_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_get_lctl_scf.exit.i

for.cond.i.i:                                     ; preds = %if.end12.i
  %and.1.i.i = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.intel_get_lctl_scf.exit.i_crit_edge

for.cond.i.i.intel_get_lctl_scf.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_get_lctl_scf.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %and.2.i.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.intel_get_lctl_scf.exit.i_crit_edge

for.cond.1.i.i.intel_get_lctl_scf.exit.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_get_lctl_scf.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %and.3.i.i = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.intel_get_lctl_scf.exit.i_crit_edge

for.cond.2.i.i.intel_get_lctl_scf.exit.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_get_lctl_scf.exit.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %and.4.i.i = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond.4.i.i, label %for.cond.3.i.i.intel_get_lctl_scf.exit.i_crit_edge

for.cond.3.i.i.intel_get_lctl_scf.exit.i_crit_edge: ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_get_lctl_scf.exit.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i.i = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 1
  %43 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.122) #15
  br label %intel_get_lctl_scf.exit.i

intel_get_lctl_scf.exit.i:                        ; preds = %for.cond.4.i.i, %for.cond.3.i.i.intel_get_lctl_scf.exit.i_crit_edge, %for.cond.2.i.i.intel_get_lctl_scf.exit.i_crit_edge, %for.cond.1.i.i.intel_get_lctl_scf.exit.i_crit_edge, %for.cond.i.i.intel_get_lctl_scf.exit.i_crit_edge, %if.end12.i.intel_get_lctl_scf.exit.i_crit_edge
  %retval.0.i32.i = phi i32 [ 0, %for.cond.4.i.i ], [ 2, %if.end12.i.intel_get_lctl_scf.exit.i_crit_edge ], [ 3, %for.cond.i.i.intel_get_lctl_scf.exit.i_crit_edge ], [ 1, %for.cond.1.i.i.intel_get_lctl_scf.exit.i_crit_edge ], [ 4, %for.cond.2.i.i.intel_get_lctl_scf.exit.i_crit_edge ], [ 5, %for.cond.3.i.i.intel_get_lctl_scf.exit.i_crit_edge ]
  %or.i = or i32 %retval.0.i32.i, %and13.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !585
  call void @arm_heavy_mb() #12
  %47 = call i32 @llvm.bswap.i32(i32 %or.i) #12
  %48 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mlcap, align 4
  %add.ptr17.i = getelementptr i8, ptr %49, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %47) #12, !srcloc !579
  br label %set_spa.i

set_spa.i:                                        ; preds = %intel_get_lctl_scf.exit.i, %intel_ml_lctl_set_power.exit.i
  %50 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mlcap, align 4
  %add.ptr2.i34.i = getelementptr i8, ptr %51, i32 68
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i34.i) #12, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !581
  %53 = or i32 %52, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !582
  call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mlcap, align 4
  %add.ptr6.i35.i = getelementptr i8, ptr %55, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i35.i, i32 %53) #12, !srcloc !579
  br label %while.body.i40.i

while.body.i40.i:                                 ; preds = %if.end.i43.i.while.body.i40.i_crit_edge, %set_spa.i
  %timeout.025.i36.i = phi i32 [ 50, %set_spa.i ], [ %dec.i41.i, %if.end.i43.i.while.body.i40.i_crit_edge ]
  %56 = ptrtoint ptr %mlcap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mlcap, align 4
  %add.ptr11.i37.i = getelementptr i8, ptr %57, i32 68
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i37.i) #12, !srcloc !572
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  %59 = and i32 %58, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i39.not.i = icmp eq i32 %59, 0
  br i1 %cmp.i39.not.i, label %if.end.i43.i, label %while.body.i40.i.intel_ml_lctl_set_power.exit45.i_crit_edge

while.body.i40.i.intel_ml_lctl_set_power.exit45.i_crit_edge: ; preds = %while.body.i40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_ml_lctl_set_power.exit45.i

if.end.i43.i:                                     ; preds = %while.body.i40.i
  %dec.i41.i = add nsw i32 %timeout.025.i36.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 2147480) #12
  %tobool.not.i42.i = icmp eq i32 %dec.i41.i, 0
  br i1 %tobool.not.i42.i, label %if.end.i43.i.intel_ml_lctl_set_power.exit45.i_crit_edge, label %if.end.i43.i.while.body.i40.i_crit_edge

if.end.i43.i.while.body.i40.i_crit_edge:          ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i40.i

if.end.i43.i.intel_ml_lctl_set_power.exit45.i_crit_edge: ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_ml_lctl_set_power.exit45.i

intel_ml_lctl_set_power.exit45.i:                 ; preds = %if.end.i43.i.intel_ml_lctl_set_power.exit45.i_crit_edge, %while.body.i40.i.intel_ml_lctl_set_power.exit45.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 21474800) #12
  br label %if.end22

if.end22:                                         ; preds = %intel_ml_lctl_set_power.exit45.i, %if.end.i.if.end22_crit_edge, %if.then21.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_set_codec_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_init_chip(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_enter_link_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_prepare(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %disabled.i = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disabled.i, align 4
  %5 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %azx_is_pm_ready.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

azx_is_pm_ready.exit:                             ; preds = %if.end.i
  %init_failed.i = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %init_failed.i, align 8
  %7 = and i8 %bf.load2.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool11.not.i = icmp slt i16 %bf.load.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end, label %azx_is_pm_ready.exit.cleanup_crit_edge

azx_is_pm_ready.exit.cleanup_crit_edge:           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 8
  %pm_prepared = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %pm_prepared to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %pm_prepared, align 4
  %bf.set = or i16 %bf.load, 64
  store i16 %bf.set, ptr %pm_prepared, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %11 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %unsol_work = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 17
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %unsol_work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %azx_is_pm_ready.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @azx_complete(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %disabled.i = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disabled.i, align 4
  %5 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %azx_is_pm_ready.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

azx_is_pm_ready.exit:                             ; preds = %if.end.i
  %init_failed.i = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %init_failed.i, align 8
  %7 = and i8 %bf.load2.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool11.not.i = icmp slt i16 %bf.load.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end, label %azx_is_pm_ready.exit.cleanup_crit_edge

azx_is_pm_ready.exit.cleanup_crit_edge:           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %10 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %pm_prepared = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 21
  %11 = ptrtoint ptr %pm_prepared to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %pm_prepared, align 4
  %bf.clear = and i16 %bf.load, -65
  store i16 %bf.clear, ptr %pm_prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %azx_is_pm_ready.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %disabled.i = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disabled.i, align 4
  %5 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %azx_is_pm_ready.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

azx_is_pm_ready.exit:                             ; preds = %if.end.i
  %init_failed.i = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %init_failed.i, align 8
  %7 = and i8 %bf.load2.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool11.not.i = icmp slt i16 %bf.load.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end, label %azx_is_pm_ready.exit.cleanup_crit_edge

azx_is_pm_ready.exit.cleanup_crit_edge:           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %azx_is_pm_ready.exit
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 8
  tail call void @azx_stop_chip(ptr noundef %9) #12
  tail call void @snd_hdac_bus_enter_link_reset(ptr noundef %9) #12
  %reg_lock.i.i.i = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i.i.i) #12
  %stream_list.i.i.i = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %stream_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn17.i.i.i = load ptr, ptr %stream_list.i.i.i, align 4
  %cmp.not18.i.i.i = icmp eq ptr %.pn17.i.i.i, %stream_list.i.i.i
  br i1 %cmp.not18.i.i.i, label %if.end.azx_shutdown_chip.exit_crit_edge, label %if.end.for.body.i.i.i_crit_edge

if.end.for.body.i.i.i_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i.i

if.end.azx_shutdown_chip.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %azx_shutdown_chip.exit

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.for.body.i.i.i_crit_edge
  %.pn19.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn17.i.i.i, %if.end.for.body.i.i.i_crit_edge ]
  %irq_pending.i.i.i = getelementptr i8, ptr %.pn19.i.i.i, i32 100
  %11 = ptrtoint ptr %irq_pending.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i.i = load i8, ptr %irq_pending.i.i.i, align 8
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 127
  store i8 %bf.clear.i.i.i, ptr %irq_pending.i.i.i, align 8
  %12 = ptrtoint ptr %.pn19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i.i.i = load ptr, ptr %.pn19.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %stream_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.azx_shutdown_chip.exit_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i.azx_shutdown_chip.exit_crit_edge:  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %azx_shutdown_chip.exit

azx_shutdown_chip.exit:                           ; preds = %for.body.i.i.i.azx_shutdown_chip.exit_crit_edge, %if.end.azx_shutdown_chip.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i.i.i) #12
  tail call void @snd_hdac_display_power(ptr noundef %9, i32 noundef 8, i1 noundef zeroext false) #12
  %irq = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp = icmp sgt i32 %14, -1
  br i1 %cmp, label %if.then3, label %azx_shutdown_chip.exit.if.end8_crit_edge

azx_shutdown_chip.exit.if.end8_crit_edge:         ; preds = %azx_shutdown_chip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %azx_shutdown_chip.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %9) #12
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %irq, align 4
  %card7 = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card7, align 8
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %sync_irq, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %azx_shutdown_chip.exit.if.end8_crit_edge
  %msi = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 21
  %19 = ptrtoint ptr %msi to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %msi, align 4
  %20 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  br i1 %tobool.not, label %if.end8.if.end10_crit_edge, label %if.then9

if.end8.if.end10_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  tail call void @pci_disable_msi(ptr noundef %22) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end8.if.end10_crit_edge
  tail call fastcc void @trace_azx_suspend(ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %azx_is_pm_ready.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %disabled.i = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disabled.i, align 4
  %5 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %azx_is_pm_ready.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

azx_is_pm_ready.exit:                             ; preds = %if.end.i
  %init_failed.i = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %init_failed.i, align 8
  %7 = and i8 %bf.load2.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool11.not.i = icmp slt i16 %bf.load.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end, label %azx_is_pm_ready.exit.cleanup_crit_edge

azx_is_pm_ready.exit.cleanup_crit_edge:           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %azx_is_pm_ready.exit
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 8
  %msi = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %msi to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %msi, align 4
  %11 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %pci = getelementptr inbounds %struct.azx, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %call3 = tail call i32 @pci_enable_msi(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %msi to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load6 = load i16, ptr %msi, align 4
  %bf.clear7 = and i16 %bf.load6, -4097
  store i16 %bf.clear7, ptr %msi, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call fastcc i32 @azx_acquire_irq(ptr noundef %9, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__azx_runtime_resume(ptr noundef %9)
  tail call fastcc void @trace_azx_resume(ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %azx_is_pm_ready.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %azx_is_pm_ready.exit.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_freeze_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %disabled.i = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disabled.i, align 4
  %5 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %azx_is_pm_ready.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

azx_is_pm_ready.exit:                             ; preds = %if.end.i
  %init_failed.i = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %init_failed.i, align 8
  %7 = and i8 %bf.load2.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool11.not.i = icmp slt i16 %bf.load.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end, label %azx_is_pm_ready.exit.cleanup_crit_edge

azx_is_pm_ready.exit.cleanup_crit_edge:           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %azx_is_pm_ready.exit
  %driver_type = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %azx_is_pm_ready.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_thaw_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %disabled.i = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disabled.i, align 4
  %5 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %azx_is_pm_ready.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

azx_is_pm_ready.exit:                             ; preds = %if.end.i
  %init_failed.i = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %init_failed.i, align 8
  %7 = and i8 %bf.load2.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool11.not.i = icmp slt i16 %bf.load.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end, label %azx_is_pm_ready.exit.cleanup_crit_edge

azx_is_pm_ready.exit.cleanup_crit_edge:           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %azx_is_pm_ready.exit
  %driver_type = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %azx_is_pm_ready.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %disabled.i = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disabled.i, align 4
  %5 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %azx_is_pm_ready.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

azx_is_pm_ready.exit:                             ; preds = %if.end.i
  %init_failed.i = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %init_failed.i, align 8
  %7 = and i8 %bf.load2.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool11.not.i = icmp slt i16 %bf.load.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end, label %azx_is_pm_ready.exit.cleanup_crit_edge

azx_is_pm_ready.exit.cleanup_crit_edge:           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %azx_is_pm_ready.exit
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 8
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 12
  %aligned_mmio.i = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 28
  %12 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i19 = load i16, ptr %aligned_mmio.i, align 4
  %13 = and i16 %bf.load.i19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast.not.i = icmp eq i16 %13, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr, i32 noundef 65535) #12
  br label %snd_hdac_reg_readw.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #12, !srcloc !575
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !576
  %conv.i = zext i16 %15 to i32
  br label %snd_hdac_reg_readw.exit

snd_hdac_reg_readw.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv3.i = trunc i32 %cond.i to i16
  %16 = or i16 %conv3.i, 255
  %17 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i21 = load i16, ptr %aligned_mmio.i, align 4
  %18 = and i16 %bf.load.i21, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %bf.cast.not.i22 = icmp eq i16 %18, 0
  br i1 %bf.cast.not.i22, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i23 = zext i16 %16 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %conv.i23, ptr noundef %add.ptr, i32 noundef 65535) #12
  br label %snd_hdac_reg_writew.exit

do.body.i:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !586
  tail call void @arm_heavy_mb() #12
  %19 = tail call i16 @llvm.bswap.i16(i16 %16) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %19) #12, !srcloc !587
  br label %snd_hdac_reg_writew.exit

snd_hdac_reg_writew.exit:                         ; preds = %do.body.i, %if.then.i
  tail call void @azx_stop_chip(ptr noundef %9) #12
  tail call void @snd_hdac_bus_enter_link_reset(ptr noundef %9) #12
  %reg_lock.i.i.i = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i.i.i) #12
  %stream_list.i.i.i = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 27
  %20 = ptrtoint ptr %stream_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn17.i.i.i = load ptr, ptr %stream_list.i.i.i, align 4
  %cmp.not18.i.i.i = icmp eq ptr %.pn17.i.i.i, %stream_list.i.i.i
  br i1 %cmp.not18.i.i.i, label %snd_hdac_reg_writew.exit.azx_shutdown_chip.exit_crit_edge, label %snd_hdac_reg_writew.exit.for.body.i.i.i_crit_edge

snd_hdac_reg_writew.exit.for.body.i.i.i_crit_edge: ; preds = %snd_hdac_reg_writew.exit
  br label %for.body.i.i.i

snd_hdac_reg_writew.exit.azx_shutdown_chip.exit_crit_edge: ; preds = %snd_hdac_reg_writew.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %azx_shutdown_chip.exit

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %snd_hdac_reg_writew.exit.for.body.i.i.i_crit_edge
  %.pn19.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn17.i.i.i, %snd_hdac_reg_writew.exit.for.body.i.i.i_crit_edge ]
  %irq_pending.i.i.i = getelementptr i8, ptr %.pn19.i.i.i, i32 100
  %21 = ptrtoint ptr %irq_pending.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i.i = load i8, ptr %irq_pending.i.i.i, align 8
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 127
  store i8 %bf.clear.i.i.i, ptr %irq_pending.i.i.i, align 8
  %22 = ptrtoint ptr %.pn19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i.i = load ptr, ptr %.pn19.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %stream_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.azx_shutdown_chip.exit_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i.azx_shutdown_chip.exit_crit_edge:  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %azx_shutdown_chip.exit

azx_shutdown_chip.exit:                           ; preds = %for.body.i.i.i.azx_shutdown_chip.exit_crit_edge, %snd_hdac_reg_writew.exit.azx_shutdown_chip.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i.i.i) #12
  tail call void @snd_hdac_display_power(ptr noundef %9, i32 noundef 8, i1 noundef zeroext false) #12
  tail call fastcc void @trace_azx_runtime_suspend(ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %azx_shutdown_chip.exit, %azx_is_pm_ready.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @azx_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %disabled.i = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disabled.i, align 4
  %5 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %azx_is_pm_ready.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

azx_is_pm_ready.exit:                             ; preds = %if.end.i
  %init_failed.i = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %init_failed.i, align 8
  %7 = and i8 %bf.load2.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool11.not.i = icmp slt i16 %bf.load.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end, label %azx_is_pm_ready.exit.cleanup_crit_edge

azx_is_pm_ready.exit.cleanup_crit_edge:           ; preds = %azx_is_pm_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %azx_is_pm_ready.exit
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 8
  tail call fastcc void @__azx_runtime_resume(ptr noundef %9)
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 12
  %aligned_mmio.i = getelementptr inbounds %struct.hdac_bus, ptr %9, i32 0, i32 28
  %12 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i19 = load i16, ptr %aligned_mmio.i, align 4
  %13 = and i16 %bf.load.i19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast.not.i = icmp eq i16 %13, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr, i32 noundef 65535) #12
  br label %snd_hdac_reg_readw.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #12, !srcloc !575
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !576
  %conv.i = zext i16 %15 to i32
  br label %snd_hdac_reg_readw.exit

snd_hdac_reg_readw.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv3.i = trunc i32 %cond.i to i16
  %16 = and i16 %conv3.i, -256
  %17 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i21 = load i16, ptr %aligned_mmio.i, align 4
  %18 = and i16 %bf.load.i21, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %bf.cast.not.i22 = icmp eq i16 %18, 0
  br i1 %bf.cast.not.i22, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i23 = zext i16 %16 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %conv.i23, ptr noundef %add.ptr, i32 noundef 65535) #12
  br label %snd_hdac_reg_writew.exit

do.body.i:                                        ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !586
  tail call void @arm_heavy_mb() #12
  %19 = lshr exact i16 %16, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %19) #12, !srcloc !587
  br label %snd_hdac_reg_writew.exit

snd_hdac_reg_writew.exit:                         ; preds = %do.body.i, %if.then.i
  tail call fastcc void @trace_azx_runtime_resume(ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %snd_hdac_reg_writew.exit, %azx_is_pm_ready.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @azx_runtime_idle(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %disabled = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %disabled, align 4
  %5 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %init_failed = getelementptr inbounds %struct.hda_intel, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %init_failed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2 = load i8, ptr %init_failed, align 8
  %7 = and i8 %bf.load2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %8 = load i8, ptr @power_save_controller, align 1, !range !569
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %lor.lhs.false10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end8
  %driver_caps = getelementptr inbounds %struct.azx, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %driver_caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_caps, align 8
  %and = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  %codec_powered = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 19
  %11 = ptrtoint ptr %codec_powered to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %codec_powered, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool18.not = icmp sgt i16 %bf.load, -1
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool18.not
  %spec.select = select i1 %or.cond, i32 -16, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %lor.lhs.false10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false10.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_azx_suspend(ptr noundef %chip) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_suspend, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_azx_suspend, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !570

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !566

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !588
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_suspend, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %chip) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !589
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !589
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !566

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !590
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_suspend, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_azx_suspend.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_azx_suspend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.157, i32 noundef 30, ptr noundef nonnull @.str.158) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !591
  %38 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__azx_runtime_resume(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_hdac_display_power(ptr noundef %chip, i32 noundef 8, i1 noundef zeroext true) #12
  %need_i915_power = getelementptr inbounds %struct.hda_intel, ptr %chip, i32 0, i32 5
  %remap_addr = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 8
  %add.ptr8 = getelementptr i8, ptr %1, i32 14
  %aligned_mmio.i = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 28
  %2 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %aligned_mmio.i, align 4
  %3 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %bf.cast.not.i = icmp eq i16 %3, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr8, i32 noundef 65535) #12
  br label %snd_hdac_reg_readw.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #12, !srcloc !575
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !576
  %conv.i = zext i16 %5 to i32
  br label %snd_hdac_reg_readw.exit

snd_hdac_reg_readw.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv = and i32 %cond.i, 65535
  tail call fastcc void @azx_init_pci(ptr noundef %chip)
  tail call fastcc void @hda_intel_init_chip(ptr noundef %chip, i1 noundef zeroext true)
  %pm_prepared = getelementptr inbounds %struct.azx, ptr %chip, i32 0, i32 21
  %6 = ptrtoint ptr %pm_prepared to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load9 = load i16, ptr %pm_prepared, align 4
  %7 = and i16 %bf.load9, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then13, label %snd_hdac_reg_readw.exit.if.end45_crit_edge

snd_hdac_reg_readw.exit.if.end45_crit_edge:       ; preds = %snd_hdac_reg_readw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then13:                                        ; preds = %snd_hdac_reg_readw.exit
  %codec_list = getelementptr inbounds %struct.hdac_bus, ptr %chip, i32 0, i32 11
  %8 = ptrtoint ptr %codec_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn72 = load ptr, ptr %codec_list, align 4
  %cmp.not74 = icmp eq ptr %.pn72, %codec_list
  br i1 %cmp.not74, label %if.then13.if.end45_crit_edge, label %if.then13.for.body_crit_edge

if.then13.for.body_crit_edge:                     ; preds = %if.then13
  br label %for.body

if.then13.if.end45_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then13.for.body_crit_edge
  %.pn75 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn72, %if.then13.for.body_crit_edge ]
  %codec.076 = getelementptr i8, ptr %.pn75, i32 -940
  %relaxed_resume = getelementptr i8, ptr %.pn75, i32 904
  %9 = ptrtoint ptr %relaxed_resume to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load24 = load i32, ptr %relaxed_resume, align 4
  %10 = and i32 %bf.load24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool27.not = icmp eq i32 %10, 0
  br i1 %tobool27.not, label %if.end29, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end29:                                         ; preds = %for.body
  %11 = and i32 %bf.load24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool33.not = icmp eq i32 %11, 0
  br i1 %tobool33.not, label %lor.lhs.false, label %if.end29.if.then35_crit_edge

if.end29.if.then35_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end29
  %addr = getelementptr i8, ptr %.pn75, i32 292
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 8
  %shl = shl nuw i32 1, %13
  %and = and i32 %conv, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end29.if.then35_crit_edge
  %call.i71 = tail call i32 @__pm_runtime_resume(ptr noundef %codec.076, i32 noundef 1) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn75, align 4
  %cmp.not = icmp eq ptr %.pn, %codec_list
  br i1 %cmp.not, label %for.inc.if.end45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end45_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end45:                                         ; preds = %for.inc.if.end45_crit_edge, %if.then13.if.end45_crit_edge, %snd_hdac_reg_readw.exit.if.end45_crit_edge
  %15 = ptrtoint ptr %need_i915_power to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load47 = load i8, ptr %need_i915_power, align 8
  %16 = and i8 %bf.load47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %bf.cast50.not = icmp eq i8 %16, 0
  br i1 %bf.cast50.not, label %if.then51, label %if.end45.if.end54_crit_edge

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @snd_hdac_display_power(ptr noundef %chip, i32 noundef 8, i1 noundef zeroext false) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end45.if.end54_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_azx_resume(ptr noundef %chip) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_resume, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_azx_resume, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !570

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !566

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !592
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_resume, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %chip) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !593
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !593
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !566

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !590
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_resume, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_azx_resume.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_azx_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.157, i32 noundef 35, ptr noundef nonnull @.str.158) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !591
  %38 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_azx_runtime_suspend(ptr noundef %chip) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_runtime_suspend, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_azx_runtime_suspend, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !570

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !566

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !594
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_runtime_suspend, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %chip) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !595
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !595
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !566

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !590
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_runtime_suspend, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_azx_runtime_suspend.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_azx_runtime_suspend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.157, i32 noundef 41, ptr noundef nonnull @.str.158) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !591
  %38 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_aligned_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_azx_runtime_resume(ptr noundef %chip) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_runtime_resume, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_azx_runtime_resume, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !570

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !566

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !596
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_runtime_resume, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %chip) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !597
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !597
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !566

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !590
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_azx_runtime_resume, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_azx_runtime_resume.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_azx_runtime_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.157, i32 noundef 46, ptr noundef nonnull @.str.158) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !591
  %38 = tail call i32 @llvm.read_register.i32(metadata !556) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !92, !93, !95, !97, !98, !100, !102, !103, !105, !107, !108, !110, !112, !113, !115, !117, !118, !120, !122, !123, !125, !127, !128, !129, !130, !131, !132, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !193, !194, !196, !198, !199, !200, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !218, !220, !222, !223, !224, !225, !226, !227, !228, !230, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !257, !259, !260, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !293, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305, !307, !309, !311, !313, !315, !317, !319, !320, !321, !322, !324, !325, !327, !329, !330, !331, !332, !334, !335, !337, !338, !340, !341, !343, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !375, !376, !377, !378, !379, !381, !382, !383, !385, !386, !387, !388, !390, !391, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !415, !416, !417, !419, !420, !421, !423, !425, !426, !427, !429, !430, !432, !433, !435, !436, !437, !439, !440, !441, !443, !445, !447, !448, !449, !451, !452, !454, !455, !457, !458, !459, !460, !462, !464, !465, !466, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !504, !505, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !539, !540, !541, !543, !544, !545, !546, !547, !549, !550, !551, !552, !553, !554, !555}
!llvm.named.register.sp = !{!556}
!llvm.module.flags = !{!557, !558, !559, !560, !561, !562, !563, !564}
!llvm.ident = !{!565}

!0 = !{ptr @__tracepoint_azx_suspend, !1, !"__tracepoint_azx_suspend", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/./hda_intel_trace.h", i32 27, i32 1}
!2 = !{ptr @__tracepoint_ptr_azx_suspend, !1, !"__tracepoint_ptr_azx_suspend", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_azx_suspend, !1, !"__SCK__tp_func_azx_suspend", i1 false, i1 false}
!4 = !{ptr @__tracepoint_azx_resume, !5, !"__tracepoint_azx_resume", i1 false, i1 false}
!5 = !{!"../sound/pci/hda/./hda_intel_trace.h", i32 32, i32 1}
!6 = !{ptr @__tracepoint_ptr_azx_resume, !5, !"__tracepoint_ptr_azx_resume", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_azx_resume, !5, !"__SCK__tp_func_azx_resume", i1 false, i1 false}
!8 = !{ptr @__tracepoint_azx_runtime_suspend, !9, !"__tracepoint_azx_runtime_suspend", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/./hda_intel_trace.h", i32 38, i32 1}
!10 = !{ptr @__tracepoint_ptr_azx_runtime_suspend, !9, !"__tracepoint_ptr_azx_runtime_suspend", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_azx_runtime_suspend, !9, !"__SCK__tp_func_azx_runtime_suspend", i1 false, i1 false}
!12 = !{ptr @__tracepoint_azx_runtime_resume, !13, !"__tracepoint_azx_runtime_resume", i1 false, i1 false}
!13 = !{!"../sound/pci/hda/./hda_intel_trace.h", i32 43, i32 1}
!14 = !{ptr @__tracepoint_ptr_azx_runtime_resume, !13, !"__tracepoint_ptr_azx_runtime_resume", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_azx_runtime_resume, !13, !"__SCK__tp_func_azx_runtime_resume", i1 false, i1 false}
!16 = !{ptr @event_class_hda_pm, !17, !"event_class_hda_pm", i1 false, i1 false}
!17 = !{!"../sound/pci/hda/./hda_intel_trace.h", i32 11, i32 1}
!18 = !{ptr @event_azx_suspend, !1, !"event_azx_suspend", i1 false, i1 false}
!19 = !{ptr @__event_azx_suspend, !1, !"__event_azx_suspend", i1 false, i1 false}
!20 = !{ptr @event_azx_resume, !5, !"event_azx_resume", i1 false, i1 false}
!21 = !{ptr @__event_azx_resume, !5, !"__event_azx_resume", i1 false, i1 false}
!22 = !{ptr @event_azx_runtime_suspend, !9, !"event_azx_runtime_suspend", i1 false, i1 false}
!23 = !{ptr @__event_azx_runtime_suspend, !9, !"__event_azx_runtime_suspend", i1 false, i1 false}
!24 = !{ptr @event_azx_runtime_resume, !13, !"event_azx_runtime_resume", i1 false, i1 false}
!25 = !{ptr @__event_azx_runtime_resume, !13, !"__event_azx_runtime_resume", i1 false, i1 false}
!26 = !{ptr @__bpf_trace_tp_map_azx_suspend, !1, !"__bpf_trace_tp_map_azx_suspend", i1 false, i1 false}
!27 = !{ptr @__bpf_trace_tp_map_azx_resume, !5, !"__bpf_trace_tp_map_azx_resume", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_azx_runtime_suspend, !9, !"__bpf_trace_tp_map_azx_runtime_suspend", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_azx_runtime_resume, !13, !"__bpf_trace_tp_map_azx_runtime_resume", i1 false, i1 false}
!30 = !{ptr @__param_index, !31, !"__param_index", i1 false, i1 false}
!31 = !{!"../sound/pci/hda/hda_intel.c", i32 130, i32 1}
!32 = !{ptr @__UNIQUE_ID_indextype338, !31, !"__UNIQUE_ID_indextype338", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_index339, !34, !"__UNIQUE_ID_index339", i1 false, i1 false}
!34 = !{!"../sound/pci/hda/hda_intel.c", i32 131, i32 1}
!35 = !{ptr @__param_id, !36, !"__param_id", i1 false, i1 false}
!36 = !{!"../sound/pci/hda/hda_intel.c", i32 132, i32 1}
!37 = !{ptr @__UNIQUE_ID_idtype340, !36, !"__UNIQUE_ID_idtype340", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_id341, !39, !"__UNIQUE_ID_id341", i1 false, i1 false}
!39 = !{!"../sound/pci/hda/hda_intel.c", i32 133, i32 1}
!40 = !{ptr @__param_enable, !41, !"__param_enable", i1 false, i1 false}
!41 = !{!"../sound/pci/hda/hda_intel.c", i32 134, i32 1}
!42 = !{ptr @__UNIQUE_ID_enabletype342, !41, !"__UNIQUE_ID_enabletype342", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_enable343, !44, !"__UNIQUE_ID_enable343", i1 false, i1 false}
!44 = !{!"../sound/pci/hda/hda_intel.c", i32 135, i32 1}
!45 = !{ptr @__param_model, !46, !"__param_model", i1 false, i1 false}
!46 = !{!"../sound/pci/hda/hda_intel.c", i32 136, i32 1}
!47 = !{ptr @__UNIQUE_ID_modeltype344, !46, !"__UNIQUE_ID_modeltype344", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_model345, !49, !"__UNIQUE_ID_model345", i1 false, i1 false}
!49 = !{!"../sound/pci/hda/hda_intel.c", i32 137, i32 1}
!50 = !{ptr @__param_position_fix, !51, !"__param_position_fix", i1 false, i1 false}
!51 = !{!"../sound/pci/hda/hda_intel.c", i32 138, i32 1}
!52 = !{ptr @__UNIQUE_ID_position_fixtype346, !51, !"__UNIQUE_ID_position_fixtype346", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_position_fix347, !54, !"__UNIQUE_ID_position_fix347", i1 false, i1 false}
!54 = !{!"../sound/pci/hda/hda_intel.c", i32 139, i32 1}
!55 = !{ptr @__param_bdl_pos_adj, !56, !"__param_bdl_pos_adj", i1 false, i1 false}
!56 = !{!"../sound/pci/hda/hda_intel.c", i32 141, i32 1}
!57 = !{ptr @__UNIQUE_ID_bdl_pos_adjtype348, !56, !"__UNIQUE_ID_bdl_pos_adjtype348", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_bdl_pos_adj349, !59, !"__UNIQUE_ID_bdl_pos_adj349", i1 false, i1 false}
!59 = !{!"../sound/pci/hda/hda_intel.c", i32 142, i32 1}
!60 = !{ptr @__param_probe_mask, !61, !"__param_probe_mask", i1 false, i1 false}
!61 = !{!"../sound/pci/hda/hda_intel.c", i32 143, i32 1}
!62 = !{ptr @__UNIQUE_ID_probe_masktype350, !61, !"__UNIQUE_ID_probe_masktype350", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_probe_mask351, !64, !"__UNIQUE_ID_probe_mask351", i1 false, i1 false}
!64 = !{!"../sound/pci/hda/hda_intel.c", i32 144, i32 1}
!65 = !{ptr @__param_probe_only, !66, !"__param_probe_only", i1 false, i1 false}
!66 = !{!"../sound/pci/hda/hda_intel.c", i32 145, i32 1}
!67 = !{ptr @__UNIQUE_ID_probe_onlytype352, !66, !"__UNIQUE_ID_probe_onlytype352", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_probe_only353, !69, !"__UNIQUE_ID_probe_only353", i1 false, i1 false}
!69 = !{!"../sound/pci/hda/hda_intel.c", i32 146, i32 1}
!70 = !{ptr @__param_jackpoll_ms, !71, !"__param_jackpoll_ms", i1 false, i1 false}
!71 = !{!"../sound/pci/hda/hda_intel.c", i32 147, i32 1}
!72 = !{ptr @__UNIQUE_ID_jackpoll_mstype354, !71, !"__UNIQUE_ID_jackpoll_mstype354", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_jackpoll_ms355, !74, !"__UNIQUE_ID_jackpoll_ms355", i1 false, i1 false}
!74 = !{!"../sound/pci/hda/hda_intel.c", i32 148, i32 1}
!75 = !{ptr @__param_single_cmd, !76, !"__param_single_cmd", i1 false, i1 false}
!76 = !{!"../sound/pci/hda/hda_intel.c", i32 149, i32 1}
!77 = !{ptr @__UNIQUE_ID_single_cmdtype356, !76, !"__UNIQUE_ID_single_cmdtype356", i1 false, i1 false}
!78 = !{ptr @__UNIQUE_ID_single_cmd357, !79, !"__UNIQUE_ID_single_cmd357", i1 false, i1 false}
!79 = !{!"../sound/pci/hda/hda_intel.c", i32 150, i32 1}
!80 = !{ptr @__param_enable_msi, !81, !"__param_enable_msi", i1 false, i1 false}
!81 = !{!"../sound/pci/hda/hda_intel.c", i32 152, i32 1}
!82 = !{ptr @__UNIQUE_ID_enable_msitype358, !81, !"__UNIQUE_ID_enable_msitype358", i1 false, i1 false}
!83 = !{ptr @__UNIQUE_ID_enable_msi359, !84, !"__UNIQUE_ID_enable_msi359", i1 false, i1 false}
!84 = !{!"../sound/pci/hda/hda_intel.c", i32 153, i32 1}
!85 = !{ptr @__param_patch, !86, !"__param_patch", i1 false, i1 false}
!86 = !{!"../sound/pci/hda/hda_intel.c", i32 155, i32 1}
!87 = !{ptr @__UNIQUE_ID_patchtype360, !86, !"__UNIQUE_ID_patchtype360", i1 false, i1 false}
!88 = !{ptr @__UNIQUE_ID_patch361, !89, !"__UNIQUE_ID_patch361", i1 false, i1 false}
!89 = !{!"../sound/pci/hda/hda_intel.c", i32 156, i32 1}
!90 = !{ptr @__param_beep_mode, !91, !"__param_beep_mode", i1 false, i1 false}
!91 = !{!"../sound/pci/hda/hda_intel.c", i32 159, i32 1}
!92 = !{ptr @__UNIQUE_ID_beep_modetype362, !91, !"__UNIQUE_ID_beep_modetype362", i1 false, i1 false}
!93 = !{ptr @__UNIQUE_ID_beep_mode363, !94, !"__UNIQUE_ID_beep_mode363", i1 false, i1 false}
!94 = !{!"../sound/pci/hda/hda_intel.c", i32 160, i32 1}
!95 = !{ptr @__param_dmic_detect, !96, !"__param_dmic_detect", i1 false, i1 false}
!96 = !{!"../sound/pci/hda/hda_intel.c", i32 163, i32 1}
!97 = !{ptr @__UNIQUE_ID_dmic_detecttype364, !96, !"__UNIQUE_ID_dmic_detecttype364", i1 false, i1 false}
!98 = !{ptr @__UNIQUE_ID_dmic_detect365, !99, !"__UNIQUE_ID_dmic_detect365", i1 false, i1 false}
!99 = !{!"../sound/pci/hda/hda_intel.c", i32 164, i32 1}
!100 = !{ptr @__param_power_save, !101, !"__param_power_save", i1 false, i1 false}
!101 = !{!"../sound/pci/hda/hda_intel.c", i32 177, i32 1}
!102 = !{ptr @__UNIQUE_ID_power_savetype366, !101, !"__UNIQUE_ID_power_savetype366", i1 false, i1 false}
!103 = !{ptr @__UNIQUE_ID_power_save367, !104, !"__UNIQUE_ID_power_save367", i1 false, i1 false}
!104 = !{!"../sound/pci/hda/hda_intel.c", i32 178, i32 1}
!105 = !{ptr @__param_pm_blacklist, !106, !"__param_pm_blacklist", i1 false, i1 false}
!106 = !{!"../sound/pci/hda/hda_intel.c", i32 182, i32 1}
!107 = !{ptr @__UNIQUE_ID_pm_blacklisttype368, !106, !"__UNIQUE_ID_pm_blacklisttype368", i1 false, i1 false}
!108 = !{ptr @__UNIQUE_ID_pm_blacklist369, !109, !"__UNIQUE_ID_pm_blacklist369", i1 false, i1 false}
!109 = !{!"../sound/pci/hda/hda_intel.c", i32 183, i32 1}
!110 = !{ptr @__param_power_save_controller, !111, !"__param_power_save_controller", i1 false, i1 false}
!111 = !{!"../sound/pci/hda/hda_intel.c", i32 190, i32 1}
!112 = !{ptr @__UNIQUE_ID_power_save_controllertype370, !111, !"__UNIQUE_ID_power_save_controllertype370", i1 false, i1 false}
!113 = !{ptr @__UNIQUE_ID_power_save_controller371, !114, !"__UNIQUE_ID_power_save_controller371", i1 false, i1 false}
!114 = !{!"../sound/pci/hda/hda_intel.c", i32 191, i32 1}
!115 = !{ptr @__param_align_buffer_size, !116, !"__param_align_buffer_size", i1 false, i1 false}
!116 = !{!"../sound/pci/hda/hda_intel.c", i32 197, i32 1}
!117 = !{ptr @__UNIQUE_ID_align_buffer_sizetype372, !116, !"__UNIQUE_ID_align_buffer_sizetype372", i1 false, i1 false}
!118 = !{ptr @__UNIQUE_ID_align_buffer_size373, !119, !"__UNIQUE_ID_align_buffer_size373", i1 false, i1 false}
!119 = !{!"../sound/pci/hda/hda_intel.c", i32 198, i32 1}
!120 = !{ptr @__UNIQUE_ID_file374, !121, !"__UNIQUE_ID_file374", i1 false, i1 false}
!121 = !{!"../sound/pci/hda/hda_intel.c", i32 210, i32 1}
!122 = !{ptr @__UNIQUE_ID_license375, !121, !"__UNIQUE_ID_license375", i1 false, i1 false}
!123 = !{ptr @__UNIQUE_ID_description376, !124, !"__UNIQUE_ID_description376", i1 false, i1 false}
!124 = !{!"../sound/pci/hda/hda_intel.c", i32 211, i32 1}
!125 = !{ptr @__initcall__kmod_snd_hda_intel__390_2778_azx_driver_init6, !126, !"__initcall__kmod_snd_hda_intel__390_2778_azx_driver_init6", i1 false, i1 false}
!126 = !{!"../sound/pci/hda/hda_intel.c", i32 2778, i32 1}
!127 = !{ptr @__exitcall_azx_driver_exit, !126, !"__exitcall_azx_driver_exit", i1 false, i1 false}
!128 = !{ptr @__tpstrtab_azx_suspend, !1, !"__tpstrtab_azx_suspend", i1 false, i1 false}
!129 = !{ptr @__tpstrtab_azx_resume, !5, !"__tpstrtab_azx_resume", i1 false, i1 false}
!130 = !{ptr @__tpstrtab_azx_runtime_suspend, !9, !"__tpstrtab_azx_runtime_suspend", i1 false, i1 false}
!131 = !{ptr @__tpstrtab_azx_runtime_resume, !13, !"__tpstrtab_azx_runtime_resume", i1 false, i1 false}
!132 = !{ptr @str__hda_intel__trace_system_name, !133, !"str__hda_intel__trace_system_name", i1 false, i1 false}
!133 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!134 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @trace_event_fields_hda_pm, !17, !"trace_event_fields_hda_pm", i1 false, i1 false}
!137 = !{ptr @trace_event_type_funcs_hda_pm, !17, !"trace_event_type_funcs_hda_pm", i1 false, i1 false}
!138 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @print_fmt_hda_pm, !17, !"print_fmt_hda_pm", i1 false, i1 false}
!140 = !{ptr @__param_str_index, !31, !"__param_str_index", i1 false, i1 false}
!141 = !{ptr @__param_arr_index, !31, !"__param_arr_index", i1 false, i1 false}
!142 = !{ptr @index, !143, !"index", i1 false, i1 false}
!143 = !{!"../sound/pci/hda/hda_intel.c", i32 110, i32 12}
!144 = !{ptr @__param_str_id, !36, !"__param_str_id", i1 false, i1 false}
!145 = !{ptr @__param_arr_id, !36, !"__param_arr_id", i1 false, i1 false}
!146 = !{ptr @id, !147, !"id", i1 false, i1 false}
!147 = !{!"../sound/pci/hda/hda_intel.c", i32 111, i32 14}
!148 = !{ptr @__param_str_enable, !41, !"__param_str_enable", i1 false, i1 false}
!149 = !{ptr @__param_arr_enable, !41, !"__param_arr_enable", i1 false, i1 false}
!150 = !{ptr @enable, !151, !"enable", i1 false, i1 false}
!151 = !{!"../sound/pci/hda/hda_intel.c", i32 112, i32 13}
!152 = !{ptr @__param_str_model, !46, !"__param_str_model", i1 false, i1 false}
!153 = !{ptr @__param_arr_model, !46, !"__param_arr_model", i1 false, i1 false}
!154 = !{ptr @model, !155, !"model", i1 false, i1 false}
!155 = !{!"../sound/pci/hda/hda_intel.c", i32 113, i32 14}
!156 = !{ptr @__param_str_position_fix, !51, !"__param_str_position_fix", i1 false, i1 false}
!157 = !{ptr @__param_arr_position_fix, !51, !"__param_arr_position_fix", i1 false, i1 false}
!158 = !{ptr @position_fix, !159, !"position_fix", i1 false, i1 false}
!159 = !{!"../sound/pci/hda/hda_intel.c", i32 114, i32 12}
!160 = !{ptr @__param_str_bdl_pos_adj, !56, !"__param_str_bdl_pos_adj", i1 false, i1 false}
!161 = !{ptr @__param_arr_bdl_pos_adj, !56, !"__param_arr_bdl_pos_adj", i1 false, i1 false}
!162 = !{ptr @bdl_pos_adj, !163, !"bdl_pos_adj", i1 false, i1 false}
!163 = !{!"../sound/pci/hda/hda_intel.c", i32 115, i32 12}
!164 = !{ptr @__param_str_probe_mask, !61, !"__param_str_probe_mask", i1 false, i1 false}
!165 = !{ptr @__param_arr_probe_mask, !61, !"__param_arr_probe_mask", i1 false, i1 false}
!166 = !{ptr @probe_mask, !167, !"probe_mask", i1 false, i1 false}
!167 = !{!"../sound/pci/hda/hda_intel.c", i32 116, i32 12}
!168 = !{ptr @__param_str_probe_only, !66, !"__param_str_probe_only", i1 false, i1 false}
!169 = !{ptr @__param_arr_probe_only, !66, !"__param_arr_probe_only", i1 false, i1 false}
!170 = !{ptr @probe_only, !171, !"probe_only", i1 false, i1 false}
!171 = !{!"../sound/pci/hda/hda_intel.c", i32 117, i32 12}
!172 = !{ptr @__param_str_jackpoll_ms, !71, !"__param_str_jackpoll_ms", i1 false, i1 false}
!173 = !{ptr @__param_arr_jackpoll_ms, !71, !"__param_arr_jackpoll_ms", i1 false, i1 false}
!174 = !{ptr @jackpoll_ms, !175, !"jackpoll_ms", i1 false, i1 false}
!175 = !{!"../sound/pci/hda/hda_intel.c", i32 118, i32 12}
!176 = !{ptr @__param_str_single_cmd, !76, !"__param_str_single_cmd", i1 false, i1 false}
!177 = !{ptr @single_cmd, !178, !"single_cmd", i1 false, i1 false}
!178 = !{!"../sound/pci/hda/hda_intel.c", i32 119, i32 12}
!179 = !{ptr @__param_str_enable_msi, !81, !"__param_str_enable_msi", i1 false, i1 false}
!180 = !{ptr @enable_msi, !181, !"enable_msi", i1 false, i1 false}
!181 = !{!"../sound/pci/hda/hda_intel.c", i32 120, i32 12}
!182 = !{ptr @__param_str_patch, !86, !"__param_str_patch", i1 false, i1 false}
!183 = !{ptr @__param_arr_patch, !86, !"__param_arr_patch", i1 false, i1 false}
!184 = !{ptr @patch, !185, !"patch", i1 false, i1 false}
!185 = !{!"../sound/pci/hda/hda_intel.c", i32 122, i32 14}
!186 = !{ptr @__param_str_beep_mode, !91, !"__param_str_beep_mode", i1 false, i1 false}
!187 = !{ptr @__param_arr_beep_mode, !91, !"__param_arr_beep_mode", i1 false, i1 false}
!188 = !{ptr @beep_mode, !189, !"beep_mode", i1 false, i1 false}
!189 = !{!"../sound/pci/hda/hda_intel.c", i32 125, i32 13}
!190 = !{ptr @__param_str_dmic_detect, !96, !"__param_str_dmic_detect", i1 false, i1 false}
!191 = !{ptr @dmic_detect, !192, !"dmic_detect", i1 false, i1 false}
!192 = !{!"../sound/pci/hda/hda_intel.c", i32 128, i32 13}
!193 = !{ptr @__param_str_power_save, !101, !"__param_str_power_save", i1 false, i1 false}
!194 = !{ptr @param_ops_xint, !195, !"param_ops_xint", i1 false, i1 false}
!195 = !{!"../sound/pci/hda/hda_intel.c", i32 170, i32 38}
!196 = !{ptr @.str.3, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/hda/hda_intel.c", i32 897, i32 8}
!198 = !{ptr @.str.4, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @card_list_lock, !197, !"card_list_lock", i1 false, i1 false}
!200 = !{ptr @card_list, !201, !"card_list", i1 false, i1 false}
!201 = !{!"../sound/pci/hda/hda_intel.c", i32 898, i32 8}
!202 = !{ptr @power_save, !203, !"power_save", i1 false, i1 false}
!203 = !{!"../sound/pci/hda/hda_intel.c", i32 176, i32 12}
!204 = !{ptr @__param_str_pm_blacklist, !106, !"__param_str_pm_blacklist", i1 false, i1 false}
!205 = !{ptr @pm_blacklist, !206, !"pm_blacklist", i1 false, i1 false}
!206 = !{!"../sound/pci/hda/hda_intel.c", i32 181, i32 13}
!207 = !{ptr @__param_str_power_save_controller, !111, !"__param_str_power_save_controller", i1 false, i1 false}
!208 = !{ptr @power_save_controller, !209, !"power_save_controller", i1 false, i1 false}
!209 = !{!"../sound/pci/hda/hda_intel.c", i32 189, i32 13}
!210 = !{ptr @__param_str_align_buffer_size, !116, !"__param_str_align_buffer_size", i1 false, i1 false}
!211 = !{ptr @align_buffer_size, !212, !"align_buffer_size", i1 false, i1 false}
!212 = !{!"../sound/pci/hda/hda_intel.c", i32 196, i32 12}
!213 = !{ptr @.str.5, !126, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @azx_driver, !215, !"azx_driver", i1 false, i1 false}
!215 = !{!"../sound/pci/hda/hda_intel.c", i32 2767, i32 26}
!216 = !{ptr @azx_ids, !217, !"azx_ids", i1 false, i1 false}
!217 = !{!"../sound/pci/hda/hda_intel.c", i32 2395, i32 35}
!218 = !{ptr @azx_probe.dev, !219, !"dev", i1 false, i1 false}
!219 = !{!"../sound/pci/hda/hda_intel.c", i32 2072, i32 13}
!220 = !{ptr @.str.6, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/hda/hda_intel.c", i32 2080, i32 3}
!222 = !{ptr @.str.7, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.8, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.9, !221, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.10, !221, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @azx_probe._entry, !221, !"_entry", i1 false, i1 false}
!227 = !{ptr @azx_probe._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.11, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/hda/hda_intel.c", i32 2097, i32 4}
!230 = !{ptr @azx_probe.__UNIQUE_ID_ddebug389, !229, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!231 = !{ptr @.str.13, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/hda/hda_intel.c", i32 2101, i32 3}
!233 = !{ptr @.str.14, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @azx_probe._entry.12, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @azx_probe._entry_ptr.15, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.17, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/hda/hda_intel.c", i32 2107, i32 3}
!238 = !{ptr @.str.18, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @azx_probe._entry.16, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @azx_probe._entry_ptr.19, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.21, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/hda/hda_intel.c", i32 2121, i32 3}
!243 = !{ptr @azx_probe._entry.20, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @azx_probe._entry_ptr.22, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.24, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/hda/hda_intel.c", i32 2135, i32 3}
!247 = !{ptr @azx_probe._entry.23, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @azx_probe._entry_ptr.25, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.27, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/hda/hda_intel.c", i32 2148, i32 3}
!251 = !{ptr @azx_probe._entry.26, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @azx_probe._entry_ptr.28, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @driver_denylist, !254, !"driver_denylist", i1 false, i1 false}
!254 = !{!"../sound/pci/hda/hda_intel.c", i32 2057, i32 35}
!255 = !{ptr @azx_create.ops, !256, !"ops", i1 false, i1 false}
!256 = !{!"../sound/pci/hda/hda_intel.c", i32 1765, i32 37}
!257 = !{ptr @azx_create.__key, !258, !"__key", i1 false, i1 false}
!258 = !{!"../sound/pci/hda/hda_intel.c", i32 1784, i32 2}
!259 = !{ptr @.str.29, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @azx_create.__key.30, !261, !"__key", i1 false, i1 false}
!261 = !{!"../sound/pci/hda/hda_intel.c", i32 1795, i32 2}
!262 = !{ptr @.str.31, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.32, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/pci/hda/hda_intel.c", i32 1823, i32 3}
!265 = !{ptr @.str.33, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @azx_create.__UNIQUE_ID_ddebug385, !264, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!267 = !{ptr @.str.34, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/hda/hda_intel.c", i32 1831, i32 3}
!269 = !{ptr @azx_create._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @azx_create._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @azx_create.__key.35, !272, !"__key", i1 false, i1 false}
!272 = !{!"../sound/pci/hda/hda_intel.c", i32 1837, i32 2}
!273 = !{ptr @.str.36, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @azx_create.__key.37, !272, !"__key", i1 false, i1 false}
!275 = !{ptr @.str.38, !272, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @pci_hda_ops, !277, !"pci_hda_ops", i1 false, i1 false}
!277 = !{!"../sound/pci/hda/hda_intel.c", i32 2064, i32 40}
!278 = !{ptr @.str.39, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/hda/hda_intel.c", i32 778, i32 3}
!280 = !{ptr @.str.40, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @azx_acquire_irq._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @azx_acquire_irq._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.41, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/pci/hda/hda_intel.c", i32 665, i32 4}
!285 = !{ptr @.str.42, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @azx_position_ok._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @azx_position_ok._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = distinct !{null, !289, !"__already_done", i1 false, i1 false}
!289 = !{!"../sound/pci/hda/hda_intel.c", i32 683, i32 6}
!290 = !{ptr @.str.43, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.44, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/pci/hda/hda_intel.c", i32 602, i32 3}
!293 = !{ptr @.str.45, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @azx_get_delay_from_lpib._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @azx_get_delay_from_lpib._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.46, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/hda/hda_intel.c", i32 1678, i32 3}
!298 = !{ptr @.str.47, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @check_msi._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @check_msi._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.49, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/pci/hda/hda_intel.c", i32 1687, i32 3}
!303 = !{ptr @check_msi._entry.48, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @check_msi._entry_ptr.50, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.51, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/pci/hda/hda_intel.c", i32 1654, i32 2}
!307 = !{ptr @.str.52, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/pci/hda/hda_intel.c", i32 1658, i32 2}
!309 = !{ptr @.str.53, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/pci/hda/hda_intel.c", i32 1661, i32 2}
!311 = !{ptr @.str.54, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/pci/hda/hda_intel.c", i32 1662, i32 2}
!313 = !{ptr @.str.55, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/pci/hda/hda_intel.c", i32 1663, i32 2}
!315 = !{ptr @msi_deny_list, !316, !"msi_deny_list", i1 false, i1 false}
!316 = !{!"../sound/pci/hda/hda_intel.c", i32 1653, i32 35}
!317 = !{ptr @.str.56, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/pci/hda/hda_intel.c", i32 724, i32 3}
!319 = !{ptr @.str.57, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @azx_irq_pending_work._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @azx_irq_pending_work._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @init_completion.__key, !323, !"__key", i1 false, i1 false}
!323 = !{!"../include/linux/completion.h", i32 87, i32 2}
!324 = !{ptr @.str.58, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @assign_position_fix.callbacks, !326, !"callbacks", i1 false, i1 false}
!326 = !{!"../sound/pci/hda/hda_intel.c", i32 1574, i32 38}
!327 = !{ptr @.str.59, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/pci/hda/hda_intel.c", i32 1546, i32 3}
!329 = !{ptr @.str.60, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @check_position_fix._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @check_position_fix._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.61, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/pci/hda/hda_intel.c", i32 1554, i32 3}
!334 = !{ptr @check_position_fix.__UNIQUE_ID_ddebug381, !333, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!335 = !{ptr @.str.62, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/pci/hda/hda_intel.c", i32 1558, i32 3}
!337 = !{ptr @check_position_fix.__UNIQUE_ID_ddebug382, !336, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!338 = !{ptr @.str.63, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/hda/hda_intel.c", i32 1562, i32 3}
!340 = !{ptr @check_position_fix.__UNIQUE_ID_ddebug383, !339, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!341 = !{ptr @.str.64, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/pci/hda/hda_intel.c", i32 1566, i32 3}
!343 = !{ptr @check_position_fix.__UNIQUE_ID_ddebug384, !342, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!344 = !{ptr @.str.65, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/pci/hda/hda_intel.c", i32 1512, i32 2}
!346 = !{ptr @.str.66, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/pci/hda/hda_intel.c", i32 1513, i32 2}
!348 = !{ptr @.str.67, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/pci/hda/hda_intel.c", i32 1514, i32 2}
!350 = !{ptr @.str.68, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/pci/hda/hda_intel.c", i32 1515, i32 2}
!352 = !{ptr @.str.69, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/pci/hda/hda_intel.c", i32 1517, i32 2}
!354 = !{ptr @.str.70, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/pci/hda/hda_intel.c", i32 1518, i32 2}
!356 = !{ptr @.str.71, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/pci/hda/hda_intel.c", i32 1519, i32 2}
!358 = !{ptr @.str.72, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/pci/hda/hda_intel.c", i32 1520, i32 2}
!360 = !{ptr @.str.73, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/pci/hda/hda_intel.c", i32 1521, i32 2}
!362 = !{ptr @.str.74, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/pci/hda/hda_intel.c", i32 1522, i32 2}
!364 = !{ptr @.str.75, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/pci/hda/hda_intel.c", i32 1523, i32 2}
!366 = !{ptr @.str.76, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/pci/hda/hda_intel.c", i32 1524, i32 2}
!368 = !{ptr @.str.77, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/pci/hda/hda_intel.c", i32 1525, i32 2}
!370 = !{ptr @position_fix_list, !371, !"position_fix_list", i1 false, i1 false}
!371 = !{!"../sound/pci/hda/hda_intel.c", i32 1511, i32 35}
!372 = !{ptr @.str.78, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/pci/hda/hda_intel.c", i32 1698, i32 3}
!374 = !{ptr @.str.79, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @azx_check_snoop_available._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @azx_check_snoop_available._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.80, !373, !"<string literal>", i1 false, i1 false}
!378 = distinct !{null, !373, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.83, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/pci/hda/hda_intel.c", i32 1723, i32 3}
!381 = !{ptr @azx_check_snoop_available._entry.82, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @azx_check_snoop_available._entry_ptr.84, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.85, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/pci/hda/hda_intel.c", i32 1634, i32 4}
!385 = !{ptr @.str.86, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @check_probe_mask._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @check_probe_mask._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.88, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/pci/hda/hda_intel.c", i32 1645, i32 3}
!390 = !{ptr @check_probe_mask._entry.87, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @check_probe_mask._entry_ptr.89, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.90, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/pci/hda/hda_intel.c", i32 1608, i32 2}
!394 = !{ptr @.str.91, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/pci/hda/hda_intel.c", i32 1609, i32 2}
!396 = !{ptr @.str.92, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/pci/hda/hda_intel.c", i32 1610, i32 2}
!398 = !{ptr @.str.93, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/pci/hda/hda_intel.c", i32 1612, i32 2}
!400 = !{ptr @.str.94, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/pci/hda/hda_intel.c", i32 1614, i32 2}
!402 = !{ptr @.str.95, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/pci/hda/hda_intel.c", i32 1616, i32 2}
!404 = !{ptr @.str.96, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/pci/hda/hda_intel.c", i32 1617, i32 2}
!406 = !{ptr @.str.97, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/pci/hda/hda_intel.c", i32 1618, i32 2}
!408 = !{ptr @.str.98, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/pci/hda/hda_intel.c", i32 1620, i32 2}
!410 = !{ptr @probe_mask_list, !411, !"probe_mask_list", i1 false, i1 false}
!411 = !{!"../sound/pci/hda/hda_intel.c", i32 1604, i32 35}
!412 = !{ptr @.str.99, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/pci/hda/hda_intel.c", i32 2256, i32 5}
!414 = !{ptr @.str.100, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @azx_probe_continue._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @azx_probe_continue._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.102, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/pci/hda/hda_intel.c", i32 2315, i32 4}
!419 = !{ptr @azx_probe_continue._entry.101, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @azx_probe_continue._entry_ptr.103, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.104, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/pci/hda/hda_intel.c", i32 1864, i32 40}
!423 = !{ptr @.str.105, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/pci/hda/hda_intel.c", i32 1889, i32 4}
!425 = !{ptr @.str.106, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @azx_first_init.__UNIQUE_ID_ddebug386, !424, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!427 = !{ptr @.str.107, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/pci/hda/hda_intel.c", i32 1899, i32 2}
!429 = !{ptr @azx_first_init.__UNIQUE_ID_ddebug387, !428, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!430 = !{ptr @.str.108, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/pci/hda/hda_intel.c", i32 1925, i32 3}
!432 = !{ptr @azx_first_init.__UNIQUE_ID_ddebug388, !431, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!433 = !{ptr @.str.109, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/pci/hda/hda_intel.c", i32 1978, i32 3}
!435 = !{ptr @azx_first_init._entry, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @azx_first_init._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.111, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/pci/hda/hda_intel.c", i32 2001, i32 3}
!439 = !{ptr @azx_first_init._entry.110, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @azx_first_init._entry_ptr.112, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.113, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/pci/hda/hda_intel.c", i32 2008, i32 23}
!443 = !{ptr @.str.114, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/pci/hda/hda_intel.c", i32 2012, i32 4}
!445 = !{ptr @.str.115, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/pci/hda/hda_intel.c", i32 395, i32 3}
!447 = !{ptr @.str.116, !446, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @azx_init_pci.__UNIQUE_ID_ddebug377, !446, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!449 = !{ptr @.str.117, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/pci/hda/hda_intel.c", i32 403, i32 3}
!451 = !{ptr @azx_init_pci.__UNIQUE_ID_ddebug378, !450, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!452 = !{ptr @.str.118, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/pci/hda/hda_intel.c", i32 412, i32 3}
!454 = !{ptr @azx_init_pci.__UNIQUE_ID_ddebug379, !453, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!455 = !{ptr @.str.119, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/pci/hda/hda_intel.c", i32 438, i32 3}
!457 = !{ptr @azx_init_pci.__UNIQUE_ID_ddebug380, !456, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!458 = !{ptr @.str.120, !456, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @.str.121, !456, !"<string literal>", i1 false, i1 false}
!460 = distinct !{null, !461, !"preferred_bits", i1 false, i1 false}
!461 = !{!"../sound/pci/hda/hda_intel.c", i32 472, i32 19}
!462 = !{ptr @.str.122, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/pci/hda/hda_intel.c", i32 484, i32 2}
!464 = !{ptr @.str.123, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @intel_get_lctl_scf._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @intel_get_lctl_scf._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.124, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/pci/hda/hda_intel.c", i32 346, i32 21}
!469 = !{ptr @.str.125, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/pci/hda/hda_intel.c", i32 347, i32 21}
!471 = !{ptr @.str.126, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/pci/hda/hda_intel.c", i32 348, i32 21}
!473 = !{ptr @.str.127, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/pci/hda/hda_intel.c", i32 350, i32 22}
!475 = !{ptr @.str.128, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/pci/hda/hda_intel.c", i32 351, i32 21}
!477 = !{ptr @.str.129, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/pci/hda/hda_intel.c", i32 352, i32 25}
!479 = !{ptr @.str.130, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/pci/hda/hda_intel.c", i32 354, i32 21}
!481 = !{ptr @.str.131, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/pci/hda/hda_intel.c", i32 355, i32 21}
!483 = !{ptr @.str.132, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/pci/hda/hda_intel.c", i32 356, i32 21}
!485 = !{ptr @.str.133, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/pci/hda/hda_intel.c", i32 357, i32 24}
!487 = !{ptr @.str.134, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/pci/hda/hda_intel.c", i32 358, i32 22}
!489 = !{ptr @.str.135, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/pci/hda/hda_intel.c", i32 359, i32 21}
!491 = !{ptr @.str.136, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/pci/hda/hda_intel.c", i32 361, i32 24}
!493 = !{ptr @.str.137, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/pci/hda/hda_intel.c", i32 362, i32 25}
!495 = !{ptr @.str.138, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/pci/hda/hda_intel.c", i32 363, i32 25}
!497 = !{ptr @driver_short_names, !498, !"driver_short_names", i1 false, i1 false}
!498 = !{!"../sound/pci/hda/hda_intel.c", i32 345, i32 27}
!499 = !{ptr @azx_max_codecs, !500, !"azx_max_codecs", i1 false, i1 false}
!500 = !{!"../sound/pci/hda/hda_intel.c", i32 2225, i32 27}
!501 = !{ptr @.str.139, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../sound/pci/hda/hda_intel.c", i32 2215, i32 4}
!503 = !{ptr @.str.140, !502, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @set_default_power_save._entry, !502, !"_entry", i1 false, i1 false}
!505 = !{ptr @set_default_power_save._entry_ptr, !502, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.141, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/pci/hda/hda_intel.c", i32 2173, i32 2}
!508 = !{ptr @.str.142, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/pci/hda/hda_intel.c", i32 2175, i32 2}
!510 = !{ptr @.str.143, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/pci/hda/hda_intel.c", i32 2177, i32 2}
!512 = !{ptr @.str.144, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/pci/hda/hda_intel.c", i32 2179, i32 2}
!514 = !{ptr @.str.145, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/pci/hda/hda_intel.c", i32 2181, i32 2}
!516 = !{ptr @.str.146, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/pci/hda/hda_intel.c", i32 2184, i32 2}
!518 = !{ptr @.str.147, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/pci/hda/hda_intel.c", i32 2186, i32 2}
!520 = !{ptr @.str.148, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/pci/hda/hda_intel.c", i32 2188, i32 2}
!522 = !{ptr @.str.149, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/pci/hda/hda_intel.c", i32 2190, i32 2}
!524 = !{ptr @.str.150, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/pci/hda/hda_intel.c", i32 2192, i32 2}
!526 = !{ptr @.str.151, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/pci/hda/hda_intel.c", i32 2194, i32 2}
!528 = !{ptr @.str.152, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/pci/hda/hda_intel.c", i32 2196, i32 2}
!530 = !{ptr @.str.153, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/pci/hda/hda_intel.c", i32 2198, i32 2}
!532 = !{ptr @.str.154, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/pci/hda/hda_intel.c", i32 2200, i32 2}
!534 = !{ptr @power_save_denylist, !535, !"power_save_denylist", i1 false, i1 false}
!535 = !{!"../sound/pci/hda/hda_intel.c", i32 2171, i32 35}
!536 = !{ptr @.str.155, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/pci/hda/hda_intel.c", i32 2028, i32 3}
!538 = !{ptr @.str.156, !537, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @azx_firmware_cb._entry, !537, !"_entry", i1 false, i1 false}
!540 = !{ptr @azx_firmware_cb._entry_ptr, !537, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @azx_pm, !542, !"azx_pm", i1 false, i1 false}
!542 = !{!"../sound/pci/hda/hda_intel.c", i32 1164, i32 32}
!543 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!544 = !{ptr @.str.157, !1, !"<string literal>", i1 false, i1 false}
!545 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!546 = !{ptr @.str.158, !1, !"<string literal>", i1 false, i1 false}
!547 = distinct !{null, !548, !"__already_done", i1 false, i1 false}
!548 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!549 = !{ptr @.str.159, !548, !"<string literal>", i1 false, i1 false}
!550 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!551 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!552 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!553 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!554 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!555 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!556 = !{!"sp"}
!557 = !{i32 1, !"wchar_size", i32 2}
!558 = !{i32 1, !"min_enum_size", i32 4}
!559 = !{i32 8, !"branch-target-enforcement", i32 0}
!560 = !{i32 8, !"sign-return-address", i32 0}
!561 = !{i32 8, !"sign-return-address-all", i32 0}
!562 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!563 = !{i32 7, !"uwtable", i32 1}
!564 = !{i32 7, !"frame-pointer", i32 2}
!565 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!566 = !{!"branch_weights", i32 2000, i32 1}
!567 = !{!"branch_weights", i32 1, i32 2000}
!568 = !{!"auto-init"}
!569 = !{i8 0, i8 2}
!570 = !{i64 2148836196, i64 2148836201, i64 2148836214, i64 2148836258, i64 2148836292, i64 2148836313}
!571 = !{i64 2148268531, i64 2148268557, i64 2148268586, i64 2148268620, i64 2148268651, i64 2148268674}
!572 = !{i64 4285723}
!573 = !{i64 2157672617}
!574 = !{i64 2156757672}
!575 = !{i64 4284885}
!576 = !{i64 2155363047}
!577 = !{i64 2157660750}
!578 = !{i64 2157661385}
!579 = !{i64 4285305}
!580 = !{i64 2157666843}
!581 = !{i64 2157664785}
!582 = !{i64 2157665031}
!583 = !{i64 2157665737}
!584 = !{i64 2157662142}
!585 = !{i64 2157667660}
!586 = !{i64 2155361859}
!587 = !{i64 4284685}
!588 = !{i64 2156832217}
!589 = !{i64 2156832410}
!590 = !{i64 2149337352}
!591 = !{i64 2149338388}
!592 = !{i64 2156847773}
!593 = !{i64 2156847964}
!594 = !{i64 2156863617}
!595 = !{i64 2156863826}
!596 = !{i64 2156879909}
!597 = !{i64 2156880116}
