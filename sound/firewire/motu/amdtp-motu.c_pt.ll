; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/amdtp-motu.c_pt.bc'
source_filename = "../sound/firewire/motu/amdtp-motu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.118 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.120, %struct.trace_event, ptr, ptr, %union.anon.121, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.120 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.123 = type { %struct.bpf_raw_event_map }
%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_data_block_sph = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.72, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.72 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32, %struct.anon.76, i32, i32, i32, ptr, i32 }
%struct.anon.76 = type { ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_data_block_message = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.snd_motu_packet_format = type { i8, i8, i8, i8, [3 x i8] }
%struct.amdtp_motu = type { i32, i32, ptr, i32, i32, i32, i32, i32, ptr }
%struct.amdtp_motu_cache = type { ptr, i32, i32, i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.pkt_desc = type { i32, i32, i32, i32, ptr }
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
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_data_block_sph = internal constant [15 x i8] c"data_block_sph\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_data_block_sph = dso_local global %struct.static_call_key { ptr @__traceiter_data_block_sph }, align 4
@__tracepoint_data_block_sph = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_data_block_sph, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_data_block_sph, ptr null, ptr @__traceiter_data_block_sph, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_data_block_sph = internal constant ptr @__tracepoint_data_block_sph, section "__tracepoints_ptrs", align 4
@__tpstrtab_data_block_message = internal constant [19 x i8] c"data_block_message\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_data_block_message = dso_local global %struct.static_call_key { ptr @__traceiter_data_block_message }, align 4
@__tracepoint_data_block_message = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_data_block_message, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_data_block_message, ptr null, ptr @__traceiter_data_block_message, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_data_block_message = internal constant ptr @__tracepoint_data_block_message, section "__tracepoints_ptrs", align 4
@str__snd_firewire_motu__trace_system_name = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_firewire_motu\00", [46 x i8] zeroinitializer }, align 32
@trace_event_fields_data_block_sph = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.118 { %struct.anon.119 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.118 { %struct.anon.119 { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.118 { %struct.anon.119 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.118 { %struct.anon.119 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_data_block_sph = internal global %struct.trace_event_class { ptr @str__snd_firewire_motu__trace_system_name, ptr @trace_event_raw_event_data_block_sph, ptr @perf_trace_data_block_sph, ptr @trace_event_reg, ptr @trace_event_fields_data_block_sph, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_data_block_sph, i64 24), ptr getelementptr (i8, ptr @event_class_data_block_sph, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_data_block_sph = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_data_block_sph, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_data_block_sph = internal global { [122 x i8], [38 x i8] } { [122 x i8] c"\22%04x %04x %u %s\22, REC->src, REC->dst, REC->data_blocks, __print_array(__get_dynamic_array(tstamps), REC->data_blocks, 4)\00", [38 x i8] zeroinitializer }, align 32
@event_data_block_sph = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_data_block_sph, %union.anon.120 { ptr @__tracepoint_data_block_sph }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_data_block_sph }, ptr @print_fmt_data_block_sph, ptr null, %union.anon.121 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_data_block_sph = internal global ptr @event_data_block_sph, section "_ftrace_events", align 4
@trace_event_fields_data_block_message = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.118 { %struct.anon.119 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.118 { %struct.anon.119 { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.118 { %struct.anon.119 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.118 { %struct.anon.119 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_data_block_message = internal global %struct.trace_event_class { ptr @str__snd_firewire_motu__trace_system_name, ptr @trace_event_raw_event_data_block_message, ptr @perf_trace_data_block_message, ptr @trace_event_reg, ptr @trace_event_fields_data_block_message, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_data_block_message, i64 24), ptr getelementptr (i8, ptr @event_class_data_block_message, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_data_block_message = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_data_block_message, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_data_block_message = internal global { [123 x i8], [37 x i8] } { [123 x i8] c"\22%04x %04x %u %s\22, REC->src, REC->dst, REC->data_blocks, __print_array(__get_dynamic_array(messages), REC->data_blocks, 8)\00", [37 x i8] zeroinitializer }, align 32
@event_data_block_message = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_data_block_message, %union.anon.120 { ptr @__tracepoint_data_block_message }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_data_block_message }, ptr @print_fmt_data_block_message, ptr null, %union.anon.121 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_data_block_message = internal global ptr @event_data_block_message, section "_ftrace_events", align 4
@__bpf_trace_tp_map_data_block_sph = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_data_block_sph, ptr @__bpf_trace_data_block_sph, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_data_block_message = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_data_block_message, ptr @__bpf_trace_data_block_message, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@snd_motu_clock_rates = external dso_local local_unnamed_addr constant [6 x i32], align 4
@snd_motu_spec_8pre = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_ultralite = external dso_local constant %struct.snd_motu_spec, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dst\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data_blocks\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__data_loc u32[]\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tstamps\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%04x %04x %u %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__data_loc u64[]\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"messages\00", [23 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/firewire/motu/amdtp-motu-trace.h\00", [57 x i8] zeroinitializer }, align 32
@trace_data_block_sph.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_data_block_message.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_ = private constant [36 x i8] c"../sound/firewire/motu/amdtp-motu.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [42 x i8] c"str__snd_firewire_motu__trace_system_name\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 36, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [34 x i8] c"trace_event_fields_data_block_sph\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_data_block_sph\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"print_fmt_data_block_sph\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"event_data_block_sph\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [38 x i8] c"trace_event_fields_data_block_message\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_data_block_message\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [29 x i8] c"print_fmt_data_block_message\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"event_data_block_message\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 50, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [44 x i8] c"../sound/firewire/motu/./amdtp-motu-trace.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 21, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 108, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__bpf_trace_tp_map_data_block_message, ptr @__bpf_trace_tp_map_data_block_sph, ptr @__event_data_block_message, ptr @__event_data_block_sph, ptr @__tracepoint_data_block_message, ptr @__tracepoint_data_block_sph, ptr @__tracepoint_ptr_data_block_message, ptr @__tracepoint_ptr_data_block_sph, ptr @event_class_data_block_message, ptr @event_class_data_block_sph, ptr @event_data_block_message, ptr @event_data_block_sph, ptr @str__snd_firewire_motu__trace_system_name, ptr @trace_event_fields_data_block_sph, ptr @trace_event_type_funcs_data_block_sph, ptr @print_fmt_data_block_sph, ptr @trace_event_fields_data_block_message, ptr @trace_event_type_funcs_data_block_message, ptr @print_fmt_data_block_message, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__snd_firewire_motu__trace_system_name to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_data_block_sph to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_data_block_sph to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_data_block_sph to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_data_block_sph to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_data_block_message to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_data_block_message to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_data_block_message to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_data_block_message to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_data_block_sph(ptr nocapture readnone %__data, ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_sph, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_data_block_message(ptr nocapture readnone %__data, ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_message, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_data_block_sph(ptr noundef %__data, ptr nocapture noundef readonly %s, i32 noundef %data_blocks, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !56

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mul.i = shl i32 %data_blocks, 2
  %add = add i32 %mul.i, 24
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl.i = shl i32 %data_blocks, 18
  %or.i = or i32 %shl.i, 24
  %__data_loc_tstamps = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %__data_loc_tstamps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_tstamps, align 4
  %direction = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %node_id = getelementptr i8, ptr %9, i32 -16
  %10 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_id, align 8
  %src = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %src, align 4
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s, align 4
  %parent.i45 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %parent.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i45, align 8
  %card = getelementptr i8, ptr %16, i32 -4
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %node_id10 = getelementptr inbounds %struct.fw_card, ptr %18, i32 0, i32 4
  br label %if.end20

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %card13 = getelementptr i8, ptr %9, i32 -4
  %19 = ptrtoint ptr %card13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card13, align 4
  %node_id14 = getelementptr inbounds %struct.fw_card, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %node_id14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %node_id14, align 4
  %src15 = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call3, i32 0, i32 1
  %23 = ptrtoint ptr %src15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %src15, align 4
  %24 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s, align 4
  %parent.i49 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i49, align 8
  %node_id18 = getelementptr i8, ptr %27, i32 -16
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then6
  %.sink.in = phi ptr [ %node_id10, %if.then6 ], [ %node_id18, %if.else ]
  %28 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %.sink = load i32, ptr %.sink.in, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call3, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %data_blocks21 = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call3, i32 0, i32 3
  %31 = ptrtoint ptr %data_blocks21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %data_blocks, ptr %data_blocks21, align 4
  %data_block_quadlets = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %32 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_block_quadlets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_blocks)
  %cmp4.not.i = icmp eq i32 %data_blocks, 0
  br i1 %cmp4.not.i, label %if.end20.copy_sph.exit_crit_edge, label %for.body.i.preheader

if.end20.copy_sph.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_sph.exit

for.body.i.preheader:                             ; preds = %if.end20
  %34 = ptrtoint ptr %__data_loc_tstamps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %__data_loc_tstamps, align 4
  %and = and i32 %35, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %frames.addr.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr, %for.body.i.preheader ]
  %buffer.addr.05.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buffer, %for.body.i.preheader ]
  %36 = ptrtoint ptr %buffer.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer.addr.05.i, align 4
  %38 = ptrtoint ptr %frames.addr.06.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %frames.addr.06.i, align 4
  %add.ptr.i = getelementptr i32, ptr %buffer.addr.05.i, i32 %33
  %incdec.ptr.i = getelementptr i32, ptr %frames.addr.06.i, i32 1
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %data_blocks
  br i1 %exitcond.not.i, label %for.body.i.copy_sph.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.copy_sph.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_sph.exit

copy_sph.exit:                                    ; preds = %for.body.i.copy_sph.exit_crit_edge, %if.end20.copy_sph.exit_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %copy_sph.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_data_block_sph(ptr noundef %__data, ptr nocapture noundef readonly %s, i32 noundef %data_blocks, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !57
  %mul.i = shl i32 %data_blocks, 2
  %shl.i = shl i32 %data_blocks, 18
  %or.i = or i32 %shl.i, 24
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %mul.i, 35
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !45) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_tstamps = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call13, i32 0, i32 4
  %27 = ptrtoint ptr %__data_loc_tstamps to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_tstamps, align 4
  %direction = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 2
  %28 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp = icmp eq i32 %29, 1
  %30 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i, align 8
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %node_id = getelementptr i8, ptr %33, i32 -16
  %34 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node_id, align 8
  %src = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %src, align 4
  %37 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s, align 4
  %parent.i69 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %parent.i69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i69, align 8
  %card = getelementptr i8, ptr %40, i32 -4
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 4
  %node_id21 = getelementptr inbounds %struct.fw_card, ptr %42, i32 0, i32 4
  br label %if.end31

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %card24 = getelementptr i8, ptr %33, i32 -4
  %43 = ptrtoint ptr %card24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card24, align 4
  %node_id25 = getelementptr inbounds %struct.fw_card, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %node_id25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %node_id25, align 4
  %src26 = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call13, i32 0, i32 1
  %47 = ptrtoint ptr %src26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %src26, align 4
  %48 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s, align 4
  %parent.i73 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %parent.i73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i73, align 8
  %node_id29 = getelementptr i8, ptr %51, i32 -16
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then17
  %.sink.in = phi ptr [ %node_id21, %if.then17 ], [ %node_id29, %if.else ]
  %52 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %.sink = load i32, ptr %.sink.in, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call13, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %53, align 4
  %data_blocks32 = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %call13, i32 0, i32 3
  %55 = ptrtoint ptr %data_blocks32 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %data_blocks, ptr %data_blocks32, align 4
  %data_block_quadlets = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %56 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_block_quadlets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_blocks)
  %cmp4.not.i = icmp eq i32 %data_blocks, 0
  br i1 %cmp4.not.i, label %if.end31.copy_sph.exit_crit_edge, label %for.body.i.preheader

if.end31.copy_sph.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_sph.exit

for.body.i.preheader:                             ; preds = %if.end31
  %58 = ptrtoint ptr %__data_loc_tstamps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %__data_loc_tstamps, align 4
  %and34 = and i32 %59, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %frames.addr.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr, %for.body.i.preheader ]
  %buffer.addr.05.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buffer, %for.body.i.preheader ]
  %60 = ptrtoint ptr %buffer.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buffer.addr.05.i, align 4
  %62 = ptrtoint ptr %frames.addr.06.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %frames.addr.06.i, align 4
  %add.ptr.i = getelementptr i32, ptr %buffer.addr.05.i, i32 %57
  %incdec.ptr.i = getelementptr i32, ptr %frames.addr.06.i, i32 1
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %data_blocks
  br i1 %exitcond.not.i, label %for.body.i.copy_sph.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.copy_sph.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_sph.exit

copy_sph.exit:                                    ; preds = %for.body.i.copy_sph.exit_crit_edge, %if.end31.copy_sph.exit_crit_edge
  %63 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rctx, align 4
  %65 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %64, ptr noundef %__data, i64 noundef 1, ptr noundef %66, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %copy_sph.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_data_block_message(ptr noundef %__data, ptr nocapture noundef readonly %s, i32 noundef %data_blocks, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !56

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mul.i = shl i32 %data_blocks, 3
  %add = add i32 %mul.i, 24
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl.i = shl i32 %data_blocks, 19
  %or.i = or i32 %shl.i, 24
  %__data_loc_messages = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %__data_loc_messages to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_messages, align 4
  %direction = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %node_id = getelementptr i8, ptr %9, i32 -16
  %10 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_id, align 8
  %src = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %src, align 4
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s, align 4
  %parent.i45 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %parent.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i45, align 8
  %card = getelementptr i8, ptr %16, i32 -4
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %node_id10 = getelementptr inbounds %struct.fw_card, ptr %18, i32 0, i32 4
  br label %if.end20

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %card13 = getelementptr i8, ptr %9, i32 -4
  %19 = ptrtoint ptr %card13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card13, align 4
  %node_id14 = getelementptr inbounds %struct.fw_card, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %node_id14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %node_id14, align 4
  %src15 = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call3, i32 0, i32 1
  %23 = ptrtoint ptr %src15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %src15, align 4
  %24 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s, align 4
  %parent.i49 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i49, align 8
  %node_id18 = getelementptr i8, ptr %27, i32 -16
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then6
  %.sink.in = phi ptr [ %node_id10, %if.then6 ], [ %node_id18, %if.else ]
  %28 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %.sink = load i32, ptr %.sink.in, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call3, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %data_blocks21 = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call3, i32 0, i32 3
  %31 = ptrtoint ptr %data_blocks21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %data_blocks, ptr %data_blocks21, align 4
  %data_block_quadlets = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %32 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_block_quadlets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_blocks)
  %cmp9.not.i = icmp eq i32 %data_blocks, 0
  br i1 %cmp9.not.i, label %if.end20.copy_message.exit_crit_edge, label %for.body.i.preheader

if.end20.copy_message.exit_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_message.exit

for.body.i.preheader:                             ; preds = %if.end20
  %34 = ptrtoint ptr %__data_loc_messages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %__data_loc_messages, align 4
  %and = and i32 %35, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %frames.addr.011.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr, %for.body.i.preheader ]
  %buffer.addr.010.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buffer, %for.body.i.preheader ]
  %arrayidx.i = getelementptr i32, ptr %buffer.addr.010.i, i32 1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %37 to i64
  %shl.i51 = shl nuw nsw i64 %conv.i, 16
  %38 = ptrtoint ptr %frames.addr.011.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %shl.i51, ptr %frames.addr.011.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %buffer.addr.010.i, i32 2
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx1.i, align 4
  %shr.i = lshr i32 %40, 16
  %conv2.i = zext i32 %shr.i to i64
  %or.i52 = or i64 %shl.i51, %conv2.i
  store i64 %or.i52, ptr %frames.addr.011.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %frames.addr.011.i, i32 1
  %add.ptr.i = getelementptr i32, ptr %buffer.addr.010.i, i32 %33
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %data_blocks
  br i1 %exitcond.not.i, label %for.body.i.copy_message.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.copy_message.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_message.exit

copy_message.exit:                                ; preds = %for.body.i.copy_message.exit_crit_edge, %if.end20.copy_message.exit_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %copy_message.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_data_block_message(ptr noundef %__data, ptr nocapture noundef readonly %s, i32 noundef %data_blocks, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !57
  %mul.i = shl i32 %data_blocks, 3
  %shl.i = shl i32 %data_blocks, 19
  %or.i = or i32 %shl.i, 24
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %mul.i, 35
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !45) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_messages = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call13, i32 0, i32 4
  %27 = ptrtoint ptr %__data_loc_messages to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_messages, align 4
  %direction = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 2
  %28 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp = icmp eq i32 %29, 1
  %30 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i, align 8
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %node_id = getelementptr i8, ptr %33, i32 -16
  %34 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node_id, align 8
  %src = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %src, align 4
  %37 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s, align 4
  %parent.i69 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %parent.i69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i69, align 8
  %card = getelementptr i8, ptr %40, i32 -4
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 4
  %node_id21 = getelementptr inbounds %struct.fw_card, ptr %42, i32 0, i32 4
  br label %if.end31

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %card24 = getelementptr i8, ptr %33, i32 -4
  %43 = ptrtoint ptr %card24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card24, align 4
  %node_id25 = getelementptr inbounds %struct.fw_card, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %node_id25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %node_id25, align 4
  %src26 = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call13, i32 0, i32 1
  %47 = ptrtoint ptr %src26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %src26, align 4
  %48 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s, align 4
  %parent.i73 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %parent.i73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i73, align 8
  %node_id29 = getelementptr i8, ptr %51, i32 -16
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then17
  %.sink.in = phi ptr [ %node_id21, %if.then17 ], [ %node_id29, %if.else ]
  %52 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %.sink = load i32, ptr %.sink.in, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call13, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %53, align 4
  %data_blocks32 = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %call13, i32 0, i32 3
  %55 = ptrtoint ptr %data_blocks32 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %data_blocks, ptr %data_blocks32, align 4
  %data_block_quadlets = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %56 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_block_quadlets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_blocks)
  %cmp9.not.i = icmp eq i32 %data_blocks, 0
  br i1 %cmp9.not.i, label %if.end31.copy_message.exit_crit_edge, label %for.body.i.preheader

if.end31.copy_message.exit_crit_edge:             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_message.exit

for.body.i.preheader:                             ; preds = %if.end31
  %58 = ptrtoint ptr %__data_loc_messages to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %__data_loc_messages, align 4
  %and34 = and i32 %59, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %frames.addr.011.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr, %for.body.i.preheader ]
  %buffer.addr.010.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buffer, %for.body.i.preheader ]
  %arrayidx.i75 = getelementptr i32, ptr %buffer.addr.010.i, i32 1
  %60 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i75, align 4
  %conv.i = zext i32 %61 to i64
  %shl.i76 = shl nuw nsw i64 %conv.i, 16
  %62 = ptrtoint ptr %frames.addr.011.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %shl.i76, ptr %frames.addr.011.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %buffer.addr.010.i, i32 2
  %63 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx1.i, align 4
  %shr.i = lshr i32 %64, 16
  %conv2.i = zext i32 %shr.i to i64
  %or.i77 = or i64 %shl.i76, %conv2.i
  store i64 %or.i77, ptr %frames.addr.011.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %frames.addr.011.i, i32 1
  %add.ptr.i = getelementptr i32, ptr %buffer.addr.010.i, i32 %57
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %data_blocks
  br i1 %exitcond.not.i, label %for.body.i.copy_message.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.copy_message.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_message.exit

copy_message.exit:                                ; preds = %for.body.i.copy_message.exit_crit_edge, %if.end31.copy_message.exit_crit_edge
  %65 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rctx, align 4
  %67 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %66, ptr noundef %__data, i64 noundef 1, ptr noundef %68, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %copy_message.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_data_block_sph(ptr noundef %__data, ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %s to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %data_blocks to i64
  %1 = ptrtoint ptr %buffer to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_data_block_message(ptr noundef %__data, ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %s to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %data_blocks to i64
  %1 = ptrtoint ptr %buffer to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_motu_set_parameters(ptr noundef %s, i32 noundef %rate, i32 noundef %midi_ports, ptr nocapture noundef readonly %formats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol, align 4
  %context.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_motu_clock_rates to i32))
  %4 = load i32, ptr @snd_motu_clock_rates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp1 = icmp eq i32 %4, %rate
  br i1 %cmp1, label %for.body.preheader.if.end6_crit_edge, label %for.inc

for.body.preheader.if.end6_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc:                                          ; preds = %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp1.1 = icmp eq i32 %5, %rate
  br i1 %cmp1.1, label %for.inc.if.end6_crit_edge, label %for.inc.1

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 2) to i32))
  %6 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate)
  %cmp1.2 = icmp eq i32 %6, %rate
  br i1 %cmp1.2, label %for.inc.1.if.end6_crit_edge, label %for.inc.2

for.inc.1.if.end6_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 3) to i32))
  %7 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp1.3 = icmp eq i32 %7, %rate
  br i1 %cmp1.3, label %for.inc.2.if.end6_crit_edge, label %for.inc.3

for.inc.2.if.end6_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 4) to i32))
  %8 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %rate)
  %cmp1.4 = icmp eq i32 %8, %rate
  br i1 %cmp1.4, label %for.inc.3.if.end6_crit_edge, label %for.inc.4

for.inc.3.if.end6_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 5) to i32))
  %9 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %rate)
  %cmp1.5 = icmp eq i32 %9, %rate
  br i1 %cmp1.5, label %for.inc.4.if.end6_crit_edge, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4.if.end6_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %for.inc.4.if.end6_crit_edge, %for.inc.3.if.end6_crit_edge, %for.inc.2.if.end6_crit_edge, %for.inc.1.if.end6_crit_edge, %for.inc.if.end6_crit_edge, %for.body.preheader.if.end6_crit_edge
  %mode.055 = phi i32 [ 0, %for.body.preheader.if.end6_crit_edge ], [ 0, %for.inc.if.end6_crit_edge ], [ 1, %for.inc.1.if.end6_crit_edge ], [ 1, %for.inc.2.if.end6_crit_edge ], [ 2, %for.inc.3.if.end6_crit_edge ], [ 2, %for.inc.4.if.end6_crit_edge ]
  %arrayidx8 = getelementptr %struct.snd_motu_packet_format, ptr %formats, i32 0, i32 4, i32 %mode.055
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %11 to i32
  %msg_chunks = getelementptr inbounds %struct.snd_motu_packet_format, ptr %formats, i32 0, i32 3
  %12 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg_chunks, align 1
  %conv9 = zext i8 %13 to i32
  %add = add nuw nsw i32 %conv9, %conv
  %mul = mul nuw nsw i32 %add, 3
  %sub = add nuw nsw i32 %mul, 3
  %div52 = lshr i32 %sub, 2
  %add11 = add nuw nsw i32 %div52, 1
  %call12 = tail call i32 @amdtp_stream_set_parameters(ptr noundef %s, i32 noundef %rate, i32 noundef %add11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end6.cleanup_crit_edge, label %if.end16

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %1, align 4
  %pcm_byte_offset = getelementptr inbounds %struct.snd_motu_packet_format, ptr %formats, i32 0, i32 2
  %15 = ptrtoint ptr %pcm_byte_offset to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pcm_byte_offset, align 1
  %conv18 = zext i8 %16 to i32
  %pcm_byte_offset19 = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %pcm_byte_offset19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv18, ptr %pcm_byte_offset19, align 4
  %midi_ports20 = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %midi_ports20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %midi_ports, ptr %midi_ports20, align 4
  %19 = ptrtoint ptr %formats to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %formats, align 1
  %conv21 = zext i8 %20 to i32
  %midi_flag_offset22 = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %midi_flag_offset22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv21, ptr %midi_flag_offset22, align 4
  %midi_byte_offset = getelementptr inbounds %struct.snd_motu_packet_format, ptr %formats, i32 0, i32 1
  %22 = ptrtoint ptr %midi_byte_offset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %midi_byte_offset, align 1
  %conv23 = zext i8 %23 to i32
  %midi_byte_offset24 = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %midi_byte_offset24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv23, ptr %midi_byte_offset24, align 4
  %midi_db_count = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %midi_db_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %midi_db_count, align 4
  %div25 = udiv i32 %rate, 3093
  %midi_db_interval = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %midi_db_interval to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div25, ptr %midi_db_interval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end6.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -16, %entry.cleanup_crit_edge ], [ %call12, %if.end6.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_set_parameters(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_motu_add_pcm_hw_constraints(ptr noundef %s, ptr noundef %runtime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %runtime, i32 noundef 0, i32 noundef 32, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @amdtp_stream_add_pcm_hw_constraints(ptr noundef %s, ptr noundef %runtime) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdtp_motu_midi_trigger(ptr nocapture noundef readonly %s, i32 noundef %port, ptr noundef %midi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol, align 4
  %midi_ports = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %midi_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %port)
  %cmp = icmp ugt i32 %3, %port
  br i1 %cmp, label %do.body2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %midi3 = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %midi3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %midi, ptr %midi3, align 4
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_motu_init(ptr noundef %s, ptr noundef %unit, i32 noundef %dir, ptr noundef readonly %spec, ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %protocol_version = getelementptr inbounds %struct.snd_motu_spec, ptr %spec, i32 0, i32 1
  %0 = ptrtoint ptr %protocol_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %protocol_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp eq i32 %1, 2
  %spec.select = select i1 %cmp1, i32 34, i32 2
  %spec.select32 = select i1 %cmp1, i32 1177, i32 1025
  %cmp3 = icmp eq ptr %spec, @snd_motu_spec_8pre
  %cmp4 = icmp eq ptr %spec, @snd_motu_spec_ultralite
  %or.cond = or i1 %cmp3, %cmp4
  %or6 = or i32 %spec.select32, 24
  %spec.select33 = select i1 %or.cond, i32 %or6, i32 %spec.select32
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %process_ctx_payloads.0 = phi ptr [ @process_it_ctx_payloads, %entry.if.end9_crit_edge ], [ @process_ir_ctx_payloads, %if.then ]
  %fmt.1 = phi i32 [ 2, %entry.if.end9_crit_edge ], [ %spec.select, %if.then ]
  %flags.1 = phi i32 [ 1029, %entry.if.end9_crit_edge ], [ %spec.select33, %if.then ]
  %call = tail call i32 @amdtp_stream_init(ptr noundef %s, ptr noundef %unit, i32 noundef %dir, i32 noundef %flags.1, i32 noundef %fmt.1, ptr noundef nonnull %process_ctx_payloads.0, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %sph = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 14
  %2 = ptrtoint ptr %sph to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %sph, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp13 = icmp eq i32 %dir, 0
  br i1 %cmp13, label %if.then14, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %ctx_data = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 10
  %3 = ptrtoint ptr %ctx_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 34, ptr %ctx_data, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol, align 4
  %cache16 = getelementptr inbounds %struct.amdtp_motu, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %cache16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cache, ptr %cache16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_ir_ctx_payloads(ptr noundef %s, ptr noundef %descs, i32 noundef %packets, ptr noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %s, i32 -164
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol, align 4
  %cache = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 4
  %tx_cycle_count = getelementptr inbounds %struct.amdtp_motu_cache, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tx_cycle_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_cycle_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %domain = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 30
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %tx_start = getelementptr inbounds %struct.amdtp_domain, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %tx_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_start, align 4
  %rem = urem i32 %9, 8000
  %10 = ptrtoint ptr %tx_cycle_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %tx_cycle_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packets)
  %cmp382.not = icmp eq i32 %packets, 0
  br i1 %cmp382.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %data_block_quadlets = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %tobool.not = icmp eq ptr %pcm, null
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %pcm, i32 0, i32 11
  %pcm_buffer_pointer2.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 20
  %midi_ports = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %pcm_frames.083 = phi i32 [ 0, %for.body.lr.ph ], [ %pcm_frames.1, %if.end11.for.body_crit_edge ]
  %ctx_payload = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.085, i32 4
  %11 = ptrtoint ptr %ctx_payload to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx_payload, align 4
  %data_blocks5 = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.085, i32 2
  %13 = ptrtoint ptr %data_blocks5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_blocks5, align 4
  %15 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cache, align 4
  %17 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_block_quadlets, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %size.i = getelementptr inbounds %struct.amdtp_motu_cache, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %tail.i = getelementptr inbounds %struct.amdtp_motu_cache, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail.i, align 4
  %tx_cycle_count.i = getelementptr inbounds %struct.amdtp_motu_cache, ptr %16, i32 0, i32 3
  %25 = ptrtoint ptr %tx_cycle_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_cycle_count.i, align 4
  %mul.i = mul i32 %26, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp26.not.i = icmp eq i32 %14, 0
  br i1 %cmp26.not.i, label %for.body.cache_event_offsets.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.cache_event_offsets.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cache_event_offsets.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %buf.addr.029.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %12, %for.body.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %cache_tail.027.i = phi i32 [ %rem.i, %for.body.i.for.body.i_crit_edge ], [ %24, %for.body.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %buf.addr.029.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf.addr.029.i, align 4
  %and.i = lshr i32 %28, 12
  %shr.i = and i32 %and.i, 8191
  %mul2.i = mul nuw nsw i32 %shr.i, 3072
  %and3.i = and i32 %28, 4095
  %add.i = add nuw nsw i32 %mul2.i, %and3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %mul.i)
  %cmp4.i = icmp ult i32 %add.i, %mul.i
  %add5.i = add nuw nsw i32 %add.i, 24576000
  %spec.select.i = select i1 %cmp4.i, i32 %add5.i, i32 %add.i
  %sub.i = sub i32 %spec.select.i, %mul.i
  %arrayidx.i = getelementptr i32, ptr %20, i32 %cache_tail.027.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.i, ptr %arrayidx.i, align 4
  %add6.i = add i32 %cache_tail.027.i, 1
  %rem.i = urem i32 %add6.i, %22
  %add.ptr.i = getelementptr i32, ptr %buf.addr.029.i, i32 %18
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.body.i.cache_event_offsets.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cache_event_offsets.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cache_event_offsets.exit

cache_event_offsets.exit:                         ; preds = %for.body.i.cache_event_offsets.exit_crit_edge, %for.body.cache_event_offsets.exit_crit_edge
  %cache_tail.0.lcssa.i = phi i32 [ %24, %for.body.cache_event_offsets.exit_crit_edge ], [ %rem.i, %for.body.i.cache_event_offsets.exit_crit_edge ]
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cache_tail.0.lcssa.i, ptr %tail.i, align 4
  %31 = ptrtoint ptr %tx_cycle_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_cycle_count.i, align 4
  %add9.i = add i32 %32, 1
  %rem10.i = urem i32 %add9.i, 8000
  store i32 %rem10.i, ptr %tx_cycle_count.i, align 4
  br i1 %tobool.not, label %cache_event_offsets.exit.if.end8_crit_edge, label %if.then7

cache_event_offsets.exit.if.end8_crit_edge:       ; preds = %cache_event_offsets.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %cache_event_offsets.exit
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %protocol, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 50
  br i1 %cmp26.not.i, label %if.then7.read_pcm_s32.exit_crit_edge, label %for.body.lr.ph.i

if.then7.read_pcm_s32.exit_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pcm_s32.exit

for.body.lr.ph.i:                                 ; preds = %if.then7
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buffer_size.i, align 4
  %41 = ptrtoint ptr %pcm_buffer_pointer2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pcm_buffer_pointer2.i, align 4
  %add.i57 = add i32 %42, %pcm_frames.083
  %rem.i58 = urem i32 %add.i57, %40
  %sub.i59 = sub i32 %40, %rem.i58
  %43 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_area.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 21
  %45 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %46, %rem.i58
  %div1.i.i = lshr i32 %mul.i.i, 3
  %add.ptr.i60 = getelementptr i8, ptr %44, i32 %div1.i.i
  %pcm_byte_offset.i = getelementptr inbounds %struct.amdtp_motu, ptr %34, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp639.not.i = icmp eq i32 %36, 0
  br label %for.body.i61

for.body.i61:                                     ; preds = %for.inc20.i.for.body.i61_crit_edge, %for.body.lr.ph.i
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc21.i, %for.inc20.i.for.body.i61_crit_edge ]
  %dst.046.i = phi ptr [ %add.ptr.i60, %for.body.lr.ph.i ], [ %dst.2.i, %for.inc20.i.for.body.i61_crit_edge ]
  %remaining_frames.045.i = phi i32 [ %sub.i59, %for.body.lr.ph.i ], [ %dec.i, %for.inc20.i.for.body.i61_crit_edge ]
  %buffer.addr.044.i = phi ptr [ %12, %for.body.lr.ph.i ], [ %add.ptr16.i, %for.inc20.i.for.body.i61_crit_edge ]
  br i1 %cmp639.not.i, label %for.body.i61.for.end.i_crit_edge, label %for.body7.preheader.i

for.body.i61.for.end.i_crit_edge:                 ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body7.preheader.i:                            ; preds = %for.body.i61
  %47 = ptrtoint ptr %pcm_byte_offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pcm_byte_offset.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %buffer.addr.044.i, i32 %48
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.preheader.i
  %c.042.i = phi i32 [ %inc.i62, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.body7.preheader.i ]
  %dst.141.i = phi ptr [ %incdec.ptr.i, %for.body7.i.for.body7.i_crit_edge ], [ %dst.046.i, %for.body7.preheader.i ]
  %byte.040.i = phi ptr [ %add.ptr15.i, %for.body7.i.for.body7.i_crit_edge ], [ %add.ptr4.i, %for.body7.preheader.i ]
  %49 = ptrtoint ptr %byte.040.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %byte.040.i, align 1
  %conv.i = zext i8 %50 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx8.i = getelementptr i8, ptr %byte.040.i, i32 1
  %51 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %52 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %or.i = or i32 %shl10.i, %shl.i
  %arrayidx11.i = getelementptr i8, ptr %byte.040.i, i32 2
  %53 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %54 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %or14.i = or i32 %or.i, %shl13.i
  %55 = ptrtoint ptr %dst.141.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or14.i, ptr %dst.141.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %byte.040.i, i32 3
  %incdec.ptr.i = getelementptr i32, ptr %dst.141.i, i32 1
  %inc.i62 = add nuw i32 %c.042.i, 1
  %exitcond.not.i63 = icmp eq i32 %inc.i62, %36
  br i1 %exitcond.not.i63, label %for.body7.i.for.end.i_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i

for.body7.i.for.end.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body7.i.for.end.i_crit_edge, %for.body.i61.for.end.i_crit_edge
  %dst.1.lcssa.i = phi ptr [ %dst.046.i, %for.body.i61.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body7.i.for.end.i_crit_edge ]
  %56 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_block_quadlets, align 4
  %add.ptr16.i = getelementptr i32, ptr %buffer.addr.044.i, i32 %57
  %dec.i = add i32 %remaining_frames.045.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp17.i = icmp eq i32 %dec.i, 0
  br i1 %cmp17.i, label %if.then.i, label %for.end.i.for.inc20.i_crit_edge

for.end.i.for.inc20.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_area.i, align 4
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %if.then.i, %for.end.i.for.inc20.i_crit_edge
  %dst.2.i = phi ptr [ %59, %if.then.i ], [ %dst.1.lcssa.i, %for.end.i.for.inc20.i_crit_edge ]
  %inc21.i = add nuw i32 %i.047.i, 1
  %exitcond48.not.i = icmp eq i32 %inc21.i, %14
  br i1 %exitcond48.not.i, label %for.inc20.i.read_pcm_s32.exit_crit_edge, label %for.inc20.i.for.body.i61_crit_edge

for.inc20.i.for.body.i61_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i61

for.inc20.i.read_pcm_s32.exit_crit_edge:          ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pcm_s32.exit

read_pcm_s32.exit:                                ; preds = %for.inc20.i.read_pcm_s32.exit_crit_edge, %if.then7.read_pcm_s32.exit_crit_edge
  %add = add i32 %14, %pcm_frames.083
  br label %if.end8

if.end8:                                          ; preds = %read_pcm_s32.exit, %cache_event_offsets.exit.if.end8_crit_edge
  %pcm_frames.1 = phi i32 [ %add, %read_pcm_s32.exit ], [ %pcm_frames.083, %cache_event_offsets.exit.if.end8_crit_edge ]
  %60 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %midi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool9.not = icmp eq i32 %61, 0
  %brmerge = select i1 %tobool9.not, i1 true, i1 %cmp26.not.i
  br i1 %brmerge, label %if.end8.if.end11_crit_edge, label %for.body.lr.ph.i66

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.lr.ph.i66:                               ; preds = %if.end8
  %62 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %protocol, align 4
  %midi1.i = getelementptr inbounds %struct.amdtp_motu, ptr %63, i32 0, i32 2
  %midi_flag_offset.i = getelementptr inbounds %struct.amdtp_motu, ptr %63, i32 0, i32 4
  %midi_byte_offset.i = getelementptr inbounds %struct.amdtp_motu, ptr %63, i32 0, i32 5
  br label %for.body.i67

for.body.i67:                                     ; preds = %if.end.i.for.body.i67_crit_edge, %for.body.lr.ph.i66
  %buffer.addr.013.i = phi ptr [ %12, %for.body.lr.ph.i66 ], [ %add.ptr3.i, %if.end.i.for.body.i67_crit_edge ]
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %inc.i71, %if.end.i.for.body.i67_crit_edge ]
  %64 = ptrtoint ptr %midi1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %midi1.i, align 4
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %for.body.i67.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i67.if.end.i_crit_edge:                  ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i67
  %66 = ptrtoint ptr %midi_flag_offset.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %midi_flag_offset.i, align 4
  %arrayidx.i68 = getelementptr i8, ptr %buffer.addr.013.i, i32 %67
  %68 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i68, align 1
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool2.not.i = icmp eq i8 %70, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i70

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i70:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %midi_byte_offset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %midi_byte_offset.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %buffer.addr.013.i, i32 %72
  %call.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %65, ptr noundef %add.ptr.i69, i32 noundef 1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i70, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i67.if.end.i_crit_edge
  %73 = ptrtoint ptr %data_block_quadlets to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_block_quadlets, align 4
  %add.ptr3.i = getelementptr i32, ptr %buffer.addr.013.i, i32 %74
  %inc.i71 = add nuw i32 %i.012.i, 1
  %exitcond.not.i72 = icmp eq i32 %inc.i71, %14
  br i1 %exitcond.not.i72, label %if.end.i.if.end11_crit_edge, label %if.end.i.for.body.i67_crit_edge

if.end.i.for.body.i67_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i67

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %inc = add nuw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %packets
  br i1 %exitcond.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %if.end.for.end_crit_edge
  %pcm_frames.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %pcm_frames.1, %if.end11.for.end_crit_edge ]
  %spec = getelementptr i8, ptr %s, i32 -20
  %75 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %spec, align 8
  %flags = getelementptr inbounds %struct.snd_motu_spec, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %and = and i32 %78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %data_block_quadlets14 = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %79 = ptrtoint ptr %data_block_quadlets14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_block_quadlets14, align 4
  tail call void @snd_motu_register_dsp_message_parser_parse(ptr noundef %add.ptr, ptr noundef %descs, i32 noundef %packets, i32 noundef %80) #7
  br label %if.end22

if.else:                                          ; preds = %for.end
  %and17 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else.if.end22_crit_edge, label %if.then19

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %data_block_quadlets20 = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %81 = ptrtoint ptr %data_block_quadlets20 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_block_quadlets20, align 4
  tail call void @snd_motu_command_dsp_message_parser_parse(ptr noundef %add.ptr, ptr noundef %descs, i32 noundef %packets, i32 noundef %82) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.else.if.end22_crit_edge, %if.then13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_sph, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@process_ir_ctx_payloads, %if.then24)) #7
          to label %lor.lhs.false [label %if.then24], !srcloc !58

lor.lhs.false:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_message, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@process_ir_ctx_payloads, %if.then24)) #7
          to label %if.end25 [label %if.then24], !srcloc !58

if.then24:                                        ; preds = %lor.lhs.false, %if.end22
  br i1 %cmp382.not, label %if.then24.if.end25_crit_edge, label %if.then24.for.body.i78_crit_edge

if.then24.for.body.i78_crit_edge:                 ; preds = %if.then24
  br label %for.body.i78

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %if.then24.for.body.i78_crit_edge
  %i.09.i = phi i32 [ %inc.i76, %for.body.i78.for.body.i78_crit_edge ], [ 0, %if.then24.for.body.i78_crit_edge ]
  %ctx_payload.i = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.09.i, i32 4
  %83 = ptrtoint ptr %ctx_payload.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctx_payload.i, align 4
  %data_blocks1.i = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.09.i, i32 2
  %85 = ptrtoint ptr %data_blocks1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_blocks1.i, align 4
  tail call fastcc void @trace_data_block_sph(ptr noundef %s, i32 noundef %86, ptr noundef %84) #7
  tail call fastcc void @trace_data_block_message(ptr noundef %s, i32 noundef %86, ptr noundef %84) #7
  %inc.i76 = add nuw i32 %i.09.i, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, %packets
  br i1 %exitcond.not.i77, label %for.body.i78.if.end25_crit_edge, label %for.body.i78.for.body.i78_crit_edge

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i78

for.body.i78.if.end25_crit_edge:                  ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end25:                                         ; preds = %for.body.i78.if.end25_crit_edge, %if.then24.if.end25_crit_edge, %lor.lhs.false
  ret i32 %pcm_frames.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_it_ctx_payloads(ptr noundef %s, ptr nocapture noundef readonly %descs, i32 noundef %packets, ptr noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol, align 4
  %cache = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 4
  %rx_cycle_count = getelementptr inbounds %struct.amdtp_motu_cache, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rx_cycle_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_cycle_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %domain = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 30
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %rx_start = getelementptr inbounds %struct.amdtp_domain, ptr %7, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %rx_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_start, align 4
  %rem = urem i32 %9, 8000
  %10 = ptrtoint ptr %rx_cycle_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %rx_cycle_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packets)
  %cmp379.not = icmp eq i32 %packets, 0
  br i1 %cmp379.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tobool.not = icmp eq ptr %pcm, null
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %pcm, i32 0, i32 11
  %pcm_buffer_pointer2.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 20
  %data_block_quadlets.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %midi_ports = getelementptr inbounds %struct.amdtp_motu, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %write_sph.exit.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %write_sph.exit.for.body_crit_edge ]
  %pcm_frames.080 = phi i32 [ 0, %for.body.lr.ph ], [ %pcm_frames.172, %write_sph.exit.for.body_crit_edge ]
  %ctx_payload = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.082, i32 4
  %11 = ptrtoint ptr %ctx_payload to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx_payload, align 4
  %data_blocks4 = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.082, i32 2
  %13 = ptrtoint ptr %data_blocks4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_blocks4, align 4
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %for.body
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %protocol, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp46.not.i = icmp eq i32 %14, 0
  br i1 %cmp46.not.i, label %if.then5.write_pcm_s32.exit_crit_edge, label %for.body.lr.ph.i

if.then5.write_pcm_s32.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_pcm_s32.exit

for.body.lr.ph.i:                                 ; preds = %if.then5
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_size.i, align 4
  %23 = ptrtoint ptr %pcm_buffer_pointer2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcm_buffer_pointer2.i, align 4
  %add.i = add i32 %24, %pcm_frames.080
  %rem.i = urem i32 %add.i, %22
  %sub.i = sub i32 %22, %rem.i
  %25 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_area.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 21
  %27 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %28, %rem.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %add.ptr.i = getelementptr i8, ptr %26, i32 %div1.i.i
  %pcm_byte_offset.i = getelementptr inbounds %struct.amdtp_motu, ptr %16, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp642.not.i = icmp eq i32 %18, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc22.i, %for.inc21.i.for.body.i_crit_edge ]
  %src.049.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %src.2.i, %for.inc21.i.for.body.i_crit_edge ]
  %remaining_frames.048.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc21.i.for.body.i_crit_edge ]
  %buffer.addr.047.i = phi ptr [ %12, %for.body.lr.ph.i ], [ %add.ptr17.i, %for.inc21.i.for.body.i_crit_edge ]
  br i1 %cmp642.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body7.preheader.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body7.preheader.i:                            ; preds = %for.body.i
  %29 = ptrtoint ptr %pcm_byte_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcm_byte_offset.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %buffer.addr.047.i, i32 %30
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.preheader.i
  %c.045.i = phi i32 [ %inc.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.body7.preheader.i ]
  %src.144.i = phi ptr [ %incdec.ptr.i, %for.body7.i.for.body7.i_crit_edge ], [ %src.049.i, %for.body7.preheader.i ]
  %byte.043.i = phi ptr [ %add.ptr16.i, %for.body7.i.for.body7.i_crit_edge ], [ %add.ptr4.i, %for.body7.preheader.i ]
  %31 = ptrtoint ptr %src.144.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src.144.i, align 4
  %shr.i = lshr i32 %32, 24
  %conv.i = trunc i32 %shr.i to i8
  %33 = ptrtoint ptr %byte.043.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %byte.043.i, align 1
  %34 = load i32, ptr %src.144.i, align 4
  %shr8.i = lshr i32 %34, 16
  %conv10.i = trunc i32 %shr8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %byte.043.i, i32 1
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %36 = load i32, ptr %src.144.i, align 4
  %shr12.i = lshr i32 %36, 8
  %conv14.i = trunc i32 %shr12.i to i8
  %arrayidx15.i = getelementptr i8, ptr %byte.043.i, i32 2
  %37 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %byte.043.i, i32 3
  %incdec.ptr.i = getelementptr i32, ptr %src.144.i, i32 1
  %inc.i = add nuw i32 %c.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.body7.i.for.end.i_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i

for.body7.i.for.end.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body7.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %src.1.lcssa.i = phi ptr [ %src.049.i, %for.body.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body7.i.for.end.i_crit_edge ]
  %38 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr17.i = getelementptr i32, ptr %buffer.addr.047.i, i32 %39
  %dec.i = add i32 %remaining_frames.048.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp18.i = icmp eq i32 %dec.i, 0
  br i1 %cmp18.i, label %if.then.i, label %for.end.i.for.inc21.i_crit_edge

for.end.i.for.inc21.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_area.i, align 4
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.then.i, %for.end.i.for.inc21.i_crit_edge
  %src.2.i = phi ptr [ %41, %if.then.i ], [ %src.1.lcssa.i, %for.end.i.for.inc21.i_crit_edge ]
  %inc22.i = add nuw i32 %i.050.i, 1
  %exitcond51.not.i = icmp eq i32 %inc22.i, %14
  br i1 %exitcond51.not.i, label %for.inc21.i.write_pcm_s32.exit_crit_edge, label %for.inc21.i.for.body.i_crit_edge

for.inc21.i.for.body.i_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc21.i.write_pcm_s32.exit_crit_edge:         ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_pcm_s32.exit

write_pcm_s32.exit:                               ; preds = %for.inc21.i.write_pcm_s32.exit_crit_edge, %if.then5.write_pcm_s32.exit_crit_edge
  %add = add i32 %14, %pcm_frames.080
  br label %if.end6

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp22.not.i = icmp eq i32 %14, 0
  br i1 %cmp22.not.i, label %if.end6.thread, label %for.body.lr.ph.i41

for.body.lr.ph.i41:                               ; preds = %if.else
  %42 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %protocol, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %pcm_byte_offset.i39 = getelementptr inbounds %struct.amdtp_motu, ptr %43, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp219.not.i = icmp eq i32 %45, 0
  %46 = mul nuw i32 %45, 3
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.end.i45.for.body.i42_crit_edge, %for.body.lr.ph.i41
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i41 ], [ %inc9.i, %for.end.i45.for.body.i42_crit_edge ]
  %buffer.addr.023.i = phi ptr [ %12, %for.body.lr.ph.i41 ], [ %add.ptr7.i, %for.end.i45.for.body.i42_crit_edge ]
  br i1 %cmp219.not.i, label %for.body.i42.for.end.i45_crit_edge, label %for.body3.preheader.i

for.body.i42.for.end.i45_crit_edge:               ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i45

for.body3.preheader.i:                            ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %pcm_byte_offset.i39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pcm_byte_offset.i39, align 4
  %add.ptr.i43 = getelementptr i8, ptr %buffer.addr.023.i, i32 %48
  %49 = call ptr @memset(ptr %add.ptr.i43, i32 0, i32 %46)
  br label %for.end.i45

for.end.i45:                                      ; preds = %for.body3.preheader.i, %for.body.i42.for.end.i45_crit_edge
  %50 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr7.i = getelementptr i32, ptr %buffer.addr.023.i, i32 %51
  %inc9.i = add nuw i32 %i.024.i, 1
  %exitcond.not.i44 = icmp eq i32 %inc9.i, %14
  br i1 %exitcond.not.i44, label %for.end.i45.if.end6_crit_edge, label %for.end.i45.for.body.i42_crit_edge

for.end.i45.for.body.i42_crit_edge:               ; preds = %for.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i42

for.end.i45.if.end6_crit_edge:                    ; preds = %for.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %for.end.i45.if.end6_crit_edge, %write_pcm_s32.exit
  %pcm_frames.1 = phi i32 [ %add, %write_pcm_s32.exit ], [ %pcm_frames.080, %for.end.i45.if.end6_crit_edge ]
  %52 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %midi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool7.not = icmp eq i32 %53, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end6.thread:                                   ; preds = %if.else
  %54 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %midi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool7.not70 = icmp eq i32 %55, 0
  br i1 %tobool7.not70, label %if.end6.thread.if.end9_crit_edge, label %if.then8.thread

if.end6.thread.if.end9_crit_edge:                 ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8.thread:                                  ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %protocol, align 4
  %midi1.i74 = getelementptr inbounds %struct.amdtp_motu, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %midi1.i74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %midi1.i74, align 4
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  %60 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %protocol, align 4
  %midi1.i = getelementptr inbounds %struct.amdtp_motu, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %midi1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %midi1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30.not.i = icmp eq i32 %14, 0
  br i1 %cmp30.not.i, label %if.then8.if.end9_crit_edge, label %for.body.lr.ph.i48

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.body.lr.ph.i48:                               ; preds = %if.then8
  %tobool.not.i = icmp eq ptr %63, null
  %midi_db_count.i = getelementptr inbounds %struct.amdtp_motu, ptr %61, i32 0, i32 6
  %midi_byte_offset.i = getelementptr inbounds %struct.amdtp_motu, ptr %61, i32 0, i32 5
  %midi_flag_offset.i = getelementptr inbounds %struct.amdtp_motu, ptr %61, i32 0, i32 4
  %midi_db_interval.i = getelementptr inbounds %struct.amdtp_motu, ptr %61, i32 0, i32 7
  br label %for.body.i49

for.body.i49:                                     ; preds = %for.inc.i.for.body.i49_crit_edge, %for.body.lr.ph.i48
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i48 ], [ %inc.i52, %for.inc.i.for.body.i49_crit_edge ]
  %buffer.addr.031.i = phi ptr [ %12, %for.body.lr.ph.i48 ], [ %add.ptr9.i, %for.inc.i.for.body.i49_crit_edge ]
  br i1 %tobool.not.i, label %for.body.i49.if.else.i_crit_edge, label %land.lhs.true.i

for.body.i49.if.else.i_crit_edge:                 ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i49
  %64 = ptrtoint ptr %midi_db_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %midi_db_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp2.i = icmp eq i32 %65, 0
  br i1 %cmp2.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %66 = ptrtoint ptr %midi_byte_offset.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %midi_byte_offset.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %buffer.addr.031.i, i32 %67
  %call.i = tail call i32 @snd_rawmidi_transmit(ptr noundef nonnull %63, ptr noundef %add.ptr.i50, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 1
  br i1 %cmp4.i, label %land.lhs.true3.i.if.end.i_crit_edge, label %land.lhs.true3.i.if.else.i_crit_edge

land.lhs.true3.i.if.else.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true3.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %for.body.i49.if.else.i_crit_edge
  %68 = ptrtoint ptr %midi_byte_offset.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %midi_byte_offset.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %buffer.addr.031.i, i32 %69
  %70 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx6.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true3.i.if.end.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true3.i.if.end.i_crit_edge ]
  %71 = ptrtoint ptr %midi_flag_offset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %midi_flag_offset.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %buffer.addr.031.i, i32 %72
  %73 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink.i, ptr %arrayidx8.i, align 1
  %74 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %buffer.addr.031.i, i32 %75
  %76 = ptrtoint ptr %midi_db_count.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %midi_db_count.i, align 4
  %dec.i51 = add i32 %77, -1
  store i32 %dec.i51, ptr %midi_db_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i51)
  %cmp11.i = icmp slt i32 %dec.i51, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %midi_db_interval.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %midi_db_interval.i, align 4
  %80 = ptrtoint ptr %midi_db_count.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %midi_db_count.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %if.end.i.for.inc.i_crit_edge
  %inc.i52 = add nuw i32 %i.033.i, 1
  %exitcond.not.i53 = icmp eq i32 %inc.i52, %14
  br i1 %exitcond.not.i53, label %for.inc.i.if.end9_crit_edge, label %for.inc.i.for.body.i49_crit_edge

for.inc.i.for.body.i49_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i49

for.inc.i.if.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %for.inc.i.if.end9_crit_edge, %if.then8.if.end9_crit_edge, %if.then8.thread, %if.end6.thread.if.end9_crit_edge, %if.end6.if.end9_crit_edge
  %pcm_frames.172 = phi i32 [ %pcm_frames.080, %if.end6.thread.if.end9_crit_edge ], [ %pcm_frames.1, %if.end6.if.end9_crit_edge ], [ %pcm_frames.080, %if.then8.thread ], [ %pcm_frames.1, %if.then8.if.end9_crit_edge ], [ %pcm_frames.1, %for.inc.i.if.end9_crit_edge ]
  %81 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cache, align 4
  %83 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_block_quadlets.i, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 4
  %size.i = getelementptr inbounds %struct.amdtp_motu_cache, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size.i, align 4
  %head.i = getelementptr inbounds %struct.amdtp_motu_cache, ptr %82, i32 0, i32 4
  %89 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %head.i, align 4
  %rx_cycle_count.i = getelementptr inbounds %struct.amdtp_motu_cache, ptr %82, i32 0, i32 5
  %91 = ptrtoint ptr %rx_cycle_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_cycle_count.i, align 4
  %mul.i = mul i32 %92, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp21.not.i = icmp eq i32 %14, 0
  br i1 %cmp21.not.i, label %if.end9.write_sph.exit_crit_edge, label %if.end9.for.body.i60_crit_edge

if.end9.for.body.i60_crit_edge:                   ; preds = %if.end9
  br label %for.body.i60

if.end9.write_sph.exit_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_sph.exit

for.body.i60:                                     ; preds = %for.body.i60.for.body.i60_crit_edge, %if.end9.for.body.i60_crit_edge
  %buffer.addr.024.i = phi ptr [ %add.ptr.i57, %for.body.i60.for.body.i60_crit_edge ], [ %12, %if.end9.for.body.i60_crit_edge ]
  %i.023.i = phi i32 [ %inc.i58, %for.body.i60.for.body.i60_crit_edge ], [ 0, %if.end9.for.body.i60_crit_edge ]
  %cache_head.022.i = phi i32 [ %rem4.i, %for.body.i60.for.body.i60_crit_edge ], [ %90, %if.end9.for.body.i60_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %86, i32 %cache_head.022.i
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i, align 4
  %add.i55 = add i32 %94, %mul.i
  %rem.i56 = urem i32 %add.i55, 24576000
  %rem.i56.frozen = freeze i32 %rem.i56
  %div.i = udiv i32 %rem.i56.frozen, 3072
  %shl.i = shl nuw nsw i32 %div.i, 12
  %95 = mul i32 %div.i, 3072
  %rem2.i.decomposed = sub i32 %rem.i56.frozen, %95
  %or.i = or i32 %shl.i, %rem2.i.decomposed
  %96 = ptrtoint ptr %buffer.addr.024.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.i, ptr %buffer.addr.024.i, align 4
  %add3.i = add i32 %cache_head.022.i, 1
  %rem4.i = urem i32 %add3.i, %88
  %add.ptr.i57 = getelementptr i32, ptr %buffer.addr.024.i, i32 %84
  %inc.i58 = add nuw i32 %i.023.i, 1
  %exitcond.not.i59 = icmp eq i32 %inc.i58, %14
  br i1 %exitcond.not.i59, label %for.body.i60.write_sph.exit_crit_edge, label %for.body.i60.for.body.i60_crit_edge

for.body.i60.for.body.i60_crit_edge:              ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i60

for.body.i60.write_sph.exit_crit_edge:            ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_sph.exit

write_sph.exit:                                   ; preds = %for.body.i60.write_sph.exit_crit_edge, %if.end9.write_sph.exit_crit_edge
  %cache_head.0.lcssa.i = phi i32 [ %90, %if.end9.write_sph.exit_crit_edge ], [ %rem4.i, %for.body.i60.write_sph.exit_crit_edge ]
  %97 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cache_head.0.lcssa.i, ptr %head.i, align 4
  %98 = ptrtoint ptr %rx_cycle_count.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_cycle_count.i, align 4
  %add7.i = add i32 %99, 1
  %rem8.i = urem i32 %add7.i, 8000
  store i32 %rem8.i, ptr %rx_cycle_count.i, align 4
  %inc = add nuw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %packets
  br i1 %exitcond.not, label %write_sph.exit.for.end_crit_edge, label %write_sph.exit.for.body_crit_edge

write_sph.exit.for.body_crit_edge:                ; preds = %write_sph.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

write_sph.exit.for.end_crit_edge:                 ; preds = %write_sph.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %write_sph.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %pcm_frames.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %pcm_frames.172, %write_sph.exit.for.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_sph, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@process_it_ctx_payloads, %if.then12)) #7
          to label %lor.lhs.false [label %if.then12], !srcloc !58

lor.lhs.false:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_message, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@process_it_ctx_payloads, %if.then12)) #7
          to label %if.end13 [label %if.then12], !srcloc !58

if.then12:                                        ; preds = %lor.lhs.false, %for.end
  br i1 %cmp379.not, label %if.then12.if.end13_crit_edge, label %if.then12.for.body.i66_crit_edge

if.then12.for.body.i66_crit_edge:                 ; preds = %if.then12
  br label %for.body.i66

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.body.i66:                                     ; preds = %for.body.i66.for.body.i66_crit_edge, %if.then12.for.body.i66_crit_edge
  %i.09.i = phi i32 [ %inc.i64, %for.body.i66.for.body.i66_crit_edge ], [ 0, %if.then12.for.body.i66_crit_edge ]
  %ctx_payload.i = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.09.i, i32 4
  %100 = ptrtoint ptr %ctx_payload.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx_payload.i, align 4
  %data_blocks1.i = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.09.i, i32 2
  %102 = ptrtoint ptr %data_blocks1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_blocks1.i, align 4
  tail call fastcc void @trace_data_block_sph(ptr noundef %s, i32 noundef %103, ptr noundef %101) #7
  tail call fastcc void @trace_data_block_message(ptr noundef %s, i32 noundef %103, ptr noundef %101) #7
  %inc.i64 = add nuw i32 %i.09.i, 1
  %exitcond.not.i65 = icmp eq i32 %inc.i64, %packets
  br i1 %exitcond.not.i65, label %for.body.i66.if.end13_crit_edge, label %for.body.i66.for.body.i66_crit_edge

for.body.i66.for.body.i66_crit_edge:              ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i66

for.body.i66.if.end13_crit_edge:                  ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %for.body.i66.if.end13_crit_edge, %if.then12.if.end13_crit_edge, %lor.lhs.false
  ret i32 %pcm_frames.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_data_block_sph(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %src = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  %dst = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst, align 4
  %data_blocks = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_blocks, align 4
  %__data_loc_tstamps = getelementptr inbounds %struct.trace_event_raw_data_block_sph, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %__data_loc_tstamps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_tstamps, align 4
  %and = and i32 %9, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %call2 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %7, i32 noundef 4) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %call2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_array_seq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_data_block_message(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %src = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  %dst = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst, align 4
  %data_blocks = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_blocks, align 4
  %__data_loc_messages = getelementptr inbounds %struct.trace_event_raw_data_block_message, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %__data_loc_messages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_messages, align 4
  %and = and i32 %9, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %call2 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %7, i32 noundef 8) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %call2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_register_dsp_message_parser_parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_command_dsp_message_parser_parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_data_block_sph(ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_sph, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_data_block_sph, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !55

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_sph, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) #7
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !55

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_sph, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_data_block_sph.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_data_block_sph.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 48, ptr noundef nonnull @.str.11) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %38 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_data_block_message(ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_message, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_data_block_message, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !55

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !63
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_message, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %s, i32 noundef %data_blocks, ptr noundef %buffer) #7
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !64
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !64
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !55

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_data_block_message, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_data_block_message.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_data_block_message.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 77, ptr noundef nonnull @.str.11) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %38 = tail call i32 @llvm.read_register.i32(metadata !45) #7
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__tracepoint_data_block_sph, !1, !"__tracepoint_data_block_sph", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/./amdtp-motu-trace.h", i32 21, i32 1}
!2 = !{ptr @__tracepoint_ptr_data_block_sph, !1, !"__tracepoint_ptr_data_block_sph", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_data_block_sph, !1, !"__SCK__tp_func_data_block_sph", i1 false, i1 false}
!4 = !{ptr @__tracepoint_data_block_message, !5, !"__tracepoint_data_block_message", i1 false, i1 false}
!5 = !{!"../sound/firewire/motu/./amdtp-motu-trace.h", i32 50, i32 1}
!6 = !{ptr @__tracepoint_ptr_data_block_message, !5, !"__tracepoint_ptr_data_block_message", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_data_block_message, !5, !"__SCK__tp_func_data_block_message", i1 false, i1 false}
!8 = !{ptr @event_class_data_block_sph, !1, !"event_class_data_block_sph", i1 false, i1 false}
!9 = !{ptr @event_data_block_sph, !1, !"event_data_block_sph", i1 false, i1 false}
!10 = !{ptr @__event_data_block_sph, !1, !"__event_data_block_sph", i1 false, i1 false}
!11 = !{ptr @event_class_data_block_message, !5, !"event_class_data_block_message", i1 false, i1 false}
!12 = !{ptr @event_data_block_message, !5, !"event_data_block_message", i1 false, i1 false}
!13 = !{ptr @__event_data_block_message, !5, !"__event_data_block_message", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_data_block_sph, !1, !"__bpf_trace_tp_map_data_block_sph", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_data_block_message, !5, !"__bpf_trace_tp_map_data_block_message", i1 false, i1 false}
!16 = !{ptr @__tpstrtab_data_block_sph, !1, !"__tpstrtab_data_block_sph", i1 false, i1 false}
!17 = !{ptr @__tpstrtab_data_block_message, !5, !"__tpstrtab_data_block_message", i1 false, i1 false}
!18 = !{ptr @str__snd_firewire_motu__trace_system_name, !19, !"str__snd_firewire_motu__trace_system_name", i1 false, i1 false}
!19 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!20 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @trace_event_fields_data_block_sph, !1, !"trace_event_fields_data_block_sph", i1 false, i1 false}
!28 = !{ptr @trace_event_type_funcs_data_block_sph, !1, !"trace_event_type_funcs_data_block_sph", i1 false, i1 false}
!29 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @print_fmt_data_block_sph, !1, !"print_fmt_data_block_sph", i1 false, i1 false}
!31 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @trace_event_fields_data_block_message, !5, !"trace_event_fields_data_block_message", i1 false, i1 false}
!34 = !{ptr @trace_event_type_funcs_data_block_message, !5, !"trace_event_type_funcs_data_block_message", i1 false, i1 false}
!35 = !{ptr @print_fmt_data_block_message, !5, !"print_fmt_data_block_message", i1 false, i1 false}
!36 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!37 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!44 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{!"auto-init"}
!58 = !{i64 2148212130, i64 2148212135, i64 2148212148, i64 2148212192, i64 2148212226, i64 2148212247}
!59 = !{i64 2154610750}
!60 = !{i64 2154610985}
!61 = !{i64 2149936834}
!62 = !{i64 2149937870}
!63 = !{i64 2154631928}
!64 = !{i64 2154632171}
