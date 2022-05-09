; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pwc/pwc-if.c_pt.bc'
source_filename = "../drivers/media/usb/pwc/pwc-if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.147 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.149, %struct.trace_event, ptr, ptr, %union.anon.150, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.149 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.152 = type { %struct.bpf_raw_event_map }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.cpumask = type { [1 x i32] }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.pwc_device = type { %struct.video_device, %struct.v4l2_device, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [13 x i8], ptr, [3 x ptr], ptr, i32, i32, i32, i32, i32, %union.anon.114, i32, i32, i32, ptr, [64 x i8], %struct.v4l2_ctrl_handler, i16, ptr, ptr, ptr, ptr, %struct.anon.116, %struct.anon.117, %struct.anon.118, ptr, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.120, [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%union.anon.114 = type { %struct.pwc_dec23_private }
%struct.pwc_dec23_private = type { %struct.mutex, i8, i8, i32, i32, i32, i32, i32, ptr, [16 x i32], [16 x [1024 x i8]], [16 x [1024 x i8]], [16 x [256 x i8]], [16 x [256 x i8]], [256 x [12 x i32]], [8 x [256 x i8]], [256 x i32], [256 x i32] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.116 = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.117 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.118 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr }
%struct.trace_event_raw_pwc_handler_enter = type { %struct.trace_entry, ptr, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.pwc_frame_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_pwc_handler_exit = type { %struct.trace_entry, ptr, ptr, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.76, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }

@__tpstrtab_pwc_handler_enter = internal constant [18 x i8] c"pwc_handler_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pwc_handler_enter = dso_local global %struct.static_call_key { ptr @__traceiter_pwc_handler_enter }, align 4
@__tracepoint_pwc_handler_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_pwc_handler_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_pwc_handler_enter, ptr null, ptr @__traceiter_pwc_handler_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pwc_handler_enter = internal constant ptr @__tracepoint_pwc_handler_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_pwc_handler_exit = internal constant [17 x i8] c"pwc_handler_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pwc_handler_exit = dso_local global %struct.static_call_key { ptr @__traceiter_pwc_handler_exit }, align 4
@__tracepoint_pwc_handler_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_pwc_handler_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_pwc_handler_exit, ptr null, ptr @__traceiter_pwc_handler_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pwc_handler_exit = internal constant ptr @__tracepoint_pwc_handler_exit, section "__tracepoints_ptrs", align 4
@str__pwc__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwc\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_pwc_handler_enter = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.147 { %struct.anon.148 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.147 { %struct.anon.148 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.147 { %struct.anon.148 { ptr @.str.9, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.147 { %struct.anon.148 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.147 { %struct.anon.148 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.147 { %struct.anon.148 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_pwc_handler_enter = internal global %struct.trace_event_class { ptr @str__pwc__trace_system_name, ptr @trace_event_raw_event_pwc_handler_enter, ptr @perf_trace_pwc_handler_enter, ptr @trace_event_reg, ptr @trace_event_fields_pwc_handler_enter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_pwc_handler_enter, i64 24), ptr getelementptr (i8, ptr @event_class_pwc_handler_enter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_pwc_handler_enter = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_pwc_handler_enter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_pwc_handler_enter = internal global { [165 x i8], [59 x i8] } { [165 x i8] c"\22dev=%s (fbuf=%p filled=%d) urb=%p (status=%d actual_length=%u)\22, __get_str(name), REC->fbuf, REC->fbuf__filled, REC->urb, REC->urb__status, REC->urb__actual_length\00", [59 x i8] zeroinitializer }, align 32
@event_pwc_handler_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pwc_handler_enter, %union.anon.149 { ptr @__tracepoint_pwc_handler_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pwc_handler_enter }, ptr @print_fmt_pwc_handler_enter, ptr null, %union.anon.150 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_pwc_handler_enter = internal global ptr @event_pwc_handler_enter, section "_ftrace_events", align 4
@trace_event_fields_pwc_handler_exit = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.147 { %struct.anon.148 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.147 { %struct.anon.148 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.147 { %struct.anon.148 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.147 { %struct.anon.148 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_pwc_handler_exit = internal global %struct.trace_event_class { ptr @str__pwc__trace_system_name, ptr @trace_event_raw_event_pwc_handler_exit, ptr @perf_trace_pwc_handler_exit, ptr @trace_event_reg, ptr @trace_event_fields_pwc_handler_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_pwc_handler_exit, i64 24), ptr getelementptr (i8, ptr @event_class_pwc_handler_exit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_pwc_handler_exit = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_pwc_handler_exit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_pwc_handler_exit = internal global { [94 x i8], [34 x i8] } { [94 x i8] c"\22 dev=%s (fbuf=%p filled=%d) urb=%p\22, __get_str(name), REC->fbuf, REC->fbuf__filled, REC->urb\00", [34 x i8] zeroinitializer }, align 32
@event_pwc_handler_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pwc_handler_exit, %union.anon.149 { ptr @__tracepoint_pwc_handler_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pwc_handler_exit }, ptr @print_fmt_pwc_handler_exit, ptr null, %union.anon.150 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_pwc_handler_exit = internal global ptr @event_pwc_handler_exit, section "_ftrace_events", align 4
@__bpf_trace_tp_map_pwc_handler_enter = internal global %union.anon.151 { %struct.bpf_raw_event_map { ptr @__tracepoint_pwc_handler_enter, ptr @__bpf_trace_pwc_handler_enter, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_pwc_handler_exit = internal global %union.anon.152 { %struct.bpf_raw_event_map { ptr @__tracepoint_pwc_handler_exit, ptr @__bpf_trace_pwc_handler_exit, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@pwc_trace = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_trace = internal constant [10 x i8] c"pwc.trace\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_trace = internal constant %struct.kernel_param { ptr @__param_str_trace, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @pwc_trace } }, section "__param", align 4
@__UNIQUE_ID_tracetype324 = internal constant [23 x i8] c"pwc.parmtype=trace:int\00", section ".modinfo", align 1
@__param_str_power_save = internal constant [15 x i8] c"pwc.power_save\00", align 1
@power_save = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_power_save = internal constant %struct.kernel_param { ptr @__param_str_power_save, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @power_save } }, section "__param", align 4
@__UNIQUE_ID_power_savetype325 = internal constant [28 x i8] c"pwc.parmtype=power_save:int\00", section ".modinfo", align 1
@__param_str_leds = internal constant [9 x i8] c"pwc.leds\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_leds = internal constant %struct.kparam_array { i32 2, i32 4, ptr @leds_nargs, ptr @param_ops_int, ptr @leds }, align 4
@__param_leds = internal constant %struct.kernel_param { ptr @__param_str_leds, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @__param_arr_leds } }, section "__param", align 4
@__UNIQUE_ID_ledstype326 = internal constant [31 x i8] c"pwc.parmtype=leds:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_trace327 = internal constant [38 x i8] c"pwc.parm=trace:For debugging purposes\00", section ".modinfo", align 1
@__UNIQUE_ID_power_save328 = internal constant [64 x i8] c"pwc.parm=power_save:Turn power saving for new cameras on or off\00", section ".modinfo", align 1
@__UNIQUE_ID_leds329 = internal constant [46 x i8] c"pwc.parm=leds:LED on,off time in milliseconds\00", section ".modinfo", align 1
@__UNIQUE_ID_description330 = internal constant [48 x i8] c"pwc.description=Philips & OEM USB webcam driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author331 = internal constant [43 x i8] c"pwc.author=Luc Saillard <luc@saillard.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [35 x i8] c"pwc.file=drivers/media/usb/pwc/pwc\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [16 x i8] c"pwc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias334 = internal constant [15 x i8] c"pwc.alias=pwcx\00", section ".modinfo", align 1
@__UNIQUE_ID_version335 = internal constant [20 x i8] c"pwc.version=10.0.15\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10.0.15\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_pwc__336_1223_pwc_driver_init6 = internal global ptr @pwc_driver_init, section ".initcall6.init", align 4
@pwc_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.17, ptr @usb_pwc_probe, ptr @usb_pwc_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwc_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pwc_driver_exit = internal global ptr @pwc_driver_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"struct urb*\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"urb\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"struct pwc_frame_buf*\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fbuf\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"urb__status\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"urb__actual_length\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fbuf__filled\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"dev=%s (fbuf=%p filled=%d) urb=%p (status=%d actual_length=%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" dev=%s (fbuf=%p filled=%d) urb=%p\0A\00", [60 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@leds_nargs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@leds = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 100, i32 0], [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips webcam\00", [17 x i8] zeroinitializer }, align 32
@pwc_device_table = internal constant { [32 x %struct.usb_device_id], [192 x i8] } { [32 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1054, i16 16396, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1054, i16 16401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2226, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2227, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2228, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2229, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2231, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 771, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 775, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 776, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 780, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 785, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 809, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 812, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1228, i16 -32490, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1373, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1373, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1373, i16 -28670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1690, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1726, i16 -32490, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3457, i16 6400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3457, i16 6416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017pwc: probe() called [%04X %04X], if %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_pwc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/usb/pwc/pwc-if.c\00", [33 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr = internal global ptr @usb_pwc_probe._entry, section ".printk_index", align 4
@usb_pwc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.20, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pwc: Philips PCA645VC USB webcam detected.\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.23 = internal global ptr @usb_pwc_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 645 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.20, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pwc: Philips PCA646VC USB webcam detected.\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.27 = internal global ptr @usb_pwc_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 646 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.20, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016pwc: Askey VC010 type 2 USB webcam detected.\0A\00", [48 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.31 = internal global ptr @usb_pwc_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Askey VC010 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.19, ptr @.str.20, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016pwc: Philips PCVC675K (Vesta) USB webcam detected.\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.35 = internal global ptr @usb_pwc_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 675 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.19, ptr @.str.20, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016pwc: Philips PCVC680K (Vesta Pro) USB webcam detected.\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.39 = internal global ptr @usb_pwc_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 680 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.19, ptr @.str.20, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016pwc: Philips PCVC690K (Vesta Pro Scan) USB webcam detected.\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.43 = internal global ptr @usb_pwc_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 690 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.19, ptr @.str.20, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016pwc: Philips PCVC730K (ToUCam Fun)/PCVC830 (ToUCam II) USB webcam detected.\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.47 = internal global ptr @usb_pwc_probe._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 730 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.19, ptr @.str.20, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016pwc: Philips PCVC740K (ToUCam Pro)/PCVC840 (ToUCam II) USB webcam detected.\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.51 = internal global ptr @usb_pwc_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 740 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.19, ptr @.str.20, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016pwc: Philips PCVC750K (ToUCam Pro Scan) USB webcam detected.\0A\00", [32 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.55 = internal global ptr @usb_pwc_probe._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Philips 750 webcam\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.19, ptr @.str.20, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016pwc: Philips PCVC720K/40 (ToUCam XS) USB webcam detected.\0A\00", [35 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.59 = internal global ptr @usb_pwc_probe._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Philips 720K/40 webcam\00", [41 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.19, ptr @.str.20, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pwc: Philips SPC 900NC USB webcam detected.\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.63 = internal global ptr @usb_pwc_probe._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Philips SPC 900NC webcam\00", [39 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.19, ptr @.str.20, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pwc: Philips SPC 880NC USB webcam detected.\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.67 = internal global ptr @usb_pwc_probe._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Philips SPC 880NC webcam\00", [39 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.19, ptr @.str.20, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016pwc: Askey VC010 type 1 USB webcam detected.\0A\00", [48 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.71 = internal global ptr @usb_pwc_probe._entry.69, section ".printk_index", align 4
@usb_pwc_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.19, ptr @.str.20, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016pwc: Logitech QuickCam Pro 3000 USB webcam detected.\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.74 = internal global ptr @usb_pwc_probe._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Logitech QuickCam Pro 3000\00", [37 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.19, ptr @.str.20, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016pwc: Logitech QuickCam Notebook Pro USB webcam detected.\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.78 = internal global ptr @usb_pwc_probe._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Logitech QuickCam Notebook Pro\00", [33 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.19, ptr @.str.20, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016pwc: Logitech QuickCam 4000 Pro USB webcam detected.\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.82 = internal global ptr @usb_pwc_probe._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Logitech QuickCam Pro 4000\00", [37 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.19, ptr @.str.20, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016pwc: Logitech QuickCam Zoom USB webcam detected.\0A\00", [44 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.86 = internal global ptr @usb_pwc_probe._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Logitech QuickCam Zoom\00", [41 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.19, ptr @.str.20, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016pwc: Logitech QuickCam Zoom (new model) USB webcam detected.\0A\00", [32 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.90 = internal global ptr @usb_pwc_probe._entry.88, section ".printk_index", align 4
@usb_pwc_probe._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.19, ptr @.str.20, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016pwc: Logitech QuickCam Orbit/Sphere USB webcam detected.\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.93 = internal global ptr @usb_pwc_probe._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Logitech QuickCam Orbit\00", [40 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.19, ptr @.str.20, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016pwc: Logitech/Cisco VT Camera webcam detected.\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.97 = internal global ptr @usb_pwc_probe._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cisco VT Camera\00", [16 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.19, ptr @.str.20, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016pwc: Logitech ViewPort AV 100 webcam detected.\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.101 = internal global ptr @usb_pwc_probe._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Logitech ViewPort AV 100\00", [39 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.19, ptr @.str.20, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016pwc: Logitech QuickCam detected (reserved ID).\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.105 = internal global ptr @usb_pwc_probe._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Logitech QuickCam (res.)\00", [39 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.19, ptr @.str.20, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pwc: Samsung MPC-C10 USB webcam detected.\0A\00", [51 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.109 = internal global ptr @usb_pwc_probe._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Samsung MPC-C10\00", [16 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.19, ptr @.str.20, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pwc: Samsung MPC-C30 USB webcam detected.\0A\00", [51 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.113 = internal global ptr @usb_pwc_probe._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Samsung MPC-C30\00", [16 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.19, ptr @.str.20, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016pwc: Samsung SNC-35E (v3.0) USB webcam detected.\0A\00", [44 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.117 = internal global ptr @usb_pwc_probe._entry.115, section ".printk_index", align 4
@usb_pwc_probe._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.19, ptr @.str.20, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016pwc: Creative Labs Webcam 5 detected.\0A\00", [55 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.120 = internal global ptr @usb_pwc_probe._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Creative Labs Webcam 5\00", [41 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.19, ptr @.str.20, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pwc: Creative Labs Webcam Pro Ex detected.\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.124 = internal global ptr @usb_pwc_probe._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Creative Labs Webcam Pro Ex\00", [36 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.19, ptr @.str.20, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pwc: Sotec Afina Eye USB webcam detected.\0A\00", [51 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.128 = internal global ptr @usb_pwc_probe._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sotec Afina Eye\00", [16 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.19, ptr @.str.20, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pwc: AME Co. Afina Eye USB webcam detected.\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.132 = internal global ptr @usb_pwc_probe._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AME Co. Afina Eye\00", [46 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.19, ptr @.str.20, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016pwc: Visionite VCS-UC300 USB webcam detected.\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.136 = internal global ptr @usb_pwc_probe._entry.134, section ".printk_index", align 4
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Visionite VCS-UC300\00", [44 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.19, ptr @.str.20, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016pwc: Visionite VCS-UM100 USB webcam detected.\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.140 = internal global ptr @usb_pwc_probe._entry.138, section ".printk_index", align 4
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Visionite VCS-UM100\00", [44 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.19, ptr @.str.20, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017pwc: Device serial number is %s\0A\00", [61 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.144 = internal global ptr @usb_pwc_probe._entry.142, section ".printk_index", align 4
@usb_pwc_probe._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.19, ptr @.str.20, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014pwc: Warning: more than 1 configuration available.\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.147 = internal global ptr @usb_pwc_probe._entry.145, section ".printk_index", align 4
@usb_pwc_probe._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.19, ptr @.str.20, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013pwc: Oops, could not allocate memory for pwc_device.\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.150 = internal global ptr @usb_pwc_probe._entry.148, section ".printk_index", align 4
@usb_pwc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pdev->v4l2_lock\00", [47 x i8] zeroinitializer }, align 32
@usb_pwc_probe.__key.152 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.153 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pdev->vb_queue_lock\00", [43 x i8] zeroinitializer }, align 32
@usb_pwc_probe.__key.154 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&pdev->queued_bufs_lock\00", [40 x i8] zeroinitializer }, align 32
@pwc_vb_queue_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @buffer_init, ptr @buffer_prepare, ptr @buffer_finish, ptr @buffer_cleanup, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@usb_pwc_probe._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.19, ptr @.str.20, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pwc: Oops, could not initialize vb2 queue.\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.158 = internal global ptr @usb_pwc_probe._entry.156, section ".printk_index", align 4
@pwc_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @pwc_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"Philips Webcam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @pwc_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.19, ptr @.str.20, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017pwc: Release: %04x\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.161 = internal global ptr @usb_pwc_probe._entry.159, section ".printk_index", align 4
@usb_pwc_probe._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.19, ptr @.str.20, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.163 = internal global ptr @usb_pwc_probe._entry.162, section ".printk_index", align 4
@usb_pwc_probe._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.19, ptr @.str.20, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017pwc: This %s camera is equipped with a %s (%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.166 = internal global ptr @usb_pwc_probe._entry.164, section ".printk_index", align 4
@usb_pwc_probe._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.19, ptr @.str.20, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pwc: Failed to register v4l2 controls (%d).\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.169 = internal global ptr @usb_pwc_probe._entry.167, section ".printk_index", align 4
@usb_pwc_probe._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.19, ptr @.str.20, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pwc: Failed to register v4l2-device (%d).\0A\00", [51 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.172 = internal global ptr @usb_pwc_probe._entry.170, section ".printk_index", align 4
@usb_pwc_probe._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.19, ptr @.str.20, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013pwc: Failed to register as video device (%d).\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.175 = internal global ptr @usb_pwc_probe._entry.173, section ".printk_index", align 4
@usb_pwc_probe._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.19, ptr @.str.20, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016pwc: Registered as %s.\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_pwc_probe._entry_ptr.178 = internal global ptr @usb_pwc_probe._entry.176, section ".printk_index", align 4
@.str.179 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PWC snapshot button\00", [44 x i8] zeroinitializer }, align 32
@pwc_image_sizes = external dso_local local_unnamed_addr constant [6 x [2 x i32]], align 4
@pwc_isoc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.20, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013pwc: Failed to find packet size for video endpoint in current alternate setting.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwc_isoc_init\00", [18 x i8] zeroinitializer }, align 32
@pwc_isoc_init._entry_ptr = internal global ptr @pwc_isoc_init._entry, section ".printk_index", align 4
@pwc_isoc_init._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.20, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017pwc: Setting alternate interface %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pwc_isoc_init._entry_ptr.185 = internal global ptr @pwc_isoc_init._entry.183, section ".printk_index", align 4
@pwc_isoc_init._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.182, ptr @.str.20, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017pwc: Allocated URB at 0x%p\0A\00", [34 x i8] zeroinitializer }, align 32
@pwc_isoc_init._entry_ptr.188 = internal global ptr @pwc_isoc_init._entry.186, section ".printk_index", align 4
@pwc_isoc_init._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.182, ptr @.str.20, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013pwc: Failed to allocate urb buffer %d\0A\00", [55 x i8] zeroinitializer }, align 32
@pwc_isoc_init._entry_ptr.191 = internal global ptr @pwc_isoc_init._entry.189, section ".printk_index", align 4
@pwc_isoc_init._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.182, ptr @.str.20, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013pwc: isoc_init() submit_urb %d failed with error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pwc_isoc_init._entry_ptr.194 = internal global ptr @pwc_isoc_init._entry.192, section ".printk_index", align 4
@pwc_isoc_init._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.182, ptr @.str.20, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017pwc: URB 0x%p submitted.\0A\00", [36 x i8] zeroinitializer }, align 32
@pwc_isoc_init._entry_ptr.197 = internal global ptr @pwc_isoc_init._entry.195, section ".printk_index", align 4
@pwc_isoc_init._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.182, ptr @.str.20, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017pwc: << pwc_isoc_init()\0A\00", [37 x i8] zeroinitializer }, align 32
@pwc_isoc_init._entry_ptr.200 = internal global ptr @pwc_isoc_init._entry.198, section ".printk_index", align 4
@pwc_isoc_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.20, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017pwc: >> pwc_isoc_cleanup()\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwc_isoc_cleanup\00", [47 x i8] zeroinitializer }, align 32
@pwc_isoc_cleanup._entry_ptr = internal global ptr @pwc_isoc_cleanup._entry, section ".printk_index", align 4
@pwc_isoc_cleanup._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.20, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017pwc: << pwc_isoc_cleanup()\0A\00", [34 x i8] zeroinitializer }, align 32
@pwc_isoc_cleanup._entry_ptr.205 = internal global ptr @pwc_isoc_cleanup._entry.203, section ".printk_index", align 4
@pwc_iso_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.20, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017pwc: Unlinking URB %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwc_iso_stop\00", [19 x i8] zeroinitializer }, align 32
@pwc_iso_stop._entry_ptr = internal global ptr @pwc_iso_stop._entry, section ".printk_index", align 4
@pwc_iso_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.20, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017pwc: Freeing URB\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwc_iso_free\00", [19 x i8] zeroinitializer }, align 32
@pwc_iso_free._entry_ptr = internal global ptr @pwc_iso_free._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.210 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pwc_isoc_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.20, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017pwc: URB (%p) unlinked %ssynchronously.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwc_isoc_handler\00", [47 x i8] zeroinitializer }, align 32
@pwc_isoc_handler._entry_ptr = internal global ptr @pwc_isoc_handler._entry, section ".printk_index", align 4
@.str.214 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.215 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@pwc_isoc_handler._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.213, ptr @.str.20, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013pwc: pwc_isoc_handler() called with status %d [%s].\0A\00", [41 x i8] zeroinitializer }, align 32
@pwc_isoc_handler._entry_ptr.225 = internal global ptr @pwc_isoc_handler._entry.223, section ".printk_index", align 4
@pwc_isoc_handler._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.213, ptr @.str.20, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pwc: Too many ISOC errors, bailing out.\0A\00", [53 x i8] zeroinitializer }, align 32
@pwc_isoc_handler._entry_ptr.228 = internal global ptr @pwc_isoc_handler._entry.226, section ".printk_index", align 4
@pwc_isoc_handler._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.213, ptr @.str.20, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013pwc: Iso frame %d has error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pwc_isoc_handler._entry_ptr.231 = internal global ptr @pwc_isoc_handler._entry.229, section ".printk_index", align 4
@pwc_isoc_handler._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.213, ptr @.str.20, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013pwc: Frame overflow (%d > %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@pwc_isoc_handler._entry_ptr.234 = internal global ptr @pwc_isoc_handler._entry.232, section ".printk_index", align 4
@pwc_isoc_handler._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.213, ptr @.str.20, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013pwc: Error (%d) re-submitting urb in pwc_isoc_handler.\0A\00", [38 x i8] zeroinitializer }, align 32
@pwc_isoc_handler._entry_ptr.237 = internal global ptr @pwc_isoc_handler._entry.235, section ".printk_index", align 4
@.str.238 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/pwc.h\00", [37 x i8] zeroinitializer }, align 32
@trace_pwc_handler_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.239 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.240 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@pwc_frame_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.20, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017pwc: Hyundai CMOS sensor bug. Dropping frame.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwc_frame_complete\00", [45 x i8] zeroinitializer }, align 32
@pwc_frame_complete._entry_ptr = internal global ptr @pwc_frame_complete._entry, section ".printk_index", align 4
@pwc_frame_complete._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.242, ptr @.str.20, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017pwc: Image is mirrored.\0A\00", [37 x i8] zeroinitializer }, align 32
@pwc_frame_complete._entry_ptr.245 = internal global ptr @pwc_frame_complete._entry.243, section ".printk_index", align 4
@pwc_frame_complete._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.242, ptr @.str.20, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017pwc: Image is normal.\0A\00", [39 x i8] zeroinitializer }, align 32
@pwc_frame_complete._entry_ptr.248 = internal global ptr @pwc_frame_complete._entry.246, section ".printk_index", align 4
@pwc_frame_complete._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.242, ptr @.str.20, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017pwc: Frame buffer underflow (%d bytes); discarded.\0A\00", [42 x i8] zeroinitializer }, align 32
@pwc_frame_complete._entry_ptr.251 = internal global ptr @pwc_frame_complete._entry.249, section ".printk_index", align 4
@pwc_snapshot_button._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.20, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017pwc: Snapshot button pressed.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwc_snapshot_button\00", [44 x i8] zeroinitializer }, align 32
@pwc_snapshot_button._entry_ptr = internal global ptr @pwc_snapshot_button._entry, section ".printk_index", align 4
@pwc_snapshot_button._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.253, ptr @.str.20, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017pwc: Snapshot button released.\0A\00", [62 x i8] zeroinitializer }, align 32
@pwc_snapshot_button._entry_ptr.256 = internal global ptr @pwc_snapshot_button._entry.254, section ".printk_index", align 4
@trace_pwc_handler_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pwc_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@pwc_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.257 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Hyundai CMOS sensor\00", [44 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sony CCD sensor + TDA8787\00", [38 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sony CCD sensor + Exas 98L59\00", [35 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sony CCD sensor + ADI 9804\00", [37 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sharp CCD sensor + TDA8787\00", [37 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sharp CCD sensor + Exas 98L59\00", [34 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sharp CCD sensor + ADI 9804\00", [36 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"UPA 1021 sensor\00", [16 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VGA sensor\00", [21 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAL MR sensor\00", [18 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown type of sensor\00", [41 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 7684, i64 23813, i64 27908, i64 28932, i64 33037, i64 39430, i64 48646, i64 52228]
@__sancov_gen_cov_switch_values.269 = internal global [14 x i64] [i64 12, i64 16, i64 770, i64 771, i64 772, i64 775, i64 776, i64 780, i64 784, i64 785, i64 786, i64 787, i64 809, i64 812]
@__sancov_gen_cov_switch_values.270 = internal global [11 x i64] [i64 9, i64 16, i64 2224, i64 2225, i64 2226, i64 2227, i64 2228, i64 2229, i64 2230, i64 2231, i64 2232]
@__sancov_gen_cov_switch_values.271 = internal global [5 x i64] [i64 3, i64 16, i64 36864, i64 36865, i64 36866]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 16, i64 16396, i64 16401]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 16, i64 6400, i64 6416]
@__sancov_gen_cov_switch_values.274 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 32, i64 46, i64 47, i64 48, i64 62, i64 63, i64 64, i64 256, i64 257]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.277 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.278 = internal global [5 x i64] [i64 3, i64 32, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.279 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264]
@__sancov_gen_cov_switch_values.280 = internal global [5 x i64] [i64 3, i64 32, i64 720, i64 730, i64 740]
@___asan_gen_.281 = private unnamed_addr constant [28 x i8] c"str__pwc__trace_system_name\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 36, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant [37 x i8] c"trace_event_fields_pwc_handler_enter\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_pwc_handler_enter\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [28 x i8] c"print_fmt_pwc_handler_enter\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [24 x i8] c"event_pwc_handler_enter\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [36 x i8] c"trace_event_fields_pwc_handler_exit\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_pwc_handler_exit\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [27 x i8] c"print_fmt_pwc_handler_exit\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [23 x i8] c"event_pwc_handler_exit\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [10 x i8] c"pwc_trace\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 132, i32 6 }
@___asan_gen_.311 = private unnamed_addr constant [11 x i8] c"power_save\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 134, i32 12 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1221, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant [11 x i8] c"pwc_driver\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 121, i32 26 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 40, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant [11 x i8] c"leds_nargs\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1203, i32 21 }
@___asan_gen_.371 = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 135, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 122, i32 12 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"pwc_device_table\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 73, i32 35 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 789, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 803, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 804, i32 11 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 808, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 809, i32 11 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 813, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 814, i32 11 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 818, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 819, i32 11 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 823, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 824, i32 11 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 828, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 829, i32 11 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 833, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 834, i32 11 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 838, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 839, i32 11 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 843, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 844, i32 11 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 848, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 849, i32 11 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 853, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 854, i32 11 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 858, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 859, i32 11 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 869, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 880, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 881, i32 11 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 885, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 886, i32 11 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 890, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 891, i32 11 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 897, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 898, i32 11 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 902, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 909, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 910, i32 11 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 917, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 918, i32 11 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 922, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 923, i32 11 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 927, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 928, i32 11 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 942, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 943, i32 11 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 947, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 948, i32 11 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 952, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 963, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 964, i32 11 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 970, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 971, i32 11 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 981, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 982, i32 11 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 993, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 994, i32 11 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1005, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1006, i32 11 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1010, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1011, i32 11 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1026, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1029, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1034, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1041, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1042, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1043, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [17 x i8] c"pwc_vb_queue_ops\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 754, i32 29 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1059, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant [13 x i8] c"pwc_template\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 148, i32 34 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1071, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1076, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1084, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1102, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1113, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1125, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1128, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1139, i32 29 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 1141, i32 27 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 439, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 444, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 461, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 472, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 495, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 499, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 503, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 544, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 550, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 514, i32 4 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 529, i32 4 }
@___asan_gen_.837 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.837, i32 326, i32 6 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 296, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 307, i32 12 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 309, i32 27 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 310, i32 27 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 311, i32 30 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 312, i32 28 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 313, i32 28 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 314, i32 27 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 316, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 321, i32 4 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 350, i32 4 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 362, i32 5 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 396, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant [30 x i8] c"../include/trace/events/pwc.h\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 11, i32 1 }
@___asan_gen_.912 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.912, i32 108, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 231, i32 4 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 239, i32 5 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 241, i32 5 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 269, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 206, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 208, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant [9 x i8] c"pwc_fops\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 139, i32 42 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 576, i32 11 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 578, i32 11 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 580, i32 11 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 582, i32 11 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 584, i32 11 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 586, i32 11 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 588, i32 11 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 590, i32 11 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 592, i32 11 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 594, i32 11 }
@___asan_gen_.990 = private constant [34 x i8] c"../drivers/media/usb/pwc/pwc-if.c\00", align 1
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.990, i32 596, i32 11 }
@___asan_gen_.992 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.993 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 912, i32 31 }
@llvm.compiler.used = appending global [333 x ptr] [ptr @__UNIQUE_ID_alias334, ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_leds329, ptr @__UNIQUE_ID_ledstype326, ptr @__UNIQUE_ID_license333, ptr @__UNIQUE_ID_power_save328, ptr @__UNIQUE_ID_power_savetype325, ptr @__UNIQUE_ID_trace327, ptr @__UNIQUE_ID_tracetype324, ptr @__UNIQUE_ID_version335, ptr @__bpf_trace_tp_map_pwc_handler_enter, ptr @__bpf_trace_tp_map_pwc_handler_exit, ptr @__event_pwc_handler_enter, ptr @__event_pwc_handler_exit, ptr @__exitcall_pwc_driver_exit, ptr @__initcall__kmod_pwc__336_1223_pwc_driver_init6, ptr @__modver_attr, ptr @__param_leds, ptr @__param_power_save, ptr @__param_trace, ptr @__tracepoint_ptr_pwc_handler_enter, ptr @__tracepoint_ptr_pwc_handler_exit, ptr @__tracepoint_pwc_handler_enter, ptr @__tracepoint_pwc_handler_exit, ptr @event_class_pwc_handler_enter, ptr @event_class_pwc_handler_exit, ptr @event_pwc_handler_enter, ptr @event_pwc_handler_exit, ptr @pwc_driver_exit, ptr @pwc_frame_complete._entry, ptr @pwc_frame_complete._entry.243, ptr @pwc_frame_complete._entry.246, ptr @pwc_frame_complete._entry.249, ptr @pwc_frame_complete._entry_ptr, ptr @pwc_frame_complete._entry_ptr.245, ptr @pwc_frame_complete._entry_ptr.248, ptr @pwc_frame_complete._entry_ptr.251, ptr @pwc_iso_free._entry, ptr @pwc_iso_free._entry_ptr, ptr @pwc_iso_stop._entry, ptr @pwc_iso_stop._entry_ptr, ptr @pwc_isoc_cleanup._entry, ptr @pwc_isoc_cleanup._entry.203, ptr @pwc_isoc_cleanup._entry_ptr, ptr @pwc_isoc_cleanup._entry_ptr.205, ptr @pwc_isoc_handler._entry, ptr @pwc_isoc_handler._entry.223, ptr @pwc_isoc_handler._entry.226, ptr @pwc_isoc_handler._entry.229, ptr @pwc_isoc_handler._entry.232, ptr @pwc_isoc_handler._entry.235, ptr @pwc_isoc_handler._entry_ptr, ptr @pwc_isoc_handler._entry_ptr.225, ptr @pwc_isoc_handler._entry_ptr.228, ptr @pwc_isoc_handler._entry_ptr.231, ptr @pwc_isoc_handler._entry_ptr.234, ptr @pwc_isoc_handler._entry_ptr.237, ptr @pwc_isoc_init._entry, ptr @pwc_isoc_init._entry.183, ptr @pwc_isoc_init._entry.186, ptr @pwc_isoc_init._entry.189, ptr @pwc_isoc_init._entry.192, ptr @pwc_isoc_init._entry.195, ptr @pwc_isoc_init._entry.198, ptr @pwc_isoc_init._entry_ptr, ptr @pwc_isoc_init._entry_ptr.185, ptr @pwc_isoc_init._entry_ptr.188, ptr @pwc_isoc_init._entry_ptr.191, ptr @pwc_isoc_init._entry_ptr.194, ptr @pwc_isoc_init._entry_ptr.197, ptr @pwc_isoc_init._entry_ptr.200, ptr @pwc_snapshot_button._entry, ptr @pwc_snapshot_button._entry.254, ptr @pwc_snapshot_button._entry_ptr, ptr @pwc_snapshot_button._entry_ptr.256, ptr @usb_pwc_probe._entry, ptr @usb_pwc_probe._entry.103, ptr @usb_pwc_probe._entry.107, ptr @usb_pwc_probe._entry.111, ptr @usb_pwc_probe._entry.115, ptr @usb_pwc_probe._entry.118, ptr @usb_pwc_probe._entry.122, ptr @usb_pwc_probe._entry.126, ptr @usb_pwc_probe._entry.130, ptr @usb_pwc_probe._entry.134, ptr @usb_pwc_probe._entry.138, ptr @usb_pwc_probe._entry.142, ptr @usb_pwc_probe._entry.145, ptr @usb_pwc_probe._entry.148, ptr @usb_pwc_probe._entry.156, ptr @usb_pwc_probe._entry.159, ptr @usb_pwc_probe._entry.162, ptr @usb_pwc_probe._entry.164, ptr @usb_pwc_probe._entry.167, ptr @usb_pwc_probe._entry.170, ptr @usb_pwc_probe._entry.173, ptr @usb_pwc_probe._entry.176, ptr @usb_pwc_probe._entry.21, ptr @usb_pwc_probe._entry.25, ptr @usb_pwc_probe._entry.29, ptr @usb_pwc_probe._entry.33, ptr @usb_pwc_probe._entry.37, ptr @usb_pwc_probe._entry.41, ptr @usb_pwc_probe._entry.45, ptr @usb_pwc_probe._entry.49, ptr @usb_pwc_probe._entry.53, ptr @usb_pwc_probe._entry.57, ptr @usb_pwc_probe._entry.61, ptr @usb_pwc_probe._entry.65, ptr @usb_pwc_probe._entry.69, ptr @usb_pwc_probe._entry.72, ptr @usb_pwc_probe._entry.76, ptr @usb_pwc_probe._entry.80, ptr @usb_pwc_probe._entry.84, ptr @usb_pwc_probe._entry.88, ptr @usb_pwc_probe._entry.91, ptr @usb_pwc_probe._entry.95, ptr @usb_pwc_probe._entry.99, ptr @usb_pwc_probe._entry_ptr, ptr @usb_pwc_probe._entry_ptr.101, ptr @usb_pwc_probe._entry_ptr.105, ptr @usb_pwc_probe._entry_ptr.109, ptr @usb_pwc_probe._entry_ptr.113, ptr @usb_pwc_probe._entry_ptr.117, ptr @usb_pwc_probe._entry_ptr.120, ptr @usb_pwc_probe._entry_ptr.124, ptr @usb_pwc_probe._entry_ptr.128, ptr @usb_pwc_probe._entry_ptr.132, ptr @usb_pwc_probe._entry_ptr.136, ptr @usb_pwc_probe._entry_ptr.140, ptr @usb_pwc_probe._entry_ptr.144, ptr @usb_pwc_probe._entry_ptr.147, ptr @usb_pwc_probe._entry_ptr.150, ptr @usb_pwc_probe._entry_ptr.158, ptr @usb_pwc_probe._entry_ptr.161, ptr @usb_pwc_probe._entry_ptr.163, ptr @usb_pwc_probe._entry_ptr.166, ptr @usb_pwc_probe._entry_ptr.169, ptr @usb_pwc_probe._entry_ptr.172, ptr @usb_pwc_probe._entry_ptr.175, ptr @usb_pwc_probe._entry_ptr.178, ptr @usb_pwc_probe._entry_ptr.23, ptr @usb_pwc_probe._entry_ptr.27, ptr @usb_pwc_probe._entry_ptr.31, ptr @usb_pwc_probe._entry_ptr.35, ptr @usb_pwc_probe._entry_ptr.39, ptr @usb_pwc_probe._entry_ptr.43, ptr @usb_pwc_probe._entry_ptr.47, ptr @usb_pwc_probe._entry_ptr.51, ptr @usb_pwc_probe._entry_ptr.55, ptr @usb_pwc_probe._entry_ptr.59, ptr @usb_pwc_probe._entry_ptr.63, ptr @usb_pwc_probe._entry_ptr.67, ptr @usb_pwc_probe._entry_ptr.71, ptr @usb_pwc_probe._entry_ptr.74, ptr @usb_pwc_probe._entry_ptr.78, ptr @usb_pwc_probe._entry_ptr.82, ptr @usb_pwc_probe._entry_ptr.86, ptr @usb_pwc_probe._entry_ptr.90, ptr @usb_pwc_probe._entry_ptr.93, ptr @usb_pwc_probe._entry_ptr.97, ptr @str__pwc__trace_system_name, ptr @trace_event_fields_pwc_handler_enter, ptr @trace_event_type_funcs_pwc_handler_enter, ptr @print_fmt_pwc_handler_enter, ptr @trace_event_fields_pwc_handler_exit, ptr @trace_event_type_funcs_pwc_handler_exit, ptr @print_fmt_pwc_handler_exit, ptr @pwc_trace, ptr @power_save, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pwc_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @leds_nargs, ptr @leds, ptr @.str.17, ptr @pwc_device_table, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @usb_pwc_probe.__key, ptr @.str.151, ptr @usb_pwc_probe.__key.152, ptr @.str.153, ptr @usb_pwc_probe.__key.154, ptr @.str.155, ptr @pwc_vb_queue_ops, ptr @.str.157, ptr @pwc_template, ptr @.str.160, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.252, ptr @.str.253, ptr @.str.255, ptr @pwc_fops, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268], section "llvm.metadata"
@0 = internal global [238 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__pwc__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_pwc_handler_enter to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_pwc_handler_enter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_pwc_handler_enter to i32), i32 165, i32 224, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_pwc_handler_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_pwc_handler_exit to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_pwc_handler_exit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_pwc_handler_exit to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_pwc_handler_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_trace to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_save to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leds_nargs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leds to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_device_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe.__key.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe.__key.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_vb_queue_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_pwc_probe._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_init._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_init._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_init._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_init._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_init._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_init._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_cleanup._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_iso_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_iso_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_handler._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_handler._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_handler._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_handler._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_isoc_handler._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_frame_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_frame_complete._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_frame_complete._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_frame_complete._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_snapshot_button._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_snapshot_button._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pwc_handler_enter(ptr nocapture readnone %__data, ptr noundef %urb, ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pwc_handler_enter, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void %2(ptr noundef %4, ptr noundef %urb, ptr noundef %pdev) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pwc_handler_exit(ptr nocapture readnone %__data, ptr noundef %urb, ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pwc_handler_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void %2(ptr noundef %4, ptr noundef %urb, ptr noundef %pdev) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_pwc_handler_enter(ptr noundef %__data, ptr noundef %urb, ptr noundef readonly %pdev) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !501

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !502

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 1, i32 4
  %call.i42 = tail call i32 @strlen(ptr noundef nonnull %name.i) #20
  %add = add i32 %call.i42, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.i = shl i32 %call.i42, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call3, i32 0, i32 6
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %urb6 = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %urb6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %urb, ptr %urb6, align 4
  %fill_buf = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 27
  %5 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fill_buf, align 4
  %fbuf = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %fbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %fbuf, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %urb__status = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %urb__status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %urb__status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  %urb__actual_length = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %urb__actual_length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %urb__actual_length, align 4
  %14 = load ptr, ptr %fill_buf, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %filled = getelementptr inbounds %struct.pwc_frame_buf, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %filled, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %fbuf__filled = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %fbuf__filled to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %fbuf__filled, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %tobool12.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool12.not, ptr @.str.3, ptr %name.i
  %call20 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #21
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_pwc_handler_enter(ptr noundef %__data, ptr noundef %urb, ptr noundef readonly %pdev) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !503
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !503
  %name.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 1, i32 4
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #20
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !491) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call13, i32 0, i32 6
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %urb17 = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %urb17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %urb, ptr %urb17, align 4
  %fill_buf = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 27
  %29 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fill_buf, align 4
  %fbuf = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %fbuf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %fbuf, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %urb__status = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %urb__status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %urb__status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %35 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual_length, align 4
  %urb__actual_length = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %urb__actual_length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %urb__actual_length, align 4
  %38 = load ptr, ptr %fill_buf, align 4
  %tobool19.not = icmp eq ptr %38, null
  br i1 %tobool19.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %filled = getelementptr inbounds %struct.pwc_frame_buf, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %filled, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %40, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %fbuf__filled = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %fbuf__filled to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond, ptr %fbuf__filled, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %tobool24.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool24.not, ptr @.str.3, ptr %name.i
  %call32 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #21
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_pwc_handler_exit(ptr noundef %__data, ptr noundef %urb, ptr noundef readonly %pdev) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !501

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !502

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 1, i32 4
  %call.i31 = tail call i32 @strlen(ptr noundef nonnull %name.i) #20
  %add = add i32 %call.i31, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.i = shl i32 %call.i31, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %urb6 = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %urb6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %urb, ptr %urb6, align 4
  %fill_buf = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 27
  %5 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fill_buf, align 4
  %fbuf = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %fbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %fbuf, align 4
  %8 = load ptr, ptr %fill_buf, align 4
  %filled = getelementptr inbounds %struct.pwc_frame_buf, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %filled, align 4
  %fbuf__filled = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %fbuf__filled to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fbuf__filled, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %tobool10.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name.i
  %call14 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #21
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_pwc_handler_exit(ptr noundef %__data, ptr noundef %urb, ptr noundef readonly %pdev) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !503
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !503
  %name.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 1, i32 4
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #20
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !491) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %call13, i32 0, i32 4
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %urb17 = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %urb17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %urb, ptr %urb17, align 4
  %fill_buf = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 27
  %29 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fill_buf, align 4
  %fbuf = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %fbuf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %fbuf, align 4
  %32 = load ptr, ptr %fill_buf, align 4
  %filled = getelementptr inbounds %struct.pwc_frame_buf, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %filled, align 4
  %fbuf__filled = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %fbuf__filled to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fbuf__filled, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %tobool22.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool22.not, ptr @.str.3, ptr %name.i
  %call26 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #21
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_pwc_handler_enter(ptr noundef %__data, ptr noundef %urb, ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %urb to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %pdev to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_pwc_handler_exit(ptr noundef %__data, ptr noundef %urb, ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %urb to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %pdev to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @pwc_driver, ptr noundef null, ptr noundef nonnull @.str.1) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @usb_deregister(ptr noundef nonnull @pwc_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_pwc_handler_enter(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %fbuf = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %fbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbuf, align 4
  %fbuf__filled = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fbuf__filled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fbuf__filled, align 4
  %urb = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb, align 4
  %urb__status = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %urb__status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %urb__status, align 4
  %urb__actual_length = getelementptr inbounds %struct.trace_event_raw_pwc_handler_enter, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %urb__actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %urb__actual_length, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13) #17
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_pwc_handler_exit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %fbuf = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %fbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbuf, align 4
  %fbuf__filled = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fbuf__filled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fbuf__filled, align 4
  %urb = getelementptr inbounds %struct.trace_event_raw_pwc_handler_exit, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, ptr noundef %9) #17
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_pwc_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %rc = alloca i32, align 4
  %compression = alloca i32, align 4
  %serial_number = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compression) #17
  %2 = ptrtoint ptr %compression to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %compression, align 4
  %3 = load i32, ptr @power_save, align 4
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %serial_number) #17
  %idVendor = getelementptr i8, ptr %1, i32 936
  %4 = call ptr @memset(ptr %serial_number, i32 255, i32 30)
  %5 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idVendor, align 8
  %idProduct = getelementptr i8, ptr %1, i32 938
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = load i32, ptr @pwc_trace, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv2 = zext i16 %9 to i32
  %11 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %11 to i32
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber, align 2
  %conv4 = zext i8 %15 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4) #22
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %16 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf, align 8
  %bInterfaceNumber10 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not = icmp eq i8 %19, 0
  br i1 %cmp.not, label %if.end14, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %20 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end14.cleanup_crit_edge [
    i16 28932, label %if.then17
    i16 -26106, label %if.then91
    i16 27908, label %if.then103
    i16 23813, label %if.then175
    i16 7684, label %if.then199
    i16 -13308, label %if.then221
    i16 -16890, label %if.then233
    i16 -32499, label %if.then245
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %21 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.269)
  switch i16 %9, label %if.then17.cleanup_crit_edge [
    i16 770, label %do.end20
    i16 771, label %do.end26
    i16 772, label %do.end32
    i16 775, label %do.end38
    i16 776, label %do.end44
    i16 780, label %do.end50
    i16 784, label %do.end56
    i16 785, label %do.end62
    i16 786, label %do.end68
    i16 787, label %do.end74
    i16 809, label %do.end80
    i16 812, label %do.end86
  ]

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end20:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #22
  br label %if.end268

do.end26:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #22
  br label %if.end268

do.end32:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #22
  br label %if.end268

do.end38:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #22
  br label %if.end268

do.end44:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #22
  br label %if.end268

do.end50:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #22
  br label %if.end268

do.end56:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #22
  br label %if.end268

do.end62:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #22
  br label %if.end268

do.end68:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #22
  br label %if.end268

do.end74:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #22
  br label %if.end268

do.end80:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #22
  br label %if.end268

do.end86:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #22
  br label %if.end268

if.then91:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cond497 = icmp eq i16 %8, 256
  br i1 %cond497, label %do.end95, label %if.then91.cleanup_crit_edge

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end95:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #19
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #22
  br label %if.end268

if.then103:                                       ; preds = %if.end14
  %22 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.270)
  switch i16 %9, label %if.then103.cleanup_crit_edge [
    i16 2224, label %do.end107
    i16 2225, label %do.end113
    i16 2226, label %do.end119
    i16 2227, label %do.end129
    i16 2228, label %do.end135
    i16 2229, label %do.end145
    i16 2230, label %do.end155
    i16 2231, label %do.end161
    i16 2232, label %do.end167
  ]

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end107:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #22
  br label %if.end268

do.end113:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #22
  br label %if.end268

do.end119:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp122 = icmp eq i32 %3, -1
  %spec.store.select = select i1 %cmp122, i32 1, i32 %3
  br label %if.end268

do.end129:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #22
  br label %if.end268

do.end135:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp138 = icmp eq i32 %3, -1
  %spec.store.select498 = select i1 %cmp138, i32 1, i32 %3
  br label %if.end268

do.end145:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp148 = icmp eq i32 %3, -1
  %spec.store.select499 = select i1 %cmp148, i32 1, i32 %3
  br label %if.end268

do.end155:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #22
  br label %if.end268

do.end161:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #22
  br label %if.end268

do.end167:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #22
  br label %if.end268

if.then175:                                       ; preds = %if.end14
  %23 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.271)
  switch i16 %9, label %if.then175.cleanup_crit_edge [
    i16 -28672, label %do.end179
    i16 -28671, label %do.end185
    i16 -28670, label %do.end191
  ]

if.then175.cleanup_crit_edge:                     ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end179:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #19
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #22
  br label %if.end268

do.end185:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #19
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #22
  br label %if.end268

do.end191:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #19
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #22
  br label %if.end268

if.then199:                                       ; preds = %if.end14
  %24 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.272)
  switch i16 %9, label %if.then199.cleanup_crit_edge [
    i16 16396, label %do.end203
    i16 16401, label %do.end213
  ]

if.then199.cleanup_crit_edge:                     ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end203:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #19
  %call205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp206 = icmp eq i32 %3, -1
  %spec.store.select500 = select i1 %cmp206, i32 1, i32 %3
  br label %if.end268

do.end213:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #19
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #22
  br label %if.end268

if.then221:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp2(i16 5761, i16 %8)
  %cond496 = icmp eq i16 %8, 5761
  br i1 %cond496, label %do.end225, label %if.then221.cleanup_crit_edge

if.then221.cleanup_crit_edge:                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end225:                                        ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #19
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #22
  br label %if.end268

if.then233:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp2(i16 5761, i16 %8)
  %cond = icmp eq i16 %8, 5761
  br i1 %cond, label %do.end237, label %if.then233.cleanup_crit_edge

if.then233.cleanup_crit_edge:                     ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end237:                                        ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #19
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #22
  br label %if.end268

if.then245:                                       ; preds = %if.end14
  %25 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.273)
  switch i16 %9, label %if.then245.cleanup_crit_edge [
    i16 6400, label %do.end249
    i16 6416, label %do.end255
  ]

if.then245.cleanup_crit_edge:                     ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end249:                                        ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #19
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #22
  br label %if.end268

do.end255:                                        ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #19
  %call257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #22
  br label %if.end268

if.end268:                                        ; preds = %do.end255, %do.end249, %do.end237, %do.end225, %do.end213, %do.end203, %do.end191, %do.end185, %do.end179, %do.end167, %do.end161, %do.end155, %do.end145, %do.end135, %do.end129, %do.end119, %do.end113, %do.end107, %do.end95, %do.end86, %do.end80, %do.end74, %do.end68, %do.end62, %do.end56, %do.end50, %do.end44, %do.end38, %do.end32, %do.end26, %do.end20
  %name.0 = phi ptr [ @.str.68, %do.end86 ], [ @.str.64, %do.end80 ], [ @.str.60, %do.end74 ], [ @.str.56, %do.end68 ], [ @.str.52, %do.end62 ], [ @.str.48, %do.end56 ], [ @.str.44, %do.end50 ], [ @.str.40, %do.end44 ], [ @.str.36, %do.end38 ], [ @.str.32, %do.end32 ], [ @.str.28, %do.end26 ], [ @.str.24, %do.end20 ], [ @.str.32, %do.end95 ], [ @.str.106, %do.end167 ], [ @.str.102, %do.end161 ], [ @.str.98, %do.end155 ], [ @.str.94, %do.end145 ], [ @.str.87, %do.end135 ], [ @.str.87, %do.end129 ], [ @.str.83, %do.end119 ], [ @.str.79, %do.end113 ], [ @.str.75, %do.end107 ], [ @.str.114, %do.end191 ], [ @.str.114, %do.end185 ], [ @.str.110, %do.end179 ], [ @.str.125, %do.end213 ], [ @.str.121, %do.end203 ], [ @.str.129, %do.end225 ], [ @.str.133, %do.end237 ], [ @.str.141, %do.end255 ], [ @.str.137, %do.end249 ]
  %my_power_save.0 = phi i32 [ %3, %do.end86 ], [ %3, %do.end80 ], [ %3, %do.end74 ], [ %3, %do.end68 ], [ %3, %do.end62 ], [ %3, %do.end56 ], [ %3, %do.end50 ], [ %3, %do.end44 ], [ %3, %do.end38 ], [ %3, %do.end32 ], [ %3, %do.end26 ], [ %3, %do.end20 ], [ %3, %do.end95 ], [ %3, %do.end167 ], [ %3, %do.end161 ], [ %3, %do.end155 ], [ %spec.store.select499, %do.end145 ], [ %spec.store.select498, %do.end135 ], [ %3, %do.end129 ], [ %spec.store.select, %do.end119 ], [ %3, %do.end113 ], [ %3, %do.end107 ], [ %3, %do.end191 ], [ %3, %do.end185 ], [ %3, %do.end179 ], [ %3, %do.end213 ], [ %spec.store.select500, %do.end203 ], [ %3, %do.end225 ], [ %3, %do.end237 ], [ %3, %do.end255 ], [ %3, %do.end249 ]
  %features.0 = phi i32 [ 0, %do.end86 ], [ 0, %do.end80 ], [ 0, %do.end74 ], [ 0, %do.end68 ], [ 0, %do.end62 ], [ 0, %do.end56 ], [ 0, %do.end50 ], [ 0, %do.end44 ], [ 0, %do.end38 ], [ 0, %do.end32 ], [ 0, %do.end26 ], [ 0, %do.end20 ], [ 0, %do.end95 ], [ 0, %do.end167 ], [ 0, %do.end161 ], [ 0, %do.end155 ], [ 1, %do.end145 ], [ 0, %do.end135 ], [ 0, %do.end129 ], [ 0, %do.end119 ], [ 0, %do.end113 ], [ 0, %do.end107 ], [ 0, %do.end191 ], [ 0, %do.end185 ], [ 0, %do.end179 ], [ 0, %do.end213 ], [ 0, %do.end203 ], [ 0, %do.end225 ], [ 0, %do.end237 ], [ 0, %do.end255 ], [ 0, %do.end249 ]
  %type_id.0 = phi i32 [ 740, %do.end86 ], [ 740, %do.end80 ], [ 720, %do.end74 ], [ 750, %do.end68 ], [ 740, %do.end62 ], [ 730, %do.end56 ], [ 690, %do.end50 ], [ 680, %do.end44 ], [ 675, %do.end38 ], [ 646, %do.end32 ], [ 646, %do.end26 ], [ 645, %do.end20 ], [ 645, %do.end95 ], [ 730, %do.end167 ], [ 740, %do.end161 ], [ 740, %do.end155 ], [ 740, %do.end145 ], [ 740, %do.end135 ], [ 740, %do.end129 ], [ 740, %do.end119 ], [ 740, %do.end113 ], [ 740, %do.end107 ], [ 740, %do.end191 ], [ 675, %do.end185 ], [ 675, %do.end179 ], [ 740, %do.end213 ], [ 730, %do.end203 ], [ 730, %do.end225 ], [ 750, %do.end237 ], [ 730, %do.end255 ], [ 740, %do.end249 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %my_power_save.0)
  %cmp269 = icmp eq i32 %my_power_save.0, -1
  %26 = call ptr @memset(ptr %serial_number, i32 0, i32 30)
  %iSerialNumber = getelementptr i8, ptr %1, i32 944
  %27 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %iSerialNumber, align 8
  %conv274 = zext i8 %28 to i32
  %call276 = call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv274, ptr noundef nonnull %serial_number, i32 noundef 29) #17
  %29 = load i32, ptr @pwc_trace, align 4
  %and278 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  br i1 %tobool279.not, label %if.end268.do.end289_crit_edge, label %do.end283

if.end268.do.end289_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end289

do.end283:                                        ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #19
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull %serial_number) #22
  br label %do.end289

do.end289:                                        ; preds = %do.end283, %if.end268.do.end289_crit_edge
  %bNumConfigurations = getelementptr i8, ptr %1, i32 945
  %30 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bNumConfigurations, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp292 = icmp ugt i8 %31, 1
  br i1 %cmp292, label %do.end297, label %do.end289.if.end300_crit_edge

do.end289.if.end300_crit_edge:                    ; preds = %do.end289
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end300

do.end297:                                        ; preds = %do.end289
  call void @__sanitizer_cov_trace_pc() #19
  %call299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #22
  br label %if.end300

if.end300:                                        ; preds = %do.end297, %do.end289.if.end300_crit_edge
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 60296, i32 noundef 3520, i32 noundef 4) #23
  %cmp302 = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp302, label %do.end307, label %if.end310

do.end307:                                        ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #19
  %call309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #22
  br label %cleanup

if.end310:                                        ; preds = %if.end300
  %type = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %type_id.0, ptr %type, align 8
  %features311 = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %features311 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %features.0, ptr %features311, align 64
  call void @pwc_construct(ptr noundef nonnull %call1.i.i.i) #17
  %v4l2_lock = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %v4l2_lock, ptr noundef nonnull @.str.151, ptr noundef nonnull @usb_pwc_probe.__key) #17
  %vb_queue_lock = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %vb_queue_lock, ptr noundef nonnull @.str.153, ptr noundef nonnull @usb_pwc_probe.__key.152) #17
  %queued_bufs_lock = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %queued_bufs_lock, ptr noundef nonnull @.str.155, ptr noundef nonnull @usb_pwc_probe.__key.154, i16 noundef signext 3) #17
  %queued_bufs = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %queued_bufs, ptr %queued_bufs, align 8
  %prev.i = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %queued_bufs, ptr %prev.i, align 4
  %udev322 = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %udev322 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %udev322, align 4
  %37 = trunc i32 %my_power_save.0 to i8
  %conv323 = select i1 %cmp269, i8 0, i8 %37
  %power_save = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 23
  %38 = ptrtoint ptr %power_save to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv323, ptr %power_save, align 2
  %vb_queue = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %vb_queue to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %vb_queue, align 8
  %io_modes = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 2, i32 10
  %41 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i.i, ptr %drv_priv, align 16
  %buf_struct_size = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 2, i32 12
  %42 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 752, ptr %buf_struct_size, align 8
  %ops = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 2, i32 7
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @pwc_vb_queue_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 2, i32 8
  %44 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 8
  %timestamp_flags = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 2, i32 13
  %45 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8192, ptr %timestamp_flags, align 4
  %call332 = call i32 @vb2_queue_init(ptr noundef %vb_queue) #17
  %46 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call332, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %cmp333 = icmp slt i32 %call332, 0
  br i1 %cmp333, label %do.end338, label %if.end341

do.end338:                                        ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #19
  %call340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #22
  br label %err_free_mem

if.end341:                                        ; preds = %if.end310
  %47 = call ptr @memcpy(ptr %call1.i.i.i, ptr @pwc_template, i32 1352)
  %name343 = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 12
  %call345 = call i32 @strscpy(ptr noundef %name343, ptr noundef nonnull %name.0, i32 noundef 32) #17
  %queue = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 10
  %48 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %vb_queue, ptr %queue, align 32
  %lock = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 2, i32 5
  %49 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %vb_queue_lock, ptr %lock, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 5, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %bcdDevice = getelementptr i8, ptr %1, i32 940
  %51 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bcdDevice, align 4
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %conv353 = zext i16 %53 to i32
  %release = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv353, ptr %release, align 4
  %55 = load i32, ptr @pwc_trace, align 4
  %and355 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %if.end341.do.end366_crit_edge, label %do.end360

if.end341.do.end366_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end366

do.end360:                                        ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #19
  %call363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %conv353) #22
  br label %do.end366

do.end366:                                        ; preds = %do.end360, %if.end341.do.end366_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 13) #24
  %ctrl_buf = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 25
  %57 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i, ptr %ctrl_buf, align 4
  %tobool369.not = icmp eq ptr %call7.i, null
  br i1 %tobool369.not, label %do.end373, label %if.end376

do.end373:                                        ; preds = %do.end366
  call void @__sanitizer_cov_trace_pc() #19
  %call375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #22
  %58 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -12, ptr %rc, align 4
  br label %err_free_mem

if.end376:                                        ; preds = %do.end366
  %call377 = call i32 @pwc_get_cmos_sensor(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %rc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call377)
  %cmp378 = icmp sgt i32 %call377, -1
  br i1 %cmp378, label %do.body381, label %if.end376.if.end397_crit_edge

if.end376.if.end397_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end397

do.body381:                                       ; preds = %if.end376
  %59 = load i32, ptr @pwc_trace, align 4
  %and382 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382)
  %tobool383.not = icmp eq i32 %and382, 0
  br i1 %tobool383.not, label %do.body381.if.end397_crit_edge, label %do.end387

do.body381.if.end397_crit_edge:                   ; preds = %do.body381
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end397

do.end387:                                        ; preds = %do.body381
  call void @__sanitizer_cov_trace_pc() #19
  %60 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rc, align 4
  %call392 = call fastcc ptr @pwc_sensor_type_to_string(i32 noundef %61)
  %call393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %name343, ptr noundef nonnull %call392, i32 noundef %61) #22
  br label %if.end397

if.end397:                                        ; preds = %do.end387, %do.body381.if.end397_crit_edge, %if.end376.if.end397_crit_edge
  %call398 = call i32 @pwc_set_leds(ptr noundef nonnull %call1.i.i.i, i32 noundef 0, i32 noundef 0) #17
  %call399 = call i32 @pwc_set_video_mode(ptr noundef nonnull %call1.i.i.i, i32 noundef 640, i32 noundef 480, i32 noundef 842093913, i32 noundef 30, ptr noundef nonnull %compression, i32 noundef 1) #17
  %62 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call399, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call399)
  %tobool400.not = icmp eq i32 %call399, 0
  br i1 %tobool400.not, label %if.end402, label %if.end397.err_free_mem_crit_edge

if.end397.err_free_mem_crit_edge:                 ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_mem

if.end402:                                        ; preds = %if.end397
  %call403 = call i32 @pwc_init_controls(ptr noundef nonnull %call1.i.i.i) #17
  %63 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call403, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call403)
  %tobool404.not = icmp eq i32 %call403, 0
  br i1 %tobool404.not, label %if.end411, label %do.end408

do.end408:                                        ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #19
  %call410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %call403) #22
  br label %err_free_mem

if.end411:                                        ; preds = %if.end402
  call void @pwc_camera_power(ptr noundef nonnull %call1.i.i.i, i32 noundef 0) #17
  %v4l2_dev = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 1
  %release412 = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 1, i32 9
  %64 = ptrtoint ptr %release412 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @pwc_video_release, ptr %release412, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call414 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #17
  %65 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call414, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call414)
  %tobool415.not = icmp eq i32 %call414, 0
  br i1 %tobool415.not, label %if.end422, label %do.end419

do.end419:                                        ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #19
  %call421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %call414) #22
  br label %err_free_controls

if.end422:                                        ; preds = %if.end411
  %ctrl_handler = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 39
  %ctrl_handler424 = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 1, i32 6
  %66 = ptrtoint ptr %ctrl_handler424 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ctrl_handler, ptr %ctrl_handler424, align 4
  %v4l2_dev427 = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 7
  %67 = ptrtoint ptr %v4l2_dev427 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %v4l2_dev, ptr %v4l2_dev427, align 4
  %lock430 = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 26
  %68 = ptrtoint ptr %lock430 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %v4l2_lock, ptr %lock430, align 64
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 83886081, ptr %device_caps, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fops.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %call.i = call i32 @__video_register_device(ptr noundef nonnull %call1.i.i.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %73) #17
  %74 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp434 = icmp slt i32 %call.i, 0
  br i1 %cmp434, label %do.end439, label %do.end445

do.end439:                                        ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #19
  %call441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i32 noundef %call.i) #22
  br label %err_unregister_v4l2_dev

do.end445:                                        ; preds = %if.end422
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 5, i32 3
  %75 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i.i, align 128
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end445.video_device_node_name.exit_crit_edge

do.end445.video_device_node_name.exit_crit_edge:  ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #19
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.video_device, ptr %call1.i.i.i, i32 0, i32 5
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 16
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end445.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %78, %if.end.i.i ], [ %76, %do.end445.video_device_node_name.exit_crit_edge ]
  %call449 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %retval.0.i.i) #22
  %call450 = call ptr @input_allocate_device() #17
  %button_dev = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 37
  %79 = ptrtoint ptr %button_dev to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call450, ptr %button_dev, align 8
  %tobool452.not = icmp eq ptr %call450, null
  br i1 %tobool452.not, label %if.then453, label %if.end454

if.then453:                                       ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  %80 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -12, ptr %rc, align 4
  br label %err_video_unreg

if.end454:                                        ; preds = %video_device_node_name.exit
  %button_phys = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 38
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %81 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i602 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %button_phys, i32 noundef 64, ptr noundef nonnull @.str.268, ptr noundef %84, ptr noundef %devpath.i) #17
  %call459 = call i32 @strlcat(ptr noundef %button_phys, ptr noundef nonnull @.str.179, i32 noundef 64) #17
  %85 = ptrtoint ptr %button_dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %button_dev, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.180, ptr %86, align 8
  %88 = load ptr, ptr %button_dev, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %button_phys, ptr %phys, align 4
  %90 = ptrtoint ptr %udev322 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %udev322, align 4
  %92 = load ptr, ptr %button_dev, align 8
  %id467 = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %id467 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 3, ptr %id467, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 16, i32 7
  %94 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %idVendor.i, align 8
  %96 = call i16 @llvm.bswap.i16(i16 %95) #17
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 3, i32 1
  %97 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 16, i32 8
  %98 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %idProduct.i, align 2
  %100 = call i16 @llvm.bswap.i16(i16 %99) #17
  %product.i = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 3, i32 2
  %101 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 16, i32 9
  %102 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %bcdDevice.i, align 4
  %104 = call i16 @llvm.bswap.i16(i16 %103) #17
  %version.i = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 3, i32 3
  %105 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %version.i, align 2
  %106 = ptrtoint ptr %udev322 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %udev322, align 4
  %dev469 = getelementptr inbounds %struct.usb_device, ptr %107, i32 0, i32 15
  %108 = ptrtoint ptr %button_dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %button_dev, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %109, i32 0, i32 40, i32 1
  %110 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %dev469, ptr %parent, align 8
  %111 = load ptr, ptr %button_dev, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %evbit, align 8
  %113 = load ptr, ptr %button_dev, align 8
  %arrayidx474 = getelementptr %struct.input_dev, ptr %113, i32 0, i32 6, i32 6
  %114 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1048576, ptr %arrayidx474, align 4
  %115 = load ptr, ptr %button_dev, align 8
  %call476 = call i32 @input_register_device(ptr noundef %115) #17
  %116 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call476, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call476)
  %tobool477.not = icmp eq i32 %call476, 0
  br i1 %tobool477.not, label %if.end454.cleanup_crit_edge, label %if.then478

if.end454.cleanup_crit_edge:                      ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then478:                                       ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #19
  %117 = ptrtoint ptr %button_dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %button_dev, align 8
  call void @input_free_device(ptr noundef %118) #17
  %119 = ptrtoint ptr %button_dev to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %button_dev, align 8
  br label %err_video_unreg

err_video_unreg:                                  ; preds = %if.then478, %if.then453
  call void @video_unregister_device(ptr noundef nonnull %call1.i.i.i) #17
  br label %err_unregister_v4l2_dev

err_unregister_v4l2_dev:                          ; preds = %err_video_unreg, %do.end439
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #17
  br label %err_free_controls

err_free_controls:                                ; preds = %err_unregister_v4l2_dev, %do.end419
  %ctrl_handler484 = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 39
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler484) #17
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_controls, %do.end408, %if.end397.err_free_mem_crit_edge, %do.end373, %do.end338
  %ctrl_buf485 = getelementptr inbounds %struct.pwc_device, ptr %call1.i.i.i, i32 0, i32 25
  %120 = ptrtoint ptr %ctrl_buf485 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctrl_buf485, align 4
  call void @kfree(ptr noundef %121) #17
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #17
  %122 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end454.cleanup_crit_edge, %do.end307, %if.then245.cleanup_crit_edge, %if.then233.cleanup_crit_edge, %if.then221.cleanup_crit_edge, %if.then199.cleanup_crit_edge, %if.then175.cleanup_crit_edge, %if.then103.cleanup_crit_edge, %if.then91.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end307 ], [ %123, %err_free_mem ], [ -19, %do.end7.cleanup_crit_edge ], [ -19, %if.then17.cleanup_crit_edge ], [ -19, %if.then91.cleanup_crit_edge ], [ -19, %if.then103.cleanup_crit_edge ], [ -19, %if.then175.cleanup_crit_edge ], [ -19, %if.then199.cleanup_crit_edge ], [ -19, %if.then221.cleanup_crit_edge ], [ -19, %if.then233.cleanup_crit_edge ], [ -19, %if.then245.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge ], [ 0, %if.end454.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %serial_number) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compression) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_pwc_disconnect(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1352
  %vb_queue_lock = getelementptr i8, ptr %1, i32 784
  tail call void @mutex_lock_nested(ptr noundef %vb_queue_lock, i32 noundef 0) #17
  %v4l2_lock = getelementptr i8, ptr %1, i32 692
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #17
  %streaming = getelementptr i8, ptr %1, i32 576
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %streaming, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @pwc_isoc_cleanup(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %udev = getelementptr i8, ptr %1, i32 876
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %udev, align 4
  tail call void @v4l2_device_disconnect(ptr noundef %1) #17
  tail call void @video_unregister_device(ptr noundef %add.ptr) #17
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #17
  tail call void @mutex_unlock(ptr noundef %vb_queue_lock) #17
  %button_dev = getelementptr i8, ptr %1, i32 58528
  %4 = ptrtoint ptr %button_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %button_dev, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @input_unregister_device(ptr noundef nonnull %5) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call8 = tail call i32 @v4l2_device_put(ptr noundef %1) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwc_construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_get_cmos_sensor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @pwc_sensor_type_to_string(i32 noundef %sensor_type) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sensor_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %sensor_type, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 32, label %sw.bb1
    i32 46, label %sw.bb2
    i32 47, label %sw.bb3
    i32 48, label %sw.bb4
    i32 62, label %sw.bb5
    i32 63, label %sw.bb6
    i32 64, label %sw.bb7
    i32 256, label %sw.bb8
    i32 257, label %sw.bb9
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

return:                                           ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.267, %sw.default ], [ @.str.266, %sw.bb9 ], [ @.str.265, %sw.bb8 ], [ @.str.264, %sw.bb7 ], [ @.str.263, %sw.bb6 ], [ @.str.262, %sw.bb5 ], [ @.str.261, %sw.bb4 ], [ @.str.260, %sw.bb3 ], [ @.str.259, %sw.bb2 ], [ @.str.258, %sw.bb1 ], [ @.str.257, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_set_leds(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_set_video_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_init_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwc_camera_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwc_video_release(ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 -1352
  %ctrl_handler = getelementptr i8, ptr %v, i32 58596
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #17
  tail call void @v4l2_device_unregister(ptr noundef %v) #17
  %ctrl_buf = getelementptr i8, ptr %v, i32 948
  %0 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_buf, align 4
  tail call void @kfree(ptr noundef %1) #17
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.if.end3.sink.split_crit_edge, label %if.else

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1 = icmp ugt i32 %3, 16
  br i1 %cmp1, label %if.else.if.end3.sink.split_crit_edge, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.else.if.end3.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.else.if.end3.sink.split_crit_edge, %entry.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 2, %entry.if.end3.sink.split_crit_edge ], [ 16, %if.else.if.end3.sink.split_crit_edge ]
  %4 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %nbuffers, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.else.if.end3_crit_edge
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nplanes, align 4
  %call4 = tail call i32 @pwc_get_size(ptr noundef %1, i32 noundef 640, i32 noundef 480) #17
  %arrayidx = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call4, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %mul = mul i32 %7, 3
  %mul8 = mul i32 %mul, %9
  %div = sdiv i32 %mul8, 2
  %add = add nsw i32 %div, 4095
  %and = and i32 %add, -4096
  %10 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_init(ptr nocapture noundef writeonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vzalloc(i32 noundef 460812) #23
  %data = getelementptr inbounds %struct.pwc_frame_buf, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %data, align 8
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef readonly %vb) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %udev = getelementptr inbounds %struct.pwc_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %5, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  %call4 = tail call i32 @pwc_decompress(ptr noundef %5, ptr noundef %vb) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_cleanup(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pwc_frame_buf, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void @vfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  %compression.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %udev = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_lock = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %v4l2_lock, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @pwc_camera_power(ptr noundef %1, i32 noundef 1) #17
  %4 = load i32, ptr @leds, align 4
  %5 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @leds, i32 0, i32 1), align 4
  %call5 = tail call i32 @pwc_set_leds(ptr noundef %1, i32 noundef %4, i32 noundef %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compression.i) #17
  %6 = ptrtoint ptr %compression.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %compression.i, align 4
  %vsync.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %vsync.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %vsync.i, align 4
  %vlast_packet_size.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %vlast_packet_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vlast_packet_size.i, align 8
  %fill_buf.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %fill_buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fill_buf.i, align 4
  %vframe_count.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %vframe_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vframe_count.i, align 8
  %visoc_errors.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %visoc_errors.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %visoc_errors.i, align 4
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 4
  %width.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 35
  %height.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 36
  %pixfmt.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 15
  %vframes.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 14
  %valternate.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 13
  %vmax_packet_size.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 17
  %vendpoint.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 11
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 12
  %arrayidx111.i = getelementptr %struct.pwc_device, ptr %1, i32 0, i32 26, i32 0
  %arrayidx111.1.i = getelementptr %struct.pwc_device, ptr %1, i32 0, i32 26, i32 1
  %arrayidx111.2.i = getelementptr %struct.pwc_device, ptr %1, i32 0, i32 26, i32 2
  br label %retry.i

retry.i:                                          ; preds = %retry.i.backedge, %if.end4
  %idesc.0.i = phi ptr [ null, %if.end4 ], [ %idesc.1.i, %retry.i.backedge ]
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 8
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %18 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixfmt.i, align 4
  %20 = ptrtoint ptr %vframes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vframes.i, align 8
  %call.i = call i32 @pwc_set_video_mode(ptr noundef %1, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %compression.i, i32 noundef 1) #17
  %call2.i = call ptr @usb_ifnum_to_if(ptr noundef %13, i32 noundef 0) #17
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %retry.i.if.end.i_crit_edge, label %if.then.i

retry.i.if.end.i_crit_edge:                       ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %valternate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valternate.i, align 4
  %call3.i = call ptr @usb_altnum_to_altsetting(ptr noundef nonnull %call2.i, i32 noundef %23) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %retry.i.if.end.i_crit_edge
  %idesc.1.i = phi ptr [ %call3.i, %if.then.i ], [ %idesc.0.i, %retry.i.if.end.i_crit_edge ]
  %tobool4.not.i = icmp eq ptr %idesc.1.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.then8_crit_edge, label %if.end6.i

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.end6.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %vmax_packet_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %vmax_packet_size.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %idesc.1.i, i32 0, i32 4
  %25 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp270.not.i = icmp eq i8 %26, 0
  br i1 %cmp270.not.i, label %if.end6.i.do.end.i_crit_edge, label %for.body.lr.ph.i

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %if.end6.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %idesc.1.i, i32 0, i32 3
  %27 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %endpoint.i, align 4
  %29 = ptrtoint ptr %vendpoint.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vendpoint.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0271.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.do.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0271.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %28, i32 %i.0271.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %31 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bEndpointAddress.i, align 2
  %33 = and i8 %32, 15
  %and.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %and.i)
  %cmp10.i = icmp eq i32 %30, %and.i
  br i1 %cmp10.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %34 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %wMaxPacketSize.i, align 4
  %36 = call i16 @llvm.bswap.i16(i16 %35) #17
  %conv16.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %vmax_packet_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv16.i, ptr %vmax_packet_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 960, i16 %36)
  %38 = icmp ugt i16 %36, 960
  br i1 %38, label %for.end.i.do.end.i_crit_edge, label %do.body28.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %for.cond.i.do.end.i_crit_edge, %if.end6.i.do.end.i_crit_edge
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #22
  br label %if.then8

do.body28.i:                                      ; preds = %for.end.i
  %39 = load i32, ptr @pwc_trace, align 4
  %and29.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body28.i.do.end40.i_crit_edge, label %do.end34.i

do.body28.i.do.end40.i_crit_edge:                 ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end40.i

do.end34.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %valternate.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %valternate.i, align 4
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %41) #22
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end34.i, %do.body28.i.do.end40.i_crit_edge
  %42 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udev, align 4
  %44 = ptrtoint ptr %valternate.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %valternate.i, align 4
  %call43.i = call i32 @usb_set_interface(ptr noundef %43, i32 noundef 0, i32 noundef %45) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call43.i)
  %cmp44.i = icmp eq i32 %call43.i, -28
  br i1 %cmp44.i, label %land.lhs.true.i, label %if.end50.i

land.lhs.true.i:                                  ; preds = %do.end40.i
  %46 = ptrtoint ptr %compression.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %compression.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp46.i = icmp slt i32 %47, 3
  br i1 %cmp46.i, label %if.then48.i, label %land.lhs.true.i.if.then8_crit_edge

land.lhs.true.i.if.then8_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.then48.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc49.i = add nsw i32 %47, 1
  %48 = ptrtoint ptr %compression.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc49.i, ptr %compression.i, align 4
  br label %retry.i.backedge

if.end50.i:                                       ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp51.i = icmp slt i32 %call43.i, 0
  br i1 %cmp51.i, label %if.end50.i.if.then8_crit_edge, label %if.end50.i.for.body58.i_crit_edge

if.end50.i.for.body58.i_crit_edge:                ; preds = %if.end50.i
  br label %for.body58.i

if.end50.i.if.then8_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

for.body58.i:                                     ; preds = %if.end91.i.for.body58.i_crit_edge, %if.end50.i.for.body58.i_crit_edge
  %i.1273.i = phi i32 [ %inc104.i, %if.end91.i.for.body58.i_crit_edge ], [ 0, %if.end50.i.for.body58.i_crit_edge ]
  %call59.i = call ptr @usb_alloc_urb(i32 noundef 10, i32 noundef 3264) #17
  %cmp60.i = icmp eq ptr %call59.i, null
  br i1 %cmp60.i, label %if.then62.i, label %if.end63.i

if.then62.i:                                      ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @pwc_isoc_cleanup(ptr noundef %1) #17
  br label %if.then8

if.end63.i:                                       ; preds = %for.body58.i
  %arrayidx64.i = getelementptr %struct.pwc_device, ptr %1, i32 0, i32 26, i32 %i.1273.i
  %49 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call59.i, ptr %arrayidx64.i, align 4
  %50 = load i32, ptr @pwc_trace, align 4
  %and66.i = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end63.i.do.end76.i_crit_edge, label %do.end71.i

if.end63.i.do.end76.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end76.i

do.end71.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #19
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull %call59.i) #22
  br label %do.end76.i

do.end76.i:                                       ; preds = %do.end71.i, %if.end63.i.do.end76.i_crit_edge
  %interval.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 25
  %51 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %interval.i, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 8
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %13, ptr %dev.i, align 4
  %53 = ptrtoint ptr %vendpoint.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vendpoint.i, align 4
  %55 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %56, 8
  %shl1.i.i = shl i32 %54, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or79.i = or i32 %or.i.i, 128
  %pipe.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 10
  %57 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or79.i, ptr %pipe.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 13
  %58 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 6, ptr %transfer_flags.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 19
  %59 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 9600, ptr %transfer_buffer_length.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 15
  %60 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i.i, align 8
  %sysdev.i.i = getelementptr inbounds %struct.usb_bus, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %sysdev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sysdev.i.i, align 4
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9600, i32 noundef 3264, i32 noundef 2) #23
  %tobool.not.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end76.i.do.end88.i_crit_edge, label %if.end.i.i

do.end76.i.do.end88.i_crit_edge:                  ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end88.i

if.end.i.i:                                       ; preds = %do.end76.i
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i.i.i) #17
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !501

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %63) #17
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %67, %if.end.i.i.i.i ], [ %65, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.211, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #17
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %68 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %transfer_dma.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %63, i32 noundef -1) #17
  br label %if.then4.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end.i.i
  call void @debug_dma_map_single(ptr noundef %63, ptr noundef nonnull %call1.i.i.i.i, i32 noundef 9600) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %call1.i.i.i.i to i32
  %sub.i.i.i = add i32 %70, 1073741824
  %shr.i.i.i = lshr exact i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %69, i32 %shr.i.i.i
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %63, ptr noundef %add.ptr.i.i.i, i32 noundef 0, i32 noundef 9600, i32 noundef 2, i32 noundef 0) #17
  %71 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call41.i.i.i, ptr %transfer_dma.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %63, i32 noundef %call41.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.if.then4.i.i_crit_edge, label %if.end91.i

dma_map_single_attrs.exit.i.i.if.then4.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i.if.then4.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #17
  br label %do.end88.i

do.end88.i:                                       ; preds = %if.then4.i.i, %do.end76.i.do.end88.i_crit_edge
  %transfer_buffer244.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 14
  %72 = ptrtoint ptr %transfer_buffer244.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %transfer_buffer244.i, align 4
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, i32 noundef %i.1273.i) #22
  call fastcc void @pwc_isoc_cleanup(ptr noundef %1) #17
  br label %if.then8

if.end91.i:                                       ; preds = %dma_map_single_attrs.exit.i.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 14
  %73 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call1.i.i.i.i, ptr %transfer_buffer.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 28
  %74 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @pwc_isoc_handler, ptr %complete.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 27
  %75 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %1, ptr %context.i, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 23
  %76 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %start_frame.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call59.i, i32 0, i32 24
  %77 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 10, ptr %number_of_packets.i, align 4
  %arrayidx96.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 0
  %78 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx96.i, align 4
  %79 = ptrtoint ptr %vmax_packet_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vmax_packet_size.i, align 4
  %length.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 0, i32 1
  %81 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %length.i, align 4
  %arrayidx96.1.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 1
  %82 = ptrtoint ptr %arrayidx96.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 960, ptr %arrayidx96.1.i, align 4
  %83 = load i32, ptr %vmax_packet_size.i, align 4
  %length.1.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 1, i32 1
  %84 = ptrtoint ptr %length.1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %length.1.i, align 4
  %arrayidx96.2.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 2
  %85 = ptrtoint ptr %arrayidx96.2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1920, ptr %arrayidx96.2.i, align 4
  %86 = load i32, ptr %vmax_packet_size.i, align 4
  %length.2.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 2, i32 1
  %87 = ptrtoint ptr %length.2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %length.2.i, align 4
  %arrayidx96.3.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 3
  %88 = ptrtoint ptr %arrayidx96.3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2880, ptr %arrayidx96.3.i, align 4
  %89 = load i32, ptr %vmax_packet_size.i, align 4
  %length.3.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 3, i32 1
  %90 = ptrtoint ptr %length.3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %length.3.i, align 4
  %arrayidx96.4.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 4
  %91 = ptrtoint ptr %arrayidx96.4.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 3840, ptr %arrayidx96.4.i, align 4
  %92 = load i32, ptr %vmax_packet_size.i, align 4
  %length.4.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 4, i32 1
  %93 = ptrtoint ptr %length.4.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %length.4.i, align 4
  %arrayidx96.5.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 5
  %94 = ptrtoint ptr %arrayidx96.5.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 4800, ptr %arrayidx96.5.i, align 4
  %95 = load i32, ptr %vmax_packet_size.i, align 4
  %length.5.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 5, i32 1
  %96 = ptrtoint ptr %length.5.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %length.5.i, align 4
  %arrayidx96.6.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 6
  %97 = ptrtoint ptr %arrayidx96.6.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 5760, ptr %arrayidx96.6.i, align 4
  %98 = load i32, ptr %vmax_packet_size.i, align 4
  %length.6.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 6, i32 1
  %99 = ptrtoint ptr %length.6.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %length.6.i, align 4
  %arrayidx96.7.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 7
  %100 = ptrtoint ptr %arrayidx96.7.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 6720, ptr %arrayidx96.7.i, align 4
  %101 = load i32, ptr %vmax_packet_size.i, align 4
  %length.7.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 7, i32 1
  %102 = ptrtoint ptr %length.7.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %length.7.i, align 4
  %arrayidx96.8.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 8
  %103 = ptrtoint ptr %arrayidx96.8.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 7680, ptr %arrayidx96.8.i, align 4
  %104 = load i32, ptr %vmax_packet_size.i, align 4
  %length.8.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 8, i32 1
  %105 = ptrtoint ptr %length.8.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %length.8.i, align 4
  %arrayidx96.9.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 9
  %106 = ptrtoint ptr %arrayidx96.9.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 8640, ptr %arrayidx96.9.i, align 4
  %107 = load i32, ptr %vmax_packet_size.i, align 4
  %length.9.i = getelementptr %struct.urb, ptr %call59.i, i32 0, i32 29, i32 9, i32 1
  %108 = ptrtoint ptr %length.9.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %length.9.i, align 4
  %inc104.i = add nuw nsw i32 %i.1273.i, 1
  %exitcond306.not.i = icmp eq i32 %inc104.i, 3
  br i1 %exitcond306.not.i, label %for.body109.preheader.i, label %if.end91.i.for.body58.i_crit_edge

if.end91.i.for.body58.i_crit_edge:                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body58.i

for.body109.preheader.i:                          ; preds = %if.end91.i
  %109 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx111.i, align 4
  %call112.i = call i32 @usb_submit_urb(ptr noundef %110, i32 noundef 3264) #17
  %111 = zext i32 %call112.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %call112.i, label %for.body109.preheader.i.do.end125.i_crit_edge [
    i32 -28, label %for.body109.preheader.i.land.lhs.true115.i_crit_edge
    i32 0, label %do.body129.i
  ]

for.body109.preheader.i.land.lhs.true115.i_crit_edge: ; preds = %for.body109.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true115.i

for.body109.preheader.i.do.end125.i_crit_edge:    ; preds = %for.body109.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end125.i

land.lhs.true115.i:                               ; preds = %for.inc143.1.i.land.lhs.true115.i_crit_edge, %for.inc143.i.land.lhs.true115.i_crit_edge, %for.body109.preheader.i.land.lhs.true115.i_crit_edge
  %i.2274.lcssa302.i = phi i32 [ 0, %for.body109.preheader.i.land.lhs.true115.i_crit_edge ], [ 1, %for.inc143.i.land.lhs.true115.i_crit_edge ], [ 2, %for.inc143.1.i.land.lhs.true115.i_crit_edge ]
  %112 = ptrtoint ptr %compression.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %compression.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %113)
  %cmp116.i = icmp slt i32 %113, 3
  br i1 %cmp116.i, label %if.then118.i, label %land.lhs.true115.i.do.end125.i_crit_edge

land.lhs.true115.i.do.end125.i_crit_edge:         ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end125.i

if.then118.i:                                     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc119.i = add nsw i32 %113, 1
  %114 = ptrtoint ptr %compression.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %inc119.i, ptr %compression.i, align 4
  call fastcc void @pwc_isoc_cleanup(ptr noundef %1) #17
  br label %retry.i.backedge

retry.i.backedge:                                 ; preds = %if.then118.i, %if.then48.i
  br label %retry.i

do.end125.i:                                      ; preds = %for.inc143.1.i.do.end125.i_crit_edge, %for.inc143.i.do.end125.i_crit_edge, %land.lhs.true115.i.do.end125.i_crit_edge, %for.body109.preheader.i.do.end125.i_crit_edge
  %i.2274304.i = phi i32 [ 0, %for.body109.preheader.i.do.end125.i_crit_edge ], [ 1, %for.inc143.i.do.end125.i_crit_edge ], [ 2, %for.inc143.1.i.do.end125.i_crit_edge ], [ %i.2274.lcssa302.i, %land.lhs.true115.i.do.end125.i_crit_edge ]
  %call112301.i = phi i32 [ %call112.i, %for.body109.preheader.i.do.end125.i_crit_edge ], [ %call112.1.i, %for.inc143.i.do.end125.i_crit_edge ], [ %call112.2.i, %for.inc143.1.i.do.end125.i_crit_edge ], [ -28, %land.lhs.true115.i.do.end125.i_crit_edge ]
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %i.2274304.i, i32 noundef %call112301.i) #22
  call fastcc void @pwc_isoc_cleanup(ptr noundef %1) #17
  br label %if.then8

do.body129.i:                                     ; preds = %for.body109.preheader.i
  %115 = load i32, ptr @pwc_trace, align 4
  %and130.i = and i32 %115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %do.body129.i.for.inc143.i_crit_edge, label %do.end135.i

do.body129.i.for.inc143.i_crit_edge:              ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc143.i

do.end135.i:                                      ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #19
  %116 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx111.i, align 4
  %call139.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %117) #22
  br label %for.inc143.i

for.inc143.i:                                     ; preds = %do.end135.i, %do.body129.i.for.inc143.i_crit_edge
  %118 = ptrtoint ptr %arrayidx111.1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx111.1.i, align 4
  %call112.1.i = call i32 @usb_submit_urb(ptr noundef %119, i32 noundef 3264) #17
  %120 = zext i32 %call112.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %call112.1.i, label %for.inc143.i.do.end125.i_crit_edge [
    i32 -28, label %for.inc143.i.land.lhs.true115.i_crit_edge
    i32 0, label %do.body129.1.i
  ]

for.inc143.i.land.lhs.true115.i_crit_edge:        ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true115.i

for.inc143.i.do.end125.i_crit_edge:               ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end125.i

do.body129.1.i:                                   ; preds = %for.inc143.i
  %121 = load i32, ptr @pwc_trace, align 4
  %and130.1.i = and i32 %121, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.1.i)
  %tobool131.not.1.i = icmp eq i32 %and130.1.i, 0
  br i1 %tobool131.not.1.i, label %do.body129.1.i.for.inc143.1.i_crit_edge, label %do.end135.1.i

do.body129.1.i.for.inc143.1.i_crit_edge:          ; preds = %do.body129.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc143.1.i

do.end135.1.i:                                    ; preds = %do.body129.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %122 = ptrtoint ptr %arrayidx111.1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx111.1.i, align 4
  %call139.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %123) #22
  br label %for.inc143.1.i

for.inc143.1.i:                                   ; preds = %do.end135.1.i, %do.body129.1.i.for.inc143.1.i_crit_edge
  %124 = ptrtoint ptr %arrayidx111.2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx111.2.i, align 4
  %call112.2.i = call i32 @usb_submit_urb(ptr noundef %125, i32 noundef 3264) #17
  %126 = zext i32 %call112.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %call112.2.i, label %for.inc143.1.i.do.end125.i_crit_edge [
    i32 -28, label %for.inc143.1.i.land.lhs.true115.i_crit_edge
    i32 0, label %do.body129.2.i
  ]

for.inc143.1.i.land.lhs.true115.i_crit_edge:      ; preds = %for.inc143.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true115.i

for.inc143.1.i.do.end125.i_crit_edge:             ; preds = %for.inc143.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end125.i

do.body129.2.i:                                   ; preds = %for.inc143.1.i
  %127 = load i32, ptr @pwc_trace, align 4
  %and130.2.i = and i32 %127, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.2.i)
  %tobool131.not.2.i = icmp eq i32 %and130.2.i, 0
  br i1 %tobool131.not.2.i, label %do.body129.2.i.for.inc143.2.i_crit_edge, label %do.end135.2.i

do.body129.2.i.for.inc143.2.i_crit_edge:          ; preds = %do.body129.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc143.2.i

do.end135.2.i:                                    ; preds = %do.body129.2.i
  call void @__sanitizer_cov_trace_pc() #19
  %128 = ptrtoint ptr %arrayidx111.2.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx111.2.i, align 4
  %call139.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %129) #22
  br label %for.inc143.2.i

for.inc143.2.i:                                   ; preds = %do.end135.2.i, %do.body129.2.i.for.inc143.2.i_crit_edge
  %130 = load i32, ptr @pwc_trace, align 4
  %and147.i = and i32 %130, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.i)
  %tobool148.not.i = icmp eq i32 %and147.i, 0
  br i1 %tobool148.not.i, label %for.inc143.2.i.pwc_isoc_init.exit_crit_edge, label %do.end152.i

for.inc143.2.i.pwc_isoc_init.exit_crit_edge:      ; preds = %for.inc143.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_isoc_init.exit

do.end152.i:                                      ; preds = %for.inc143.2.i
  call void @__sanitizer_cov_trace_pc() #19
  %call154.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199) #22
  br label %pwc_isoc_init.exit

pwc_isoc_init.exit:                               ; preds = %do.end152.i, %for.inc143.2.i.pwc_isoc_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compression.i) #17
  br label %if.end10

if.then8:                                         ; preds = %do.end125.i, %do.end88.i, %if.then62.i, %if.end50.i.if.then8_crit_edge, %land.lhs.true.i.if.then8_crit_edge, %do.end.i, %if.end.i.if.then8_crit_edge
  %retval.0.i.ph = phi i32 [ %call112301.i, %do.end125.i ], [ -12, %do.end88.i ], [ -12, %if.then62.i ], [ -23, %do.end.i ], [ -28, %land.lhs.true.i.if.then8_crit_edge ], [ %call43.i, %if.end50.i.if.then8_crit_edge ], [ -5, %if.end.i.if.then8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compression.i) #17
  %call9 = call i32 @pwc_set_leds(ptr noundef %1, i32 noundef 0, i32 noundef 0) #17
  call void @pwc_camera_power(ptr noundef %1, i32 noundef 0) #17
  %queued_bufs_lock.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 4
  %call2.i22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #17
  %queued_bufs.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 3
  %131 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp.i.not13.i = icmp eq ptr %132, %queued_bufs.i
  br i1 %cmp.i.not13.i, label %if.then8.pwc_cleanup_queued_bufs.exit_crit_edge, label %if.then8.while.body.i_crit_edge

if.then8.while.body.i_crit_edge:                  ; preds = %if.then8
  br label %while.body.i

if.then8.pwc_cleanup_queued_bufs.exit_crit_edge:  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_cleanup_queued_bufs.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then8.while.body.i_crit_edge
  %133 = phi ptr [ %143, %list_del.exit.i.while.body.i_crit_edge ], [ %132, %if.then8.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %133, i32 -736
  %call.i.i.i23 = call zeroext i1 @__list_del_entry_valid(ptr noundef %133) #17
  br i1 %call.i.i.i23, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i.i, align 4
  %136 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %133, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %140 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 256 to ptr), ptr %133, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 3) #17
  %142 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp.i.not.i = icmp eq ptr %143, %queued_bufs.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.pwc_cleanup_queued_bufs.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

list_del.exit.i.pwc_cleanup_queued_bufs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_cleanup_queued_bufs.exit

pwc_cleanup_queued_bufs.exit:                     ; preds = %list_del.exit.i.pwc_cleanup_queued_bufs.exit_crit_edge, %if.then8.pwc_cleanup_queued_bufs.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i22) #17
  br label %if.end10

if.end10:                                         ; preds = %pwc_cleanup_queued_bufs.exit, %pwc_isoc_init.exit
  %retval.0.i27 = phi i32 [ %retval.0.i.ph, %pwc_cleanup_queued_bufs.exit ], [ 0, %pwc_isoc_init.exit ]
  call void @mutex_unlock(ptr noundef %v4l2_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i27, %if.end10 ], [ -19, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %v4l2_lock = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #17
  %udev = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 @pwc_set_leds(ptr noundef %1, i32 noundef 0, i32 noundef 0) #17
  tail call void @pwc_camera_power(ptr noundef %1, i32 noundef 0) #17
  tail call fastcc void @pwc_isoc_cleanup(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %queued_bufs_lock.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #17
  %queued_bufs.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp.i.not13.i = icmp eq ptr %5, %queued_bufs.i
  br i1 %cmp.i.not13.i, label %if.end.pwc_cleanup_queued_bufs.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.pwc_cleanup_queued_bufs.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_cleanup_queued_bufs.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.i.while.body.i_crit_edge ], [ %5, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #17
  %15 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %queued_bufs.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.pwc_cleanup_queued_bufs.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

list_del.exit.i.pwc_cleanup_queued_bufs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_cleanup_queued_bufs.exit

pwc_cleanup_queued_bufs.exit:                     ; preds = %list_del.exit.i.pwc_cleanup_queued_bufs.exit_crit_edge, %if.end.pwc_cleanup_queued_bufs.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #17
  %fill_buf = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 27
  %17 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fill_buf, align 4
  %tobool2.not = icmp eq ptr %18, null
  br i1 %tobool2.not, label %pwc_cleanup_queued_bufs.exit.if.end5_crit_edge, label %if.then3

pwc_cleanup_queued_bufs.exit.if.end5_crit_edge:   ; preds = %pwc_cleanup_queued_bufs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %pwc_cleanup_queued_bufs.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @vb2_buffer_done(ptr noundef nonnull %18, i32 noundef 6) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %pwc_cleanup_queued_bufs.exit.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %udev = getelementptr inbounds %struct.pwc_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #17
  br label %cleanup

do.body4:                                         ; preds = %entry
  %queued_bufs_lock = getelementptr inbounds %struct.pwc_device, ptr %3, i32 0, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #17
  %list = getelementptr inbounds %struct.pwc_frame_buf, ptr %vb, i32 0, i32 1
  %queued_bufs = getelementptr inbounds %struct.pwc_device, ptr %3, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.pwc_device, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %queued_bufs) #17
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_add_tail.exit_crit_edge

do.body4.list_add_tail.exit_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queued_bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.pwc_frame_buf, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body4.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call7) #17
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_get_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_decompress(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pwc_isoc_cleanup(ptr nocapture noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pwc_trace, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201) #22
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %arrayidx.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 26, i32 0
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %do.end2.for.inc.i_crit_edge, label %do.body.i

do.end2.for.inc.i_crit_edge:                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

do.body.i:                                        ; preds = %do.end2
  %3 = load i32, ptr @pwc_trace, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef nonnull %2) #22
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end7.i, %do.end2.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 26, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %7, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %do.body.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1.i

do.body.1.i:                                      ; preds = %for.inc.i
  %8 = load i32, ptr @pwc_trace, align 4
  %and.1.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool1.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool1.not.1.i, label %do.body.1.i.do.end7.1.i_crit_edge, label %do.end.1.i

do.body.1.i.do.end7.1.i_crit_edge:                ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.1.i

do.end.1.i:                                       ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef nonnull %7) #22
  br label %do.end7.1.i

do.end7.1.i:                                      ; preds = %do.end.1.i, %do.body.1.i.do.end7.1.i_crit_edge
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #17
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end7.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 26, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %12, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.pwc_iso_stop.exit_crit_edge, label %do.body.2.i

for.inc.1.i.pwc_iso_stop.exit_crit_edge:          ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_iso_stop.exit

do.body.2.i:                                      ; preds = %for.inc.1.i
  %13 = load i32, ptr @pwc_trace, align 4
  %and.2.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool1.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool1.not.2.i, label %do.body.2.i.do.end7.2.i_crit_edge, label %do.end.2.i

do.body.2.i.do.end7.2.i_crit_edge:                ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.2.i

do.end.2.i:                                       ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef nonnull %12) #22
  br label %do.end7.2.i

do.end7.2.i:                                      ; preds = %do.end.2.i, %do.body.2.i.do.end7.2.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #17
  br label %pwc_iso_stop.exit

pwc_iso_stop.exit:                                ; preds = %do.end7.2.i, %for.inc.1.i.pwc_iso_stop.exit_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i17 = icmp eq ptr %17, null
  br i1 %tobool.not.i17, label %pwc_iso_stop.exit.if.end12.i_crit_edge, label %do.body.i20

pwc_iso_stop.exit.if.end12.i_crit_edge:           ; preds = %pwc_iso_stop.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

do.body.i20:                                      ; preds = %pwc_iso_stop.exit
  %18 = load i32, ptr @pwc_trace, align 4
  %and.i18 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool1.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool1.not.i19, label %do.body.i20.do.end5.i_crit_edge, label %do.end.i22

do.body.i20.do.end5.i_crit_edge:                  ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5.i

do.end.i22:                                       ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #19
  %call.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #22
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i22, %do.body.i20.do.end5.i_crit_edge
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_buffer.i, align 4
  %tobool6.not.i = icmp eq ptr %20, null
  br i1 %tobool6.not.i, label %do.end5.i.if.end9.i_crit_edge, label %if.then7.i

do.end5.i.if.end9.i_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.then7.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 19
  %23 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_buffer_length.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 15
  %25 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_dma.i, align 4
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 12
  %27 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i, align 8
  %sysdev.i.i = getelementptr inbounds %struct.usb_bus, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %sysdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sysdev.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %30, i32 noundef %26, i32 noundef %24, i32 noundef 2, i32 noundef 0) #17
  tail call void @kfree(ptr noundef nonnull %20) #17
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %do.end5.i.if.end9.i_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %17) #17
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end9.i, %pwc_iso_stop.exit.if.end12.i_crit_edge
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i24 = icmp eq ptr %33, null
  br i1 %tobool.not.1.i24, label %if.end12.i.if.end12.1.i_crit_edge, label %do.body.1.i27

if.end12.i.if.end12.1.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.1.i

do.body.1.i27:                                    ; preds = %if.end12.i
  %34 = load i32, ptr @pwc_trace, align 4
  %and.1.i25 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i25)
  %tobool1.not.1.i26 = icmp eq i32 %and.1.i25, 0
  br i1 %tobool1.not.1.i26, label %do.body.1.i27.do.end5.1.i_crit_edge, label %do.end.1.i29

do.body.1.i27.do.end5.1.i_crit_edge:              ; preds = %do.body.1.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5.1.i

do.end.1.i29:                                     ; preds = %do.body.1.i27
  call void @__sanitizer_cov_trace_pc() #19
  %call.1.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #22
  br label %do.end5.1.i

do.end5.1.i:                                      ; preds = %do.end.1.i29, %do.body.1.i27.do.end5.1.i_crit_edge
  %transfer_buffer.1.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 14
  %35 = ptrtoint ptr %transfer_buffer.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_buffer.1.i, align 4
  %tobool6.not.1.i = icmp eq ptr %36, null
  br i1 %tobool6.not.1.i, label %do.end5.1.i.if.end9.1.i_crit_edge, label %if.then7.1.i

do.end5.1.i.if.end9.1.i_crit_edge:                ; preds = %do.end5.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.1.i

if.then7.1.i:                                     ; preds = %do.end5.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.1.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 8
  %37 = ptrtoint ptr %dev.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.1.i, align 4
  %transfer_buffer_length.1.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %transfer_buffer_length.1.i, align 4
  %transfer_dma.1.i = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 15
  %41 = ptrtoint ptr %transfer_dma.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %transfer_dma.1.i, align 4
  %bus.i.1.i = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 12
  %43 = ptrtoint ptr %bus.i.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.1.i, align 8
  %sysdev.i.1.i = getelementptr inbounds %struct.usb_bus, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %sysdev.i.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sysdev.i.1.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %42, i32 noundef %40, i32 noundef 2, i32 noundef 0) #17
  tail call void @kfree(ptr noundef nonnull %36) #17
  br label %if.end9.1.i

if.end9.1.i:                                      ; preds = %if.then7.1.i, %do.end5.1.i.if.end9.1.i_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %33) #17
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %if.end12.1.i

if.end12.1.i:                                     ; preds = %if.end9.1.i, %if.end12.i.if.end12.1.i_crit_edge
  %48 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i31 = icmp eq ptr %49, null
  br i1 %tobool.not.2.i31, label %if.end12.1.i.pwc_iso_free.exit_crit_edge, label %do.body.2.i34

if.end12.1.i.pwc_iso_free.exit_crit_edge:         ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_iso_free.exit

do.body.2.i34:                                    ; preds = %if.end12.1.i
  %50 = load i32, ptr @pwc_trace, align 4
  %and.2.i32 = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i32)
  %tobool1.not.2.i33 = icmp eq i32 %and.2.i32, 0
  br i1 %tobool1.not.2.i33, label %do.body.2.i34.do.end5.2.i_crit_edge, label %do.end.2.i36

do.body.2.i34.do.end5.2.i_crit_edge:              ; preds = %do.body.2.i34
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5.2.i

do.end.2.i36:                                     ; preds = %do.body.2.i34
  call void @__sanitizer_cov_trace_pc() #19
  %call.2.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #22
  br label %do.end5.2.i

do.end5.2.i:                                      ; preds = %do.end.2.i36, %do.body.2.i34.do.end5.2.i_crit_edge
  %transfer_buffer.2.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 14
  %51 = ptrtoint ptr %transfer_buffer.2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transfer_buffer.2.i, align 4
  %tobool6.not.2.i = icmp eq ptr %52, null
  br i1 %tobool6.not.2.i, label %do.end5.2.i.if.end9.2.i_crit_edge, label %if.then7.2.i

do.end5.2.i.if.end9.2.i_crit_edge:                ; preds = %do.end5.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.2.i

if.then7.2.i:                                     ; preds = %do.end5.2.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.2.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 8
  %53 = ptrtoint ptr %dev.2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.2.i, align 4
  %transfer_buffer_length.2.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 19
  %55 = ptrtoint ptr %transfer_buffer_length.2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %transfer_buffer_length.2.i, align 4
  %transfer_dma.2.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 15
  %57 = ptrtoint ptr %transfer_dma.2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %transfer_dma.2.i, align 4
  %bus.i.2.i = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 12
  %59 = ptrtoint ptr %bus.i.2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i.2.i, align 8
  %sysdev.i.2.i = getelementptr inbounds %struct.usb_bus, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %sysdev.i.2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sysdev.i.2.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %62, i32 noundef %58, i32 noundef %56, i32 noundef 2, i32 noundef 0) #17
  tail call void @kfree(ptr noundef nonnull %52) #17
  br label %if.end9.2.i

if.end9.2.i:                                      ; preds = %if.then7.2.i, %do.end5.2.i.if.end9.2.i_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %49) #17
  %63 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx.2.i, align 4
  br label %pwc_iso_free.exit

pwc_iso_free.exit:                                ; preds = %if.end9.2.i, %if.end12.1.i.pwc_iso_free.exit_crit_edge
  %udev = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %64 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev, align 4
  %call3 = tail call i32 @usb_set_interface(ptr noundef %65, i32 noundef 0, i32 noundef 0) #17
  %66 = load i32, ptr @pwc_trace, align 4
  %and5 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %pwc_iso_free.exit.do.end13_crit_edge, label %do.end9

pwc_iso_free.exit.do.end13_crit_edge:             ; preds = %pwc_iso_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13

do.end9:                                          ; preds = %pwc_iso_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204) #22
  br label %do.end13

do.end13:                                         ; preds = %do.end9, %pwc_iso_free.exit.do.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwc_isoc_handler(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysdev, align 4
  tail call fastcc void @trace_pwc_handler_enter(ptr noundef %urb, ptr noundef %1)
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %9, label %if.end12 [
    i32 -2, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge238
    i32 -108, label %entry.do.body_crit_edge239
  ]

entry.do.body_crit_edge239:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge238:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge238, %entry.do.body_crit_edge239
  %11 = load i32, ptr @pwc_trace, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %cmp9 = icmp eq i32 %9, -2
  %cond = select i1 %cmp9, ptr @.str.214, ptr @.str.215
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef %urb, ptr noundef nonnull %cond) #22
  br label %cleanup

if.end12:                                         ; preds = %entry
  %fill_buf = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fill_buf, align 4
  %cmp13 = icmp eq ptr %13, null
  br i1 %cmp13, label %if.then14, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  %queued_bufs_lock.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #17
  %queued_bufs.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %queued_bufs.i
  br i1 %cmp.i.not.i, label %if.then14.pwc_get_next_fill_buf.exit_crit_edge, label %if.end.i

if.then14.pwc_get_next_fill_buf.exit_crit_edge:   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_get_next_fill_buf.exit

if.end.i:                                         ; preds = %if.then14
  %add.ptr.i = getelementptr i8, ptr %15, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %pwc_get_next_fill_buf.exit

pwc_get_next_fill_buf.exit:                       ; preds = %list_del.exit.i, %if.then14.pwc_get_next_fill_buf.exit_crit_edge
  %buf.0.i = phi ptr [ null, %if.then14.pwc_get_next_fill_buf.exit_crit_edge ], [ %add.ptr.i, %list_del.exit.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #17
  %24 = ptrtoint ptr %fill_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.0.i, ptr %fill_buf, align 4
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %status, align 4
  br label %if.end17

if.end17:                                         ; preds = %pwc_get_next_fill_buf.exit, %if.end12.if.end17_crit_edge
  %26 = phi i32 [ %.pr, %pwc_get_next_fill_buf.exit ], [ %9, %if.end12.if.end17_crit_edge ]
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.279)
  switch i32 %26, label %if.end17.do.end29_crit_edge [
    i32 0, label %if.end47
    i32 -63, label %sw.bb
    i32 -32, label %sw.bb22
    i32 -75, label %sw.bb23
    i32 -71, label %sw.bb24
    i32 -84, label %sw.bb25
    i32 -62, label %sw.bb26
  ]

if.end17.do.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end29

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end29

sw.bb22:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end29

sw.bb23:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end29

sw.bb24:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end29

sw.bb25:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end29

sw.bb26:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end29

do.end29:                                         ; preds = %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb, %if.end17.do.end29_crit_edge
  %errmsg.0 = phi ptr [ @.str.222, %sw.bb26 ], [ @.str.221, %sw.bb25 ], [ @.str.220, %sw.bb24 ], [ @.str.219, %sw.bb23 ], [ @.str.218, %sw.bb22 ], [ @.str.217, %sw.bb ], [ @.str.216, %if.end17.do.end29_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, i32 noundef %26, ptr noundef nonnull %errmsg.0) #22
  %visoc_errors = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %visoc_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %visoc_errors, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %visoc_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc)
  %cmp33 = icmp sgt i32 %inc, 20
  br i1 %cmp33, label %do.end37, label %do.end29.if.end46_crit_edge

do.end29.if.end46_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

do.end37:                                         ; preds = %do.end29
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227) #22
  %30 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fill_buf, align 4
  %tobool41.not = icmp eq ptr %31, null
  br i1 %tobool41.not, label %do.end37.if.end46_crit_edge, label %if.then42

do.end37.if.end46_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then42:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @vb2_buffer_done(ptr noundef nonnull %31, i32 noundef 6) #17
  %32 = ptrtoint ptr %fill_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %fill_buf, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %do.end37.if.end46_crit_edge, %do.end29.if.end46_crit_edge
  %vsync = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 21
  %33 = ptrtoint ptr %vsync to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %vsync, align 4
  br label %handler_end

if.end47:                                         ; preds = %if.end17
  %visoc_errors48 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %visoc_errors48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %visoc_errors48, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %35 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %transfer_dma, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %7, i32 noundef %36, i32 noundef %38, i32 noundef 2) #17
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %39 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp49234 = icmp sgt i32 %40, 0
  br i1 %cmp49234, label %for.body.lr.ph, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end47
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %vsync64 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 21
  %frame_total_size = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 31
  %vlast_packet_size = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 18
  %type.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 8
  %vmirror84.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 22
  %button_dev.i177.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 37
  %drop_frames.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 32
  %vframe_count.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 16
  %queued_bufs_lock.i216 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 4
  %queued_bufs.i218 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0235 = phi i32 [ 0, %for.body.lr.ph ], [ %inc121, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0235
  %status50 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0235, i32 3
  %41 = ptrtoint ptr %status50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status50, align 4
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0235, i32 2
  %43 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %actual_length, align 4
  %45 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transfer_buffer, align 4
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp55.not = icmp eq i32 %42, 0
  br i1 %cmp55.not, label %if.end62, label %do.end59

do.end59:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %i.0235, i32 noundef %42) #22
  br label %for.inc

if.end62:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp63 = icmp sgt i32 %44, 0
  br i1 %cmp63, label %land.lhs.true, label %if.end62.if.end95_crit_edge

if.end62.if.end95_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end62
  %49 = ptrtoint ptr %vsync64 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %vsync64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool65.not = icmp eq i8 %50, 0
  br i1 %tobool65.not, label %land.lhs.true.if.end95_crit_edge, label %if.then66

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

if.then66:                                        ; preds = %land.lhs.true
  %51 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fill_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp70 = icmp eq i8 %50, 1
  br i1 %cmp70, label %if.then72, label %if.then66.if.end77_crit_edge

if.then66.if.end77_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i64 @ktime_get() #17
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %call.i, ptr %timestamp, align 8
  %54 = ptrtoint ptr %vsync64 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %vsync64, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.then66.if.end77_crit_edge
  %filled = getelementptr inbounds %struct.pwc_frame_buf, ptr %52, i32 0, i32 3
  %55 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %filled, align 4
  %add = add i32 %56, %44
  %57 = ptrtoint ptr %frame_total_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %frame_total_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %58)
  %cmp78 = icmp sgt i32 %add, %58
  br i1 %cmp78, label %do.end83, label %if.else

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, i32 noundef %add, i32 noundef %58) #22
  %59 = ptrtoint ptr %vsync64 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %vsync64, align 4
  br label %if.end95

if.else:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  %data = getelementptr inbounds %struct.pwc_frame_buf, ptr %52, i32 0, i32 2
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 8
  %add.ptr91 = getelementptr i8, ptr %61, i32 %56
  %62 = call ptr @memcpy(ptr %add.ptr91, ptr %add.ptr, i32 %44)
  %63 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %filled, align 4
  %add93 = add i32 %64, %44
  store i32 %add93, ptr %filled, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.else, %do.end83, %land.lhs.true.if.end95_crit_edge, %if.end62.if.end95_crit_edge
  %65 = ptrtoint ptr %vlast_packet_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vlast_packet_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %66)
  %cmp96 = icmp slt i32 %44, %66
  br i1 %cmp96, label %if.then98, label %if.end95.if.end119_crit_edge

if.end95.if.end119_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

if.then98:                                        ; preds = %if.end95
  %67 = ptrtoint ptr %vsync64 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %vsync64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp101 = icmp eq i8 %68, 2
  br i1 %cmp101, label %if.then103, label %if.then98.if.end104_crit_edge

if.then98.if.end104_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.then103:                                       ; preds = %if.then98
  %69 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fill_buf, align 4
  %71 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type.i, align 8
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %72, label %if.then103.if.end100.ithread-pre-split_crit_edge [
    i32 730, label %if.then.i
    i32 740, label %if.then103.if.then79.i_crit_edge
    i32 720, label %if.then103.if.then79.i_crit_edge240
  ]

if.then103.if.then79.i_crit_edge240:              ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then79.i

if.then103.if.then79.i_crit_edge:                 ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then79.i

if.then103.if.end100.ithread-pre-split_crit_edge: ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end100.ithread-pre-split

if.then.i:                                        ; preds = %if.then103
  %data.i = getelementptr inbounds %struct.pwc_frame_buf, ptr %70, i32 0, i32 2
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 8
  %arrayidx.i = getelementptr i8, ptr %75, i32 1
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp1.i = icmp eq i8 %77, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.then.i.if.end12.i_crit_edge

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %75, align 1
  %80 = and i8 %79, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i = icmp eq i8 %80, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %do.body.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %81 = load i32, ptr @pwc_trace, align 4
  %and6.i = and i32 %81, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end11.i_crit_edge, label %do.end.i

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241) #22
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %do.body.i.do.end11.i_crit_edge
  %82 = ptrtoint ptr %drop_frames.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %drop_frames.i, align 8
  %add.i = add i32 %83, 2
  store i32 %add.i, ptr %drop_frames.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end11.i, %land.lhs.true.i.if.end12.i_crit_edge, %if.then.i.if.end12.i_crit_edge
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %75, align 1
  %86 = ptrtoint ptr %vmirror84.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %vmirror84.i, align 1
  %xor169.i = xor i8 %87, %85
  %88 = and i8 %xor169.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool17.not.i = icmp eq i8 %88, 0
  br i1 %tobool17.not.i, label %if.end12.i.if.end22.i_crit_edge, label %if.then18.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end12.i
  %89 = and i8 %85, 1
  %90 = load i32, ptr @pwc_trace, align 4
  %and6.i.i = and i32 %90, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then18.i.if.end15.i.i_crit_edge, label %if.end15.sink.split.i.i

if.then18.i.if.end15.i.i_crit_edge:               ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i.i

if.end15.sink.split.i.i:                          ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i = icmp eq i8 %89, 0
  %.str.255..str.252.i.i = select i1 %tobool.not.i.i, ptr @.str.255, ptr @.str.252
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.255..str.252.i.i) #22
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end15.sink.split.i.i, %if.then18.i.if.end15.i.i_crit_edge
  %91 = ptrtoint ptr %button_dev.i177.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %button_dev.i177.i, align 8
  %tobool16.not.i.i = icmp eq ptr %92, null
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end22.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end22.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %93 = zext i8 %89 to i32
  tail call void @input_event(ptr noundef nonnull %92, i32 noundef 1, i32 noundef 212, i32 noundef %93) #17
  %94 = ptrtoint ptr %button_dev.i177.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %button_dev.i177.i, align 8
  tail call void @input_event(ptr noundef %95, i32 noundef 0, i32 noundef 0, i32 noundef 0) #17
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i.i, %if.end15.i.i.if.end22.i_crit_edge, %if.end12.i.if.end22.i_crit_edge
  %96 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %75, align 1
  %98 = ptrtoint ptr %vmirror84.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %vmirror84.i, align 1
  %xor27170.i = xor i8 %99, %97
  %100 = and i8 %xor27170.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool29.not.i = icmp eq i8 %100, 0
  br i1 %tobool29.not.i, label %if.end22.i.if.end61.i_crit_edge, label %if.then30.i

if.end22.i.if.end61.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61.i

if.then30.i:                                      ; preds = %if.end22.i
  %101 = load i32, ptr @pwc_trace, align 4
  %and49.i = and i32 %101, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.then30.i.if.end61.i_crit_edge, label %if.end61.sink.split.i

if.then30.i.if.end61.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61.i

if.end61.sink.split.i:                            ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #19
  %102 = and i8 %97, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool34.not.i = icmp eq i8 %102, 0
  %.str.247..str.244.i = select i1 %tobool34.not.i, ptr @.str.247, ptr @.str.244
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.247..str.244.i) #22
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end61.sink.split.i, %if.then30.i.if.end61.i_crit_edge, %if.end22.i.if.end61.i_crit_edge
  %103 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %75, align 1
  %105 = and i8 %104, 3
  %106 = ptrtoint ptr %vmirror84.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %vmirror84.i, align 1
  %filled.i = getelementptr inbounds %struct.pwc_frame_buf, ptr %70, i32 0, i32 3
  %107 = ptrtoint ptr %filled.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %filled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %108)
  %cmp67.i = icmp eq i32 %108, 4
  br i1 %cmp67.i, label %if.then69.i, label %if.end61.i.if.end100.ithread-pre-split_crit_edge

if.end61.i.if.end100.ithread-pre-split_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end100.ithread-pre-split

if.then69.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #19
  %109 = ptrtoint ptr %drop_frames.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %drop_frames.i, align 8
  %inc.i = add i32 %110, 1
  store i32 %inc.i, ptr %drop_frames.i, align 8
  br label %if.end100.i

if.then79.i:                                      ; preds = %if.then103.if.then79.i_crit_edge, %if.then103.if.then79.i_crit_edge240
  %data81.i = getelementptr inbounds %struct.pwc_frame_buf, ptr %70, i32 0, i32 2
  %111 = ptrtoint ptr %data81.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data81.i, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 1
  %115 = ptrtoint ptr %vmirror84.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %vmirror84.i, align 1
  %xor86168.i = xor i8 %116, %114
  %117 = and i8 %xor86168.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool88.not.i = icmp eq i8 %117, 0
  br i1 %tobool88.not.i, label %if.then79.i.if.end93.i_crit_edge, label %if.then89.i

if.then79.i.if.end93.i_crit_edge:                 ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93.i

if.then89.i:                                      ; preds = %if.then79.i
  %118 = and i8 %114, 1
  %119 = load i32, ptr @pwc_trace, align 4
  %and6.i171.i = and i32 %119, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i171.i)
  %tobool7.not.i172.i = icmp eq i32 %and6.i171.i, 0
  br i1 %tobool7.not.i172.i, label %if.then89.i.if.end15.i179.i_crit_edge, label %if.end15.sink.split.i176.i

if.then89.i.if.end15.i179.i_crit_edge:            ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i179.i

if.end15.sink.split.i176.i:                       ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i173.i = icmp eq i8 %118, 0
  %.str.255..str.252.i174.i = select i1 %tobool.not.i173.i, ptr @.str.255, ptr @.str.252
  %call12.i175.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.255..str.252.i174.i) #22
  br label %if.end15.i179.i

if.end15.i179.i:                                  ; preds = %if.end15.sink.split.i176.i, %if.then89.i.if.end15.i179.i_crit_edge
  %120 = ptrtoint ptr %button_dev.i177.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %button_dev.i177.i, align 8
  %tobool16.not.i178.i = icmp eq ptr %121, null
  br i1 %tobool16.not.i178.i, label %if.end15.i179.i.if.end93.i_crit_edge, label %if.then17.i182.i

if.end15.i179.i.if.end93.i_crit_edge:             ; preds = %if.end15.i179.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93.i

if.then17.i182.i:                                 ; preds = %if.end15.i179.i
  call void @__sanitizer_cov_trace_pc() #19
  %122 = zext i8 %118 to i32
  tail call void @input_event(ptr noundef nonnull %121, i32 noundef 1, i32 noundef 212, i32 noundef %122) #17
  %123 = ptrtoint ptr %button_dev.i177.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %button_dev.i177.i, align 8
  tail call void @input_event(ptr noundef %124, i32 noundef 0, i32 noundef 0, i32 noundef 0) #17
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then17.i182.i, %if.end15.i179.i.if.end93.i_crit_edge, %if.then79.i.if.end93.i_crit_edge
  %125 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %112, align 1
  %127 = and i8 %126, 3
  %128 = ptrtoint ptr %vmirror84.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %vmirror84.i, align 1
  br label %if.end100.ithread-pre-split

if.end100.ithread-pre-split:                      ; preds = %if.end93.i, %if.end61.i.if.end100.ithread-pre-split_crit_edge, %if.then103.if.end100.ithread-pre-split_crit_edge
  %129 = ptrtoint ptr %drop_frames.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr237 = load i32, ptr %drop_frames.i, align 8
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.end100.ithread-pre-split, %if.then69.i
  %130 = phi i32 [ %.pr237, %if.end100.ithread-pre-split ], [ %inc.i, %if.then69.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp102.i = icmp sgt i32 %130, 0
  br i1 %cmp102.i, label %if.then104.i, label %if.else106.i

if.then104.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i = add nsw i32 %130, -1
  %131 = ptrtoint ptr %drop_frames.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %dec.i, ptr %drop_frames.i, align 8
  br label %pwc_frame_complete.exit

if.else106.i:                                     ; preds = %if.end100.i
  %filled107.i = getelementptr inbounds %struct.pwc_frame_buf, ptr %70, i32 0, i32 3
  %132 = ptrtoint ptr %filled107.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %filled107.i, align 4
  %134 = ptrtoint ptr %frame_total_size to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %frame_total_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp108.i = icmp slt i32 %133, %135
  br i1 %cmp108.i, label %do.body111.i, label %if.else124.i

do.body111.i:                                     ; preds = %if.else106.i
  %136 = load i32, ptr @pwc_trace, align 4
  %and112.i = and i32 %136, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %do.body111.i.pwc_frame_complete.exit_crit_edge, label %do.end117.i

do.body111.i.pwc_frame_complete.exit_crit_edge:   ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %pwc_frame_complete.exit

do.end117.i:                                      ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #19
  %call120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, i32 noundef %133) #22
  br label %pwc_frame_complete.exit

if.else124.i:                                     ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #19
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %70, i32 0, i32 2
  %137 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %field.i, align 4
  %138 = ptrtoint ptr %vframe_count.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %vframe_count.i, align 8
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %70, i32 0, i32 4
  %140 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %sequence.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %70, i32 noundef 5) #17
  %141 = ptrtoint ptr %fill_buf to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %fill_buf, align 4
  %142 = ptrtoint ptr %vsync64 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %vsync64, align 4
  br label %pwc_frame_complete.exit

pwc_frame_complete.exit:                          ; preds = %if.else124.i, %do.end117.i, %do.body111.i.pwc_frame_complete.exit_crit_edge, %if.then104.i
  %143 = ptrtoint ptr %vframe_count.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %vframe_count.i, align 8
  %inc131.i = add i32 %144, 1
  store i32 %inc131.i, ptr %vframe_count.i, align 8
  br label %if.end104

if.end104:                                        ; preds = %pwc_frame_complete.exit, %if.then98.if.end104_crit_edge
  %145 = ptrtoint ptr %fill_buf to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fill_buf, align 4
  %cmp106 = icmp eq ptr %146, null
  br i1 %cmp106, label %if.then108, label %if.end104.if.then114_crit_edge

if.end104.if.then114_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then114

if.then108:                                       ; preds = %if.end104
  %call2.i217 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i216) #17
  %147 = ptrtoint ptr %queued_bufs.i218 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile ptr, ptr %queued_bufs.i218, align 4
  %cmp.i.not.i219 = icmp eq ptr %148, %queued_bufs.i218
  br i1 %cmp.i.not.i219, label %if.end111.thread231, label %if.end.i222

if.end111.thread231:                              ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i216, i32 noundef %call2.i217) #17
  %149 = ptrtoint ptr %fill_buf to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %fill_buf, align 4
  br label %if.end119

if.end.i222:                                      ; preds = %if.then108
  %add.ptr.i220 = getelementptr i8, ptr %148, i32 -736
  %call.i.i.i221 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %148) #17
  br i1 %call.i.i.i221, label %if.end.i.i.i225, label %if.end.i222.if.end111_crit_edge

if.end.i222.if.end111_crit_edge:                  ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

if.end.i.i.i225:                                  ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i223 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %150 = ptrtoint ptr %prev.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev.i.i.i223, align 4
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %148, align 4
  %prev1.i.i.i.i224 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %prev1.i.i.i.i224 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev1.i.i.i.i224, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %153, ptr %151, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end.i.i.i225, %if.end.i222.if.end111_crit_edge
  %156 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr inttoptr (i32 256 to ptr), ptr %148, align 4
  %prev.i.i226 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %157 = ptrtoint ptr %prev.i.i226 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i226, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i216, i32 noundef %call2.i217) #17
  %158 = ptrtoint ptr %fill_buf to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %add.ptr.i220, ptr %fill_buf, align 4
  %tobool113.not = icmp eq ptr %add.ptr.i220, null
  br i1 %tobool113.not, label %if.end111.if.end119_crit_edge, label %if.end111.if.then114_crit_edge

if.end111.if.then114_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then114

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

if.then114:                                       ; preds = %if.end111.if.then114_crit_edge, %if.end104.if.then114_crit_edge
  %159 = phi ptr [ %add.ptr.i220, %if.end111.if.then114_crit_edge ], [ %146, %if.end104.if.then114_crit_edge ]
  %filled116 = getelementptr inbounds %struct.pwc_frame_buf, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %filled116 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %filled116, align 4
  %161 = ptrtoint ptr %vsync64 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %vsync64, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end111.if.end119_crit_edge, %if.end111.thread231, %if.end95.if.end119_crit_edge
  %162 = ptrtoint ptr %vlast_packet_size to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %44, ptr %vlast_packet_size, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end119, %do.end59
  %inc121 = add nuw nsw i32 %i.0235, 1
  %163 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %number_of_packets, align 4
  %cmp49 = icmp slt i32 %inc121, %164
  br i1 %cmp49, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end47.for.end_crit_edge
  %165 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %transfer_dma, align 4
  %167 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %166, i32 noundef %168, i32 noundef 2) #17
  br label %handler_end

handler_end:                                      ; preds = %for.end, %if.end46
  tail call fastcc void @trace_pwc_handler_exit(ptr noundef %urb, ptr noundef %1)
  %call124 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125.not = icmp eq i32 %call124, 0
  br i1 %cmp125.not, label %handler_end.cleanup_crit_edge, label %do.end130

handler_end.cleanup_crit_edge:                    ; preds = %handler_end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end130:                                        ; preds = %handler_end
  call void @__sanitizer_cov_trace_pc() #19
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, i32 noundef %call124) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end130, %handler_end.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pwc_handler_enter(ptr noundef %urb, ptr noundef %pdev) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pwc_handler_enter, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_pwc_handler_enter, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !504

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !501

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.240, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !491) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !505
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pwc_handler_enter, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %urb, ptr noundef %pdev) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !506
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !506
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !501

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.240, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !491) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !507
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pwc_handler_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pwc_handler_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pwc_handler_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.238, i32 noundef 38, ptr noundef nonnull @.str.239) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !508
  %38 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pwc_handler_exit(ptr noundef %urb, ptr noundef %pdev) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pwc_handler_exit, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_pwc_handler_exit, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !504

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !501

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.240, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !491) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !509
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pwc_handler_exit, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %urb, ptr noundef %pdev) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !510
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !510
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !501

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.240, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !491) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !507
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pwc_handler_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pwc_handler_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_pwc_handler_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.238, i32 noundef 60, ptr noundef nonnull @.str.239) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !508
  %38 = tail call i32 @llvm.read_register.i32(metadata !491) #17
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 238)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 238)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !107, !109, !110, !111, !113, !115, !116, !117, !119, !121, !122, !123, !125, !127, !128, !129, !131, !133, !134, !135, !137, !139, !140, !141, !143, !145, !146, !147, !149, !151, !152, !153, !155, !157, !158, !159, !161, !163, !164, !165, !167, !169, !170, !171, !173, !174, !175, !177, !179, !180, !181, !183, !185, !186, !187, !189, !191, !192, !193, !195, !197, !198, !199, !201, !202, !203, !205, !207, !208, !209, !211, !213, !214, !215, !217, !219, !220, !221, !223, !225, !226, !227, !229, !231, !232, !233, !235, !237, !238, !239, !241, !242, !243, !245, !247, !248, !249, !251, !253, !254, !255, !257, !259, !260, !261, !263, !265, !266, !267, !269, !271, !272, !273, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !331, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !367, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !387, !388, !389, !390, !391, !392, !394, !396, !398, !400, !402, !404, !406, !408, !409, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !427, !428, !429, !430, !432, !433, !435, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !455, !457, !458, !459, !460, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489}
!llvm.named.register.sp = !{!491}
!llvm.module.flags = !{!492, !493, !494, !495, !496, !497, !498, !499}
!llvm.ident = !{!500}

!0 = !{ptr @__tracepoint_pwc_handler_enter, !1, !"__tracepoint_pwc_handler_enter", i1 false, i1 false}
!1 = !{!"../include/trace/events/pwc.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_pwc_handler_enter, !1, !"__tracepoint_ptr_pwc_handler_enter", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_pwc_handler_enter, !1, !"__SCK__tp_func_pwc_handler_enter", i1 false, i1 false}
!4 = !{ptr @__tracepoint_pwc_handler_exit, !5, !"__tracepoint_pwc_handler_exit", i1 false, i1 false}
!5 = !{!"../include/trace/events/pwc.h", i32 40, i32 1}
!6 = !{ptr @__tracepoint_ptr_pwc_handler_exit, !5, !"__tracepoint_ptr_pwc_handler_exit", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_pwc_handler_exit, !5, !"__SCK__tp_func_pwc_handler_exit", i1 false, i1 false}
!8 = !{ptr @event_class_pwc_handler_enter, !1, !"event_class_pwc_handler_enter", i1 false, i1 false}
!9 = !{ptr @event_pwc_handler_enter, !1, !"event_pwc_handler_enter", i1 false, i1 false}
!10 = !{ptr @__event_pwc_handler_enter, !1, !"__event_pwc_handler_enter", i1 false, i1 false}
!11 = !{ptr @event_class_pwc_handler_exit, !5, !"event_class_pwc_handler_exit", i1 false, i1 false}
!12 = !{ptr @event_pwc_handler_exit, !5, !"event_pwc_handler_exit", i1 false, i1 false}
!13 = !{ptr @__event_pwc_handler_exit, !5, !"__event_pwc_handler_exit", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_pwc_handler_enter, !1, !"__bpf_trace_tp_map_pwc_handler_enter", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_pwc_handler_exit, !5, !"__bpf_trace_tp_map_pwc_handler_exit", i1 false, i1 false}
!16 = !{ptr @pwc_trace, !17, !"pwc_trace", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 132, i32 6}
!18 = !{ptr @__param_trace, !19, !"__param_trace", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1206, i32 1}
!20 = !{ptr @__UNIQUE_ID_tracetype324, !19, !"__UNIQUE_ID_tracetype324", i1 false, i1 false}
!21 = !{ptr @__param_power_save, !22, !"__param_power_save", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1208, i32 1}
!23 = !{ptr @__UNIQUE_ID_power_savetype325, !22, !"__UNIQUE_ID_power_savetype325", i1 false, i1 false}
!24 = !{ptr @__param_leds, !25, !"__param_leds", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1209, i32 1}
!26 = !{ptr @__UNIQUE_ID_ledstype326, !25, !"__UNIQUE_ID_ledstype326", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_trace327, !28, !"__UNIQUE_ID_trace327", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1212, i32 1}
!29 = !{ptr @__UNIQUE_ID_power_save328, !30, !"__UNIQUE_ID_power_save328", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1214, i32 1}
!31 = !{ptr @__UNIQUE_ID_leds329, !32, !"__UNIQUE_ID_leds329", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1215, i32 1}
!33 = !{ptr @__UNIQUE_ID_description330, !34, !"__UNIQUE_ID_description330", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1217, i32 1}
!35 = !{ptr @__UNIQUE_ID_author331, !36, !"__UNIQUE_ID_author331", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1218, i32 1}
!37 = !{ptr @__UNIQUE_ID_file332, !38, !"__UNIQUE_ID_file332", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1219, i32 1}
!39 = !{ptr @__UNIQUE_ID_license333, !38, !"__UNIQUE_ID_license333", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_alias334, !41, !"__UNIQUE_ID_alias334", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1220, i32 1}
!42 = !{ptr @__UNIQUE_ID_version335, !43, !"__UNIQUE_ID_version335", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1221, i32 1}
!44 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__modver_attr, !43, !"__modver_attr", i1 false, i1 false}
!48 = !{ptr @__initcall__kmod_pwc__336_1223_pwc_driver_init6, !49, !"__initcall__kmod_pwc__336_1223_pwc_driver_init6", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1223, i32 1}
!50 = !{ptr @__exitcall_pwc_driver_exit, !49, !"__exitcall_pwc_driver_exit", i1 false, i1 false}
!51 = !{ptr @__tpstrtab_pwc_handler_enter, !1, !"__tpstrtab_pwc_handler_enter", i1 false, i1 false}
!52 = !{ptr @__tpstrtab_pwc_handler_exit, !5, !"__tpstrtab_pwc_handler_exit", i1 false, i1 false}
!53 = !{ptr @str__pwc__trace_system_name, !54, !"str__pwc__trace_system_name", i1 false, i1 false}
!54 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!55 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @trace_event_fields_pwc_handler_enter, !1, !"trace_event_fields_pwc_handler_enter", i1 false, i1 false}
!68 = !{ptr @trace_event_type_funcs_pwc_handler_enter, !1, !"trace_event_type_funcs_pwc_handler_enter", i1 false, i1 false}
!69 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @print_fmt_pwc_handler_enter, !1, !"print_fmt_pwc_handler_enter", i1 false, i1 false}
!71 = !{ptr @trace_event_fields_pwc_handler_exit, !5, !"trace_event_fields_pwc_handler_exit", i1 false, i1 false}
!72 = !{ptr @trace_event_type_funcs_pwc_handler_exit, !5, !"trace_event_type_funcs_pwc_handler_exit", i1 false, i1 false}
!73 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @print_fmt_pwc_handler_exit, !5, !"print_fmt_pwc_handler_exit", i1 false, i1 false}
!75 = !{ptr @__param_str_trace, !19, !"__param_str_trace", i1 false, i1 false}
!76 = !{ptr @__param_str_power_save, !22, !"__param_str_power_save", i1 false, i1 false}
!77 = !{ptr @power_save, !78, !"power_save", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 134, i32 12}
!79 = !{ptr @__param_str_leds, !25, !"__param_str_leds", i1 false, i1 false}
!80 = !{ptr @__param_arr_leds, !25, !"__param_arr_leds", i1 false, i1 false}
!81 = !{ptr @leds_nargs, !82, !"leds_nargs", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1203, i32 21}
!83 = !{ptr @leds, !84, !"leds", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 135, i32 12}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 122, i32 12}
!87 = !{ptr @pwc_driver, !88, !"pwc_driver", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 121, i32 26}
!89 = !{ptr @.str.18, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 789, i32 2}
!91 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @usb_pwc_probe._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @usb_pwc_probe._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.22, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 803, i32 4}
!97 = !{ptr @usb_pwc_probe._entry.21, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @usb_pwc_probe._entry_ptr.23, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.24, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 804, i32 11}
!101 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 808, i32 4}
!103 = !{ptr @usb_pwc_probe._entry.25, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @usb_pwc_probe._entry_ptr.27, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 809, i32 11}
!107 = !{ptr @.str.30, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 813, i32 4}
!109 = !{ptr @usb_pwc_probe._entry.29, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @usb_pwc_probe._entry_ptr.31, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 814, i32 11}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 818, i32 4}
!115 = !{ptr @usb_pwc_probe._entry.33, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @usb_pwc_probe._entry_ptr.35, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 819, i32 11}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 823, i32 4}
!121 = !{ptr @usb_pwc_probe._entry.37, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @usb_pwc_probe._entry_ptr.39, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 824, i32 11}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 828, i32 4}
!127 = !{ptr @usb_pwc_probe._entry.41, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @usb_pwc_probe._entry_ptr.43, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 829, i32 11}
!131 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 833, i32 4}
!133 = !{ptr @usb_pwc_probe._entry.45, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @usb_pwc_probe._entry_ptr.47, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 834, i32 11}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 838, i32 4}
!139 = !{ptr @usb_pwc_probe._entry.49, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @usb_pwc_probe._entry_ptr.51, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 839, i32 11}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 843, i32 4}
!145 = !{ptr @usb_pwc_probe._entry.53, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @usb_pwc_probe._entry_ptr.55, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 844, i32 11}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 848, i32 4}
!151 = !{ptr @usb_pwc_probe._entry.57, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @usb_pwc_probe._entry_ptr.59, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 849, i32 11}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 853, i32 4}
!157 = !{ptr @usb_pwc_probe._entry.61, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @usb_pwc_probe._entry_ptr.63, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 854, i32 11}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 858, i32 4}
!163 = !{ptr @usb_pwc_probe._entry.65, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @usb_pwc_probe._entry_ptr.67, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 859, i32 11}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 869, i32 4}
!169 = !{ptr @usb_pwc_probe._entry.69, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @usb_pwc_probe._entry_ptr.71, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 880, i32 4}
!173 = !{ptr @usb_pwc_probe._entry.72, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @usb_pwc_probe._entry_ptr.74, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 881, i32 11}
!177 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 885, i32 4}
!179 = !{ptr @usb_pwc_probe._entry.76, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @usb_pwc_probe._entry_ptr.78, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 886, i32 11}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 890, i32 4}
!185 = !{ptr @usb_pwc_probe._entry.80, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @usb_pwc_probe._entry_ptr.82, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 891, i32 11}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 897, i32 4}
!191 = !{ptr @usb_pwc_probe._entry.84, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @usb_pwc_probe._entry_ptr.86, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 898, i32 11}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 902, i32 4}
!197 = !{ptr @usb_pwc_probe._entry.88, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @usb_pwc_probe._entry_ptr.90, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 909, i32 4}
!201 = !{ptr @usb_pwc_probe._entry.91, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @usb_pwc_probe._entry_ptr.93, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 910, i32 11}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 917, i32 4}
!207 = !{ptr @usb_pwc_probe._entry.95, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @usb_pwc_probe._entry_ptr.97, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 918, i32 11}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 922, i32 4}
!213 = !{ptr @usb_pwc_probe._entry.99, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @usb_pwc_probe._entry_ptr.101, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 923, i32 11}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 927, i32 4}
!219 = !{ptr @usb_pwc_probe._entry.103, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @usb_pwc_probe._entry_ptr.105, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 928, i32 11}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 942, i32 4}
!225 = !{ptr @usb_pwc_probe._entry.107, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @usb_pwc_probe._entry_ptr.109, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 943, i32 11}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 947, i32 4}
!231 = !{ptr @usb_pwc_probe._entry.111, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @usb_pwc_probe._entry_ptr.113, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 948, i32 11}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 952, i32 4}
!237 = !{ptr @usb_pwc_probe._entry.115, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @usb_pwc_probe._entry_ptr.117, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 963, i32 4}
!241 = !{ptr @usb_pwc_probe._entry.118, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @usb_pwc_probe._entry_ptr.120, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 964, i32 11}
!245 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 970, i32 4}
!247 = !{ptr @usb_pwc_probe._entry.122, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @usb_pwc_probe._entry_ptr.124, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 971, i32 11}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 981, i32 4}
!253 = !{ptr @usb_pwc_probe._entry.126, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @usb_pwc_probe._entry_ptr.128, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 982, i32 11}
!257 = !{ptr @.str.131, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 993, i32 4}
!259 = !{ptr @usb_pwc_probe._entry.130, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @usb_pwc_probe._entry_ptr.132, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.133, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 994, i32 11}
!263 = !{ptr @.str.135, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1005, i32 4}
!265 = !{ptr @usb_pwc_probe._entry.134, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @usb_pwc_probe._entry_ptr.136, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.137, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1006, i32 11}
!269 = !{ptr @.str.139, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1010, i32 4}
!271 = !{ptr @usb_pwc_probe._entry.138, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @usb_pwc_probe._entry_ptr.140, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.141, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1011, i32 11}
!275 = !{ptr @.str.143, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1026, i32 2}
!277 = !{ptr @usb_pwc_probe._entry.142, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @usb_pwc_probe._entry_ptr.144, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.146, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1029, i32 3}
!281 = !{ptr @usb_pwc_probe._entry.145, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @usb_pwc_probe._entry_ptr.147, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.149, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1034, i32 3}
!285 = !{ptr @usb_pwc_probe._entry.148, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @usb_pwc_probe._entry_ptr.150, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @usb_pwc_probe.__key, !288, !"__key", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1041, i32 2}
!289 = !{ptr @.str.151, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @usb_pwc_probe.__key.152, !291, !"__key", i1 false, i1 false}
!291 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1042, i32 2}
!292 = !{ptr @.str.153, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @usb_pwc_probe.__key.154, !294, !"__key", i1 false, i1 false}
!294 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1043, i32 2}
!295 = !{ptr @.str.155, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.157, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1059, i32 3}
!298 = !{ptr @usb_pwc_probe._entry.156, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @usb_pwc_probe._entry_ptr.158, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.160, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1071, i32 2}
!302 = !{ptr @usb_pwc_probe._entry.159, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @usb_pwc_probe._entry_ptr.161, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @usb_pwc_probe._entry.162, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1076, i32 3}
!306 = !{ptr @usb_pwc_probe._entry_ptr.163, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.165, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1084, i32 3}
!309 = !{ptr @usb_pwc_probe._entry.164, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @usb_pwc_probe._entry_ptr.166, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.168, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1102, i32 3}
!313 = !{ptr @usb_pwc_probe._entry.167, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @usb_pwc_probe._entry_ptr.169, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.171, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1113, i32 3}
!317 = !{ptr @usb_pwc_probe._entry.170, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @usb_pwc_probe._entry_ptr.172, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.174, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1125, i32 3}
!321 = !{ptr @usb_pwc_probe._entry.173, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @usb_pwc_probe._entry_ptr.175, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.177, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1128, i32 2}
!325 = !{ptr @usb_pwc_probe._entry.176, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @usb_pwc_probe._entry_ptr.178, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.179, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1139, i32 29}
!329 = !{ptr @.str.180, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 1141, i32 27}
!331 = !{ptr @pwc_vb_queue_ops, !332, !"pwc_vb_queue_ops", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 754, i32 29}
!333 = !{ptr @.str.181, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 439, i32 3}
!335 = !{ptr @.str.182, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @pwc_isoc_init._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @pwc_isoc_init._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.184, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 444, i32 2}
!340 = !{ptr @pwc_isoc_init._entry.183, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @pwc_isoc_init._entry_ptr.185, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.187, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 461, i32 3}
!344 = !{ptr @pwc_isoc_init._entry.186, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @pwc_isoc_init._entry_ptr.188, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.190, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 472, i32 4}
!348 = !{ptr @pwc_isoc_init._entry.189, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @pwc_isoc_init._entry_ptr.191, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.193, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 495, i32 4}
!352 = !{ptr @pwc_isoc_init._entry.192, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @pwc_isoc_init._entry_ptr.194, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.196, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 499, i32 3}
!356 = !{ptr @pwc_isoc_init._entry.195, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @pwc_isoc_init._entry_ptr.197, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.199, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 503, i32 2}
!360 = !{ptr @pwc_isoc_init._entry.198, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @pwc_isoc_init._entry_ptr.200, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.201, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 544, i32 2}
!364 = !{ptr @.str.202, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @pwc_isoc_cleanup._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @pwc_isoc_cleanup._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.204, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 550, i32 2}
!369 = !{ptr @pwc_isoc_cleanup._entry.203, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @pwc_isoc_cleanup._entry_ptr.205, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.206, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 514, i32 4}
!373 = !{ptr @.str.207, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @pwc_iso_stop._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @pwc_iso_stop._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.208, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 529, i32 4}
!378 = !{ptr @.str.209, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @pwc_iso_free._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @pwc_iso_free._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = distinct !{null, !382, !"__already_done", i1 false, i1 false}
!382 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!383 = !{ptr @.str.210, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.211, !382, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.212, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 296, i32 3}
!387 = !{ptr @.str.213, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @pwc_isoc_handler._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @pwc_isoc_handler._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.214, !386, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.215, !386, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.216, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 307, i32 12}
!394 = !{ptr @.str.217, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 309, i32 27}
!396 = !{ptr @.str.218, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 310, i32 27}
!398 = !{ptr @.str.219, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 311, i32 30}
!400 = !{ptr @.str.220, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 312, i32 28}
!402 = !{ptr @.str.221, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 313, i32 28}
!404 = !{ptr @.str.222, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 314, i32 27}
!406 = !{ptr @.str.224, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 316, i32 3}
!408 = !{ptr @pwc_isoc_handler._entry.223, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @pwc_isoc_handler._entry_ptr.225, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.227, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 321, i32 4}
!412 = !{ptr @pwc_isoc_handler._entry.226, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @pwc_isoc_handler._entry_ptr.228, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.230, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 350, i32 4}
!416 = !{ptr @pwc_isoc_handler._entry.229, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @pwc_isoc_handler._entry_ptr.231, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.233, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 362, i32 5}
!420 = !{ptr @pwc_isoc_handler._entry.232, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @pwc_isoc_handler._entry_ptr.234, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.236, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 396, i32 3}
!424 = !{ptr @pwc_isoc_handler._entry.235, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @pwc_isoc_handler._entry_ptr.237, !423, !"_entry_ptr", i1 false, i1 false}
!426 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!427 = !{ptr @.str.238, !1, !"<string literal>", i1 false, i1 false}
!428 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!429 = !{ptr @.str.239, !1, !"<string literal>", i1 false, i1 false}
!430 = distinct !{null, !431, !"__already_done", i1 false, i1 false}
!431 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!432 = !{ptr @.str.240, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.241, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 231, i32 4}
!435 = !{ptr @.str.242, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @pwc_frame_complete._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @pwc_frame_complete._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.244, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 239, i32 5}
!440 = !{ptr @pwc_frame_complete._entry.243, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @pwc_frame_complete._entry_ptr.245, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.247, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 241, i32 5}
!444 = !{ptr @pwc_frame_complete._entry.246, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @pwc_frame_complete._entry_ptr.248, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.250, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 269, i32 4}
!448 = !{ptr @pwc_frame_complete._entry.249, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @pwc_frame_complete._entry_ptr.251, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.252, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 206, i32 3}
!452 = !{ptr @.str.253, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @pwc_snapshot_button._entry, !451, !"_entry", i1 false, i1 false}
!454 = !{ptr @pwc_snapshot_button._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.255, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 208, i32 3}
!457 = !{ptr @pwc_snapshot_button._entry.254, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @pwc_snapshot_button._entry_ptr.256, !456, !"_entry_ptr", i1 false, i1 false}
!459 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!460 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!461 = !{ptr @pwc_template, !462, !"pwc_template", i1 false, i1 false}
!462 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 148, i32 34}
!463 = !{ptr @pwc_fops, !464, !"pwc_fops", i1 false, i1 false}
!464 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 139, i32 42}
!465 = !{ptr @.str.257, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 576, i32 11}
!467 = !{ptr @.str.258, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 578, i32 11}
!469 = !{ptr @.str.259, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 580, i32 11}
!471 = !{ptr @.str.260, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 582, i32 11}
!473 = !{ptr @.str.261, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 584, i32 11}
!475 = !{ptr @.str.262, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 586, i32 11}
!477 = !{ptr @.str.263, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 588, i32 11}
!479 = !{ptr @.str.264, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 590, i32 11}
!481 = !{ptr @.str.265, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 592, i32 11}
!483 = !{ptr @.str.266, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 594, i32 11}
!485 = !{ptr @.str.267, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 596, i32 11}
!487 = !{ptr @.str.268, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../include/linux/usb.h", i32 912, i32 31}
!489 = !{ptr @pwc_device_table, !490, !"pwc_device_table", i1 false, i1 false}
!490 = !{!"../drivers/media/usb/pwc/pwc-if.c", i32 73, i32 35}
!491 = !{!"sp"}
!492 = !{i32 1, !"wchar_size", i32 2}
!493 = !{i32 1, !"min_enum_size", i32 4}
!494 = !{i32 8, !"branch-target-enforcement", i32 0}
!495 = !{i32 8, !"sign-return-address", i32 0}
!496 = !{i32 8, !"sign-return-address-all", i32 0}
!497 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!498 = !{i32 7, !"uwtable", i32 1}
!499 = !{i32 7, !"frame-pointer", i32 2}
!500 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!501 = !{!"branch_weights", i32 2000, i32 1}
!502 = !{!"branch_weights", i32 1, i32 2000}
!503 = !{!"auto-init"}
!504 = !{i64 2148299155, i64 2148299160, i64 2148299173, i64 2148299217, i64 2148299251, i64 2148299272}
!505 = !{i64 2156760510}
!506 = !{i64 2156760725}
!507 = !{i64 2150042370}
!508 = !{i64 2150043406}
!509 = !{i64 2156777072}
!510 = !{i64 2156777285}
