; ModuleID = '/llk/IR_all_yes/drivers/media/platform/coda/coda-bit.c_pt.bc'
source_filename = "../drivers/media/platform/coda/coda-bit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.124, %struct.trace_event, ptr, ptr, %union.anon.125, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.124 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.127 = type { %struct.bpf_raw_event_map }
%union.anon.128 = type { %struct.bpf_raw_event_map }
%union.anon.129 = type { %struct.bpf_raw_event_map }
%union.anon.130 = type { %struct.bpf_raw_event_map }
%union.anon.131 = type { %struct.bpf_raw_event_map }
%union.anon.132 = type { %struct.bpf_raw_event_map }
%union.anon.133 = type { %struct.bpf_raw_event_map }
%union.anon.134 = type { %struct.bpf_raw_event_map }
%union.anon.135 = type { %struct.bpf_raw_event_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.coda_context_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.coda_ctx = type { ptr, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.completion, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.coda_q_data], i32, ptr, i32, i32, i32, i32, %struct.coda_params, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_fh, i32, i32, i32, [3 x [64 x i8]], [3 x i32], %struct.kfifo, %struct.mutex, %struct.coda_aux_buf, i8, %struct.coda_aux_buf, %struct.coda_aux_buf, %struct.coda_aux_buf, [19 x %struct.coda_internal_frame], %struct.list_head, %struct.spinlock, i32, i32, %struct.coda_aux_buf, i32, i32, i32, %struct.coda_iram_info, i32, i32, i32, i32, i32, i32, ptr, i8, i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.coda_q_data = type { i32, i32, i32, i32, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.coda_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, [3 x ptr], [3 x i32], [3 x i32], [3 x i32], ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kfifo = type { %union.anon.95, [0 x i8] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.coda_internal_frame = type { %struct.coda_aux_buf, %struct.coda_buffer_meta, i32, i32 }
%struct.coda_buffer_meta = type { %struct.list_head, i32, %struct.v4l2_timecode, i64, i32, i32, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.coda_aux_buf = type { ptr, i32, i32, %struct.debugfs_blob_wrapper, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.coda_iram_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_event_raw_coda_bit_run = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_coda_bit_done = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_coda_buf_class = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.trace_event_raw_coda_buf_meta_class = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_coda_meta_class = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.coda_dev = type { %struct.v4l2_device, [6 x %struct.video_device], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.coda_aux_buf, %struct.coda_aux_buf, %struct.coda_aux_buf, ptr, %struct.coda_aux_buf, %struct.mutex, %struct.mutex, ptr, ptr, %struct.ida, ptr, %struct.ratelimit_state }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.coda_devtype = type { [3 x ptr], i32, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.coda_codec = type { i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_coda_bit_run = internal constant [13 x i8] c"coda_bit_run\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_bit_run = dso_local global %struct.static_call_key { ptr @__traceiter_coda_bit_run }, align 4
@__tracepoint_coda_bit_run = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_bit_run, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_bit_run, ptr null, ptr @__traceiter_coda_bit_run, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_bit_run = internal constant ptr @__tracepoint_coda_bit_run, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_bit_done = internal constant [14 x i8] c"coda_bit_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_bit_done = dso_local global %struct.static_call_key { ptr @__traceiter_coda_bit_done }, align 4
@__tracepoint_coda_bit_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_bit_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_bit_done, ptr null, ptr @__traceiter_coda_bit_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_bit_done = internal constant ptr @__tracepoint_coda_bit_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_enc_pic_run = internal constant [17 x i8] c"coda_enc_pic_run\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_enc_pic_run = dso_local global %struct.static_call_key { ptr @__traceiter_coda_enc_pic_run }, align 4
@__tracepoint_coda_enc_pic_run = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_enc_pic_run, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_enc_pic_run, ptr null, ptr @__traceiter_coda_enc_pic_run, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_enc_pic_run = internal constant ptr @__tracepoint_coda_enc_pic_run, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_enc_pic_done = internal constant [18 x i8] c"coda_enc_pic_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_enc_pic_done = dso_local global %struct.static_call_key { ptr @__traceiter_coda_enc_pic_done }, align 4
@__tracepoint_coda_enc_pic_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_enc_pic_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_enc_pic_done, ptr null, ptr @__traceiter_coda_enc_pic_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_enc_pic_done = internal constant ptr @__tracepoint_coda_enc_pic_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_bit_queue = internal constant [15 x i8] c"coda_bit_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_bit_queue = dso_local global %struct.static_call_key { ptr @__traceiter_coda_bit_queue }, align 4
@__tracepoint_coda_bit_queue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_bit_queue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_bit_queue, ptr null, ptr @__traceiter_coda_bit_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_bit_queue = internal constant ptr @__tracepoint_coda_bit_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_dec_pic_run = internal constant [17 x i8] c"coda_dec_pic_run\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_dec_pic_run = dso_local global %struct.static_call_key { ptr @__traceiter_coda_dec_pic_run }, align 4
@__tracepoint_coda_dec_pic_run = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_dec_pic_run, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_dec_pic_run, ptr null, ptr @__traceiter_coda_dec_pic_run, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_dec_pic_run = internal constant ptr @__tracepoint_coda_dec_pic_run, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_dec_pic_done = internal constant [18 x i8] c"coda_dec_pic_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_dec_pic_done = dso_local global %struct.static_call_key { ptr @__traceiter_coda_dec_pic_done }, align 4
@__tracepoint_coda_dec_pic_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_dec_pic_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_dec_pic_done, ptr null, ptr @__traceiter_coda_dec_pic_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_dec_pic_done = internal constant ptr @__tracepoint_coda_dec_pic_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_dec_rot_done = internal constant [18 x i8] c"coda_dec_rot_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_dec_rot_done = dso_local global %struct.static_call_key { ptr @__traceiter_coda_dec_rot_done }, align 4
@__tracepoint_coda_dec_rot_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_dec_rot_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_dec_rot_done, ptr null, ptr @__traceiter_coda_dec_rot_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_dec_rot_done = internal constant ptr @__tracepoint_coda_dec_rot_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_jpeg_run = internal constant [14 x i8] c"coda_jpeg_run\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_jpeg_run = dso_local global %struct.static_call_key { ptr @__traceiter_coda_jpeg_run }, align 4
@__tracepoint_coda_jpeg_run = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_jpeg_run, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_jpeg_run, ptr null, ptr @__traceiter_coda_jpeg_run, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_jpeg_run = internal constant ptr @__tracepoint_coda_jpeg_run, section "__tracepoints_ptrs", align 4
@__tpstrtab_coda_jpeg_done = internal constant [15 x i8] c"coda_jpeg_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_coda_jpeg_done = dso_local global %struct.static_call_key { ptr @__traceiter_coda_jpeg_done }, align 4
@__tracepoint_coda_jpeg_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_coda_jpeg_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_coda_jpeg_done, ptr null, ptr @__traceiter_coda_jpeg_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_coda_jpeg_done = internal constant ptr @__tracepoint_coda_jpeg_done, section "__tracepoints_ptrs", align 4
@str__coda__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"coda\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_coda_bit_run = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.36, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_coda_bit_run = internal global %struct.trace_event_class { ptr @str__coda__trace_system_name, ptr @trace_event_raw_event_coda_bit_run, ptr @perf_trace_coda_bit_run, ptr @trace_event_reg, ptr @trace_event_fields_coda_bit_run, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_coda_bit_run, i64 24), ptr getelementptr (i8, ptr @event_class_coda_bit_run, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_coda_bit_run = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_coda_bit_run, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_coda_bit_run = internal global { [65 x i8], [63 x i8] } { [65 x i8] c"\22minor = %d, ctx = %d, cmd = %d\22, REC->minor, REC->ctx, REC->cmd\00", [63 x i8] zeroinitializer }, align 32
@event_coda_bit_run = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_bit_run, %union.anon.124 { ptr @__tracepoint_coda_bit_run }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_bit_run }, ptr @print_fmt_coda_bit_run, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_bit_run = internal global ptr @event_coda_bit_run, section "_ftrace_events", align 4
@trace_event_fields_coda_bit_done = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_coda_bit_done = internal global %struct.trace_event_class { ptr @str__coda__trace_system_name, ptr @trace_event_raw_event_coda_bit_done, ptr @perf_trace_coda_bit_done, ptr @trace_event_reg, ptr @trace_event_fields_coda_bit_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_coda_bit_done, i64 24), ptr getelementptr (i8, ptr @event_class_coda_bit_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_coda_bit_done = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_coda_bit_done, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_coda_bit_done = internal global { [45 x i8], [51 x i8] } { [45 x i8] c"\22minor = %d, ctx = %d\22, REC->minor, REC->ctx\00", [51 x i8] zeroinitializer }, align 32
@event_coda_bit_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_bit_done, %union.anon.124 { ptr @__tracepoint_coda_bit_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_bit_done }, ptr @print_fmt_coda_bit_done, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_bit_done = internal global ptr @event_coda_bit_done, section "_ftrace_events", align 4
@trace_event_fields_coda_buf_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_coda_buf_class = internal global %struct.trace_event_class { ptr @str__coda__trace_system_name, ptr @trace_event_raw_event_coda_buf_class, ptr @perf_trace_coda_buf_class, ptr @trace_event_reg, ptr @trace_event_fields_coda_buf_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_coda_buf_class, i64 24), ptr getelementptr (i8, ptr @event_class_coda_buf_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_coda_buf_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_coda_buf_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_coda_buf_class = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"\22minor = %d, index = %d, ctx = %d\22, REC->minor, REC->index, REC->ctx\00", [59 x i8] zeroinitializer }, align 32
@event_coda_enc_pic_run = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_buf_class, %union.anon.124 { ptr @__tracepoint_coda_enc_pic_run }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_buf_class }, ptr @print_fmt_coda_buf_class, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_enc_pic_run = internal global ptr @event_coda_enc_pic_run, section "_ftrace_events", align 4
@event_coda_enc_pic_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_buf_class, %union.anon.124 { ptr @__tracepoint_coda_enc_pic_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_buf_class }, ptr @print_fmt_coda_buf_class, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_enc_pic_done = internal global ptr @event_coda_enc_pic_done, section "_ftrace_events", align 4
@trace_event_fields_coda_buf_meta_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.42, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_coda_buf_meta_class = internal global %struct.trace_event_class { ptr @str__coda__trace_system_name, ptr @trace_event_raw_event_coda_buf_meta_class, ptr @perf_trace_coda_buf_meta_class, ptr @trace_event_reg, ptr @trace_event_fields_coda_buf_meta_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_coda_buf_meta_class, i64 24), ptr getelementptr (i8, ptr @event_class_coda_buf_meta_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_coda_buf_meta_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_coda_buf_meta_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_coda_buf_meta_class = internal global { [117 x i8], [43 x i8] } { [117 x i8] c"\22minor = %d, index = %d, start = 0x%x, end = 0x%x, ctx = %d\22, REC->minor, REC->index, REC->start, REC->end, REC->ctx\00", [43 x i8] zeroinitializer }, align 32
@event_coda_bit_queue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_buf_meta_class, %union.anon.124 { ptr @__tracepoint_coda_bit_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_buf_meta_class }, ptr @print_fmt_coda_buf_meta_class, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_bit_queue = internal global ptr @event_coda_bit_queue, section "_ftrace_events", align 4
@trace_event_fields_coda_meta_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.42, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.122 { %struct.anon.123 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_coda_meta_class = internal global %struct.trace_event_class { ptr @str__coda__trace_system_name, ptr @trace_event_raw_event_coda_meta_class, ptr @perf_trace_coda_meta_class, ptr @trace_event_reg, ptr @trace_event_fields_coda_meta_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_coda_meta_class, i64 24), ptr getelementptr (i8, ptr @event_class_coda_meta_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_coda_meta_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_coda_meta_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_coda_meta_class = internal global { [93 x i8], [35 x i8] } { [93 x i8] c"\22minor = %d, start = 0x%x, end = 0x%x, ctx = %d\22, REC->minor, REC->start, REC->end, REC->ctx\00", [35 x i8] zeroinitializer }, align 32
@event_coda_dec_pic_run = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_meta_class, %union.anon.124 { ptr @__tracepoint_coda_dec_pic_run }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_meta_class }, ptr @print_fmt_coda_meta_class, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_dec_pic_run = internal global ptr @event_coda_dec_pic_run, section "_ftrace_events", align 4
@event_coda_dec_pic_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_meta_class, %union.anon.124 { ptr @__tracepoint_coda_dec_pic_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_meta_class }, ptr @print_fmt_coda_meta_class, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_dec_pic_done = internal global ptr @event_coda_dec_pic_done, section "_ftrace_events", align 4
@event_coda_dec_rot_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_buf_meta_class, %union.anon.124 { ptr @__tracepoint_coda_dec_rot_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_buf_meta_class }, ptr @print_fmt_coda_buf_meta_class, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_dec_rot_done = internal global ptr @event_coda_dec_rot_done, section "_ftrace_events", align 4
@event_coda_jpeg_run = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_buf_class, %union.anon.124 { ptr @__tracepoint_coda_jpeg_run }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_buf_class }, ptr @print_fmt_coda_buf_class, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_jpeg_run = internal global ptr @event_coda_jpeg_run, section "_ftrace_events", align 4
@event_coda_jpeg_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_coda_buf_class, %union.anon.124 { ptr @__tracepoint_coda_jpeg_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_coda_buf_class }, ptr @print_fmt_coda_buf_class, ptr null, %union.anon.125 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_coda_jpeg_done = internal global ptr @event_coda_jpeg_done, section "_ftrace_events", align 4
@__bpf_trace_tp_map_coda_bit_run = internal global %union.anon.126 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_bit_run, ptr @__bpf_trace_coda_bit_run, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_bit_done = internal global %union.anon.127 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_bit_done, ptr @__bpf_trace_coda_bit_done, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_enc_pic_run = internal global %union.anon.128 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_enc_pic_run, ptr @__bpf_trace_coda_buf_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_enc_pic_done = internal global %union.anon.129 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_enc_pic_done, ptr @__bpf_trace_coda_buf_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_bit_queue = internal global %union.anon.130 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_bit_queue, ptr @__bpf_trace_coda_buf_meta_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_dec_pic_run = internal global %union.anon.131 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_dec_pic_run, ptr @__bpf_trace_coda_meta_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_dec_pic_done = internal global %union.anon.132 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_dec_pic_done, ptr @__bpf_trace_coda_meta_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_dec_rot_done = internal global %union.anon.133 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_dec_rot_done, ptr @__bpf_trace_coda_buf_meta_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_jpeg_run = internal global %union.anon.134 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_jpeg_run, ptr @__bpf_trace_coda_buf_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_coda_jpeg_done = internal global %union.anon.135 { %struct.bpf_raw_event_map { ptr @__tracepoint_coda_jpeg_done, ptr @__bpf_trace_coda_buf_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/coda/coda-bit.c\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@coda_bitstream_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to flush bitstream\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"coda_bitstream_flush\00", [43 x i8] zeroinitializer }, align 32
@coda_bitstream_flush._entry_ptr = internal global ptr @coda_bitstream_flush._entry, section ".printk_index", align 4
@coda_fill_bitstream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: dropping invalid JPEG frame %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_fill_bitstream\00", [44 x i8] zeroinitializer }, align 32
@coda_fill_bitstream._entry_ptr = internal global ptr @coda_fill_bitstream._entry, section ".printk_index", align 4
@coda_debug = external dso_local local_unnamed_addr global i32, align 4
@coda_fill_bitstream._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %u: marking last meta\00", [36 x i8] zeroinitializer }, align 32
@coda_fill_bitstream._entry_ptr.7 = internal global ptr @coda_fill_bitstream._entry.5, section ".printk_index", align 4
@coda_check_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: firmware get command error\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_check_firmware\00", [44 x i8] zeroinitializer }, align 32
@coda_check_firmware._entry_ptr = internal global ptr @coda_check_firmware._entry, section ".printk_index", align 4
@coda_check_firmware._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Firmware code revision: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@coda_check_firmware._entry_ptr.12 = internal global ptr @coda_check_firmware._entry.10, section ".printk_index", align 4
@coda_check_firmware._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: Wrong firmware. Hw: %s, Fw: %s, Version: %u.%u.%u\0A\00", [39 x i8] zeroinitializer }, align 32
@coda_check_firmware._entry_ptr.15 = internal global ptr @coda_check_firmware._entry.13, section ".printk_index", align 4
@coda_check_firmware._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Initialized %s.\0A\00", [41 x i8] zeroinitializer }, align 32
@coda_check_firmware._entry_ptr.18 = internal global ptr @coda_check_firmware._entry.16, section ".printk_index", align 4
@coda_check_firmware._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Firmware version: %u.%u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@coda_check_firmware._entry_ptr.21 = internal global ptr @coda_check_firmware._entry.19, section ".printk_index", align 4
@coda_check_firmware._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: Unsupported firmware version: %u.%u.%u\0A\00", [50 x i8] zeroinitializer }, align 32
@coda_check_firmware._entry_ptr.24 = internal global ptr @coda_check_firmware._entry.22, section ".printk_index", align 4
@coda_bit_encode_ops = dso_local constant { %struct.coda_context_ops, [60 x i8] } { %struct.coda_context_ops { ptr @coda_encoder_queue_init, ptr @coda_encoder_reqbufs, ptr @coda_start_encoding, ptr @coda_prepare_encode, ptr @coda_finish_encode, ptr null, ptr null, ptr @coda_seq_end_work, ptr @coda_bit_release }, [60 x i8] zeroinitializer }, align 32
@coda_bit_decode_ops = dso_local constant { %struct.coda_context_ops, [60 x i8] } { %struct.coda_context_ops { ptr @coda_decoder_queue_init, ptr @coda_decoder_reqbufs, ptr @coda_start_decoding, ptr @coda_prepare_decode, ptr @coda_finish_decode, ptr @coda_decode_timeout, ptr @coda_dec_seq_init_work, ptr @coda_seq_end_work, ptr @coda_bit_release }, [60 x i8] zeroinitializer }, align 32
@coda_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 2642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Instance released before the end of transaction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_irq_handler\00", [47 x i8] zeroinitializer }, align 32
@coda_irq_handler._entry_ptr = internal global ptr @coda_irq_handler._entry, section ".printk_index", align 4
@coda_irq_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str, i32 2649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %u: task has been aborted\0A\00", [63 x i8] zeroinitializer }, align 32
@coda_irq_handler._entry_ptr.29 = internal global ptr @coda_irq_handler._entry.27, section ".printk_index", align 4
@coda_irq_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str, i32 2653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %u: coda is still busy!!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@coda_irq_handler._entry_ptr.32 = internal global ptr @coda_irq_handler._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"minor\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctx\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"minor = %d, ctx = %d, cmd = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"minor = %d, ctx = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"minor = %d, index = %d, ctx = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"end\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"minor = %d, index = %d, start = 0x%x, end = 0x%x, ctx = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"minor = %d, start = 0x%x, end = 0x%x, ctx = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/platform/coda/trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_coda_bit_run.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@coda_bitstream_try_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: trying to queue empty buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"coda_bitstream_try_queue\00", [39 x i8] zeroinitializer }, align 32
@coda_bitstream_try_queue._entry_ptr = internal global ptr @coda_bitstream_try_queue._entry, section ".printk_index", align 4
@coda_bitstream_try_queue._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %u: pad with %u-byte header\0A\00", [61 x i8] zeroinitializer }, align 32
@coda_bitstream_try_queue._entry_ptr.52 = internal global ptr @coda_bitstream_try_queue._entry.50, section ".printk_index", align 4
@coda_bitstream_try_queue._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: bitstream buffer overflow\0A\00", [63 x i8] zeroinitializer }, align 32
@coda_bitstream_try_queue._entry_ptr.55 = internal global ptr @coda_bitstream_try_queue._entry.53, section ".printk_index", align 4
@coda_bitstream_try_queue._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: %u: could not parse header, sequence initialization might fail\0A\00", [58 x i8] zeroinitializer }, align 32
@coda_bitstream_try_queue._entry_ptr.58 = internal global ptr @coda_bitstream_try_queue._entry.56, section ".printk_index", align 4
@coda_bitstream_try_queue._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@coda_bitstream_try_queue._entry_ptr.60 = internal global ptr @coda_bitstream_try_queue._entry.59, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@trace_coda_bit_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"parabuf\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slicebuf\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"psbuf\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"workbuf\00", [24 x i8] zeroinitializer }, align 32
@coda_start_encoding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: coda is not initialized.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_start_encoding\00", [44 x i8] zeroinitializer }, align 32
@coda_start_encoding._entry_ptr = internal global ptr @coda_start_encoding._entry, section ".printk_index", align 4
@coda_start_encoding._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: dst format (0x%08x) invalid.\0A\00", [60 x i8] zeroinitializer }, align 32
@coda_start_encoding._entry_ptr.69 = internal global ptr @coda_start_encoding._entry.67, section ".printk_index", align 4
@coda_start_encoding._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: CODA_COMMAND_SEQ_INIT timeout\0A\00", [59 x i8] zeroinitializer }, align 32
@coda_start_encoding._entry_ptr.72 = internal global ptr @coda_start_encoding._entry.70, section ".printk_index", align 4
@coda_start_encoding._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: CODA_COMMAND_SEQ_INIT failed\0A\00", [60 x i8] zeroinitializer }, align 32
@coda_start_encoding._entry_ptr.75 = internal global ptr @coda_start_encoding._entry.73, section ".printk_index", align 4
@coda_start_encoding._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: failed to allocate framebuffers\0A\00", [57 x i8] zeroinitializer }, align 32
@coda_start_encoding._entry_ptr.78 = internal global ptr @coda_start_encoding._entry.76, section ".printk_index", align 4
@coda_start_encoding._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.66, ptr @.str, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: CODA_COMMAND_SET_FRAME_BUF timeout\0A\00", [54 x i8] zeroinitializer }, align 32
@coda_start_encoding._entry_ptr.81 = internal global ptr @coda_start_encoding._entry.79, section ".printk_index", align 4
@coda_start_encoding._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.66, ptr @.str, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %u: start encoding %dx%d %4.4s->%4.4s @ %d/%d Hz\0A\00", [40 x i8] zeroinitializer }, align 32
@coda_start_encoding._entry_ptr.84 = internal global ptr @coda_start_encoding._entry.82, section ".printk_index", align 4
@coda_setup_iram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013IRAM is smaller than the search ram size\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coda_setup_iram\00", [16 x i8] zeroinitializer }, align 32
@coda_setup_iram._entry_ptr = internal global ptr @coda_setup_iram._entry, section ".printk_index", align 4
@coda_setup_iram._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %u: IRAM smaller than needed\0A\00", [60 x i8] zeroinitializer }, align 32
@coda_setup_iram._entry_ptr.89 = internal global ptr @coda_setup_iram._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fb%d\00", [27 x i8] zeroinitializer }, align 32
@coda_encode_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: CODA_COMMAND_ENCODE_HEADER timeout\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda_encode_header\00", [45 x i8] zeroinitializer }, align 32
@coda_encode_header._entry_ptr = internal global ptr @coda_encode_header._entry, section ".printk_index", align 4
@coda_prepare_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: parameter change failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_prepare_encode\00", [44 x i8] zeroinitializer }, align 32
@coda_prepare_encode._entry_ptr = internal global ptr @coda_prepare_encode._entry, section ".printk_index", align 4
@coda_prepare_encode._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: cannot set intra qp, fmt not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@coda_prepare_encode._entry_ptr.97 = internal global ptr @coda_prepare_encode._entry.95, section ".printk_index", align 4
@coda_prepare_encode._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: cannot set inter qp, fmt not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@coda_prepare_encode._entry_ptr.100 = internal global ptr @coda_prepare_encode._entry.98, section ".printk_index", align 4
@coda_enc_param_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %u: parameter change: intra Qp %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"coda_enc_param_change\00", [42 x i8] zeroinitializer }, align 32
@coda_enc_param_change._entry_ptr = internal global ptr @coda_enc_param_change._entry, section ".printk_index", align 4
@coda_enc_param_change._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: %u: parameter change: bitrate %u kbit/s\0A\00", [49 x i8] zeroinitializer }, align 32
@coda_enc_param_change._entry_ptr.105 = internal global ptr @coda_enc_param_change._entry.103, section ".printk_index", align 4
@coda_enc_param_change._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: %u: parameter change: frame rate %u/%u Hz\0A\00", [47 x i8] zeroinitializer }, align 32
@coda_enc_param_change._entry_ptr.108 = internal global ptr @coda_enc_param_change._entry.106, section ".printk_index", align 4
@coda_enc_param_change._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %u: parameter change: intra refresh MBs %u\0A\00", [46 x i8] zeroinitializer }, align 32
@coda_enc_param_change._entry_ptr.111 = internal global ptr @coda_enc_param_change._entry.109, section ".printk_index", align 4
@coda_enc_param_change._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.102, ptr @.str, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %u: parameter change failed: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@coda_enc_param_change._entry_ptr.114 = internal global ptr @coda_enc_param_change._entry.112, section ".printk_index", align 4
@trace_coda_enc_pic_run.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@coda_finish_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %u: frame size = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda_finish_encode\00", [45 x i8] zeroinitializer }, align 32
@coda_finish_encode._entry_ptr = internal global ptr @coda_finish_encode._entry, section ".printk_index", align 4
@coda_finish_encode._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str, i32 1694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: %u: job finished: encoded %c frame (%d)%s\0A\00", [47 x i8] zeroinitializer }, align 32
@coda_finish_encode._entry_ptr.119 = internal global ptr @coda_finish_encode._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (last)\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@trace_coda_enc_pic_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@coda_seq_end_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str, i32 1708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %u: %s: sent command 'SEQ_END' to coda\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"coda_seq_end_work\00", [46 x i8] zeroinitializer }, align 32
@coda_seq_end_work._entry_ptr = internal global ptr @coda_seq_end_work._entry, section ".printk_index", align 4
@coda_seq_end_work._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: CODA_COMMAND_SEQ_END failed\0A\00", [61 x i8] zeroinitializer }, align 32
@coda_seq_end_work._entry_ptr.127 = internal global ptr @coda_seq_end_work._entry.125, section ".printk_index", align 4
@coda_alloc_bitstream_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: failed to allocate bitstream ringbuffer\00", [50 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"coda_alloc_bitstream_buffer\00", [36 x i8] zeroinitializer }, align 32
@coda_alloc_bitstream_buffer._entry_ptr = internal global ptr @coda_alloc_bitstream_buffer._entry, section ".printk_index", align 4
@__coda_start_decoding._entry = internal constant %struct.pi_entry { ptr @.str.77, ptr @.str.130, ptr @.str, i32 2079, ptr null, ptr null }, align 1
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__coda_start_decoding\00", [42 x i8] zeroinitializer }, align 32
@__coda_start_decoding._entry_ptr = internal global ptr @__coda_start_decoding._entry, section ".printk_index", align 4
@__coda_start_decoding._entry.131 = internal constant %struct.pi_entry { ptr @.str.80, ptr @.str.130, ptr @.str, i32 2137, ptr null, ptr null }, align 1
@__coda_start_decoding._entry_ptr.132 = internal global ptr @__coda_start_decoding._entry.131, section ".printk_index", align 4
@__coda_decoder_seq_init._entry = internal constant %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str, i32 1876, ptr null, ptr null }, align 1
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %u: Video Data Order Adapter: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__coda_decoder_seq_init\00", [40 x i8] zeroinitializer }, align 32
@__coda_decoder_seq_init._entry_ptr = internal global ptr @__coda_decoder_seq_init._entry, section ".printk_index", align 4
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@__coda_decoder_seq_init._entry.137 = internal constant %struct.pi_entry { ptr @.str.71, ptr @.str.134, ptr @.str, i32 1943, ptr null, ptr null }, align 1
@__coda_decoder_seq_init._entry_ptr.138 = internal global ptr @__coda_decoder_seq_init._entry.137, section ".printk_index", align 4
@__coda_decoder_seq_init._entry.139 = internal constant %struct.pi_entry { ptr @.str.140, ptr @.str.134, ptr @.str, i32 1962, ptr null, ptr null }, align 1
@.str.140 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: CODA_COMMAND_SEQ_INIT failed, error code = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@__coda_decoder_seq_init._entry_ptr.141 = internal global ptr @__coda_decoder_seq_init._entry.139, section ".printk_index", align 4
@__coda_decoder_seq_init._entry.142 = internal constant %struct.pi_entry { ptr @.str.143, ptr @.str.134, ptr @.str, i32 1978, ptr null, ptr null }, align 1
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: stream is %dx%d, not %dx%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__coda_decoder_seq_init._entry_ptr.144 = internal global ptr @__coda_decoder_seq_init._entry.142, section ".printk_index", align 4
@__coda_decoder_seq_init._entry.145 = internal constant %struct.pi_entry { ptr @.str.146, ptr @.str.134, ptr @.str, i32 1985, ptr null, ptr null }, align 1
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %u: start decoding: %dx%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__coda_decoder_seq_init._entry_ptr.147 = internal global ptr @__coda_decoder_seq_init._entry.145, section ".printk_index", align 4
@__coda_decoder_seq_init._entry.148 = internal constant %struct.pi_entry { ptr @.str.149, ptr @.str.134, ptr @.str, i32 2000, ptr null, ptr null }, align 1
@.str.149 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: not enough framebuffers to decode (%d < %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@__coda_decoder_seq_init._entry_ptr.150 = internal global ptr @__coda_decoder_seq_init._entry.148, section ".printk_index", align 4
@coda_reorder_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str, i32 1834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: Unknown H264 Profile: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_reorder_enable\00", [44 x i8] zeroinitializer }, align 32
@coda_reorder_enable._entry_ptr = internal global ptr @coda_reorder_enable._entry, section ".printk_index", align 4
@coda_decoder_drop_used_metas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %u: releasing meta: seq=%d start=%d end=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"coda_decoder_drop_used_metas\00", [35 x i8] zeroinitializer }, align 32
@coda_decoder_drop_used_metas._entry_ptr = internal global ptr @coda_decoder_drop_used_metas._entry, section ".printk_index", align 4
@coda_prepare_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str, i32 2176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %u: bitstream payload: %d, skipping\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_prepare_decode\00", [44 x i8] zeroinitializer }, align 32
@coda_prepare_decode._entry_ptr = internal global ptr @coda_prepare_decode._entry, section ".printk_index", align 4
@coda_prepare_decode._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str, i32 2186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to start decoding\0A\00", [32 x i8] zeroinitializer }, align 32
@coda_prepare_decode._entry_ptr.159 = internal global ptr @coda_prepare_decode._entry.157, section ".printk_index", align 4
@coda_prepare_decode.buf = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@trace_coda_dec_pic_run.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@coda_finish_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str, i32 2333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013DEC_PIC_SUCCESS = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda_finish_decode\00", [45 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr = internal global ptr @coda_finish_decode._entry, section ".printk_index", align 4
@coda_finish_decode._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str, i32 2337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: decode failed\0A\00", [43 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.164 = internal global ptr @coda_finish_decode._entry.162, section ".printk_index", align 4
@coda_finish_decode._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.161, ptr @.str, i32 2343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: insufficient PS buffer space (%d bytes)\0A\00", [49 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.167 = internal global ptr @coda_finish_decode._entry.165, section ".printk_index", align 4
@coda_finish_decode._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.161, ptr @.str, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: insufficient slice buffer space (%d bytes)\0A\00", [46 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.170 = internal global ptr @coda_finish_decode._entry.168, section ".printk_index", align 4
@coda_finish_decode._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.161, ptr @.str, i32 2383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %u: errors in %d macroblocks\0A\00", [60 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.173 = internal global ptr @coda_finish_decode._entry.171, section ".printk_index", align 4
@coda_finish_decode._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.161, ptr @.str, i32 2393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %u: prescan failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.176 = internal global ptr @coda_finish_decode._entry.174, section ".printk_index", align 4
@coda_finish_decode._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.161, ptr @.str, i32 2438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: decoded frame index out of range: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.179 = internal global ptr @coda_finish_decode._entry.177, section ".printk_index", align 4
@coda_finish_decode._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.161, ptr @.str, i32 2468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: sequence number mismatch (%d(%d) != %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.182 = internal global ptr @coda_finish_decode._entry.180, section ".printk_index", align 4
@coda_finish_decode._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.161, ptr @.str, i32 2474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: empty timestamp list!\0A\00", [35 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.185 = internal global ptr @coda_finish_decode._entry.183, section ".printk_index", align 4
@coda_finish_decode._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.161, ptr @.str, i32 2503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: presentation frame index out of range: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.188 = internal global ptr @coda_finish_decode._entry.186, section ".printk_index", align 4
@coda_finish_decode._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.161, ptr @.str, i32 2527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %u: last meta, marking as last frame\0A\00", [52 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.191 = internal global ptr @coda_finish_decode._entry.189, section ".printk_index", align 4
@coda_finish_decode._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.161, ptr @.str, i32 2536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: %u: no more frames to return, marking as last frame\0A\00", [37 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.194 = internal global ptr @coda_finish_decode._entry.192, section ".printk_index", align 4
@coda_finish_decode._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.161, ptr @.str, i32 2560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017%s: %u: job finished: decoded %c frame %u, returned %c frame %u (%u/%u)%s\0A\00", [51 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.197 = internal global ptr @coda_finish_decode._entry.195, section ".printk_index", align 4
@coda_finish_decode._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.161, ptr @.str, i32 2568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017%s: %u: job finished: no frame decoded (%d), returned %c frame %u (%u/%u)%s\0A\00", [49 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.200 = internal global ptr @coda_finish_decode._entry.198, section ".printk_index", align 4
@coda_finish_decode._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.161, ptr @.str, i32 2575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s: %u: job finished: decoded %c frame %u, no frame returned (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.203 = internal global ptr @coda_finish_decode._entry.201, section ".printk_index", align 4
@coda_finish_decode._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.161, ptr @.str, i32 2578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s: %u: job finished: no frame decoded (%d) or returned (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@coda_finish_decode._entry_ptr.206 = internal global ptr @coda_finish_decode._entry.204, section ".printk_index", align 4
@trace_coda_dec_pic_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_coda_dec_rot_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_coda_bit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 843534413, i64 877088845]
@__sancov_gen_cov_switch_values.207 = internal global [9 x i64] [i64 7, i64 32, i64 4026606085, i64 4027192370, i64 4027716658, i64 4028637445, i64 4028637449, i64 4028637962, i64 4028641537]
@__sancov_gen_cov_switch_values.208 = internal global [6 x i64] [i64 4, i64 32, i64 61441, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.209 = internal global [6 x i64] [i64 4, i64 32, i64 61441, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 32, i64 875967048, i64 877088845, i64 1195724874]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 61441, i64 61472]
@__sancov_gen_cov_switch_values.213 = internal global [6 x i64] [i64 4, i64 32, i64 61441, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 61450, i64 61458]
@__sancov_gen_cov_switch_values.215 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 877088845]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.217 = internal global [5 x i64] [i64 3, i64 32, i64 875967048, i64 877088845, i64 1195724874]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 877088845]
@__sancov_gen_cov_switch_values.219 = internal global [6 x i64] [i64 4, i64 32, i64 61441, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 32, i64 61450, i64 61458]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.222 = internal global [4 x i64] [i64 2, i64 32, i64 4294967293, i64 4294967295]
@__sancov_gen_cov_switch_values.223 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1195724874]
@__sancov_gen_cov_switch_values.225 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 32, i64 61450, i64 61458]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 32, i64 61450, i64 61458]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 32, i64 61450, i64 61458]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 877088845]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 877088845]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 1448695129]
@__sancov_gen_cov_switch_values.234 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 1448695129]
@__sancov_gen_cov_switch_values.236 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1195724874]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1195724874]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 61450, i64 61458]
@___asan_gen_.240 = private unnamed_addr constant [29 x i8] c"str__coda__trace_system_name\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 36, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant [32 x i8] c"trace_event_fields_coda_bit_run\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_coda_bit_run\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [23 x i8] c"print_fmt_coda_bit_run\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"event_coda_bit_run\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [33 x i8] c"trace_event_fields_coda_bit_done\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_coda_bit_done\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [24 x i8] c"print_fmt_coda_bit_done\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"event_coda_bit_done\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [34 x i8] c"trace_event_fields_coda_buf_class\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_coda_buf_class\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [25 x i8] c"print_fmt_coda_buf_class\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [23 x i8] c"event_coda_enc_pic_run\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 73, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [24 x i8] c"event_coda_enc_pic_done\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 78, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [39 x i8] c"trace_event_fields_coda_buf_meta_class\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_coda_buf_meta_class\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [30 x i8] c"print_fmt_coda_buf_meta_class\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [21 x i8] c"event_coda_bit_queue\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 110, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant [35 x i8] c"trace_event_fields_coda_meta_class\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_coda_meta_class\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [26 x i8] c"print_fmt_coda_meta_class\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [23 x i8] c"event_coda_dec_pic_run\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 141, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant [24 x i8] c"event_coda_dec_pic_done\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 146, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant [24 x i8] c"event_coda_dec_rot_done\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 151, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c"event_coda_jpeg_run\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 157, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant [21 x i8] c"event_coda_jpeg_done\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 162, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 118, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 212, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 364, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 407, i32 6 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 957, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 964, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 979, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 986, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 990, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 993, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c"coda_bit_encode_ops\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1743, i32 31 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c"coda_bit_decode_ops\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2616, i32 31 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2641, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2649, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2653, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 34, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 52, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 83, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 116, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant [59 x i8] c"../include/trace/../../drivers/media/platform/coda/trace.h\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 13, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 108, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 264, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 280, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 286, i32 6 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 294, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 305, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 576, i32 31 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 589, i32 11 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 597, i32 30 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 608, i32 11 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1080, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1201, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1309, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1314, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1327, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1372, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1376, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 846, i32 5 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 898, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 507, i32 32 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 660, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1485, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1562, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1575, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 716, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 727, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 735, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 744, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 769, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1666, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1692, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1163, i32 7 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1708, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1710, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1767, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2079, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1875, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1960, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1976, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1985, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1998, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1833, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 1851, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2175, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2186, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2267, i32 25 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2333, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2337, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2341, i32 4 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2345, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2383, i32 4 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2393, i32 4 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2437, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2465, i32 5 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2474, i32 4 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2501, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2527, i32 4 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2535, i32 4 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2553, i32 4 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2562, i32 4 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2572, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.831 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.832 = private constant [42 x i8] c"../drivers/media/platform/coda/coda-bit.c\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.832, i32 2577, i32 4 }
@llvm.compiler.used = appending global [319 x ptr] [ptr @__bpf_trace_tp_map_coda_bit_done, ptr @__bpf_trace_tp_map_coda_bit_queue, ptr @__bpf_trace_tp_map_coda_bit_run, ptr @__bpf_trace_tp_map_coda_dec_pic_done, ptr @__bpf_trace_tp_map_coda_dec_pic_run, ptr @__bpf_trace_tp_map_coda_dec_rot_done, ptr @__bpf_trace_tp_map_coda_enc_pic_done, ptr @__bpf_trace_tp_map_coda_enc_pic_run, ptr @__bpf_trace_tp_map_coda_jpeg_done, ptr @__bpf_trace_tp_map_coda_jpeg_run, ptr @__coda_decoder_seq_init._entry, ptr @__coda_decoder_seq_init._entry.137, ptr @__coda_decoder_seq_init._entry.139, ptr @__coda_decoder_seq_init._entry.142, ptr @__coda_decoder_seq_init._entry.145, ptr @__coda_decoder_seq_init._entry.148, ptr @__coda_decoder_seq_init._entry_ptr, ptr @__coda_decoder_seq_init._entry_ptr.138, ptr @__coda_decoder_seq_init._entry_ptr.141, ptr @__coda_decoder_seq_init._entry_ptr.144, ptr @__coda_decoder_seq_init._entry_ptr.147, ptr @__coda_decoder_seq_init._entry_ptr.150, ptr @__coda_start_decoding._entry, ptr @__coda_start_decoding._entry.131, ptr @__coda_start_decoding._entry_ptr, ptr @__coda_start_decoding._entry_ptr.132, ptr @__event_coda_bit_done, ptr @__event_coda_bit_queue, ptr @__event_coda_bit_run, ptr @__event_coda_dec_pic_done, ptr @__event_coda_dec_pic_run, ptr @__event_coda_dec_rot_done, ptr @__event_coda_enc_pic_done, ptr @__event_coda_enc_pic_run, ptr @__event_coda_jpeg_done, ptr @__event_coda_jpeg_run, ptr @__tracepoint_coda_bit_done, ptr @__tracepoint_coda_bit_queue, ptr @__tracepoint_coda_bit_run, ptr @__tracepoint_coda_dec_pic_done, ptr @__tracepoint_coda_dec_pic_run, ptr @__tracepoint_coda_dec_rot_done, ptr @__tracepoint_coda_enc_pic_done, ptr @__tracepoint_coda_enc_pic_run, ptr @__tracepoint_coda_jpeg_done, ptr @__tracepoint_coda_jpeg_run, ptr @__tracepoint_ptr_coda_bit_done, ptr @__tracepoint_ptr_coda_bit_queue, ptr @__tracepoint_ptr_coda_bit_run, ptr @__tracepoint_ptr_coda_dec_pic_done, ptr @__tracepoint_ptr_coda_dec_pic_run, ptr @__tracepoint_ptr_coda_dec_rot_done, ptr @__tracepoint_ptr_coda_enc_pic_done, ptr @__tracepoint_ptr_coda_enc_pic_run, ptr @__tracepoint_ptr_coda_jpeg_done, ptr @__tracepoint_ptr_coda_jpeg_run, ptr @coda_alloc_bitstream_buffer._entry, ptr @coda_alloc_bitstream_buffer._entry_ptr, ptr @coda_bitstream_flush._entry, ptr @coda_bitstream_flush._entry_ptr, ptr @coda_bitstream_try_queue._entry, ptr @coda_bitstream_try_queue._entry.50, ptr @coda_bitstream_try_queue._entry.53, ptr @coda_bitstream_try_queue._entry.56, ptr @coda_bitstream_try_queue._entry.59, ptr @coda_bitstream_try_queue._entry_ptr, ptr @coda_bitstream_try_queue._entry_ptr.52, ptr @coda_bitstream_try_queue._entry_ptr.55, ptr @coda_bitstream_try_queue._entry_ptr.58, ptr @coda_bitstream_try_queue._entry_ptr.60, ptr @coda_check_firmware._entry, ptr @coda_check_firmware._entry.10, ptr @coda_check_firmware._entry.13, ptr @coda_check_firmware._entry.16, ptr @coda_check_firmware._entry.19, ptr @coda_check_firmware._entry.22, ptr @coda_check_firmware._entry_ptr, ptr @coda_check_firmware._entry_ptr.12, ptr @coda_check_firmware._entry_ptr.15, ptr @coda_check_firmware._entry_ptr.18, ptr @coda_check_firmware._entry_ptr.21, ptr @coda_check_firmware._entry_ptr.24, ptr @coda_decoder_drop_used_metas._entry, ptr @coda_decoder_drop_used_metas._entry_ptr, ptr @coda_enc_param_change._entry, ptr @coda_enc_param_change._entry.103, ptr @coda_enc_param_change._entry.106, ptr @coda_enc_param_change._entry.109, ptr @coda_enc_param_change._entry.112, ptr @coda_enc_param_change._entry_ptr, ptr @coda_enc_param_change._entry_ptr.105, ptr @coda_enc_param_change._entry_ptr.108, ptr @coda_enc_param_change._entry_ptr.111, ptr @coda_enc_param_change._entry_ptr.114, ptr @coda_encode_header._entry, ptr @coda_encode_header._entry_ptr, ptr @coda_fill_bitstream._entry, ptr @coda_fill_bitstream._entry.5, ptr @coda_fill_bitstream._entry_ptr, ptr @coda_fill_bitstream._entry_ptr.7, ptr @coda_finish_decode._entry, ptr @coda_finish_decode._entry.162, ptr @coda_finish_decode._entry.165, ptr @coda_finish_decode._entry.168, ptr @coda_finish_decode._entry.171, ptr @coda_finish_decode._entry.174, ptr @coda_finish_decode._entry.177, ptr @coda_finish_decode._entry.180, ptr @coda_finish_decode._entry.183, ptr @coda_finish_decode._entry.186, ptr @coda_finish_decode._entry.189, ptr @coda_finish_decode._entry.192, ptr @coda_finish_decode._entry.195, ptr @coda_finish_decode._entry.198, ptr @coda_finish_decode._entry.201, ptr @coda_finish_decode._entry.204, ptr @coda_finish_decode._entry_ptr, ptr @coda_finish_decode._entry_ptr.164, ptr @coda_finish_decode._entry_ptr.167, ptr @coda_finish_decode._entry_ptr.170, ptr @coda_finish_decode._entry_ptr.173, ptr @coda_finish_decode._entry_ptr.176, ptr @coda_finish_decode._entry_ptr.179, ptr @coda_finish_decode._entry_ptr.182, ptr @coda_finish_decode._entry_ptr.185, ptr @coda_finish_decode._entry_ptr.188, ptr @coda_finish_decode._entry_ptr.191, ptr @coda_finish_decode._entry_ptr.194, ptr @coda_finish_decode._entry_ptr.197, ptr @coda_finish_decode._entry_ptr.200, ptr @coda_finish_decode._entry_ptr.203, ptr @coda_finish_decode._entry_ptr.206, ptr @coda_finish_encode._entry, ptr @coda_finish_encode._entry.117, ptr @coda_finish_encode._entry_ptr, ptr @coda_finish_encode._entry_ptr.119, ptr @coda_irq_handler._entry, ptr @coda_irq_handler._entry.27, ptr @coda_irq_handler._entry.30, ptr @coda_irq_handler._entry_ptr, ptr @coda_irq_handler._entry_ptr.29, ptr @coda_irq_handler._entry_ptr.32, ptr @coda_prepare_decode._entry, ptr @coda_prepare_decode._entry.157, ptr @coda_prepare_decode._entry_ptr, ptr @coda_prepare_decode._entry_ptr.159, ptr @coda_prepare_encode._entry, ptr @coda_prepare_encode._entry.95, ptr @coda_prepare_encode._entry.98, ptr @coda_prepare_encode._entry_ptr, ptr @coda_prepare_encode._entry_ptr.100, ptr @coda_prepare_encode._entry_ptr.97, ptr @coda_reorder_enable._entry, ptr @coda_reorder_enable._entry_ptr, ptr @coda_seq_end_work._entry, ptr @coda_seq_end_work._entry.125, ptr @coda_seq_end_work._entry_ptr, ptr @coda_seq_end_work._entry_ptr.127, ptr @coda_setup_iram._entry, ptr @coda_setup_iram._entry.87, ptr @coda_setup_iram._entry_ptr, ptr @coda_setup_iram._entry_ptr.89, ptr @coda_start_encoding._entry, ptr @coda_start_encoding._entry.67, ptr @coda_start_encoding._entry.70, ptr @coda_start_encoding._entry.73, ptr @coda_start_encoding._entry.76, ptr @coda_start_encoding._entry.79, ptr @coda_start_encoding._entry.82, ptr @coda_start_encoding._entry_ptr, ptr @coda_start_encoding._entry_ptr.69, ptr @coda_start_encoding._entry_ptr.72, ptr @coda_start_encoding._entry_ptr.75, ptr @coda_start_encoding._entry_ptr.78, ptr @coda_start_encoding._entry_ptr.81, ptr @coda_start_encoding._entry_ptr.84, ptr @event_class_coda_bit_done, ptr @event_class_coda_bit_run, ptr @event_class_coda_buf_class, ptr @event_class_coda_buf_meta_class, ptr @event_class_coda_meta_class, ptr @event_coda_bit_done, ptr @event_coda_bit_queue, ptr @event_coda_bit_run, ptr @event_coda_dec_pic_done, ptr @event_coda_dec_pic_run, ptr @event_coda_dec_rot_done, ptr @event_coda_enc_pic_done, ptr @event_coda_enc_pic_run, ptr @event_coda_jpeg_done, ptr @event_coda_jpeg_run, ptr @str__coda__trace_system_name, ptr @trace_event_fields_coda_bit_run, ptr @trace_event_type_funcs_coda_bit_run, ptr @print_fmt_coda_bit_run, ptr @trace_event_fields_coda_bit_done, ptr @trace_event_type_funcs_coda_bit_done, ptr @print_fmt_coda_bit_done, ptr @trace_event_fields_coda_buf_class, ptr @trace_event_type_funcs_coda_buf_class, ptr @print_fmt_coda_buf_class, ptr @trace_event_fields_coda_buf_meta_class, ptr @trace_event_type_funcs_coda_buf_meta_class, ptr @print_fmt_coda_buf_meta_class, ptr @trace_event_fields_coda_meta_class, ptr @trace_event_type_funcs_coda_meta_class, ptr @print_fmt_coda_meta_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @coda_bit_encode_ops, ptr @coda_bit_decode_ops, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @coda_prepare_decode.buf, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__coda__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_coda_bit_run to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_coda_bit_run to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_coda_bit_run to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_bit_run to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_coda_bit_done to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_coda_bit_done to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_coda_bit_done to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_bit_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_coda_buf_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_coda_buf_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_coda_buf_class to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_enc_pic_run to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_enc_pic_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_coda_buf_meta_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_coda_buf_meta_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_coda_buf_meta_class to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_bit_queue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_coda_meta_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_coda_meta_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_coda_meta_class to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_dec_pic_run to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_dec_pic_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_dec_rot_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_jpeg_run to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coda_jpeg_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bitstream_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_bitstream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fill_bitstream._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_check_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_check_firmware._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_check_firmware._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_check_firmware._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_check_firmware._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_check_firmware._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bit_encode_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bit_decode_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_irq_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_irq_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bitstream_try_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bitstream_try_queue._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bitstream_try_queue._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bitstream_try_queue._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bitstream_try_queue._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_encoding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_encoding._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_encoding._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_encoding._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_encoding._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_encoding._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_encoding._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_setup_iram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_setup_iram._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_encode_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_prepare_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_prepare_encode._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_prepare_encode._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_enc_param_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_enc_param_change._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_enc_param_change._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_enc_param_change._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_enc_param_change._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_encode._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_seq_end_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_seq_end_work._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_alloc_bitstream_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_reorder_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_decoder_drop_used_metas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_prepare_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_prepare_decode._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_prepare_decode.buf to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_finish_decode._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_bit_run(ptr nocapture readnone %__data, ptr noundef %ctx, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_run, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, i32 noundef %cmd) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_bit_done(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_enc_pic_run(ptr nocapture readnone %__data, ptr noundef %ctx, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_enc_pic_run, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, ptr noundef %buf) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_enc_pic_done(ptr nocapture readnone %__data, ptr noundef %ctx, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_enc_pic_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, ptr noundef %buf) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_bit_queue(ptr nocapture readnone %__data, ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_queue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_dec_pic_run(ptr nocapture readnone %__data, ptr noundef %ctx, ptr noundef %meta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_pic_run, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, ptr noundef %meta) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_dec_pic_done(ptr nocapture readnone %__data, ptr noundef %ctx, ptr noundef %meta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_pic_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, ptr noundef %meta) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_dec_rot_done(ptr nocapture readnone %__data, ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_rot_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_jpeg_run(ptr nocapture readnone %__data, ptr noundef %ctx, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_jpeg_run, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, ptr noundef %buf) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_coda_jpeg_done(ptr nocapture readnone %__data, ptr noundef %ctx, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_jpeg_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx, ptr noundef %buf) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_coda_bit_run(ptr noundef %__data, ptr nocapture noundef readonly %ctx, i32 noundef %cmd) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !462

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !463

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor, align 8
  %minor6 = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %minor6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %minor6, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %ctx7 = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ctx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ctx7, align 4
  %cmd8 = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cmd, ptr %cmd8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_coda_bit_run(ptr noundef %__data, ptr nocapture noundef readonly %ctx, i32 noundef %cmd) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !464
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !452) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %27 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %minor, align 8
  %minor17 = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %minor17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %minor17, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %32 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx, align 8
  %ctx18 = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ctx18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ctx18, align 4
  %cmd19 = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %cmd19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cmd, ptr %cmd19, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_coda_bit_done(ptr noundef %__data, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !462

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !463

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor, align 8
  %minor6 = getelementptr inbounds %struct.trace_event_raw_coda_bit_done, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %minor6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %minor6, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %ctx7 = getelementptr inbounds %struct.trace_event_raw_coda_bit_done, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ctx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ctx7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_coda_bit_done(ptr noundef %__data, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !464
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !452) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %27 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %minor, align 8
  %minor17 = getelementptr inbounds %struct.trace_event_raw_coda_bit_done, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %minor17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %minor17, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %32 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx, align 8
  %ctx18 = getelementptr inbounds %struct.trace_event_raw_coda_bit_done, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ctx18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ctx18, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_coda_buf_class(ptr noundef %__data, ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !462

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !463

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor, align 8
  %minor6 = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %minor6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %minor6, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %index7 = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %index7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %index7, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx, align 8
  %ctx8 = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %ctx8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ctx8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_coda_buf_class(ptr noundef %__data, ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !464
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !452) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %27 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %minor, align 8
  %minor17 = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %minor17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %minor17, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 1
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  %index18 = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %index18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %index18, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %35 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx, align 8
  %ctx19 = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %ctx19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ctx19, align 4
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_coda_buf_meta_class(ptr noundef %__data, ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %meta) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !462

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !463

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor, align 8
  %minor6 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %minor6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %minor6, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %index7 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %index7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %index7, align 4
  %start = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta, i32 0, i32 4
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start, align 8
  %mask = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 8
  %and = and i32 %14, %12
  %start8 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %start8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %start8, align 4
  %end = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta, i32 0, i32 5
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  %18 = load i32, ptr %mask, align 8
  %and11 = and i32 %18, %17
  %end12 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call3, i32 0, i32 4
  %19 = ptrtoint ptr %end12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and11, ptr %end12, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 8
  %ctx13 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call3, i32 0, i32 5
  %22 = ptrtoint ptr %ctx13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ctx13, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_coda_buf_meta_class(ptr noundef %__data, ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %meta) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !464
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !452) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %27 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %minor, align 8
  %minor17 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %minor17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %minor17, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 1
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  %index18 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %index18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %index18, align 4
  %start = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta, i32 0, i32 4
  %35 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %start, align 8
  %mask = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask, align 8
  %and19 = and i32 %38, %36
  %start20 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %start20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and19, ptr %start20, align 4
  %end = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta, i32 0, i32 5
  %40 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end, align 4
  %42 = load i32, ptr %mask, align 8
  %and23 = and i32 %42, %41
  %end24 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call13, i32 0, i32 4
  %43 = ptrtoint ptr %end24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and23, ptr %end24, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %44 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idx, align 8
  %ctx25 = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %call13, i32 0, i32 5
  %46 = ptrtoint ptr %ctx25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ctx25, align 4
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_coda_meta_class(ptr noundef %__data, ptr nocapture noundef readonly %ctx, ptr noundef readonly %meta) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !462

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !463

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor, align 8
  %minor6 = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %minor6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %minor6, align 4
  %tobool7.not = icmp eq ptr %meta, null
  br i1 %tobool7.not, label %cond.end15.critedge, label %cond.true

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %start = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta, i32 0, i32 4
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start, align 8
  %mask = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 8
  %and = and i32 %11, %9
  %start8.c36 = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %start8.c36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %start8.c36, align 4
  %end = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta, i32 0, i32 5
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  %15 = load i32, ptr %mask, align 8
  %and13 = and i32 %15, %14
  br label %cond.end15

cond.end15.critedge:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %start8.c = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %start8.c to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %start8.c, align 4
  br label %cond.end15

cond.end15:                                       ; preds = %cond.end15.critedge, %cond.true
  %cond16 = phi i32 [ %and13, %cond.true ], [ 0, %cond.end15.critedge ]
  %end17 = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call3, i32 0, i32 3
  %17 = ptrtoint ptr %end17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond16, ptr %end17, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 8
  %ctx18 = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call3, i32 0, i32 4
  %20 = ptrtoint ptr %ctx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ctx18, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end15, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_coda_meta_class(ptr noundef %__data, ptr nocapture noundef readonly %ctx, ptr noundef readonly %meta) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !464
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !452) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %27 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdev, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %minor, align 8
  %minor17 = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %minor17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %minor17, align 4
  %tobool18.not = icmp eq ptr %meta, null
  br i1 %tobool18.not, label %cond.end27.critedge, label %cond.true

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %start = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta, i32 0, i32 4
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %start, align 8
  %mask = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask, align 8
  %and19 = and i32 %35, %33
  %start20.c60 = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %start20.c60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and19, ptr %start20.c60, align 4
  %end = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta, i32 0, i32 5
  %37 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end, align 4
  %39 = load i32, ptr %mask, align 8
  %and25 = and i32 %39, %38
  br label %cond.end27

cond.end27.critedge:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %start20.c = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %start20.c to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %start20.c, align 4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.end27.critedge, %cond.true
  %cond28 = phi i32 [ %and25, %cond.true ], [ 0, %cond.end27.critedge ]
  %end29 = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call13, i32 0, i32 3
  %41 = ptrtoint ptr %end29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond28, ptr %end29, align 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %42 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx, align 8
  %ctx30 = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %call13, i32 0, i32 4
  %44 = ptrtoint ptr %ctx30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ctx30, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end27, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_coda_bit_run(ptr noundef %__data, ptr noundef %ctx, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ctx to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %cmd to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_coda_bit_done(ptr noundef %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ctx to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_coda_buf_class(ptr noundef %__data, ptr noundef %ctx, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ctx to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %buf to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_coda_buf_meta_class(ptr noundef %__data, ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ctx to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %buf to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %meta to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_coda_meta_class(ptr noundef %__data, ptr noundef %ctx, ptr noundef %meta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ctx to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %meta to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_hw_reset(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !463

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %rstc = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rstc, align 4
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %call28 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 360) #11
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %8)
  %cmp29 = icmp eq i32 %8, 61472
  br i1 %cmp29, label %if.then30, label %if.end27.if.end46_crit_edge

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then30:                                        ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 10
  tail call void @coda_write(ptr noundef %1, i32 noundef 17, i32 noundef 4336) #11
  %call3277 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 4340) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %call3277)
  %cmp33.not78 = icmp eq i32 %call3277, 119
  br i1 %cmp33.not78, label %if.then30.if.end46_crit_edge, label %if.then30.while.body_crit_edge

if.then30.while.body_crit_edge:                   ; preds = %if.then30
  br label %while.body

if.then30.if.end46_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

while.body:                                       ; preds = %do.end41.while.body_crit_edge, %if.then30.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp34 = icmp slt i32 %sub, 0
  br i1 %cmp34, label %while.body.cleanup_crit_edge, label %do.end41

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end41:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !465
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !466
  %call32 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 4340) #11
  %cmp33.not = icmp eq i32 %call32, 119
  br i1 %cmp33.not, label %do.end41.if.end46_crit_edge, label %do.end41.while.body_crit_edge

do.end41.while.body_crit_edge:                    ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end41.if.end46_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end46:                                         ; preds = %do.end41.if.end46_crit_edge, %if.then30.if.end46_crit_edge, %if.end27.if.end46_crit_edge
  %11 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rstc, align 4
  %call48 = tail call i32 @reset_control_reset(ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %13 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devtype, align 4
  %product53 = getelementptr inbounds %struct.coda_devtype, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %product53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %product53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %16)
  %cmp54 = icmp eq i32 %16, 61472
  br i1 %cmp54, label %if.then55, label %if.end51.if.end56_crit_edge

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 4336) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51.if.end56_crit_edge
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 352) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, 100
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end56
  %call.i.i = tail call i32 @coda_read(ptr noundef %1, i32 noundef 352) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %while.cond.i.coda_wait_timeout.exit_crit_edge, label %while.body.i

while.cond.i.coda_wait_timeout.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_wait_timeout.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %18
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.coda_wait_timeout.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.coda_wait_timeout.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_wait_timeout.exit

coda_wait_timeout.exit:                           ; preds = %while.body.i.coda_wait_timeout.exit_crit_edge, %while.cond.i.coda_wait_timeout.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %while.body.i.coda_wait_timeout.exit_crit_edge ], [ 0, %while.cond.i.coda_wait_timeout.exit_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %call28, i32 noundef 360) #11
  br label %cleanup

cleanup:                                          ; preds = %coda_wait_timeout.exit, %if.end46.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %coda_wait_timeout.exit ], [ -2, %if.end.cleanup_crit_edge ], [ %call48, %if.end46.cleanup_crit_edge ], [ -62, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_bitstream_flush(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %inst_type = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 16
  %0 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %use_bit = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 61
  %2 = ptrtoint ptr %use_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_bit, align 8, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @coda_command_sync(ptr noundef %ctx, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bitstream_fifo = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37
  %bitstream = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39
  %6 = ptrtoint ptr %bitstream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitstream, align 8
  %size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %call7 = tail call i32 @__kfifo_init(ptr noundef %bitstream_fifo, ptr noundef %7, i32 noundef %9, i32 noundef 1) #11
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %paddr.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 1
  %12 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %paddr.i, align 4
  %out.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out.i, align 4
  %mask.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %17, %15
  %add.i = add i32 %and.i, %13
  %reg_idx.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %18 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_idx.i, align 4
  %mul.i = shl i32 %19, 3
  %add2.i = add i32 %mul.i, 288
  tail call void @coda_write(ptr noundef %11, i32 noundef %add.i, i32 noundef %add2.i) #11
  %20 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %paddr.i, align 4
  %22 = ptrtoint ptr %bitstream_fifo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bitstream_fifo, align 4
  %24 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask.i, align 4
  %and6.i = and i32 %25, %23
  %add7.i = add i32 %and6.i, %21
  %26 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_idx.i, align 4
  %mul9.i = shl i32 %27, 3
  %add10.i = add i32 %mul9.i, 292
  tail call void @coda_write(ptr noundef %11, i32 noundef %add7.i, i32 noundef %add10.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end4 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_command_sync(ptr noundef %ctx, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !463

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @coda_command_async(ptr noundef %ctx, i32 noundef %cmd)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %3, 100
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %call.i.i = tail call i32 @coda_read(ptr noundef %1, i32 noundef 352) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %while.cond.i.coda_wait_timeout.exit_crit_edge, label %while.body.i

while.cond.i.coda_wait_timeout.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_wait_timeout.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.coda_wait_timeout.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.coda_wait_timeout.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_wait_timeout.exit

coda_wait_timeout.exit:                           ; preds = %while.body.i.coda_wait_timeout.exit_crit_edge, %while.cond.i.coda_wait_timeout.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %while.body.i.coda_wait_timeout.exit_crit_edge ], [ 0, %while.cond.i.coda_wait_timeout.exit_crit_edge ]
  tail call fastcc void @trace_coda_bit_done(ptr noundef %ctx)
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_fill_bitstream(ptr noundef %ctx, ptr noundef %buffer_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 55
  %0 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_stream_param, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i181 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %num_rdy.i181 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rdy.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not182 = icmp eq i8 %5, 0
  br i1 %cmp.not182, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %codec = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %num_metas = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 47
  %num_internal_frames = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %buffer_meta_list = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 45
  %bitstream_fifo.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37
  %qsequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 12
  %tobool29.not = icmp eq ptr %buffer_list, null
  %prev.i = getelementptr inbounds %struct.list_head, ptr %buffer_list, i32 0, i32 1
  %out.i.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 2
  %idx.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %paddr.i.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 1
  %mask.i.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %reg_idx.i.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %hold.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 40
  %buffer_meta_lock = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 46
  %prev.i167 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 45, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %3, %while.body.lr.ph ], [ %40, %while.cond.backedge.while.body_crit_edge ]
  %7 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %codec, align 4
  %src_fourcc = getelementptr inbounds %struct.coda_codec, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %src_fourcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %10)
  %cmp1 = icmp eq i32 %10, 1195724874
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.end4_crit_edge

while.body.if.end4_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true:                                    ; preds = %while.body
  %11 = ptrtoint ptr %num_metas to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_metas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp2 = icmp sgt i32 %12, 1
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %while.body.if.end4_crit_edge
  %13 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_internal_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end4.if.end14_crit_edge, label %land.lhs.true6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

land.lhs.true6:                                   ; preds = %if.end4
  %15 = ptrtoint ptr %num_metas to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_metas, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp9.not = icmp slt i32 %16, %14
  br i1 %cmp9.not, label %land.lhs.true6.if.end14_crit_edge, label %if.then10

land.lhs.true6.if.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true6
  %17 = ptrtoint ptr %buffer_meta_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer_meta_list, align 8
  %end = getelementptr inbounds %struct.coda_buffer_meta, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end, align 4
  %21 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bitstream_fifo.i, align 8
  %add.i = add i32 %20, 255
  %and.i = and i32 %add.i, -256
  %sub.i = sub i32 %22, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 512
  br i1 %cmp.i, label %if.then10.cleanup_crit_edge, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.then10.if.end14_crit_edge, %land.lhs.true6.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #11
  %23 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %codec, align 4
  %src_fourcc19 = getelementptr inbounds %struct.coda_codec, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %src_fourcc19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src_fourcc19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %26)
  %cmp20 = icmp eq i32 %26, 1195724874
  br i1 %cmp20, label %land.lhs.true21, label %if.end14.if.end35_crit_edge

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true21:                                  ; preds = %if.end14
  %call22 = tail call zeroext i1 @coda_jpeg_check_buffer(ptr noundef %ctx, ptr noundef %call.i) #11
  br i1 %call22, label %land.lhs.true21.if.end35_crit_edge, label %do.end

land.lhs.true21.if.end35_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true21
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %qsequence to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qsequence, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %30) #14
  %31 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i156 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %32, i32 0, i32 8
  %call.i157 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i156) #11
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %do.end
  %list = getelementptr inbounds %struct.v4l2_m2m_buffer, ptr %call.i157, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %34, ptr noundef nonnull %buffer_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then30.while.cond.backedge_crit_edge

if.then30.while.cond.backedge_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %prev.i, align 4
  %36 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buffer_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.v4l2_m2m_buffer, ptr %call.i157, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list, ptr %34, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef %call.i157, i32 noundef 6) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else99, %if.end.i.i175, %if.then93.while.cond.backedge_crit_edge, %if.then39, %if.else, %if.end.i.i, %if.then30.while.cond.backedge_crit_edge
  %39 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %40, i32 0, i32 8, i32 3
  %41 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_rdy.i, align 4
  %cmp.not = icmp eq i8 %42, 0
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true21.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 0
  br i1 %cmp.not.i, label %if.end35.if.then39_crit_edge, label %vb2_get_plane_payload.exit

if.end35.if.then39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

vb2_get_plane_payload.exit:                       ; preds = %if.end35
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %45 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool38.not = icmp eq i32 %46, 0
  br i1 %tobool38.not, label %vb2_get_plane_payload.exit.if.then39_crit_edge, label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.if.then39_crit_edge:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then39:                                        ; preds = %vb2_get_plane_payload.exit.if.then39_crit_edge, %if.end35.if.then39_crit_edge
  %47 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i158 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %48, i32 0, i32 8
  %call.i159 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i158) #11
  tail call void @vb2_buffer_done(ptr noundef %call.i159, i32 noundef 5) #11
  br label %while.cond.backedge

vb2_get_plane_payload.exit.i:                     ; preds = %vb2_get_plane_payload.exit
  %49 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bitstream_fifo.i, align 8
  %51 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytesused.i, align 4
  %call2.i = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i, i32 noundef 0) #11
  %53 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bitstream_fifo.i, align 4
  %55 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %out.i.i, align 4
  %sub.i.i = add i32 %52, 512
  %add.i160 = add i32 %sub.i.i, %54
  %add4.i = sub i32 %add.i160, %56
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %58)
  %cmp.not.i161 = icmp ult i32 %add4.i, %58
  br i1 %cmp.not.i161, label %if.end.i, label %vb2_get_plane_payload.exit.i.cleanup_crit_edge

vb2_get_plane_payload.exit.i.cleanup_crit_edge:   ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %vb2_get_plane_payload.exit.i
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %60, i32 0, i32 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name.i) #14
  br label %if.then45

if.end7.i:                                        ; preds = %if.end.i
  %61 = ptrtoint ptr %qsequence to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qsequence, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp8.i = icmp eq i32 %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %52)
  %cmp9.i = icmp ult i32 %52, 512
  %or.cond.i = select i1 %cmp8.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %if.then10.i, label %if.end7.i.if.end81.i_crit_edge

if.end7.i.if.end81.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

if.then10.i:                                      ; preds = %if.end7.i
  %call.i.i162 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i, i32 noundef 0) #11
  %63 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %codec, align 4
  %src_fourcc.i.i = getelementptr inbounds %struct.coda_codec, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %src_fourcc.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %src_fourcc.i.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %66, label %if.then10.i.do.body54.i_crit_edge [
    i32 843534413, label %sw.bb.i.i
    i32 877088845, label %sw.bb2.i.i
  ]

if.then10.i.do.body54.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i

sw.bb.i.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @coda_mpeg2_parse_headers(ptr noundef %ctx, ptr noundef %call.i.i162, i32 noundef %52) #11
  br label %coda_buffer_parse_headers.exit.i

sw.bb2.i.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = tail call i32 @coda_mpeg4_parse_headers(ptr noundef %ctx, ptr noundef %call.i.i162, i32 noundef %52) #11
  br label %coda_buffer_parse_headers.exit.i

coda_buffer_parse_headers.exit.i:                 ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %size.0.i.i = phi i32 [ %call3.i.i, %sw.bb2.i.i ], [ %call1.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.i.i)
  %tobool12.not.i = icmp eq i32 %size.0.i.i, 0
  br i1 %tobool12.not.i, label %coda_buffer_parse_headers.exit.i.do.body54.i_crit_edge, label %do.body14.i

coda_buffer_parse_headers.exit.i.do.body54.i_crit_edge: ; preds = %coda_buffer_parse_headers.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i

do.body14.i:                                      ; preds = %coda_buffer_parse_headers.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %68 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp15.i = icmp sgt i32 %68, 0
  br i1 %cmp15.i, label %do.end22.i, label %do.body14.i.for.body.i.preheader_crit_edge

do.body14.i.for.body.i.preheader_crit_edge:       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

do.end22.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctx, align 8
  %name26.i = getelementptr inbounds %struct.v4l2_device, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx.i, align 8
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name26.i, i32 noundef %72, i32 noundef %size.0.i.i) #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end22.i, %do.body14.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end48.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0162.i = phi i32 [ %add53.i, %if.end48.i.for.body.i_crit_edge ], [ %52, %for.body.i.preheader ]
  %call.i146.i = tail call i32 @__kfifo_in(ptr noundef %bitstream_fifo.i, ptr noundef nonnull %call2.i, i32 noundef %size.0.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i146.i, i32 %size.0.i.i)
  %cmp.i.i = icmp ult i32 %call.i146.i, %size.0.i.i
  %73 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx, align 8
  br i1 %cmp.i.i, label %for.body.i.cleanup.sink.split_crit_edge, label %if.end48.i

for.body.i.cleanup.sink.split_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end48.i:                                       ; preds = %for.body.i
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %78)
  %cmp50.i = icmp ne i32 %78, 61472
  %add53.i = add i32 %i.0162.i, %size.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add53.i)
  %cmp35.i = icmp slt i32 %add53.i, 512
  %or.cond163.i = select i1 %cmp50.i, i1 %cmp35.i, i1 false
  br i1 %or.cond163.i, label %if.end48.i.for.body.i_crit_edge, label %if.end48.i.if.end76.i_crit_edge

if.end48.i.if.end76.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i

if.end48.i.for.body.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.body54.i:                                      ; preds = %coda_buffer_parse_headers.exit.i.do.body54.i_crit_edge, %if.then10.i.do.body54.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %79 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp55.i = icmp sgt i32 %79, 0
  br i1 %cmp55.i, label %do.end62.i, label %do.body54.i.if.end76.i_crit_edge

do.body54.i.if.end76.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i

do.end62.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx, align 8
  %name66.i = getelementptr inbounds %struct.v4l2_device, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %idx.i, align 8
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name66.i, i32 noundef %83) #14
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end62.i, %do.body54.i.if.end76.i_crit_edge, %if.end48.i.if.end76.i_crit_edge
  %84 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %codec, align 4
  %src_fourcc.i = getelementptr inbounds %struct.coda_codec, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %src_fourcc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %src_fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %87)
  %cmp77.i = icmp eq i32 %87, 875967048
  br i1 %cmp77.i, label %if.then78.i, label %if.end76.i.if.end81.i_crit_edge

if.end76.i.if.end81.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

if.then78.i:                                      ; preds = %if.end76.i
  %sub.i163 = sub i32 512, %52
  %88 = tail call i32 @llvm.umax.i32(i32 %sub.i163, i32 6) #11
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %88, i32 noundef 3264) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then78.i.if.end81.i_crit_edge, label %if.end2.i.i

if.then78.i.if.end81.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

if.end2.i.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i147.i = tail call i32 @coda_h264_filler_nal(i32 noundef %88, ptr noundef nonnull %call9.i.i.i) #11
  %call4.i.i = tail call i32 @__kfifo_in(ptr noundef %bitstream_fifo.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %88) #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end2.i.i, %if.then78.i.if.end81.i_crit_edge, %if.end76.i.if.end81.i_crit_edge, %if.end7.i.if.end81.i_crit_edge
  %call.i150.i = tail call i32 @__kfifo_in(ptr noundef %bitstream_fifo.i, ptr noundef nonnull %call2.i, i32 noundef %52) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i150.i, i32 %52)
  %cmp.i151.i = icmp ult i32 %call.i150.i, %52
  br i1 %cmp.i151.i, label %do.end87.i, label %if.end94.i

do.end87.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctx, align 8
  br label %cleanup.sink.split

if.end94.i:                                       ; preds = %if.end81.i
  %91 = ptrtoint ptr %qsequence to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %qsequence, align 4
  %inc.i = add i32 %92, 1
  store i32 %inc.i, ptr %qsequence, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %93 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %sequence.i, align 8
  %94 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctx, align 8
  %m2m_dev.i = getelementptr inbounds %struct.coda_dev, ptr %95, i32 0, i32 18
  %96 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %m2m_dev.i, align 8
  %call97.i = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %97) #11
  %cmp98.i = icmp eq ptr %call97.i, %ctx
  br i1 %cmp98.i, label %if.then99.i, label %if.end94.i.if.end100.i_crit_edge

if.end94.i.if.end100.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i

if.then99.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctx, align 8
  %100 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %paddr.i.i, align 4
  %102 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bitstream_fifo.i, align 4
  %104 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %105, %103
  %add.i.i = add i32 %and.i.i, %101
  %106 = ptrtoint ptr %reg_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %reg_idx.i.i, align 4
  %mul.i.i = shl i32 %107, 3
  %add2.i.i = add i32 %mul.i.i, 292
  tail call void @coda_write(ptr noundef %99, i32 noundef %add.i.i, i32 noundef %add2.i.i) #11
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then99.i, %if.end94.i.if.end100.i_crit_edge
  %flags.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i, align 8
  %and.i164 = and i32 %109, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool101.not.i = icmp eq i32 %and.i164, 0
  br i1 %tobool101.not.i, label %if.end100.i.if.end103.i_crit_edge, label %if.then102.i

if.end100.i.if.end103.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

if.then102.i:                                     ; preds = %if.end100.i
  %110 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx, align 8
  %112 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bit_stream_param, align 8
  %or.i.i = or i32 %113, 4
  store i32 %or.i.i, ptr %bit_stream_param, align 8
  %devtype.i.i = getelementptr inbounds %struct.coda_dev, ptr %111, i32 0, i32 3
  %114 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %devtype.i.i, align 4
  %product.i.i = getelementptr inbounds %struct.coda_devtype, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %product.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %117)
  %cmp.i154.i = icmp eq i32 %117, 61472
  br i1 %cmp.i154.i, label %land.lhs.true.i.i, label %if.then102.i.if.end103.i_crit_edge

if.then102.i.if.end103.i_crit_edge:               ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

land.lhs.true.i.i:                                ; preds = %if.then102.i
  %call.i.i.i = tail call i32 @coda_read(ptr noundef %111, i32 noundef 352) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i155.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i155.i, label %land.lhs.true.i.i.if.end103.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.if.end103.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %118 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %idx.i, align 8
  %call3.i156.i = tail call i32 @coda_read(ptr noundef %111, i32 noundef 360) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %call3.i156.i)
  %cmp4.i.i = icmp eq i32 %119, %call3.i156.i
  br i1 %cmp4.i.i, label %if.then.i157.i, label %land.lhs.true2.i.i.if.end103.i_crit_edge

land.lhs.true2.i.i.if.end103.i_crit_edge:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

if.then.i157.i:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bit_stream_param, align 8
  tail call void @coda_write(ptr noundef %111, i32 noundef %121, i32 noundef 276) #11
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then.i157.i, %land.lhs.true2.i.i.if.end103.i_crit_edge, %land.lhs.true.i.i.if.end103.i_crit_edge, %if.then102.i.if.end103.i_crit_edge, %if.end100.i.if.end103.i_crit_edge
  %122 = ptrtoint ptr %hold.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %hold.i, align 8
  br label %if.then45

if.then45:                                        ; preds = %if.end103.i, %do.end.i
  %123 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i165 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %124, i32 0, i32 8
  %call.i166 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i165) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %125 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3264, i32 noundef 56) #16
  %tobool50.not = icmp eq ptr %call7.i, null
  br i1 %tobool50.not, label %if.then45.if.end91_crit_edge, label %if.then51

if.then45.if.end91_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then51:                                        ; preds = %if.then45
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i166, i32 0, i32 4
  %126 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sequence, align 8
  %sequence52 = getelementptr inbounds %struct.coda_buffer_meta, ptr %call7.i, i32 0, i32 1
  %128 = ptrtoint ptr %sequence52 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %sequence52, align 8
  %timecode = getelementptr inbounds %struct.coda_buffer_meta, ptr %call7.i, i32 0, i32 2
  %timecode53 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i166, i32 0, i32 3
  %129 = call ptr @memcpy(ptr %timecode, ptr %timecode53, i32 16)
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i166, i32 0, i32 5
  %130 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %timestamp, align 8
  %timestamp55 = getelementptr inbounds %struct.coda_buffer_meta, ptr %call7.i, i32 0, i32 3
  %132 = ptrtoint ptr %timestamp55 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %timestamp55, align 8
  %start56 = getelementptr inbounds %struct.coda_buffer_meta, ptr %call7.i, i32 0, i32 4
  %133 = ptrtoint ptr %start56 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %50, ptr %start56, align 8
  %134 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bitstream_fifo.i, align 8
  %end59 = getelementptr inbounds %struct.coda_buffer_meta, ptr %call7.i, i32 0, i32 5
  %136 = ptrtoint ptr %end59 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %end59, align 4
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i166, i32 0, i32 1
  %137 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags, align 8
  %and60 = and i32 %138, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %last = getelementptr inbounds %struct.coda_buffer_meta, ptr %call7.i, i32 0, i32 6
  %and60.lobit = lshr exact i32 %and60, 20
  %139 = trunc i32 %and60.lobit to i8
  %140 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %last, align 8
  br i1 %tobool61.not, label %if.then51.if.end86_crit_edge, label %do.body65

if.then51.if.end86_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

do.body65:                                        ; preds = %if.then51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %141 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp66 = icmp sgt i32 %141, 0
  br i1 %cmp66, label %do.end73, label %do.body65.if.end86_crit_edge

do.body65.if.end86_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

do.end73:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ctx, align 8
  %name77 = getelementptr inbounds %struct.v4l2_device, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %idx.i, align 8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name77, i32 noundef %145) #14
  br label %if.end86

if.end86:                                         ; preds = %do.end73, %do.body65.if.end86_crit_edge, %if.then51.if.end86_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %buffer_meta_lock) #11
  %146 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %prev.i167, align 4
  %call.i.i168 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %147, ptr noundef %buffer_meta_list) #11
  br i1 %call.i.i168, label %if.end.i.i170, label %if.end86.list_add_tail.exit171_crit_edge

if.end86.list_add_tail.exit171_crit_edge:         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit171

if.end.i.i170:                                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %148 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call7.i, ptr %prev.i167, align 4
  %149 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %buffer_meta_list, ptr %call7.i, align 8
  %prev3.i.i169 = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %150 = ptrtoint ptr %prev3.i.i169 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %147, ptr %prev3.i.i169, align 4
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %call7.i, ptr %147, align 4
  br label %list_add_tail.exit171

list_add_tail.exit171:                            ; preds = %if.end.i.i170, %if.end86.list_add_tail.exit171_crit_edge
  %152 = ptrtoint ptr %num_metas to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_metas, align 4
  %inc = add i32 %153, 1
  store i32 %inc, ptr %num_metas, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buffer_meta_lock) #11
  tail call fastcc void @trace_coda_bit_queue(ptr noundef %ctx, ptr noundef %call.i166, ptr noundef nonnull %call7.i)
  br label %if.end91

if.end91:                                         ; preds = %list_add_tail.exit171, %if.then45.if.end91_crit_edge
  br i1 %tobool29.not, label %if.else99, label %if.then93

if.then93:                                        ; preds = %if.end91
  %list98 = getelementptr inbounds %struct.v4l2_m2m_buffer, ptr %call.i166, i32 0, i32 1
  %154 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i, align 4
  %call.i.i173 = tail call zeroext i1 @__list_add_valid(ptr noundef %list98, ptr noundef %155, ptr noundef nonnull %buffer_list) #11
  br i1 %call.i.i173, label %if.end.i.i175, label %if.then93.while.cond.backedge_crit_edge

if.then93.while.cond.backedge_crit_edge:          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end.i.i175:                                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %list98, ptr %prev.i, align 4
  %157 = ptrtoint ptr %list98 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %buffer_list, ptr %list98, align 4
  %prev3.i.i174 = getelementptr inbounds %struct.v4l2_m2m_buffer, ptr %call.i166, i32 0, i32 1, i32 1
  %158 = ptrtoint ptr %prev3.i.i174 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev3.i.i174, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %list98, ptr %155, align 4
  br label %while.cond.backedge

if.else99:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef %call.i166, i32 noundef 5) #11
  br label %while.cond.backedge

cleanup.sink.split:                               ; preds = %do.end87.i, %for.body.i.cleanup.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ %90, %do.end87.i ], [ %74, %for.body.i.cleanup.sink.split_crit_edge ]
  %name45.i = getelementptr inbounds %struct.v4l2_device, ptr %.lcssa.sink, i32 0, i32 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name45.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %vb2_get_plane_payload.exit.i.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @coda_jpeg_check_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_coda_bit_queue(ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_queue, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_coda_bit_queue, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !468

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !462

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !469
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_queue, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !470
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !470
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !462

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !471
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_queue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_bit_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_coda_bit_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 114, ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !472
  %38 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_bit_stream_end_flag(ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 55
  %2 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_stream_param, align 8
  %or = or i32 %3, 4
  store i32 %or, ptr %bit_stream_param, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %7)
  %cmp = icmp eq i32 %7, 61472
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call i32 @coda_read(ptr noundef %1, i32 noundef 352) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %call3 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 360) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call3)
  %cmp4 = icmp eq i32 %9, %call3
  br i1 %cmp4, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit_stream_param, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %11, i32 noundef 276) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_check_firmware(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_per = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_per, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_ahb = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ahb, align 8
  %call.i135 = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i136 = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i136, label %if.end.i139, label %if.end.err_clk_ahb_crit_edge

if.end.err_clk_ahb_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clk_ahb

if.end.i139:                                      ; preds = %if.end
  %call1.i137 = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137)
  %tobool2.not.i138 = icmp eq i32 %call1.i137, 0
  br i1 %tobool2.not.i138, label %if.end4, label %if.end.i139.err_clk_ahb.sink.split_crit_edge

if.end.i139.err_clk_ahb.sink.split_crit_edge:     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clk_ahb.sink.split

if.end4:                                          ; preds = %if.end.i139
  tail call void @coda_write(ptr noundef %dev, i32 noundef 0, i32 noundef 448) #11
  tail call void @coda_write(ptr noundef %dev, i32 noundef 1, i32 noundef 352) #11
  tail call void @coda_write(ptr noundef %dev, i32 noundef 0, i32 noundef 360) #11
  tail call void @coda_write(ptr noundef %dev, i32 noundef 0, i32 noundef 364) #11
  tail call void @coda_write(ptr noundef %dev, i32 noundef 15, i32 noundef 356) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, 100
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end4
  %call.i.i = tail call i32 @coda_read(ptr noundef %dev, i32 noundef 352) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i143 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i143, label %if.end9, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %5
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #14
  %6 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ahb, align 8
  tail call void @clk_disable(ptr noundef %7) #11
  br label %err_clk_ahb.sink.split

if.end9:                                          ; preds = %while.cond.i
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devtype, align 4
  %product10 = getelementptr inbounds %struct.coda_devtype, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %product10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %product10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %11)
  %cmp = icmp eq i32 %11, 61472
  br i1 %cmp, label %if.then11, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @coda_read(ptr noundef %dev, i32 noundef 452) #11
  %name18 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name18, i32 noundef %call12) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then11, %if.end9.if.end21_crit_edge
  %call22 = tail call i32 @coda_read(ptr noundef %dev, i32 noundef 448) #11
  %shr = lshr i32 %call22, 16
  %12 = trunc i32 %call22 to i16
  %13 = lshr i16 %12, 12
  %14 = lshr i16 %12, 8
  %conv28 = and i16 %14, 15
  %conv30 = and i16 %12, 255
  %15 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %16) #11
  tail call void @clk_unprepare(ptr noundef %16) #11
  %17 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_ahb, align 8
  tail call void @clk_disable(ptr noundef %18) #11
  tail call void @clk_unprepare(ptr noundef %18) #11
  %19 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devtype, align 4
  %product35 = getelementptr inbounds %struct.coda_devtype, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %product35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %product35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %22)
  %cmp36.not = icmp eq i32 %shr, %22
  %name61 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  br i1 %cmp36.not, label %do.end58, label %do.end41

do.end41:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call ptr @coda_product_name(i32 noundef %22) #11
  %call50 = tail call ptr @coda_product_name(i32 noundef %shr) #11
  %conv51 = zext i16 %13 to i32
  %conv52 = zext i16 %conv28 to i32
  %conv53 = zext i16 %conv30 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name61, ptr noundef %call48, ptr noundef %call50, i32 noundef %conv51, i32 noundef %conv52, i32 noundef %conv53) #14
  br label %cleanup

do.end58:                                         ; preds = %if.end21
  %call64 = tail call ptr @coda_product_name(i32 noundef %shr) #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name61, ptr noundef %call64) #14
  %call66 = tail call fastcc zeroext i1 @coda_firmware_supported(i32 noundef %call22)
  %conv75 = zext i16 %13 to i32
  %conv76 = zext i16 %conv28 to i32
  %conv77 = zext i16 %conv30 to i32
  br i1 %call66, label %do.end70, label %do.end81

do.end70:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name61, i32 noundef %conv75, i32 noundef %conv76, i32 noundef %conv77) #14
  br label %cleanup

do.end81:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name61, i32 noundef %conv75, i32 noundef %conv76, i32 noundef %conv77) #14
  br label %cleanup

err_clk_ahb.sink.split:                           ; preds = %do.end, %if.end.i139.err_clk_ahb.sink.split_crit_edge
  %.sink = phi ptr [ %7, %do.end ], [ %3, %if.end.i139.err_clk_ahb.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -5, %do.end ], [ %call1.i137, %if.end.i139.err_clk_ahb.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %err_clk_ahb

err_clk_ahb:                                      ; preds = %err_clk_ahb.sink.split, %if.end.err_clk_ahb_crit_edge
  %ret.0 = phi i32 [ %call.i135, %if.end.err_clk_ahb_crit_edge ], [ %ret.0.ph, %err_clk_ahb.sink.split ]
  %23 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %24) #11
  tail call void @clk_unprepare(ptr noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %err_clk_ahb, %do.end81, %do.end70, %do.end41, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end41 ], [ 0, %do.end81 ], [ 0, %do.end70 ], [ %ret.0, %err_clk_ahb ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_product_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @coda_firmware_supported(i32 noundef %vernum) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %vernum to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %vernum, label %for.cond.6 [
    i32 -268361211, label %entry.cleanup_crit_edge
    i32 -267774926, label %entry.cleanup_crit_edge6
    i32 -267250638, label %entry.cleanup_crit_edge7
    i32 -266329851, label %entry.cleanup_crit_edge8
    i32 -266329847, label %entry.cleanup_crit_edge9
    i32 -266329334, label %entry.cleanup_crit_edge10
    i32 -266325759, label %entry.cleanup_crit_edge11
  ]

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.6:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.cond.6, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge6, %entry.cleanup_crit_edge7, %entry.cleanup_crit_edge8, %entry.cleanup_crit_edge9, %entry.cleanup_crit_edge10, %entry.cleanup_crit_edge11
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %for.cond.6 ], [ true, %entry.cleanup_crit_edge6 ], [ true, %entry.cleanup_crit_edge7 ], [ true, %entry.cleanup_crit_edge8 ], [ true, %entry.cleanup_crit_edge9 ], [ true, %entry.cleanup_crit_edge10 ], [ true, %entry.cleanup_crit_edge11 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_encoder_queue_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_encoder_reqbufs(ptr noundef %ctx, ptr nocapture noundef readonly %rb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %rb, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  %call2 = tail call fastcc i32 @coda_alloc_context_buffers(ptr noundef %ctx, ptr noundef %q_data.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.then1.if.end6_crit_edge

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %slicebuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 43
  tail call void @coda_free_aux_buf(ptr noundef %5, ptr noundef %slicebuf.i) #11
  %psbuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 42
  tail call void @coda_free_aux_buf(ptr noundef %5, ptr noundef %psbuf.i) #11
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 61441
  br i1 %cmp.not.i, label %if.else.coda_free_context_buffers.exit_crit_edge, label %if.then.i

if.else.coda_free_context_buffers.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_free_context_buffers.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %workbuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 49
  tail call void @coda_free_aux_buf(ptr noundef %5, ptr noundef %workbuf.i) #11
  br label %coda_free_context_buffers.exit

coda_free_context_buffers.exit:                   ; preds = %if.then.i, %if.else.coda_free_context_buffers.exit_crit_edge
  %parabuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41
  tail call void @coda_free_aux_buf(ptr noundef %5, ptr noundef %parabuf.i) #11
  br label %if.end6

if.end6:                                          ; preds = %coda_free_context_buffers.exit, %if.then1.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_start_encoding(ptr noundef %ctx) #0 align 64 {
entry:
  %dst_fourcc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_fourcc) #11
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  %fourcc = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 4
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
  %4 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dst_fourcc, align 4
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #11
  %call.i751 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #11
  %7 = ptrtoint ptr %call.i751 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i751, align 4
  %sizeimage = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 3
  %9 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage, align 4
  %call.i752 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i752)
  %cmp.i.not = icmp eq i32 %call.i752, 0
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %12)
  %cmp = icmp eq i32 %12, 1195724874
  br i1 %cmp, label %if.then8, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then8:                                         ; preds = %if.end
  %jpeg_qmat_tab = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21
  %13 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %jpeg_qmat_tab, align 8
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.then10, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 64) #16
  %16 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %jpeg_qmat_tab, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.then8.if.end15_crit_edge
  %arrayidx18 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %if.then20, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i750 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 64) #16
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i750, ptr %arrayidx18, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end15.if.end25_crit_edge
  %jpeg_quality = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 19
  %21 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %jpeg_quality, align 4
  %conv = zext i8 %22 to i32
  tail call void @coda_set_jpeg_compression_quality(ptr noundef %ctx, i32 noundef %conv) #11
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end.if.end27_crit_edge
  %coda_mutex = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %coda_mutex, i32 noundef 0) #11
  %paddr = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41, i32 1
  %23 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %paddr, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %24, i32 noundef 264) #11
  %reg_idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %25 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_idx, align 4
  %mul = shl i32 %26, 3
  %add = add i32 %mul, 288
  tail call void @coda_write(ptr noundef %1, i32 noundef %8, i32 noundef %add) #11
  %27 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_idx, align 4
  %mul29 = shl i32 %28, 3
  %add30 = add i32 %mul29, 292
  tail call void @coda_write(ptr noundef %1, i32 noundef %8, i32 noundef %add30) #11
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %product, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %32, label %if.end27.sw.epilog_crit_edge [
    i32 61441, label %if.end27.sw.epilog.sink.split_crit_edge
    i32 61472, label %sw.bb31
    i32 61450, label %if.end27.sw.bb32_crit_edge
    i32 61458, label %if.end27.sw.bb32_crit_edge762
  ]

if.end27.sw.bb32_crit_edge762:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end27.sw.bb32_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end27.sw.epilog.sink.split_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 4268) #11
  br label %sw.bb32

sw.bb32:                                          ; preds = %sw.bb31, %if.end27.sw.bb32_crit_edge, %if.end27.sw.bb32_crit_edge762
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb32, %if.end27.sw.epilog.sink.split_crit_edge
  %.sink756 = phi i32 [ 48, %sw.bb32 ], [ 24, %if.end27.sw.epilog.sink.split_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %.sink756, i32 noundef 268) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end27.sw.epilog_crit_edge
  %frame_mem_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 57
  %34 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_mem_ctrl, align 8
  %and = and i32 %35, -3589
  store i32 %and, ptr %frame_mem_ctrl, align 8
  %fourcc33 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 4
  %36 = ptrtoint ptr %fourcc33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fourcc33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %37)
  %cmp34 = icmp eq i32 %37, 842094158
  br i1 %cmp34, label %if.then36, label %sw.epilog.if.end38_crit_edge

sw.epilog.if.end38_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %and, 4
  %38 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %frame_mem_ctrl, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %sw.epilog.if.end38_crit_edge
  %tiled_map_type = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %39 = ptrtoint ptr %tiled_map_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tiled_map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp39 = icmp eq i32 %40, 1
  br i1 %cmp39, label %if.then41, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %frame_mem_ctrl, align 8
  %or43 = or i32 %42, 3584
  store i32 %or43, ptr %frame_mem_ctrl, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %43 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame_mem_ctrl, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %44, i32 noundef 272) #11
  %45 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %devtype, align 4
  %product47 = getelementptr inbounds %struct.coda_devtype, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %product47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %product47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %48)
  %cmp48 = icmp eq i32 %48, 61441
  br i1 %cmp48, label %if.then50, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %paddr51 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 14, i32 1
  %49 = ptrtoint ptr %paddr51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %paddr51, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %50, i32 noundef 320) #11
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end44.if.end52_crit_edge
  %51 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %devtype, align 4
  %product54 = getelementptr inbounds %struct.coda_devtype, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %product54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %product54, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %54, label %if.end52.sw.epilog90_crit_edge [
    i32 61441, label %sw.bb55
    i32 61450, label %if.end52.sw.bb61_crit_edge
    i32 61458, label %if.end52.sw.bb61_crit_edge763
    i32 61472, label %if.end52.sw.bb80_crit_edge
  ]

if.end52.sw.bb80_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb80

if.end52.sw.bb61_crit_edge763:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb61

if.end52.sw.bb61_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb61

if.end52.sw.epilog90_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog90

sw.bb55:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %width = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 2
  %56 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width, align 4
  %and56 = shl i32 %57, 10
  %shl = and i32 %and56, 1047552
  %height = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 3
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %and58 = and i32 %59, 1023
  %or60 = or i32 %shl, %and58
  br label %sw.epilog90

sw.bb61:                                          ; preds = %if.end52.sw.bb61_crit_edge, %if.end52.sw.bb61_crit_edge763
  %60 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dst_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %61)
  %cmp62 = icmp eq i32 %61, 875967048
  br i1 %cmp62, label %if.then64, label %sw.bb61.sw.bb80_crit_edge

sw.bb61.sw.bb80_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb80

if.then64:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #13
  %width66 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %width66 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %width66, align 4
  %sub = shl i32 %63, 16
  %or67 = add i32 %sub, -65536
  %add68 = or i32 %or67, 983040
  %shl70 = add i32 %add68, 65536
  %height72 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 3
  %64 = ptrtoint ptr %height72 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height72, align 4
  %sub73 = add i32 %65, 65535
  %or74 = or i32 %sub73, 15
  %add75 = add i32 %or74, 1
  %and76 = and i32 %add75, 65520
  %or78 = or i32 %and76, %shl70
  br label %sw.epilog90

sw.bb80:                                          ; preds = %sw.bb61.sw.bb80_crit_edge, %if.end52.sw.bb80_crit_edge
  %width82 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %width82 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %width82, align 4
  %shl84 = shl i32 %67, 16
  %height86 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 3
  %68 = ptrtoint ptr %height86 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height86, align 4
  %and87 = and i32 %69, 65535
  %or89 = or i32 %and87, %shl84
  br label %sw.epilog90

sw.epilog90:                                      ; preds = %sw.bb80, %if.then64, %sw.bb55, %if.end52.sw.epilog90_crit_edge
  %value.0 = phi i32 [ 0, %if.end52.sw.epilog90_crit_edge ], [ %or89, %sw.bb80 ], [ %or78, %if.then64 ], [ %or60, %sw.bb55 ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %value.0, i32 noundef 400) #11
  %70 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dst_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %71)
  %cmp91 = icmp eq i32 %71, 1195724874
  br i1 %cmp91, label %if.then93, label %sw.epilog90.if.end95_crit_edge

sw.epilog90.if.end95_crit_edge:                   ; preds = %sw.epilog90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then93:                                        ; preds = %sw.epilog90
  call void @__sanitizer_cov_trace_pc() #13
  %framerate = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 30
  %72 = ptrtoint ptr %framerate to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %framerate, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %sw.epilog90.if.end95_crit_edge
  %framerate97 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 30
  %73 = ptrtoint ptr %framerate97 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %framerate97, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %74, i32 noundef 404) #11
  %codec = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %75 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %codec, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %codec_mode = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 27
  %79 = ptrtoint ptr %codec_mode to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %codec_mode, align 8
  %80 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dst_fourcc, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %81, label %do.end143 [
    i32 877088845, label %sw.bb99
    i32 875967048, label %sw.bb106
    i32 1195724874, label %sw.bb137
  ]

sw.bb99:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %devtype, align 4
  %product101 = getelementptr inbounds %struct.coda_devtype, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %product101 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %product101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %86)
  %cmp102 = icmp eq i32 %86, 61472
  %.760 = select i1 %cmp102, i32 3, i32 0
  tail call void @coda_write(ptr noundef %1, i32 noundef %.760, i32 noundef 396) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 408) #11
  br label %sw.epilog148

sw.bb106:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %devtype, align 4
  %product108 = getelementptr inbounds %struct.coda_devtype, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %product108 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %product108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %90)
  %cmp109 = icmp eq i32 %90, 61472
  %.761 = select i1 %cmp109, i32 0, i32 2
  tail call void @coda_write(ptr noundef %1, i32 noundef %.761, i32 noundef 396) #11
  %h264_disable_deblocking_filter_idc = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 5
  %91 = ptrtoint ptr %h264_disable_deblocking_filter_idc to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %h264_disable_deblocking_filter_idc, align 1
  %93 = shl i8 %92, 6
  %shl117 = zext i8 %93 to i32
  %h264_slice_alpha_c0_offset_div2 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 6
  %94 = ptrtoint ptr %h264_slice_alpha_c0_offset_div2 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %h264_slice_alpha_c0_offset_div2, align 2
  %96 = and i8 %95, 15
  %and120 = zext i8 %96 to i32
  %shl121 = shl nuw nsw i32 %and120, 8
  %or122 = or i32 %shl121, %shl117
  %h264_slice_beta_offset_div2 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 7
  %97 = ptrtoint ptr %h264_slice_beta_offset_div2 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %h264_slice_beta_offset_div2, align 1
  %99 = and i8 %98, 15
  %and125 = zext i8 %99 to i32
  %shl126 = shl nuw nsw i32 %and125, 12
  %or127 = or i32 %or122, %shl126
  %h264_constrained_intra_pred_flag = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 8
  %100 = ptrtoint ptr %h264_constrained_intra_pred_flag to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %h264_constrained_intra_pred_flag, align 8, !range !467
  %102 = shl nuw nsw i8 %101, 5
  %shl131 = zext i8 %102 to i32
  %or132 = or i32 %or127, %shl131
  %h264_chroma_qp_index_offset = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 9
  %103 = ptrtoint ptr %h264_chroma_qp_index_offset to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %h264_chroma_qp_index_offset, align 1
  %105 = and i8 %104, 31
  %and135 = zext i8 %105 to i32
  %or136 = or i32 %or132, %and135
  tail call void @coda_write(ptr noundef %1, i32 noundef %or136, i32 noundef 416) #11
  br label %sw.epilog148

sw.bb137:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 408) #11
  %jpeg_restart_interval = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 20
  %106 = ptrtoint ptr %jpeg_restart_interval to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %jpeg_restart_interval, align 1
  %conv139 = zext i8 %107 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv139, i32 noundef 412) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 416) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 420) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 424) #11
  %call140 = tail call i32 @coda_jpeg_write_tables(ptr noundef %ctx) #11
  br label %sw.epilog148

do.end143:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %name145 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name145, i32 noundef %81) #14
  br label %out

sw.epilog148:                                     ; preds = %sw.bb137, %sw.bb106, %sw.bb99
  %108 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dst_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %109)
  %cmp149.not = icmp eq i32 %109, 1195724874
  br i1 %cmp149.not, label %sw.epilog148.if.end155_crit_edge, label %if.then151

sw.epilog148.if.end155_crit_edge:                 ; preds = %sw.epilog148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.then151:                                       ; preds = %sw.epilog148
  %slice_mode.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 29
  %110 = ptrtoint ptr %slice_mode.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %slice_mode.i, align 8
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %111, label %if.then151.coda_slice_mode.exit_crit_edge [
    i32 2, label %sw.bb3.i
    i32 1, label %sw.bb1.i
  ]

if.then151.coda_slice_mode.exit_crit_edge:        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_slice_mode.exit

sw.bb1.i:                                         ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  %slice_max_mb.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 35
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  %slice_max_bits.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 34
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb1.i
  %size.0.in.i = phi ptr [ %slice_max_mb.i, %sw.bb1.i ], [ %slice_max_bits.i, %sw.bb3.i ]
  %unit.0.i = phi i32 [ 2, %sw.bb1.i ], [ 0, %sw.bb3.i ]
  %113 = ptrtoint ptr %size.0.in.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %size.0.i = load i32, ptr %size.0.in.i, align 4
  %shl.i = shl i32 %size.0.i, 2
  %or.i = or i32 %shl.i, %unit.0.i
  %or7.i = or i32 %or.i, 1
  br label %coda_slice_mode.exit

coda_slice_mode.exit:                             ; preds = %sw.epilog.i, %if.then151.coda_slice_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %or7.i, %sw.epilog.i ], [ 0, %if.then151.coda_slice_mode.exit_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %retval.0.i, i32 noundef 420) #11
  %gop_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 16
  %114 = ptrtoint ptr %gop_size to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %gop_size, align 8
  %conv154 = zext i8 %115 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv154, i32 noundef 424) #11
  br label %if.end155

if.end155:                                        ; preds = %coda_slice_mode.exit, %sw.epilog148.if.end155_crit_edge
  %bitrate = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 31
  %116 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %bitrate, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool158.not = icmp eq i16 %117, 0
  br i1 %tobool158.not, label %if.end155.if.end187_crit_edge, label %land.lhs.true

if.end155.if.end187_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

land.lhs.true:                                    ; preds = %if.end155
  %frame_rc_enable = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 43
  %118 = ptrtoint ptr %frame_rc_enable to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %frame_rc_enable, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool160.not = icmp eq i8 %119, 0
  br i1 %tobool160.not, label %lor.lhs.false, label %land.lhs.true.if.then165_crit_edge

land.lhs.true.if.then165_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then165

lor.lhs.false:                                    ; preds = %land.lhs.true
  %mb_rc_enable = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 44
  %120 = ptrtoint ptr %mb_rc_enable to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %mb_rc_enable, align 8, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool163.not = icmp eq i8 %121, 0
  br i1 %tobool163.not, label %lor.lhs.false.if.end187_crit_edge, label %lor.lhs.false.if.then165_crit_edge

lor.lhs.false.if.then165_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then165

lor.lhs.false.if.end187_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then165:                                       ; preds = %lor.lhs.false.if.then165_crit_edge, %land.lhs.true.if.then165_crit_edge
  %bitrate_changed = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 38
  %122 = ptrtoint ptr %bitrate_changed to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %bitrate_changed, align 2
  %h264_intra_qp_changed = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 40
  %123 = ptrtoint ptr %h264_intra_qp_changed to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %h264_intra_qp_changed, align 4
  %124 = shl i16 %117, 1
  %125 = or i16 %124, 1
  %or173 = zext i16 %125 to i32
  %vbv_delay = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 32
  %126 = ptrtoint ptr %vbv_delay to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %vbv_delay, align 2
  %128 = and i16 %127, 32767
  %and176 = zext i16 %128 to i32
  %shl177 = shl nuw nsw i32 %and176, 16
  %or178 = or i32 %shl177, %or173
  %129 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %devtype, align 4
  %product180 = getelementptr inbounds %struct.coda_devtype, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %product180 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %product180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %132)
  %cmp181 = icmp eq i32 %132, 61472
  %or184 = or i32 %or178, -2147483648
  %spec.select = select i1 %cmp181, i32 %or184, i32 %or178
  br label %if.end187

if.end187:                                        ; preds = %if.then165, %lor.lhs.false.if.end187_crit_edge, %if.end155.if.end187_crit_edge
  %value.1 = phi i32 [ %spec.select, %if.then165 ], [ 0, %lor.lhs.false.if.end187_crit_edge ], [ 0, %if.end155.if.end187_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %value.1, i32 noundef 428) #11
  %vbv_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 33
  %133 = ptrtoint ptr %vbv_size to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vbv_size, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %134, i32 noundef 432) #11
  %intra_refresh = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 17
  %135 = ptrtoint ptr %intra_refresh to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %intra_refresh, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %136, i32 noundef 436) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef %8, i32 noundef 384) #11
  %div743 = lshr i32 %10, 10
  tail call void @coda_write(ptr noundef %1, i32 noundef %div743, i32 noundef 388) #11
  %137 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %devtype, align 4
  %product191 = getelementptr inbounds %struct.coda_devtype, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %product191 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %product191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %140)
  %cmp192 = icmp eq i32 %140, 61472
  %. = select i1 %cmp192, i32 24576, i32 4096
  tail call void @coda_write(ptr noundef %1, i32 noundef %., i32 noundef 460) #11
  %h264_min_qp = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 3
  %141 = ptrtoint ptr %h264_min_qp to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %h264_min_qp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool205.not = icmp eq i8 %142, 0
  br i1 %tobool205.not, label %lor.lhs.false206, label %if.end187.if.then210_crit_edge

if.end187.if.then210_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then210

lor.lhs.false206:                                 ; preds = %if.end187
  %h264_max_qp = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 4
  %143 = ptrtoint ptr %h264_max_qp to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %h264_max_qp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool209.not = icmp eq i8 %144, 0
  br i1 %tobool209.not, label %lor.lhs.false206.if.end220_crit_edge, label %lor.lhs.false206.if.then210_crit_edge

lor.lhs.false206.if.then210_crit_edge:            ; preds = %lor.lhs.false206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then210

lor.lhs.false206.if.end220_crit_edge:             ; preds = %lor.lhs.false206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

if.then210:                                       ; preds = %lor.lhs.false206.if.then210_crit_edge, %if.end187.if.then210_crit_edge
  %conv213 = zext i8 %142 to i32
  %shl214 = shl nuw nsw i32 %conv213, 8
  %h264_max_qp216 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 4
  %145 = ptrtoint ptr %h264_max_qp216 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %h264_max_qp216, align 4
  %conv217 = zext i8 %146 to i32
  %or219 = or i32 %shl214, %conv217
  tail call void @coda_write(ptr noundef %1, i32 noundef %or219, i32 noundef 456) #11
  br label %if.end220

if.end220:                                        ; preds = %if.then210, %lor.lhs.false206.if.end220_crit_edge
  %147 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %devtype, align 4
  %product222 = getelementptr inbounds %struct.coda_devtype, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %product222 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %product222, align 4
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %150, label %if.else240 [
    i32 61472, label %if.then225
    i32 61441, label %if.end220.if.end242_crit_edge
  ]

if.end220.if.end242_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end242

if.then225:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %h264_max_qp227 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 4
  %152 = ptrtoint ptr %h264_max_qp227 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %h264_max_qp227, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool228.not = icmp eq i8 %153, 0
  %spec.select747 = select i1 %tobool228.not, i32 128, i32 192
  br label %if.end255

if.else240:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end242

if.end242:                                        ; preds = %if.else240, %if.end220.if.end242_crit_edge
  %value.3 = phi i32 [ 256, %if.else240 ], [ 128, %if.end220.if.end242_crit_edge ]
  %154 = ptrtoint ptr %h264_min_qp to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %h264_min_qp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool245.not = icmp eq i8 %155, 0
  %or247 = or i32 %value.3, 64
  %spec.select748 = select i1 %tobool245.not, i32 %value.3, i32 %or247
  %h264_max_qp250 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 4
  %156 = ptrtoint ptr %h264_max_qp250 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %h264_max_qp250, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool251.not = icmp eq i8 %157, 0
  %or253 = or i32 %spec.select748, 128
  %spec.select749 = select i1 %tobool251.not, i32 %spec.select748, i32 %or253
  br label %if.end255

if.end255:                                        ; preds = %if.end242, %if.then225
  %value.5 = phi i32 [ %spec.select747, %if.then225 ], [ %spec.select749, %if.end242 ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %value.5, i32 noundef 392) #11
  %frame_rc_enable257 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 43
  %158 = ptrtoint ptr %frame_rc_enable257 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %frame_rc_enable257, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool258.not = icmp eq i8 %159, 0
  br i1 %tobool258.not, label %if.end255.if.else265_crit_edge, label %land.lhs.true260

if.end255.if.else265_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else265

land.lhs.true260:                                 ; preds = %if.end255
  %mb_rc_enable262 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 44
  %160 = ptrtoint ptr %mb_rc_enable262 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %mb_rc_enable262, align 8, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool263.not = icmp eq i8 %161, 0
  br i1 %tobool263.not, label %land.lhs.true260.if.end266_crit_edge, label %land.lhs.true260.if.else265_crit_edge

land.lhs.true260.if.else265_crit_edge:            ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else265

land.lhs.true260.if.end266_crit_edge:             ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end266

if.else265:                                       ; preds = %land.lhs.true260.if.else265_crit_edge, %if.end255.if.else265_crit_edge
  br label %if.end266

if.end266:                                        ; preds = %if.else265, %land.lhs.true260.if.end266_crit_edge
  %value.6 = phi i32 [ 0, %if.else265 ], [ 1, %land.lhs.true260.if.end266_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %value.6, i32 noundef 464) #11
  tail call fastcc void @coda_setup_iram(ptr noundef %ctx)
  %162 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dst_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %163)
  %cmp267 = icmp eq i32 %163, 875967048
  br i1 %cmp267, label %if.then269, label %if.end266.if.end277_crit_edge

if.end266.if.end277_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

if.then269:                                       ; preds = %if.end266
  %164 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %devtype, align 4
  %product271 = getelementptr inbounds %struct.coda_devtype, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %product271 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %product271, align 4
  %168 = zext i32 %167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %167, label %if.then269.if.end277_crit_edge [
    i32 61441, label %sw.bb272
    i32 61450, label %if.then269.sw.bb273_crit_edge
    i32 61458, label %if.then269.sw.bb273_crit_edge764
    i32 61472, label %sw.bb275
  ]

if.then269.sw.bb273_crit_edge764:                 ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb273

if.then269.sw.bb273_crit_edge:                    ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb273

if.then269.if.end277_crit_edge:                   ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

sw.bb272:                                         ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 4096, i32 noundef 440) #11
  br label %if.end277

sw.bb273:                                         ; preds = %if.then269.sw.bb273_crit_edge, %if.then269.sw.bb273_crit_edge764
  %search_ram_paddr = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 7
  %169 = ptrtoint ptr %search_ram_paddr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %search_ram_paddr, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %170, i32 noundef 440) #11
  %search_ram_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 8
  %171 = ptrtoint ptr %search_ram_size to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %search_ram_size, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %172, i32 noundef 444) #11
  br label %if.end277

sw.bb275:                                         ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 472) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 468) #11
  br label %if.end277

if.end277:                                        ; preds = %sw.bb275, %sw.bb273, %sw.bb272, %if.then269.if.end277_crit_edge, %if.end266.if.end277_crit_edge
  %call278 = tail call fastcc i32 @coda_command_sync(ptr noundef %ctx, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %cmp279 = icmp slt i32 %call278, 0
  br i1 %cmp279, label %do.end284, label %if.end289

do.end284:                                        ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #13
  %name286 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name286) #14
  br label %out

if.end289:                                        ; preds = %if.end277
  %call290 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 448) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %cmp291 = icmp eq i32 %call290, 0
  br i1 %cmp291, label %do.end296, label %if.end301

do.end296:                                        ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #13
  %name298 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name298) #14
  br label %out

if.end301:                                        ; preds = %if.end289
  %initialized = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 9
  %173 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1, ptr %initialized, align 8
  %174 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dst_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %175)
  %cmp302.not = icmp eq i32 %175, 1195724874
  br i1 %cmp302.not, label %if.else325, label %if.then304

if.then304:                                       ; preds = %if.end301
  %176 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %devtype, align 4
  %product306 = getelementptr inbounds %struct.coda_devtype, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %product306 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %product306, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %179)
  %cmp307 = icmp eq i32 %179, 61472
  %spec.select759 = select i1 %cmp307, i32 4, i32 2
  %180 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %spec.select759, ptr %180, align 4
  %call313 = tail call fastcc i32 @coda_alloc_framebuffers(ptr noundef %ctx, ptr noundef %q_data.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %cmp314 = icmp slt i32 %call313, 0
  br i1 %cmp314, label %do.end319, label %if.end324

do.end319:                                        ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #13
  %name321 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name321) #14
  br label %out

if.end324:                                        ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #13
  %bytesperline = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 2
  %182 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bytesperline, align 4
  br label %if.end327

if.else325:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #13
  %num_internal_frames326 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %184 = ptrtoint ptr %num_internal_frames326 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %num_internal_frames326, align 4
  br label %if.end327

if.end327:                                        ; preds = %if.else325, %if.end324
  %num_fb.0 = phi i32 [ 2, %if.end324 ], [ 0, %if.else325 ]
  %stride.0 = phi i32 [ %183, %if.end324 ], [ 0, %if.else325 ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %num_fb.0, i32 noundef 384) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef %stride.0, i32 noundef 388) #11
  %185 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %devtype, align 4
  %product329 = getelementptr inbounds %struct.coda_devtype, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %product329 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %product329, align 4
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %188, label %if.end327.if.end339_crit_edge [
    i32 61450, label %if.end327.if.then337_crit_edge
    i32 61458, label %if.end327.if.then337_crit_edge765
  ]

if.end327.if.then337_crit_edge765:                ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then337

if.end327.if.then337_crit_edge:                   ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then337

if.end327.if.end339_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339

if.then337:                                       ; preds = %if.end327.if.then337_crit_edge, %if.end327.if.then337_crit_edge765
  %bytesperline338 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 2
  %190 = ptrtoint ptr %bytesperline338 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %bytesperline338, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %191, i32 noundef 424) #11
  br label %if.end339

if.end339:                                        ; preds = %if.then337, %if.end327.if.end339_crit_edge
  %192 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %devtype, align 4
  %product341 = getelementptr inbounds %struct.coda_devtype, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %product341 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %product341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %195)
  %cmp342.not = icmp eq i32 %195, 61441
  br i1 %cmp342.not, label %if.end339.if.end365_crit_edge, label %if.then344

if.end339.if.end365_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end365

if.then344:                                       ; preds = %if.end339
  %buf_bit_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 1
  %196 = ptrtoint ptr %buf_bit_use to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %buf_bit_use, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %197, i32 noundef 400) #11
  %buf_ip_ac_dc_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 2
  %198 = ptrtoint ptr %buf_ip_ac_dc_use to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %buf_ip_ac_dc_use, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %199, i32 noundef 404) #11
  %buf_dbk_y_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 3
  %200 = ptrtoint ptr %buf_dbk_y_use to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %buf_dbk_y_use, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %201, i32 noundef 408) #11
  %buf_dbk_c_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 4
  %202 = ptrtoint ptr %buf_dbk_c_use to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %buf_dbk_c_use, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %203, i32 noundef 412) #11
  %buf_ovl_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 5
  %204 = ptrtoint ptr %buf_ovl_use to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %buf_ovl_use, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %205, i32 noundef 416) #11
  %206 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %devtype, align 4
  %product351 = getelementptr inbounds %struct.coda_devtype, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %product351 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %product351, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %209)
  %cmp352 = icmp eq i32 %209, 61472
  br i1 %cmp352, label %if.then354, label %if.then344.if.end365_crit_edge

if.then344.if.end365_crit_edge:                   ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end365

if.then354:                                       ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #13
  %buf_btp_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 6
  %210 = ptrtoint ptr %buf_btp_use to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %buf_btp_use, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %211, i32 noundef 420) #11
  %212 = ptrtoint ptr %fourcc33 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %fourcc33, align 4
  %214 = ptrtoint ptr %tiled_map_type to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %tiled_map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp.i753 = icmp eq i32 %215, 0
  %..i = select i1 %cmp.i753, i32 539369508, i32 38011459
  %.13.i = select i1 %cmp.i753, i32 33554432, i32 16777216
  %216 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ctx, align 8
  tail call void @coda_write(ptr noundef %217, i32 noundef %..i, i32 noundef 424) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %213)
  %switch.selectcmp.case1.i = icmp eq i32 %213, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %213)
  %switch.selectcmp.case2.i = icmp eq i32 %213, 1448695129
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %218 = select i1 %switch.selectcmp.i, i32 2097168, i32 2099208
  %or5.i = or i32 %.13.i, %218
  %219 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ctx, align 8
  tail call void @coda_write(ptr noundef %220, i32 noundef %or5.i, i32 noundef 428) #11
  %paddr359 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 2, i32 0, i32 1
  %221 = ptrtoint ptr %paddr359 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %paddr359, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %222, i32 noundef 392) #11
  %paddr363 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 3, i32 0, i32 1
  %223 = ptrtoint ptr %paddr363 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %paddr363, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %224, i32 noundef 396) #11
  br label %if.end365

if.end365:                                        ; preds = %if.then354, %if.then344.if.end365_crit_edge, %if.end339.if.end365_crit_edge
  %call366 = tail call fastcc i32 @coda_command_sync(ptr noundef %ctx, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %cmp367 = icmp slt i32 %call366, 0
  br i1 %cmp367, label %do.end372, label %do.body378

do.end372:                                        ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #13
  %name374 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call376 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name374) #14
  br label %out

do.body378:                                       ; preds = %if.end365
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %225 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp379 = icmp sgt i32 %225, 0
  br i1 %cmp379, label %do.end388, label %do.body378.do.end411_crit_edge

do.body378.do.end411_crit_edge:                   ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end411

do.end388:                                        ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #13
  %226 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ctx, align 8
  %name392 = getelementptr inbounds %struct.v4l2_device, ptr %227, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %228 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %idx, align 8
  %width395 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 2
  %230 = ptrtoint ptr %width395 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %width395, align 4
  %height397 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 3
  %232 = ptrtoint ptr %height397 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %height397, align 4
  %234 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %codec, align 4
  %src_fourcc = getelementptr inbounds %struct.coda_codec, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %framerate97 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %framerate97, align 4
  %and401 = and i32 %237, 65535
  %shr = lshr i32 %237, 16
  %add404 = add nuw nsw i32 %shr, 1
  %call405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name392, i32 noundef %229, i32 noundef %231, i32 noundef %233, ptr noundef %src_fourcc, ptr noundef nonnull %dst_fourcc, i32 noundef %and401, i32 noundef %add404) #14
  br label %do.end411

do.end411:                                        ; preds = %do.end388, %do.body378.do.end411_crit_edge
  %238 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i754 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %239, i32 0, i32 7
  %call.i755 = call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i754) #11
  %240 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %dst_fourcc, align 4
  %242 = zext i32 %241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %241, label %do.end411.out_crit_edge [
    i32 875967048, label %sw.bb415
    i32 877088845, label %sw.bb475
  ]

do.end411.out_crit_edge:                          ; preds = %do.end411
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb415:                                         ; preds = %do.end411
  %vpu_header = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 35
  %vpu_header_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 36
  %call419 = call fastcc i32 @coda_encode_header(ptr noundef %ctx, ptr noundef %call.i755, i32 noundef 0, ptr noundef %vpu_header, ptr noundef %vpu_header_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call419)
  %cmp420 = icmp slt i32 %call419, 0
  br i1 %cmp420, label %sw.bb415.out_crit_edge, label %if.end423

sw.bb415.out_crit_edge:                           ; preds = %sw.bb415
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end423:                                        ; preds = %sw.bb415
  %243 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ctx, align 8
  %devtype425 = getelementptr inbounds %struct.coda_dev, ptr %244, i32 0, i32 3
  %245 = ptrtoint ptr %devtype425 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %devtype425, align 4
  %product426 = getelementptr inbounds %struct.coda_devtype, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %product426 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %product426, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %248)
  %cmp427.not = icmp eq i32 %248, 61472
  br i1 %cmp427.not, label %if.end423.if.end453_crit_edge, label %land.lhs.true429

if.end423.if.end453_crit_edge:                    ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end453

land.lhs.true429:                                 ; preds = %if.end423
  %width431 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 2
  %249 = ptrtoint ptr %width431 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %width431, align 4
  %rem = and i32 %250, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool432.not = icmp eq i32 %rem, 0
  br i1 %tobool432.not, label %lor.lhs.false433, label %land.lhs.true429.if.then438_crit_edge

land.lhs.true429.if.then438_crit_edge:            ; preds = %land.lhs.true429
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then438

lor.lhs.false433:                                 ; preds = %land.lhs.true429
  %height435 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 3
  %251 = ptrtoint ptr %height435 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %height435, align 4
  %rem436 = and i32 %252, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem436)
  %tobool437.not = icmp eq i32 %rem436, 0
  br i1 %tobool437.not, label %lor.lhs.false433.if.end453_crit_edge, label %lor.lhs.false433.if.then438_crit_edge

lor.lhs.false433.if.then438_crit_edge:            ; preds = %lor.lhs.false433
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then438

lor.lhs.false433.if.end453_crit_edge:             ; preds = %lor.lhs.false433
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end453

if.then438:                                       ; preds = %lor.lhs.false433.if.then438_crit_edge, %land.lhs.true429.if.then438_crit_edge
  %height442 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 3
  %253 = ptrtoint ptr %height442 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %height442, align 4
  %call448 = call i32 @coda_h264_sps_fixup(ptr noundef %ctx, i32 noundef %250, i32 noundef %254, ptr noundef %vpu_header, ptr noundef %vpu_header_size, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call448)
  %cmp449 = icmp slt i32 %call448, 0
  br i1 %cmp449, label %if.then438.out_crit_edge, label %if.then438.if.end453_crit_edge

if.then438.if.end453_crit_edge:                   ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end453

if.then438.out_crit_edge:                         ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end453:                                        ; preds = %if.then438.if.end453_crit_edge, %lor.lhs.false433.if.end453_crit_edge, %if.end423.if.end453_crit_edge
  %arrayidx455 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 35, i32 1
  %arrayidx458 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 36, i32 1
  %call459 = call fastcc i32 @coda_encode_header(ptr noundef %ctx, ptr noundef %call.i755, i32 noundef 1, ptr noundef %arrayidx455, ptr noundef %arrayidx458)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call459)
  %cmp460 = icmp slt i32 %call459, 0
  br i1 %cmp460, label %if.end453.out_crit_edge, label %if.end463

if.end453.out_crit_edge:                          ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end463:                                        ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #13
  %255 = ptrtoint ptr %vpu_header_size to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %vpu_header_size, align 4
  %257 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx458, align 4
  %add468 = add i32 %258, %256
  %arrayidx470 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 35, i32 2
  %call472 = call i32 @coda_h264_padding(i32 noundef %add468, ptr noundef %arrayidx470) #11
  %arrayidx474 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 36, i32 2
  %259 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %call472, ptr %arrayidx474, align 4
  br label %out

sw.bb475:                                         ; preds = %do.end411
  %vpu_header476 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 35
  %vpu_header_size479 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 36
  %call481 = call fastcc i32 @coda_encode_header(ptr noundef %ctx, ptr noundef %call.i755, i32 noundef 1, ptr noundef %vpu_header476, ptr noundef %vpu_header_size479)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call481)
  %cmp482 = icmp slt i32 %call481, 0
  br i1 %cmp482, label %sw.bb475.out_crit_edge, label %if.end485

sw.bb475.out_crit_edge:                           ; preds = %sw.bb475
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end485:                                        ; preds = %sw.bb475
  %arrayidx487 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 35, i32 1
  %arrayidx490 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 36, i32 1
  %call491 = call fastcc i32 @coda_encode_header(ptr noundef %ctx, ptr noundef %call.i755, i32 noundef 2, ptr noundef %arrayidx487, ptr noundef %arrayidx490)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call491)
  %cmp492 = icmp slt i32 %call491, 0
  br i1 %cmp492, label %if.end485.out_crit_edge, label %if.end495

if.end485.out_crit_edge:                          ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end495:                                        ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx497 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 35, i32 2
  %arrayidx500 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 36, i32 2
  %call501 = call fastcc i32 @coda_encode_header(ptr noundef %ctx, ptr noundef %call.i755, i32 noundef 0, ptr noundef %arrayidx497, ptr noundef %arrayidx500)
  br label %out

out:                                              ; preds = %if.end495, %if.end485.out_crit_edge, %sw.bb475.out_crit_edge, %if.end463, %if.end453.out_crit_edge, %if.then438.out_crit_edge, %sw.bb415.out_crit_edge, %do.end411.out_crit_edge, %do.end372, %do.end319, %do.end296, %do.end284, %do.end143
  %ret.0 = phi i32 [ -22, %do.end143 ], [ %call278, %do.end284 ], [ -14, %do.end296 ], [ %call313, %do.end319 ], [ %call366, %do.end372 ], [ 0, %do.end411.out_crit_edge ], [ %call481, %sw.bb475.out_crit_edge ], [ %call491, %if.end485.out_crit_edge ], [ %call501, %if.end495 ], [ %call419, %sw.bb415.out_crit_edge ], [ %call448, %if.then438.out_crit_edge ], [ %call459, %if.end453.out_crit_edge ], [ 0, %if.end463 ]
  call void @mutex_unlock(ptr noundef %coda_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %ret.0, %out ], [ -14, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_fourcc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_prepare_encode(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %gop_size_changed.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 37
  %2 = ptrtoint ptr %gop_size_changed.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gop_size_changed.i, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gop_size.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 16
  %4 = ptrtoint ptr %gop_size.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gop_size.i, align 8
  %conv.i = zext i8 %5 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv.i, i32 noundef 388) #11
  %6 = ptrtoint ptr %gop_size.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gop_size.i, align 8
  %conv5.i = zext i8 %7 to i32
  %sub.i = add nsw i32 %conv5.i, -1
  %gopcounter.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 32
  %8 = ptrtoint ptr %gopcounter.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %gopcounter.i, align 8
  %9 = ptrtoint ptr %gop_size_changed.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %gop_size_changed.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %change_enable.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry.if.end.i_crit_edge ]
  %h264_intra_qp_changed.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 40
  %10 = ptrtoint ptr %h264_intra_qp_changed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %h264_intra_qp_changed.i, align 4, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not.i = icmp eq i8 %11, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end37.i_crit_edge, label %do.body.i

if.end.i.if.end37.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %12 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp sgt i32 %12, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end26.i_crit_edge

do.body.i.do.end26.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %14, i32 0, i32 4
  %idx.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx.i, align 8
  %h264_intra_qp.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 1
  %17 = ptrtoint ptr %h264_intra_qp.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h264_intra_qp.i, align 1
  %conv20.i = zext i8 %18 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name.i, i32 noundef %16, i32 noundef %conv20.i) #14
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end.i, %do.body.i.do.end26.i_crit_edge
  %bitrate.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 31
  %19 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bitrate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool28.not.i = icmp eq i16 %20, 0
  br i1 %tobool28.not.i, label %do.end26.i.if.end34.i_crit_edge, label %if.then29.i

do.end26.i.if.end34.i_crit_edge:                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then29.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %or30.i = or i32 %change_enable.0.i, 2
  %h264_intra_qp32.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 1
  %21 = ptrtoint ptr %h264_intra_qp32.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %h264_intra_qp32.i, align 1
  %conv33.i = zext i8 %22 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv33.i, i32 noundef 392) #11
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %do.end26.i.if.end34.i_crit_edge
  %change_enable.1.i = phi i32 [ %or30.i, %if.then29.i ], [ %change_enable.0.i, %do.end26.i.if.end34.i_crit_edge ]
  %23 = ptrtoint ptr %h264_intra_qp_changed.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %h264_intra_qp_changed.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end34.i, %if.end.i.if.end37.i_crit_edge
  %change_enable.2.i = phi i32 [ %change_enable.1.i, %if.end34.i ], [ %change_enable.0.i, %if.end.i.if.end37.i_crit_edge ]
  %bitrate_changed.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 38
  %24 = ptrtoint ptr %bitrate_changed.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bitrate_changed.i, align 2, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool39.not.i = icmp eq i8 %25, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end74.i_crit_edge, label %do.body41.i

if.end37.i.if.end74.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

do.body41.i:                                      ; preds = %if.end37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %26 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp42.i = icmp sgt i32 %26, 0
  br i1 %cmp42.i, label %do.end51.i, label %do.body41.i.do.end67.i_crit_edge

do.body41.i.do.end67.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67.i

do.end51.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 8
  %name55.i = getelementptr inbounds %struct.v4l2_device, ptr %28, i32 0, i32 4
  %idx57.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %29 = ptrtoint ptr %idx57.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx57.i, align 8
  %bitrate59.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 31
  %31 = ptrtoint ptr %bitrate59.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bitrate59.i, align 8
  %conv60.i = zext i16 %32 to i32
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name55.i, i32 noundef %30, i32 noundef %conv60.i) #14
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end51.i, %do.body41.i.do.end67.i_crit_edge
  %or68.i = or i32 %change_enable.2.i, 4
  %bitrate70.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 31
  %33 = ptrtoint ptr %bitrate70.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bitrate70.i, align 8
  %conv71.i = zext i16 %34 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv71.i, i32 noundef 396) #11
  %35 = ptrtoint ptr %bitrate_changed.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %bitrate_changed.i, align 2
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end67.i, %if.end37.i.if.end74.i_crit_edge
  %change_enable.3.i = phi i32 [ %or68.i, %do.end67.i ], [ %change_enable.2.i, %if.end37.i.if.end74.i_crit_edge ]
  %framerate_changed.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 39
  %36 = ptrtoint ptr %framerate_changed.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %framerate_changed.i, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool76.not.i = icmp eq i8 %37, 0
  br i1 %tobool76.not.i, label %if.end74.i.if.end110.i_crit_edge, label %do.body78.i

if.end74.i.if.end110.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110.i

do.body78.i:                                      ; preds = %if.end74.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %38 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp79.i = icmp sgt i32 %38, 0
  br i1 %cmp79.i, label %do.end88.i, label %do.body78.i.do.end104.i_crit_edge

do.body78.i.do.end104.i_crit_edge:                ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104.i

do.end88.i:                                       ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 8
  %name92.i = getelementptr inbounds %struct.v4l2_device, ptr %40, i32 0, i32 4
  %idx94.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %41 = ptrtoint ptr %idx94.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx94.i, align 8
  %framerate.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 30
  %43 = ptrtoint ptr %framerate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %framerate.i, align 4
  %and.i = and i32 %44, 65535
  %shr.i = lshr i32 %44, 16
  %add.i = add nuw nsw i32 %shr.i, 1
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name92.i, i32 noundef %42, i32 noundef %and.i, i32 noundef %add.i) #14
  br label %do.end104.i

do.end104.i:                                      ; preds = %do.end88.i, %do.body78.i.do.end104.i_crit_edge
  %or105.i = or i32 %change_enable.3.i, 8
  %framerate107.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 30
  %45 = ptrtoint ptr %framerate107.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %framerate107.i, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %46, i32 noundef 400) #11
  %47 = ptrtoint ptr %framerate_changed.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %framerate_changed.i, align 1
  br label %if.end110.i

if.end110.i:                                      ; preds = %do.end104.i, %if.end74.i.if.end110.i_crit_edge
  %change_enable.4.i = phi i32 [ %or105.i, %do.end104.i ], [ %change_enable.3.i, %if.end74.i.if.end110.i_crit_edge ]
  %intra_refresh_changed.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 41
  %48 = ptrtoint ptr %intra_refresh_changed.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %intra_refresh_changed.i, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool112.not.i = icmp eq i8 %49, 0
  br i1 %tobool112.not.i, label %if.end110.i.if.end144.i_crit_edge, label %do.body114.i

if.end110.i.if.end144.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

do.body114.i:                                     ; preds = %if.end110.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %50 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp115.i = icmp sgt i32 %50, 0
  br i1 %cmp115.i, label %do.end124.i, label %do.body114.i.do.end138.i_crit_edge

do.body114.i.do.end138.i_crit_edge:               ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end138.i

do.end124.i:                                      ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx, align 8
  %name128.i = getelementptr inbounds %struct.v4l2_device, ptr %52, i32 0, i32 4
  %idx130.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %53 = ptrtoint ptr %idx130.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %idx130.i, align 8
  %intra_refresh.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 17
  %55 = ptrtoint ptr %intra_refresh.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %intra_refresh.i, align 4
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name128.i, i32 noundef %54, i32 noundef %56) #14
  br label %do.end138.i

do.end138.i:                                      ; preds = %do.end124.i, %do.body114.i.do.end138.i_crit_edge
  %or139.i = or i32 %change_enable.4.i, 16
  %intra_refresh141.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 17
  %57 = ptrtoint ptr %intra_refresh141.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %intra_refresh141.i, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %58, i32 noundef 404) #11
  %59 = ptrtoint ptr %intra_refresh_changed.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %intra_refresh_changed.i, align 1
  br label %if.end144.i

if.end144.i:                                      ; preds = %do.end138.i, %if.end110.i.if.end144.i_crit_edge
  %change_enable.5.i = phi i32 [ %or139.i, %do.end138.i ], [ %change_enable.4.i, %if.end110.i.if.end144.i_crit_edge ]
  %slice_mode_changed.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 42
  %60 = ptrtoint ptr %slice_mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %slice_mode_changed.i, align 2, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool146.not.i = icmp eq i8 %61, 0
  br i1 %tobool146.not.i, label %if.end152.i, label %if.then147.i

if.then147.i:                                     ; preds = %if.end144.i
  %or148.i = or i32 %change_enable.5.i, 32
  %slice_mode.i.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 29
  %62 = ptrtoint ptr %slice_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %slice_mode.i.i, align 8
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %63, label %if.then147.i.if.end152.thread.i_crit_edge [
    i32 2, label %sw.bb3.i.i
    i32 1, label %sw.bb1.i.i
  ]

if.then147.i.if.end152.thread.i_crit_edge:        ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.thread.i

sw.bb1.i.i:                                       ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  %slice_max_mb.i.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 35
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  %slice_max_bits.i.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 34
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb3.i.i, %sw.bb1.i.i
  %size.0.in.i.i = phi ptr [ %slice_max_mb.i.i, %sw.bb1.i.i ], [ %slice_max_bits.i.i, %sw.bb3.i.i ]
  %unit.0.i.i = phi i32 [ 2, %sw.bb1.i.i ], [ 0, %sw.bb3.i.i ]
  %65 = ptrtoint ptr %size.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %size.0.i.i = load i32, ptr %size.0.in.i.i, align 4
  %shl.i.i = shl i32 %size.0.i.i, 2
  %or.i.i = or i32 %shl.i.i, %unit.0.i.i
  %or7.i.i = or i32 %or.i.i, 1
  br label %if.end152.thread.i

if.end152.thread.i:                               ; preds = %sw.epilog.i.i, %if.then147.i.if.end152.thread.i_crit_edge
  %retval.0.i.i = phi i32 [ %or7.i.i, %sw.epilog.i.i ], [ 0, %if.then147.i.if.end152.thread.i_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %retval.0.i.i, i32 noundef 408) #11
  %66 = ptrtoint ptr %slice_mode_changed.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %slice_mode_changed.i, align 2
  br label %if.end155.i

if.end152.i:                                      ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %change_enable.5.i)
  %tobool153.not.i = icmp eq i32 %change_enable.5.i, 0
  br i1 %tobool153.not.i, label %if.end152.i.if.end_crit_edge, label %if.end152.i.if.end155.i_crit_edge

if.end152.i.if.end155.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155.i

if.end152.i.if.end_crit_edge:                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end155.i:                                      ; preds = %if.end152.i.if.end155.i_crit_edge, %if.end152.thread.i
  %change_enable.6248.i = phi i32 [ %or148.i, %if.end152.thread.i ], [ %change_enable.5.i, %if.end152.i.if.end155.i_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %change_enable.6248.i, i32 noundef 384) #11
  %call156.i = tail call fastcc i32 @coda_command_sync(ptr noundef %ctx, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %cmp157.i = icmp slt i32 %call156.i, 0
  br i1 %cmp157.i, label %do.end, label %if.end160.i

if.end160.i:                                      ; preds = %if.end155.i
  %call161.i = tail call i32 @coda_read(ptr noundef %1, i32 noundef 448) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call161.i)
  %cmp162.not.i = icmp eq i32 %call161.i, 1
  br i1 %cmp162.not.i, label %if.end160.i.if.end_crit_edge, label %do.body165.i

if.end160.i.if.end_crit_edge:                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body165.i:                                     ; preds = %if.end160.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %67 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp166.i = icmp sgt i32 %67, 0
  br i1 %cmp166.i, label %do.end175.i, label %do.body165.i.if.end_crit_edge

do.body165.i.if.end_crit_edge:                    ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end175.i:                                      ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx, align 8
  %name179.i = getelementptr inbounds %struct.v4l2_device, ptr %69, i32 0, i32 4
  %idx181.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %70 = ptrtoint ptr %idx181.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %idx181.i, align 8
  %call182.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name179.i, i32 noundef %71, i32 noundef %call161.i) #14
  br label %if.end

do.end:                                           ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %73, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name, i32 noundef %call156.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %do.end175.i, %do.body165.i.if.end_crit_edge, %if.end160.i.if.end_crit_edge, %if.end152.i.if.end_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %74 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %75, i32 0, i32 8
  %call.i240 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #11
  %76 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %77, i32 0, i32 7
  %call.i241 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #11
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  %fourcc = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 4
  %78 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fourcc, align 4
  %osequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 13
  %80 = ptrtoint ptr %osequence to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %osequence, align 8
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i240, i32 0, i32 4
  %82 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %sequence, align 8
  %83 = load i32, ptr %osequence, align 8
  %sequence11 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i241, i32 0, i32 4
  %84 = ptrtoint ptr %sequence11 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %sequence11, align 8
  %85 = load i32, ptr %osequence, align 8
  %inc = add i32 %85, 1
  store i32 %inc, ptr %osequence, align 8
  %params = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22
  %force_ipicture13 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 36
  %86 = ptrtoint ptr %force_ipicture13 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %force_ipicture13, align 8, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not = icmp eq i8 %87, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %force_ipicture13 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %force_ipicture13, align 8
  br label %if.else34

if.else:                                          ; preds = %if.end
  %gop_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 16
  %89 = ptrtoint ptr %gop_size to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %gop_size, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp20.not = icmp eq i8 %90, 0
  br i1 %cmp20.not, label %if.else.if.end39_crit_edge, label %land.lhs.true

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true:                                    ; preds = %if.else
  %conv19 = zext i8 %90 to i32
  %91 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sequence, align 8
  %rem = urem i32 %92, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp26 = icmp eq i32 %rem, 0
  br i1 %cmp26, label %land.lhs.true.if.else34_crit_edge, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true.if.else34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else34

if.else34:                                        ; preds = %land.lhs.true.if.else34_crit_edge, %if.then15
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %land.lhs.true.if.end39_crit_edge, %if.else.if.end39_crit_edge
  %.sink = phi i32 [ 8, %if.else34 ], [ 16, %if.else.if.end39_crit_edge ], [ 16, %land.lhs.true.if.end39_crit_edge ]
  %tobool31.not252 = phi i1 [ false, %if.else34 ], [ true, %if.else.if.end39_crit_edge ], [ true, %land.lhs.true.if.end39_crit_edge ]
  %force_ipicture.0.shrunk250 = phi i32 [ 2, %if.else34 ], [ 0, %if.else.if.end39_crit_edge ], [ 0, %land.lhs.true.if.end39_crit_edge ]
  %flags35 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i240, i32 0, i32 1
  %93 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags35, align 8
  %or36 = and i32 %94, -25
  %and38 = or i32 %or36, %.sink
  store i32 %and38, ptr %flags35, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %95 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %98)
  %cmp40 = icmp eq i32 %98, 61472
  br i1 %cmp40, label %if.then42, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_set_gdi_regs(ptr noundef %ctx) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %99 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sequence, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp45 = icmp ne i32 %100, 0
  %101 = and i1 %tobool31.not252, %cmp45
  %call.i245 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i241, i32 noundef 0) #11
  %102 = ptrtoint ptr %call.i245 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call.i245, align 4
  br i1 %101, label %if.else92, label %if.then48

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %vpu_header_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 36
  %104 = ptrtoint ptr %vpu_header_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vpu_header_size, align 4
  %arrayidx51 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 36, i32 1
  %106 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx51, align 4
  %arrayidx54 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 36, i32 2
  %108 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx54, align 4
  %add = add i32 %107, %105
  %add52 = add i32 %add, %103
  %add55 = add i32 %add52, %109
  %sizeimage = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 3
  %110 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sizeimage, align 4
  %112 = add i32 %add, %109
  %sub63 = sub i32 %111, %112
  %call65 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i241, i32 noundef 0) #11
  %vpu_header = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 35
  %113 = ptrtoint ptr %vpu_header_size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vpu_header_size, align 4
  %115 = call ptr @memcpy(ptr %call65, ptr %vpu_header, i32 %114)
  %call71 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i241, i32 noundef 0) #11
  %116 = ptrtoint ptr %vpu_header_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vpu_header_size, align 4
  %add.ptr = getelementptr i8, ptr %call71, i32 %117
  %arrayidx75 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 35, i32 1
  %118 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx51, align 4
  %120 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx75, i32 %119)
  %call80 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i241, i32 noundef 0) #11
  %121 = ptrtoint ptr %vpu_header_size to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vpu_header_size, align 4
  %add.ptr83 = getelementptr i8, ptr %call80, i32 %122
  %123 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx51, align 4
  %add.ptr86 = getelementptr i8, ptr %add.ptr83, i32 %124
  %arrayidx88 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 35, i32 2
  %125 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx54, align 4
  %127 = call ptr @memcpy(ptr %add.ptr86, ptr %arrayidx88, i32 %126)
  br label %if.end96

if.else92:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %sizeimage95 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 3
  %128 = ptrtoint ptr %sizeimage95 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sizeimage95, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else92, %if.then48
  %pic_stream_buffer_addr.0 = phi i32 [ %add55, %if.then48 ], [ %103, %if.else92 ]
  %pic_stream_buffer_size.0 = phi i32 [ %sub63, %if.then48 ], [ %129, %if.else92 ]
  br i1 %tobool31.not252, label %if.else114, label %if.then98

if.then98:                                        ; preds = %if.end96
  %130 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %79, label %do.end107 [
    i32 875967048, label %sw.bb
    i32 877088845, label %sw.bb101
    i32 1195724874, label %if.then98.if.end132_crit_edge
  ]

if.then98.if.end132_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

sw.bb:                                            ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  %h264_intra_qp = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 1
  %131 = ptrtoint ptr %h264_intra_qp to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %h264_intra_qp, align 1
  br label %if.end132

sw.bb101:                                         ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  %mpeg4_intra_qp = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 14
  %133 = ptrtoint ptr %mpeg4_intra_qp to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %mpeg4_intra_qp, align 2
  br label %if.end132

do.end107:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ctx, align 8
  %name111 = getelementptr inbounds %struct.v4l2_device, ptr %136, i32 0, i32 4
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name111) #14
  br label %if.end132

if.else114:                                       ; preds = %if.end96
  %137 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %79, label %do.end124 [
    i32 875967048, label %sw.bb115
    i32 877088845, label %sw.bb118
  ]

sw.bb115:                                         ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #13
  %h264_inter_qp = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 2
  %138 = ptrtoint ptr %h264_inter_qp to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %h264_inter_qp, align 2
  br label %if.end132

sw.bb118:                                         ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #13
  %mpeg4_inter_qp = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 15
  %140 = ptrtoint ptr %mpeg4_inter_qp to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %mpeg4_inter_qp, align 1
  br label %if.end132

do.end124:                                        ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ctx, align 8
  %name128 = getelementptr inbounds %struct.v4l2_device, ptr %143, i32 0, i32 4
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name128) #14
  br label %if.end132

if.end132:                                        ; preds = %do.end124, %sw.bb118, %sw.bb115, %do.end107, %sw.bb101, %sw.bb, %if.then98.if.end132_crit_edge
  %quant_param.0.shrunk = phi i8 [ 0, %do.end107 ], [ %134, %sw.bb101 ], [ %132, %sw.bb ], [ 0, %do.end124 ], [ %141, %sw.bb118 ], [ %139, %sw.bb115 ], [ 30, %if.then98.if.end132_crit_edge ]
  %quant_param.0 = zext i8 %quant_param.0.shrunk to i32
  %144 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool135.not = icmp eq i8 %145, 0
  %146 = or i8 %145, 16
  %narrow = select i1 %tobool135.not, i8 0, i8 %146
  %rot_mode.0 = zext i8 %narrow to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %rot_mode.0, i32 noundef 400) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef %quant_param.0, i32 noundef 396) #11
  %147 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %devtype, align 4
  %product143 = getelementptr inbounds %struct.coda_devtype, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %product143 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %product143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %150)
  %cmp144 = icmp eq i32 %150, 61472
  br i1 %cmp144, label %if.then146, label %if.end132.if.end148_crit_edge

if.end132.if.end148_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then146:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 4, i32 noundef 384) #11
  %bytesperline = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 2
  %151 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bytesperline, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %152, i32 noundef 388) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 420) #11
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end132.if.end148_crit_edge
  %reg.0 = phi i32 [ 424, %if.then146 ], [ 384, %if.end132.if.end148_crit_edge ]
  tail call void @coda_write_base(ptr noundef %ctx, ptr noundef %q_data.i, ptr noundef %call.i240, i32 noundef %reg.0) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef %force_ipicture.0.shrunk250, i32 noundef 404) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef %pic_stream_buffer_addr.0, i32 noundef 408) #11
  %div239 = lshr i32 %pic_stream_buffer_size.0, 10
  tail call void @coda_write(ptr noundef %1, i32 noundef %div239, i32 noundef 412) #11
  %streamon_out = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 10
  %153 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %streamon_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool150.not = icmp eq i32 %154, 0
  br i1 %tobool150.not, label %if.then151, label %if.end148.if.end154_crit_edge

if.end148.if.end154_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 55
  %155 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bit_stream_param, align 8
  %or152 = or i32 %156, 4
  store i32 %or152, ptr %bit_stream_param, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %or152, i32 noundef 276) #11
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end148.if.end154_crit_edge
  %157 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %devtype, align 4
  %product156 = getelementptr inbounds %struct.coda_devtype, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %product156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %product156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %160)
  %cmp157.not = icmp eq i32 %160, 61441
  br i1 %cmp157.not, label %if.end154.if.end160_crit_edge, label %if.then159

if.end154.if.end160_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then159:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  %iram_info = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53
  %161 = ptrtoint ptr %iram_info to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %iram_info, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %162, i32 noundef 320) #11
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end154.if.end160_crit_edge
  tail call fastcc void @trace_coda_enc_pic_run(ptr noundef %ctx, ptr noundef %call.i240)
  tail call fastcc void @coda_command_async(ptr noundef %ctx, i32 noundef 3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_finish_encode(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %aborting = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %wakeup_mutex = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %wakeup_mutex, i32 noundef 0) #11
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #11
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i138 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #11
  tail call fastcc void @trace_coda_enc_pic_done(ptr noundef %ctx, ptr noundef %call.i138)
  %call5 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 408) #11
  %reg_idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %8 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_idx, align 4
  %mul = shl i32 %9, 3
  %add = add i32 %mul, 292
  %call6 = tail call i32 @coda_read(ptr noundef %1, i32 noundef %add) #11
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i138, i32 0, i32 4
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i138, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.then8.do.body_crit_edge, label %if.then.i

if.then8.do.body_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then.i:                                        ; preds = %if.then8
  %sub = sub i32 %call6, %call5
  %vpu_header_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 36
  %16 = ptrtoint ptr %vpu_header_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vpu_header_size, align 4
  %add9 = add i32 %sub, %17
  %arrayidx11 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 36, i32 1
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %add9, %19
  %arrayidx14 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 36, i32 2
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %add12, %21
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i138, i32 0, i32 10, i32 0, i32 4
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add15)
  %cmp1.i = icmp ult i32 %23, %add15
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.do.body.sink.split_crit_edge

if.then.i.do.body.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.do.body.sink.split.sink.split_crit_edge, label %land.rhs.i.do.body.sink.split.sink.split.sink.split_crit_edge, !prof !462

land.rhs.i.do.body.sink.split.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.sink.split.sink.split

land.rhs.i.do.body.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %num_planes.i139 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i138, i32 0, i32 4
  %24 = ptrtoint ptr %num_planes.i139 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_planes.i139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i140 = icmp eq i32 %25, 0
  br i1 %cmp.not.i140, label %if.else.do.body_crit_edge, label %if.then.i143

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then.i143:                                     ; preds = %if.else
  %sub17 = sub i32 %call6, %call5
  %length.i141 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i138, i32 0, i32 10, i32 0, i32 4
  %26 = ptrtoint ptr %length.i141 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i141, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub17)
  %cmp1.i142 = icmp ult i32 %27, %sub17
  br i1 %cmp1.i142, label %land.rhs.i145, label %if.then.i143.do.body.sink.split_crit_edge

if.then.i143.do.body.sink.split_crit_edge:        ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split

land.rhs.i145:                                    ; preds = %if.then.i143
  %.b1.i144 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i144, label %land.rhs.i145.do.body.sink.split.sink.split_crit_edge, label %land.rhs.i145.do.body.sink.split.sink.split.sink.split_crit_edge, !prof !462

land.rhs.i145.do.body.sink.split.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.sink.split.sink.split

land.rhs.i145.do.body.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.sink.split

do.body.sink.split.sink.split.sink.split:         ; preds = %land.rhs.i145.do.body.sink.split.sink.split.sink.split_crit_edge, %land.rhs.i.do.body.sink.split.sink.split.sink.split_crit_edge
  %length.i141.sink.ph = phi ptr [ %length.i, %land.rhs.i.do.body.sink.split.sink.split.sink.split_crit_edge ], [ %length.i141, %land.rhs.i145.do.body.sink.split.sink.split.sink.split_crit_edge ]
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.122, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %do.body.sink.split.sink.split

do.body.sink.split.sink.split:                    ; preds = %do.body.sink.split.sink.split.sink.split, %land.rhs.i145.do.body.sink.split.sink.split_crit_edge, %land.rhs.i.do.body.sink.split.sink.split_crit_edge
  %length.i141.sink = phi ptr [ %length.i, %land.rhs.i.do.body.sink.split.sink.split_crit_edge ], [ %length.i141, %land.rhs.i145.do.body.sink.split.sink.split_crit_edge ], [ %length.i141.sink.ph, %do.body.sink.split.sink.split.sink.split ]
  %28 = ptrtoint ptr %length.i141.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i141.sink, align 8
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %do.body.sink.split.sink.split, %if.then.i143.do.body.sink.split_crit_edge, %if.then.i.do.body.sink.split_crit_edge
  %size.addr.0.i148.sink = phi i32 [ %add15, %if.then.i.do.body.sink.split_crit_edge ], [ %sub17, %if.then.i143.do.body.sink.split_crit_edge ], [ %29, %do.body.sink.split.sink.split ]
  %bytesused.i149 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i138, i32 0, i32 10, i32 0, i32 3
  %30 = ptrtoint ptr %bytesused.i149 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %size.addr.0.i148.sink, ptr %bytesused.i149, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.else.do.body_crit_edge, %if.then8.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %31 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp19 = icmp sgt i32 %31, 0
  br i1 %cmp19, label %do.end, label %do.body.do.end33_crit_edge

do.body.do.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %33, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 8
  %sub26 = sub i32 %call6, %call5
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name, i32 noundef %35, i32 noundef %sub26) #14
  br label %do.end33

do.end33:                                         ; preds = %do.end, %do.body.do.end33_crit_edge
  %call34 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 460) #11
  %call35 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 464) #11
  %flags36 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i138, i32 0, i32 1
  %36 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags36, align 8
  %and37 = and i32 %37, -1048601
  store i32 %and37, ptr %flags36, align 8
  %call38 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 452) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  %38 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags36, align 8
  %. = select i1 %cmp39, i32 8, i32 16
  %or44 = or i32 %39, %.
  store i32 %or44, ptr %flags36, align 8
  %flags46 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags46, align 8
  %and47 = and i32 %41, 1048576
  %or49 = or i32 %and47, %or44
  store i32 %or49, ptr %flags36, align 8
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i, ptr noundef %call.i138, i1 noundef zeroext false) #11
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #11
  %42 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i152 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %43, i32 0, i32 7
  %call.i153 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i152) #11
  tail call void @coda_m2m_buf_done(ptr noundef %ctx, ptr noundef %call.i153, i32 noundef 5) #11
  tail call void @mutex_unlock(ptr noundef %wakeup_mutex) #11
  %gopcounter = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 32
  %44 = ptrtoint ptr %gopcounter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gopcounter, align 8
  %dec = add i32 %45, -1
  store i32 %dec, ptr %gopcounter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp55 = icmp slt i32 %dec, 0
  br i1 %cmp55, label %if.then56, label %do.end33.do.body60_crit_edge

do.end33.do.body60_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60

if.then56:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %gop_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 16
  %46 = ptrtoint ptr %gop_size to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %gop_size, align 8
  %conv = zext i8 %47 to i32
  %sub57 = add nsw i32 %conv, -1
  %48 = ptrtoint ptr %gopcounter to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub57, ptr %gopcounter, align 8
  br label %do.body60

do.body60:                                        ; preds = %if.then56, %do.end33.do.body60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %49 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp61 = icmp sgt i32 %49, 0
  br i1 %cmp61, label %do.end70, label %do.body60.cleanup_crit_edge

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end70:                                         ; preds = %do.body60
  %50 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx, align 8
  %name74 = getelementptr inbounds %struct.v4l2_device, ptr %51, i32 0, i32 4
  %idx76 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %52 = ptrtoint ptr %idx76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx76, align 8
  %flags77 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i153, i32 0, i32 1
  %54 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags77, align 8
  %and.i = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %do.end70.coda_frame_type_char.exit_crit_edge

do.end70.coda_frame_type_char.exit_crit_edge:     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit

cond.false.i:                                     ; preds = %do.end70
  %and1.i = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %cond.false4.i, label %cond.false.i.coda_frame_type_char.exit_crit_edge

cond.false.i.coda_frame_type_char.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit

cond.false4.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %and5.i = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %phi.cast = select i1 %tobool6.not.i, i32 63, i32 66
  br label %coda_frame_type_char.exit

coda_frame_type_char.exit:                        ; preds = %cond.false4.i, %cond.false.i.coda_frame_type_char.exit_crit_edge, %do.end70.coda_frame_type_char.exit_crit_edge
  %cond9.i = phi i32 [ 73, %do.end70.coda_frame_type_char.exit_crit_edge ], [ %phi.cast, %cond.false4.i ], [ 80, %cond.false.i.coda_frame_type_char.exit_crit_edge ]
  %sequence80 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i153, i32 0, i32 4
  %56 = ptrtoint ptr %sequence80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sequence80, align 8
  %and82 = and i32 %55, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %cond = select i1 %tobool83.not, ptr @.str.121, ptr @.str.120
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name74, i32 noundef %53, i32 noundef %cond9.i, i32 noundef %57, ptr noundef nonnull %cond) #14
  br label %cleanup

cleanup:                                          ; preds = %coda_frame_type_char.exit, %do.body60.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_seq_end_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -184
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %buffer_mutex = getelementptr i8, ptr %work, i32 -180
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #11
  %coda_mutex = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %coda_mutex, i32 noundef 0) #11
  %initialized = getelementptr i8, ptr %work, i32 112
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.out_crit_edge, label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %4 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %do.end, label %do.body.do.end15_crit_edge

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %idx = getelementptr i8, ptr %work, i32 2960
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name, i32 noundef %8, ptr noundef nonnull @.str.124) #14
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %call16 = tail call fastcc i32 @coda_command_sync(ptr noundef %add.ptr, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %do.end15.if.end26_crit_edge, label %do.end20

do.end15.if.end26_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end20:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %name23 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %name23) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %do.end15.if.end26_crit_edge
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %12)
  %cmp27 = icmp eq i32 %12, 61472
  br i1 %cmp27, label %if.then28, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 @coda_hw_reset(ptr noundef %add.ptr)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %bitstream_fifo = getelementptr i8, ptr %work, i32 984
  %bitstream = getelementptr i8, ptr %work, i32 1096
  %13 = ptrtoint ptr %bitstream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitstream, align 8
  %size = getelementptr i8, ptr %work, i32 1104
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %call33 = tail call i32 @__kfifo_init(ptr noundef %bitstream_fifo, ptr noundef %14, i32 noundef %16, i32 noundef 1) #11
  tail call fastcc void @coda_free_framebuffers(ptr noundef %add.ptr)
  %17 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %initialized, align 8
  br label %out

out:                                              ; preds = %if.end30, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %coda_mutex) #11
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_bit_release(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_mutex = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #11
  tail call fastcc void @coda_free_framebuffers(ptr noundef %ctx)
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %slicebuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 43
  tail call void @coda_free_aux_buf(ptr noundef %1, ptr noundef %slicebuf.i) #11
  %psbuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 42
  tail call void @coda_free_aux_buf(ptr noundef %1, ptr noundef %psbuf.i) #11
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 61441
  br i1 %cmp.not.i, label %entry.coda_free_context_buffers.exit_crit_edge, label %if.then.i

entry.coda_free_context_buffers.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_free_context_buffers.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %workbuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 49
  tail call void @coda_free_aux_buf(ptr noundef %1, ptr noundef %workbuf.i) #11
  br label %coda_free_context_buffers.exit

coda_free_context_buffers.exit:                   ; preds = %if.then.i, %entry.coda_free_context_buffers.exit_crit_edge
  %parabuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41
  tail call void @coda_free_aux_buf(ptr noundef %1, ptr noundef %parabuf.i) #11
  %bitstream.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39
  %6 = ptrtoint ptr %bitstream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitstream.i, align 8
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %coda_free_context_buffers.exit.coda_free_bitstream_buffer.exit_crit_edge, label %if.end.i

coda_free_context_buffers.exit.coda_free_bitstream_buffer.exit_crit_edge: ; preds = %coda_free_context_buffers.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_free_bitstream_buffer.exit

if.end.i:                                         ; preds = %coda_free_context_buffers.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 8
  %dev1.i = getelementptr inbounds %struct.coda_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 8
  %size.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 2
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 8
  %paddr.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 1
  %14 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %7, i32 noundef %15, i32 noundef 4) #11
  %16 = ptrtoint ptr %bitstream.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bitstream.i, align 8
  %bitstream_fifo.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37
  %call.i = tail call i32 @__kfifo_init(ptr noundef %bitstream_fifo.i, ptr noundef null, i32 noundef 0, i32 noundef 1) #11
  br label %coda_free_bitstream_buffer.exit

coda_free_bitstream_buffer.exit:                  ; preds = %if.end.i, %coda_free_context_buffers.exit.coda_free_bitstream_buffer.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_decoder_queue_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_decoder_reqbufs(ptr noundef %ctx, ptr nocapture noundef readonly %rb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %rb, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  %call2 = tail call fastcc i32 @coda_alloc_context_buffers(ptr noundef %ctx, ptr noundef %q_data.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.end5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %bitstream.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39
  %4 = ptrtoint ptr %bitstream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitstream.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end29.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end29.i:                                     ; preds = %if.end5
  %sizeimage.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage.i, align 4
  %mul.i = shl i32 %7, 1
  %sub.i = add i32 %mul.i, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #11, !range !473
  %sub.i.i.i.i = sub nuw nsw i32 32, %8
  %cond30.i = shl nuw i32 1, %sub.i.i.i.i
  %size.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 2
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond30.i, ptr %size.i, align 8
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %dev32.i = getelementptr inbounds %struct.coda_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev32.i, align 8
  %paddr.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %13, i32 noundef %cond30.i, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 4) #11
  %14 = ptrtoint ptr %bitstream.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %bitstream.i, align 8
  %tobool41.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool41.not.i, label %if.then8, label %if.end45.i

if.end45.i:                                       ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %bitstream_fifo.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 8
  %call51.i = tail call i32 @__kfifo_init(ptr noundef %bitstream_fifo.i, ptr noundef nonnull %call.i.i, i32 noundef %16, i32 noundef 1) #11
  br label %cleanup

if.then8:                                         ; preds = %cond.end29.i
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %18, i32 0, i32 4
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name.i) #14
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 8
  %slicebuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 43
  tail call void @coda_free_aux_buf(ptr noundef %20, ptr noundef %slicebuf.i) #11
  %psbuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 42
  tail call void @coda_free_aux_buf(ptr noundef %20, ptr noundef %psbuf.i) #11
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 61441
  br i1 %cmp.not.i, label %if.then8.coda_free_context_buffers.exit_crit_edge, label %if.then.i

if.then8.coda_free_context_buffers.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_free_context_buffers.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %workbuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 49
  tail call void @coda_free_aux_buf(ptr noundef %20, ptr noundef %workbuf.i) #11
  br label %coda_free_context_buffers.exit

coda_free_context_buffers.exit:                   ; preds = %if.then.i, %if.then8.coda_free_context_buffers.exit_crit_edge
  %parabuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41
  tail call void @coda_free_aux_buf(ptr noundef %20, ptr noundef %parabuf.i) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %bitstream.i23 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39
  %25 = ptrtoint ptr %bitstream.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bitstream.i23, align 8
  %cmp.i = icmp eq ptr %26, null
  br i1 %cmp.i, label %if.else.coda_free_bitstream_buffer.exit_crit_edge, label %if.end.i27

if.else.coda_free_bitstream_buffer.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_free_bitstream_buffer.exit

if.end.i27:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 8
  %dev1.i = getelementptr inbounds %struct.coda_dev, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1.i, align 8
  %size.i24 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 2
  %31 = ptrtoint ptr %size.i24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i24, align 8
  %paddr.i25 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 1
  %33 = ptrtoint ptr %paddr.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %paddr.i25, align 4
  tail call void @dma_free_attrs(ptr noundef %30, i32 noundef %32, ptr noundef nonnull %26, i32 noundef %34, i32 noundef 4) #11
  %35 = ptrtoint ptr %bitstream.i23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %bitstream.i23, align 8
  %bitstream_fifo.i26 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37
  %call.i = tail call i32 @__kfifo_init(ptr noundef %bitstream_fifo.i26, ptr noundef null, i32 noundef 0, i32 noundef 1) #11
  br label %coda_free_bitstream_buffer.exit

coda_free_bitstream_buffer.exit:                  ; preds = %if.end.i27, %if.else.coda_free_bitstream_buffer.exit_crit_edge
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 8
  %slicebuf.i28 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 43
  tail call void @coda_free_aux_buf(ptr noundef %37, ptr noundef %slicebuf.i28) #11
  %psbuf.i29 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 42
  tail call void @coda_free_aux_buf(ptr noundef %37, ptr noundef %psbuf.i29) #11
  %devtype.i30 = getelementptr inbounds %struct.coda_dev, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %devtype.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devtype.i30, align 4
  %product.i31 = getelementptr inbounds %struct.coda_devtype, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %product.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %product.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %41)
  %cmp.not.i32 = icmp eq i32 %41, 61441
  br i1 %cmp.not.i32, label %coda_free_bitstream_buffer.exit.coda_free_context_buffers.exit37_crit_edge, label %if.then.i34

coda_free_bitstream_buffer.exit.coda_free_context_buffers.exit37_crit_edge: ; preds = %coda_free_bitstream_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_free_context_buffers.exit37

if.then.i34:                                      ; preds = %coda_free_bitstream_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %workbuf.i33 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 49
  tail call void @coda_free_aux_buf(ptr noundef %37, ptr noundef %workbuf.i33) #11
  br label %coda_free_context_buffers.exit37

coda_free_context_buffers.exit37:                 ; preds = %if.then.i34, %coda_free_bitstream_buffer.exit.coda_free_context_buffers.exit37_crit_edge
  %parabuf.i35 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41
  tail call void @coda_free_aux_buf(ptr noundef %37, ptr noundef %parabuf.i35) #11
  br label %cleanup

cleanup:                                          ; preds = %coda_free_context_buffers.exit37, %coda_free_context_buffers.exit, %if.end45.i, %if.end5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %coda_free_context_buffers.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ], [ 0, %coda_free_context_buffers.exit37 ], [ 0, %if.end45.i ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_start_decoding(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %coda_mutex = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %coda_mutex, i32 noundef 0) #11
  %call = tail call fastcc i32 @__coda_start_decoding(ptr noundef %ctx)
  tail call void @mutex_unlock(ptr noundef %coda_mutex) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_prepare_decode(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #11
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1
  %bitstream_mutex = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %bitstream_mutex, i32 noundef 0) #11
  tail call void @coda_fill_bitstream(ptr noundef %ctx, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %bitstream_mutex) #11
  %bitstream_fifo.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37
  %4 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitstream_fifo.i, align 4
  %out.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out.i, align 4
  %sub.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 512
  br i1 %cmp, label %land.lhs.true, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 55
  %8 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bit_stream_param, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %10 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5 = icmp sgt i32 %10, 0
  br i1 %cmp5, label %do.end, label %do.body.do.end18_crit_edge

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %name, i32 noundef %14, i32 noundef %sub.i) #14
  br label %do.end18

do.end18:                                         ; preds = %do.end, %do.body.do.end18_crit_edge
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 8
  %m2m_dev = getelementptr inbounds %struct.coda_dev, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_dev, align 8
  %19 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %18, ptr noundef %20) #11
  br label %cleanup97

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %initialized = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 9
  %21 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not = icmp eq i32 %22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end42_crit_edge

if.end22.if.end42_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then24:                                        ; preds = %if.end22
  %call25 = tail call fastcc i32 @__coda_start_decoding(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.else

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %name33 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %name33) #14
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 8
  %m2m_dev37 = getelementptr inbounds %struct.coda_dev, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %m2m_dev37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_dev37, align 8
  %27 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %26, ptr noundef %28) #11
  br label %cleanup97

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %initialized, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end22.if.end42_crit_edge
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %33)
  %cmp43 = icmp eq i32 %33, 61472
  br i1 %cmp43, label %if.then44, label %if.end42.if.end45_crit_edge

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_set_gdi_regs(ptr noundef %ctx) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42.if.end45_crit_edge
  %use_vdoa = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 62
  %34 = ptrtoint ptr %use_vdoa to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_vdoa, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool46.not = icmp eq i8 %35, 0
  br i1 %tobool46.not, label %if.end45.if.else55_crit_edge, label %land.lhs.true47

if.end45.if.else55_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else55

land.lhs.true47:                                  ; preds = %if.end45
  %display_idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 59
  %36 = ptrtoint ptr %display_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %display_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp48 = icmp sgt i32 %37, -1
  br i1 %cmp48, label %land.lhs.true49, label %land.lhs.true47.if.else55_crit_edge

land.lhs.true47.if.else55_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else55

land.lhs.true49:                                  ; preds = %land.lhs.true47
  %num_internal_frames = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %38 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_internal_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp51 = icmp slt i32 %37, %39
  br i1 %cmp51, label %if.then52, label %land.lhs.true49.if.else55_crit_edge

land.lhs.true49.if.else55_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else55

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  %vdoa = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 63
  %40 = ptrtoint ptr %vdoa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vdoa, align 4
  %call.i169 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #11
  %42 = ptrtoint ptr %call.i169 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call.i169, align 4
  %44 = ptrtoint ptr %display_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %display_idx, align 8
  %paddr = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %45, i32 0, i32 1
  %46 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %paddr, align 4
  tail call void @vdoa_device_run(ptr noundef %41, i32 noundef %43, i32 noundef %47) #11
  br label %if.end63

if.else55:                                        ; preds = %land.lhs.true49.if.else55_crit_edge, %land.lhs.true47.if.else55_crit_edge, %if.end45.if.else55_crit_edge
  %48 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %devtype, align 4
  %product57 = getelementptr inbounds %struct.coda_devtype, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %product57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %product57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %51)
  %cmp58 = icmp eq i32 %51, 61472
  br i1 %cmp58, label %if.then59, label %if.else55.if.end61_crit_edge

if.else55.if.end61_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then59:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 19, i32 noundef 388) #11
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.else55.if.end61_crit_edge
  %reg_stride.0 = phi i32 [ 440, %if.then59 ], [ 400, %if.else55.if.end61_crit_edge ]
  %reg_addr.0 = phi i32 [ 392, %if.then59 ], [ 388, %if.else55.if.end61_crit_edge ]
  tail call void @coda_write_base(ptr noundef %ctx, ptr noundef %arrayidx3.i, ptr noundef %call.i, i32 noundef %reg_addr.0) #11
  %bytesperline = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 2
  %52 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bytesperline, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %53, i32 noundef %reg_stride.0) #11
  %params = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22
  %54 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %params, align 8
  %56 = or i8 %55, 16
  %or = zext i8 %56 to i32
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %if.then52
  %rot_mode.0 = phi i32 [ 0, %if.then52 ], [ %or, %if.end61 ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %rot_mode.0, i32 noundef 384) #11
  %57 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %devtype, align 4
  %product65 = getelementptr inbounds %struct.coda_devtype, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %product65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %product65, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %60, label %if.end63.sw.epilog_crit_edge [
    i32 61441, label %if.end63.sw.epilog.sink.split_crit_edge
    i32 61450, label %if.end63.sw.epilog.sink.split_crit_edge172
    i32 61458, label %if.end63.sw.epilog.sink.split_crit_edge173
    i32 61472, label %sw.bb66
  ]

if.end63.sw.epilog.sink.split_crit_edge173:       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end63.sw.epilog.sink.split_crit_edge172:       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end63.sw.epilog.sink.split_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb66, %if.end63.sw.epilog.sink.split_crit_edge, %if.end63.sw.epilog.sink.split_crit_edge172, %if.end63.sw.epilog.sink.split_crit_edge173
  %.sink = phi i32 [ 1024, %sw.bb66 ], [ 1, %if.end63.sw.epilog.sink.split_crit_edge ], [ 1, %if.end63.sw.epilog.sink.split_crit_edge172 ], [ 1, %if.end63.sw.epilog.sink.split_crit_edge173 ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %.sink, i32 noundef 404) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end63.sw.epilog_crit_edge
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 408) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 416) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 420) #11
  %62 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %devtype, align 4
  %product68 = getelementptr inbounds %struct.coda_devtype, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %product68 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %product68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %65)
  %cmp69.not = icmp eq i32 %65, 61441
  br i1 %cmp69.not, label %sw.epilog.if.end72_crit_edge, label %if.then71

sw.epilog.if.end72_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then71:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %iram_info = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53
  %66 = ptrtoint ptr %iram_info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %iram_info, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %67, i32 noundef 320) #11
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %sw.epilog.if.end72_crit_edge
  %buffer_meta_lock = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %buffer_meta_lock) #11
  %buffer_meta_list = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 45
  %68 = ptrtoint ptr %buffer_meta_list to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %buffer_meta_list, align 4
  %cmp78.not = icmp eq ptr %69, %buffer_meta_list
  %spec.select = select i1 %cmp78.not, ptr null, ptr %69
  %tobool81.not = icmp eq ptr %spec.select, null
  br i1 %tobool81.not, label %if.end72.if.end95_crit_edge, label %land.lhs.true82

if.end72.if.end95_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true82:                                  ; preds = %if.end72
  %codec = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %70 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %codec, align 4
  %src_fourcc = getelementptr inbounds %struct.coda_codec, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %src_fourcc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %73)
  %cmp83 = icmp eq i32 %73, 1195724874
  br i1 %cmp83, label %if.then85, label %land.lhs.true82.if.end95_crit_edge

land.lhs.true82.if.end95_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then85:                                        ; preds = %land.lhs.true82
  %end = getelementptr inbounds %struct.coda_buffer_meta, ptr %spec.select, i32 0, i32 5
  %74 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %end, align 4
  %76 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bitstream_fifo.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp86 = icmp eq i32 %75, %77
  br i1 %cmp86, label %if.then88, label %if.then85.if.end95_crit_edge

if.then85.if.end95_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then88:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 0, %75
  %and90 = and i32 %sub, 255
  %add = or i32 %and90, 256
  %78 = call ptr @memset(ptr @coda_prepare_decode.buf, i32 255, i32 512)
  %call93 = tail call i32 @__kfifo_in(ptr noundef %bitstream_fifo.i, ptr noundef nonnull @coda_prepare_decode.buf, i32 noundef %add) #11
  br label %if.end95

if.end95:                                         ; preds = %if.then88, %if.then85.if.end95_crit_edge, %land.lhs.true82.if.end95_crit_edge, %if.end72.if.end95_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buffer_meta_lock) #11
  %79 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx, align 8
  %paddr.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 1
  %81 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %paddr.i, align 4
  %83 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %out.i, align 4
  %mask.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %85 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %86, %84
  %add.i = add i32 %and.i, %82
  %reg_idx.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %87 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg_idx.i, align 4
  %mul.i = shl i32 %88, 3
  %add2.i = add i32 %mul.i, 288
  tail call void @coda_write(ptr noundef %80, i32 noundef %add.i, i32 noundef %add2.i) #11
  %89 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %paddr.i, align 4
  %91 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bitstream_fifo.i, align 4
  %93 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mask.i, align 4
  %and6.i = and i32 %94, %92
  %add7.i = add i32 %and6.i, %90
  %95 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reg_idx.i, align 4
  %mul9.i = shl i32 %96, 3
  %add10.i = add i32 %mul9.i, 292
  tail call void @coda_write(ptr noundef %80, i32 noundef %add7.i, i32 noundef %add10.i) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 472) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 456) #11
  tail call fastcc void @trace_coda_dec_pic_run(ptr noundef %ctx, ptr noundef %spec.select)
  tail call fastcc void @coda_command_async(ptr noundef %ctx, i32 noundef 3)
  br label %cleanup97

cleanup97:                                        ; preds = %if.end95, %do.end30, %do.end18
  %retval.1 = phi i32 [ 0, %if.end95 ], [ -11, %do.end18 ], [ -11, %do.end30 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_finish_decode(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %aborting = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitstream_fifo.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37
  %reg_idx.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %4 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_idx.i, align 4
  %mul.i = shl i32 %5, 3
  %add.i = add i32 %mul.i, 288
  %call.i = tail call i32 @coda_read(ptr noundef %1, i32 noundef %add.i) #11
  %6 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitstream_fifo.i, align 4
  %mask.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %7, %neg.i
  %paddr.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 1
  %10 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %paddr.i, align 4
  %sub.i = sub i32 %call.i, %11
  %or.i = or i32 %sub.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %7)
  %cmp.i = icmp ugt i32 %or.i, %7
  %sub7.i = select i1 %cmp.i, i32 %neg.i, i32 0
  %spec.select.i = add i32 %sub7.i, %or.i
  %out.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %out.i, align 4
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 55
  %13 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bit_stream_param, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %sub.i744 = sub i32 %7, %spec.select.i
  %size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %sub = add i32 %16, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i744, i32 %sub)
  %cmp.not = icmp ult i32 %sub.i744, %sub
  br i1 %cmp.not, label %if.then3.if.end10_crit_edge, label %if.then4

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %bitstream = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39
  %17 = ptrtoint ptr %bitstream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitstream, align 8
  %call8 = tail call i32 @__kfifo_init(ptr noundef %bitstream_fifo.i, ptr noundef %18, i32 noundef %16, i32 noundef 1) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %fourcc = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 4
  %19 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fourcc, align 4
  %call12 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 472) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 1
  br i1 %cmp13.not, label %if.end10.if.end26_crit_edge, label %if.end17

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end17:                                         ; preds = %if.end10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %call12) #14
  %and18 = and i32 %call12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.end23, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %name) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end17.if.end26_crit_edge, %if.end10.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %20)
  %cmp27 = icmp eq i32 %20, 875967048
  br i1 %cmp27, label %if.then28, label %if.end55

if.then28:                                        ; preds = %if.end26
  %and29 = and i32 %call12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then28.if.end41_crit_edge, label %do.end34

if.then28.if.end41_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %name37 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %size39 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 42, i32 2
  %21 = ptrtoint ptr %size39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size39, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %name37, i32 noundef %22) #14
  br label %if.end41

if.end41:                                         ; preds = %do.end34, %if.then28.if.end41_crit_edge
  %and42 = and i32 %call12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.then61_crit_edge, label %do.end47

if.end41.if.then61_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %name50 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %size52 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 43, i32 2
  %23 = ptrtoint ptr %size52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size52, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %name50, i32 noundef %24) #14
  br label %if.then61

if.end55:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 444) #11
  br label %if.end84

if.then61:                                        ; preds = %do.end47, %if.end41.if.then61_crit_edge
  %call56786 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 444) #11
  %call62 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 480) #11
  %call63 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 484) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call62)
  %cmp64 = icmp eq i32 %call62, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call63)
  %cmp65 = icmp eq i32 %call63, -1
  %or.cond = select i1 %cmp64, i1 %cmp65, i1 false
  br i1 %or.cond, label %if.then61.if.end84_crit_edge, label %if.else

if.then61.if.end84_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.else:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %and58788 = and i32 %call56786, 65535
  %shr787 = lshr i32 %call56786, 16
  %rect67 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5
  %shr68 = lshr i32 %call62, 16
  %25 = ptrtoint ptr %rect67 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr68, ptr %rect67, align 4
  %shr70 = lshr i32 %call63, 16
  %top = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5, i32 1
  %26 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr70, ptr %top, align 4
  %and74 = and i32 %call62, 65535
  %27 = add nuw nsw i32 %and74, %shr68
  %sub75 = sub nsw i32 %shr787, %27
  %width76 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5, i32 2
  %28 = ptrtoint ptr %width76 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub75, ptr %width76, align 4
  %and79 = and i32 %call63, 65535
  %29 = add nuw nsw i32 %and79, %shr70
  %sub80 = sub nsw i32 %and58788, %29
  %height81 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5, i32 3
  %30 = ptrtoint ptr %height81 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub80, ptr %height81, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then61.if.end84_crit_edge, %if.end55
  %call85 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 456) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %if.end84.if.end116_crit_edge, label %if.then87

if.end84.if.end116_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then87:                                        ; preds = %if.end84
  %mb_err_rs = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 21
  %call88 = tail call i32 @___ratelimit(ptr noundef %mb_err_rs, ptr noundef nonnull @.str.161) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then87.if.end112_crit_edge, label %do.body91

if.then87.if.end112_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

do.body91:                                        ; preds = %if.then87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %31 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp92 = icmp sgt i32 %31, 0
  br i1 %cmp92, label %do.end99, label %do.body91.if.end112_crit_edge

do.body91.if.end112_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

do.end99:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 8
  %name103 = getelementptr inbounds %struct.v4l2_device, ptr %33, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 8
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %name103, i32 noundef %35, i32 noundef %call85) #14
  br label %if.end112

if.end112:                                        ; preds = %do.end99, %do.body91.if.end112_crit_edge, %if.then87.if.end112_crit_edge
  %mb_err_cnt_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 30
  %36 = ptrtoint ptr %mb_err_cnt_ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mb_err_cnt_ctrl, align 4
  %call114 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %37) #11
  %add = add i32 %call114, %call85
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %41, i32 noundef 0) #11
  %call.i745 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %37, i32 noundef %add) #11
  %42 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %45) #11
  br label %if.end116

if.end116:                                        ; preds = %if.end112, %if.end84.if.end116_crit_edge
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %product, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %49, label %if.end116.if.end148_crit_edge [
    i32 61450, label %if.end116.if.then121_crit_edge
    i32 61458, label %if.end116.if.then121_crit_edge825
  ]

if.end116.if.then121_crit_edge825:                ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

if.end116.if.then121_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

if.end116.if.end148_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then121:                                       ; preds = %if.end116.if.then121_crit_edge, %if.end116.if.then121_crit_edge825
  %call122 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 468) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %do.body125, label %if.then121.if.end148_crit_edge

if.then121.if.end148_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

do.body125:                                       ; preds = %if.then121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %51 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp126 = icmp sgt i32 %51, 0
  br i1 %cmp126, label %do.end133, label %do.body125.do.end146_crit_edge

do.body125.do.end146_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end146

do.end133:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 8
  %name137 = getelementptr inbounds %struct.v4l2_device, ptr %53, i32 0, i32 4
  %idx139 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %54 = ptrtoint ptr %idx139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %idx139, align 8
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %name137, i32 noundef %55, i32 noundef 0) #14
  br label %do.end146

do.end146:                                        ; preds = %do.end133, %do.body125.do.end146_crit_edge
  %hold = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 40
  %56 = ptrtoint ptr %hold to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %hold, align 8
  br label %cleanup

if.end148:                                        ; preds = %if.then121.if.end148_crit_edge, %if.end116.if.end148_crit_edge
  %use_vdoa = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 62
  %57 = ptrtoint ptr %use_vdoa to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %use_vdoa, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool149.not = icmp eq i8 %58, 0
  br i1 %tobool149.not, label %if.end148.if.end158_crit_edge, label %land.lhs.true150

if.end148.if.end158_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

land.lhs.true150:                                 ; preds = %if.end148
  %display_idx151 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 59
  %59 = ptrtoint ptr %display_idx151 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %display_idx151, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp152 = icmp sgt i32 %60, -1
  br i1 %cmp152, label %land.lhs.true153, label %land.lhs.true150.if.end158_crit_edge

land.lhs.true150.if.end158_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

land.lhs.true153:                                 ; preds = %land.lhs.true150
  %num_internal_frames = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %61 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_internal_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp155 = icmp slt i32 %60, %62
  br i1 %cmp155, label %if.then156, label %land.lhs.true153.if.end158_crit_edge

land.lhs.true153.if.end158_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.then156:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #13
  %vdoa = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 63
  %63 = ptrtoint ptr %vdoa to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdoa, align 4
  %call157 = tail call i32 @vdoa_wait_for_completion(ptr noundef %64) #11
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %land.lhs.true153.if.end158_crit_edge, %land.lhs.true150.if.end158_crit_edge, %if.end148.if.end158_crit_edge
  %err_vdoa.0 = phi i32 [ %call157, %if.then156 ], [ 0, %land.lhs.true153.if.end158_crit_edge ], [ 0, %land.lhs.true150.if.end158_crit_edge ], [ 0, %if.end148.if.end158_crit_edge ]
  %65 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_idx.i, align 4
  %mul = shl i32 %66, 2
  %add159 = add i32 %mul, 336
  %call160 = tail call i32 @coda_read(ptr noundef %1, i32 noundef %add159) #11
  %frm_dis_flg = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 56
  %67 = ptrtoint ptr %frm_dis_flg to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call160, ptr %frm_dis_flg, align 4
  %display_idx161 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 59
  %68 = ptrtoint ptr %display_idx161 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %display_idx161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp162 = icmp sgt i32 %69, -1
  br i1 %cmp162, label %land.lhs.true163, label %if.end158.if.end175_crit_edge

if.end158.if.end175_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175

land.lhs.true163:                                 ; preds = %if.end158
  %num_internal_frames165 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %70 = ptrtoint ptr %num_internal_frames165 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_internal_frames165, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp166 = icmp slt i32 %69, %71
  br i1 %cmp166, label %if.then167, label %land.lhs.true163.if.end175_crit_edge

land.lhs.true163.if.end175_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175

if.then167:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw i32 1, %69
  %neg = xor i32 %shl, -1
  %and170 = and i32 %call160, %neg
  %72 = ptrtoint ptr %frm_dis_flg to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and170, ptr %frm_dis_flg, align 4
  %73 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %reg_idx.i, align 4
  %mul173 = shl i32 %74, 2
  %add174 = add i32 %mul173, 336
  tail call void @coda_write(ptr noundef %1, i32 noundef %and170, i32 noundef %add174) #11
  br label %if.end175

if.end175:                                        ; preds = %if.then167, %land.lhs.true163.if.end175_crit_edge, %if.end158.if.end175_crit_edge
  %call176 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 476) #11
  %call177 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 452) #11
  %75 = zext i32 %call176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %call176, label %if.else205 [
    i32 -1, label %if.then179
    i32 -2, label %if.then194
  ]

if.then179:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call177)
  %cmp180 = icmp sgt i32 %call177, -1
  br i1 %cmp180, label %land.lhs.true181, label %if.then179.if.else185_crit_edge

if.then179.if.else185_crit_edge:                  ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else185

land.lhs.true181:                                 ; preds = %if.then179
  %num_internal_frames182 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %76 = ptrtoint ptr %num_internal_frames182 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_internal_frames182, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call177, i32 %77)
  %cmp183 = icmp slt i32 %call177, %77
  br i1 %cmp183, label %if.else284.thread, label %land.lhs.true181.if.else185_crit_edge

land.lhs.true181.if.else185_crit_edge:            ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else185

if.else284.thread:                                ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #13
  %sequence_offset = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 14
  %78 = ptrtoint ptr %sequence_offset to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sequence_offset, align 4
  %inc = add i32 %79, 1
  store i32 %inc, ptr %sequence_offset, align 4
  br label %lor.lhs.false286

if.else185:                                       ; preds = %land.lhs.true181.if.else185_crit_edge, %if.then179.if.else185_crit_edge
  %80 = ptrtoint ptr %display_idx161 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %display_idx161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp187 = icmp slt i32 %81, 0
  br i1 %cmp187, label %if.then188, label %if.else185.if.end277_crit_edge

if.else185.if.end277_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

if.then188:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #13
  %hold189 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 40
  %82 = ptrtoint ptr %hold189 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %hold189, align 8
  br label %if.end277

if.then194:                                       ; preds = %if.end175
  %83 = ptrtoint ptr %display_idx161 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %display_idx161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp196 = icmp sgt i32 %84, -1
  br i1 %cmp196, label %land.lhs.true197, label %if.then194.if.end277_crit_edge

if.then194.if.end277_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

land.lhs.true197:                                 ; preds = %if.then194
  %num_internal_frames199 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %85 = ptrtoint ptr %num_internal_frames199 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_internal_frames199, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp200 = icmp slt i32 %84, %86
  br i1 %cmp200, label %if.then201, label %land.lhs.true197.if.end277_crit_edge

land.lhs.true197.if.end277_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

if.then201:                                       ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #13
  %sequence_offset202 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 14
  %87 = ptrtoint ptr %sequence_offset202 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sequence_offset202, align 4
  %inc203 = add i32 %88, 1
  store i32 %inc203, ptr %sequence_offset202, align 4
  br label %if.end277

if.else205:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp206 = icmp slt i32 %call176, 0
  br i1 %cmp206, label %if.else205.do.end213_crit_edge, label %lor.lhs.false207

if.else205.do.end213_crit_edge:                   ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end213

lor.lhs.false207:                                 ; preds = %if.else205
  %num_internal_frames208 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %89 = ptrtoint ptr %num_internal_frames208 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_internal_frames208, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call176, i32 %90)
  %cmp209.not = icmp slt i32 %call176, %90
  br i1 %cmp209.not, label %if.else219, label %lor.lhs.false207.do.end213_crit_edge

lor.lhs.false207.do.end213_crit_edge:             ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end213

do.end213:                                        ; preds = %lor.lhs.false207.do.end213_crit_edge, %if.else205.do.end213_crit_edge
  %name216 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %name216, i32 noundef %call176) #14
  br label %if.end277

if.else219:                                       ; preds = %lor.lhs.false207
  %arrayidx = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %call176
  %call220 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 448) #11
  %sequence_offset221 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 14
  %91 = ptrtoint ptr %sequence_offset221 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sequence_offset221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp222 = icmp eq i32 %92, -1
  br i1 %cmp222, label %if.then223, label %if.else219.if.end225_crit_edge

if.else219.if.end225_crit_edge:                   ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

if.then223:                                       ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %sequence_offset221 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call220, ptr %sequence_offset221, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.else219.if.end225_crit_edge
  %first_frame_sequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 48
  %94 = ptrtoint ptr %first_frame_sequence to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %first_frame_sequence, align 8
  %add226 = add i32 %95, %call220
  %96 = ptrtoint ptr %sequence_offset221 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sequence_offset221, align 4
  %sub228 = sub i32 %add226, %97
  %buffer_meta_lock = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %buffer_meta_lock) #11
  %buffer_meta_list = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 45
  %98 = ptrtoint ptr %buffer_meta_list to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %buffer_meta_list, align 4
  %cmp.i746.not = icmp eq ptr %99, %buffer_meta_list
  br i1 %cmp.i746.not, label %if.else252, label %if.then231

if.then231:                                       ; preds = %if.end225
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %99) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then231.list_del.exit_crit_edge

if.then231.list_del.exit_crit_edge:               ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i, align 4
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then231.list_del.exit_crit_edge
  %106 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %99, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %num_metas = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 47
  %108 = ptrtoint ptr %num_metas to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_metas, align 4
  %dec = add i32 %109, -1
  store i32 %dec, ptr %num_metas, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buffer_meta_lock) #11
  %sequence236 = getelementptr inbounds %struct.coda_buffer_meta, ptr %99, i32 0, i32 1
  %110 = ptrtoint ptr %sequence236 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sequence236, align 8
  %112 = xor i32 %111, %sub228
  %113 = and i32 %112, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp238.not = icmp eq i32 %113, 0
  br i1 %cmp238.not, label %list_del.exit.if.end250_crit_edge, label %do.end242

list_del.exit.if.end250_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end250

do.end242:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name245 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %114 = ptrtoint ptr %sequence_offset221 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sequence_offset221, align 4
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %name245, i32 noundef %sub228, i32 noundef %115, i32 noundef %111) #14
  br label %if.end250

if.end250:                                        ; preds = %do.end242, %list_del.exit.if.end250_crit_edge
  %meta251 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %call176, i32 1
  %116 = call ptr @memcpy(ptr %meta251, ptr %99, i32 56)
  tail call void @kfree(ptr noundef %99) #11
  br label %if.end268

if.else252:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %buffer_meta_lock) #11
  %name259 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name259) #14
  %meta262 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %call176, i32 1
  %117 = call ptr @memset(ptr %meta262, i32 0, i32 56)
  %sequence264 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %call176, i32 1, i32 1
  %118 = ptrtoint ptr %sequence264 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub228, ptr %sequence264, align 8
  %last = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %call176, i32 1, i32 6
  %119 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %last, align 8
  %120 = ptrtoint ptr %sequence_offset221 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sequence_offset221, align 4
  %inc267 = add i32 %121, 1
  store i32 %inc267, ptr %sequence_offset221, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.else252, %if.end250
  %meta269 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %call176, i32 1
  tail call fastcc void @trace_coda_dec_pic_done(ptr noundef %ctx, ptr noundef %meta269)
  %call270 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 460) #11
  %and271 = and i32 %call270, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %cmp272 = icmp eq i32 %and271, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and271)
  %cmp273 = icmp eq i32 %and271, 1
  %cond = select i1 %cmp273, i32 16, i32 32
  %cond274 = select i1 %cmp272, i32 8, i32 %cond
  %type = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %call176, i32 2
  %122 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %cond274, ptr %type, align 8
  %error = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %call176, i32 3
  %123 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call85, ptr %error, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.end268, %do.end213, %if.then201, %land.lhs.true197.if.end277_crit_edge, %if.then194.if.end277_crit_edge, %if.then188, %if.else185.if.end277_crit_edge
  %decoded_frame.0 = phi ptr [ null, %if.then188 ], [ null, %if.else185.if.end277_crit_edge ], [ null, %if.then201 ], [ null, %land.lhs.true197.if.end277_crit_edge ], [ null, %if.then194.if.end277_crit_edge ], [ null, %do.end213 ], [ %arrayidx, %if.end268 ]
  %124 = zext i32 %call177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %call177, label %if.else284 [
    i32 -1, label %if.then279
    i32 -3, label %if.end277.if.end300_crit_edge
  ]

if.end277.if.end300_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end300

if.then279:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #13
  %hold280 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 40
  %125 = ptrtoint ptr %hold280 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %hold280, align 8
  br label %if.end300

if.else284:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp285 = icmp slt i32 %call177, 0
  br i1 %cmp285, label %if.else284.do.end292_crit_edge, label %if.else284.lor.lhs.false286_crit_edge

if.else284.lor.lhs.false286_crit_edge:            ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false286

if.else284.do.end292_crit_edge:                   ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end292

lor.lhs.false286:                                 ; preds = %if.else284.lor.lhs.false286_crit_edge, %if.else284.thread
  %decoded_frame.0797805809 = phi ptr [ null, %if.else284.thread ], [ %decoded_frame.0, %if.else284.lor.lhs.false286_crit_edge ]
  %num_internal_frames287 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %126 = ptrtoint ptr %num_internal_frames287 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_internal_frames287, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call177, i32 %127)
  %cmp288.not = icmp slt i32 %call177, %127
  br i1 %cmp288.not, label %lor.lhs.false286.if.end300_crit_edge, label %lor.lhs.false286.do.end292_crit_edge

lor.lhs.false286.do.end292_crit_edge:             ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end292

lor.lhs.false286.if.end300_crit_edge:             ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end300

do.end292:                                        ; preds = %lor.lhs.false286.do.end292_crit_edge, %if.else284.do.end292_crit_edge
  %decoded_frame.0797805810 = phi ptr [ %decoded_frame.0, %if.else284.do.end292_crit_edge ], [ %decoded_frame.0797805809, %lor.lhs.false286.do.end292_crit_edge ]
  %name295 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call297 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %name295, i32 noundef %call177) #14
  br label %if.end300

if.end300:                                        ; preds = %do.end292, %lor.lhs.false286.if.end300_crit_edge, %if.then279, %if.end277.if.end300_crit_edge
  %cmp278799 = phi i1 [ true, %do.end292 ], [ true, %lor.lhs.false286.if.end300_crit_edge ], [ false, %if.then279 ], [ true, %if.end277.if.end300_crit_edge ]
  %decoded_frame.0796 = phi ptr [ %decoded_frame.0797805810, %do.end292 ], [ %decoded_frame.0797805809, %lor.lhs.false286.if.end300_crit_edge ], [ %decoded_frame.0, %if.then279 ], [ %decoded_frame.0, %if.end277.if.end300_crit_edge ]
  %128 = ptrtoint ptr %display_idx161 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %display_idx161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %129)
  %cmp302 = icmp sgt i32 %129, -1
  br i1 %cmp302, label %land.lhs.true303, label %if.end300.if.else465_crit_edge

if.end300.if.else465_crit_edge:                   ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else465

land.lhs.true303:                                 ; preds = %if.end300
  %num_internal_frames305 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %130 = ptrtoint ptr %num_internal_frames305 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_internal_frames305, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp306 = icmp slt i32 %129, %131
  br i1 %cmp306, label %if.then307, label %land.lhs.true303.if.else465_crit_edge

land.lhs.true303.if.else465_crit_edge:            ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else465

if.then307:                                       ; preds = %land.lhs.true303
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %132 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %133, i32 0, i32 7
  %call.i747 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #11
  %osequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 13
  %134 = ptrtoint ptr %osequence to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %osequence, align 8
  %inc312 = add i32 %135, 1
  store i32 %inc312, ptr %osequence, align 8
  %sequence313 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i747, i32 0, i32 4
  %136 = ptrtoint ptr %sequence313 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %sequence313, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i747, i32 0, i32 2
  %137 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %field, align 4
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i747, i32 0, i32 1
  %138 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags, align 8
  %and314 = and i32 %139, -57
  store i32 %and314, ptr %flags, align 8
  %type315 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %129, i32 2
  %140 = ptrtoint ptr %type315 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %type315, align 8
  %or = or i32 %141, %and314
  store i32 %or, ptr %flags, align 8
  %meta317 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %129, i32 1
  %last318 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %129, i32 1, i32 6
  %142 = ptrtoint ptr %last318 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %last318, align 8, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool319.not = icmp eq i8 %143, 0
  br i1 %tobool319.not, label %if.then307.if.else347_crit_edge, label %land.lhs.true320

if.then307.if.else347_crit_edge:                  ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else347

land.lhs.true320:                                 ; preds = %if.then307
  %144 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ctx, align 8
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %product.i, align 4
  %150 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %149, label %land.lhs.true320.do.body323_crit_edge [
    i32 61450, label %land.lhs.true320.if.end.i_crit_edge
    i32 61458, label %land.lhs.true320.if.end.i_crit_edge826
    i32 61472, label %land.lhs.true320.if.end.i_crit_edge827
  ]

land.lhs.true320.if.end.i_crit_edge827:           ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true320.if.end.i_crit_edge826:           ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true320.if.end.i_crit_edge:              ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true320.do.body323_crit_edge:            ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body323

if.end.i:                                         ; preds = %land.lhs.true320.if.end.i_crit_edge, %land.lhs.true320.if.end.i_crit_edge826, %land.lhs.true320.if.end.i_crit_edge827
  %codec.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %151 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %codec.i, align 4
  %src_fourcc.i = getelementptr inbounds %struct.coda_codec, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %src_fourcc.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %src_fourcc.i, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %154, label %if.end.i.if.else347_crit_edge [
    i32 1195724874, label %if.end.i.do.body323_crit_edge
    i32 875967048, label %if.end16.i
  ]

if.end.i.do.body323_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body323

if.end.i.if.else347_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else347

if.end16.i:                                       ; preds = %if.end.i
  %h264_profile_idc.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 10
  %156 = ptrtoint ptr %h264_profile_idc.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %h264_profile_idc.i, align 2
  %conv.i748 = zext i8 %157 to i32
  %call.i749 = tail call i32 @coda_h264_profile(i32 noundef %conv.i748) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i749)
  %cmp17.i = icmp slt i32 %call.i749, 0
  br i1 %cmp17.i, label %coda_reorder_enable.exit.thread816, label %coda_reorder_enable.exit

coda_reorder_enable.exit.thread816:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %145, i32 0, i32 4
  %158 = ptrtoint ptr %h264_profile_idc.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %h264_profile_idc.i, align 2
  %conv22.i = zext i8 %159 to i32
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %name.i, i32 noundef %conv22.i) #14
  br label %do.body323

coda_reorder_enable.exit:                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i749)
  %cmp25.i.not = icmp eq i32 %call.i749, 0
  br i1 %cmp25.i.not, label %coda_reorder_enable.exit.do.body323_crit_edge, label %coda_reorder_enable.exit.if.else347_crit_edge

coda_reorder_enable.exit.if.else347_crit_edge:    ; preds = %coda_reorder_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else347

coda_reorder_enable.exit.do.body323_crit_edge:    ; preds = %coda_reorder_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body323

do.body323:                                       ; preds = %coda_reorder_enable.exit.do.body323_crit_edge, %coda_reorder_enable.exit.thread816, %if.end.i.do.body323_crit_edge, %land.lhs.true320.do.body323_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %160 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp324 = icmp sgt i32 %160, 0
  br i1 %cmp324, label %do.body323.if.end379.sink.split.sink.split_crit_edge, label %do.body323.if.end379.sink.split_crit_edge

do.body323.if.end379.sink.split_crit_edge:        ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end379.sink.split

do.body323.if.end379.sink.split.sink.split_crit_edge: ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end379.sink.split.sink.split

if.else347:                                       ; preds = %coda_reorder_enable.exit.if.else347_crit_edge, %if.end.i.if.else347_crit_edge, %if.then307.if.else347_crit_edge
  %161 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bit_stream_param, align 8
  %and349 = and i32 %162, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  %brmerge = or i1 %cmp278799, %tobool350.not
  br i1 %brmerge, label %if.else347.if.end379_crit_edge, label %do.body354

if.else347.if.end379_crit_edge:                   ; preds = %if.else347
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end379

do.body354:                                       ; preds = %if.else347
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %163 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp355 = icmp sgt i32 %163, 0
  br i1 %cmp355, label %do.body354.if.end379.sink.split.sink.split_crit_edge, label %do.body354.if.end379.sink.split_crit_edge

do.body354.if.end379.sink.split_crit_edge:        ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end379.sink.split

do.body354.if.end379.sink.split.sink.split_crit_edge: ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end379.sink.split.sink.split

if.end379.sink.split.sink.split:                  ; preds = %do.body354.if.end379.sink.split.sink.split_crit_edge, %do.body323.if.end379.sink.split.sink.split_crit_edge
  %.str.193.sink = phi ptr [ @.str.190, %do.body323.if.end379.sink.split.sink.split_crit_edge ], [ @.str.193, %do.body354.if.end379.sink.split.sink.split_crit_edge ]
  %164 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ctx, align 8
  %name366 = getelementptr inbounds %struct.v4l2_device, ptr %165, i32 0, i32 4
  %idx368 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %166 = ptrtoint ptr %idx368 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %idx368, align 8
  %call369 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.193.sink, ptr noundef %name366, i32 noundef %167) #14
  br label %if.end379.sink.split

if.end379.sink.split:                             ; preds = %if.end379.sink.split.sink.split, %do.body354.if.end379.sink.split_crit_edge, %do.body323.if.end379.sink.split_crit_edge
  %168 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags, align 8
  %or377 = or i32 %169, 1048576
  store i32 %or377, ptr %flags, align 8
  br label %if.end379

if.end379:                                        ; preds = %if.end379.sink.split, %if.else347.if.end379_crit_edge
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i747, i32 0, i32 3
  %timecode380 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %129, i32 1, i32 2
  %170 = call ptr @memcpy(ptr %timecode, ptr %timecode380, i32 16)
  %timestamp = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %129, i32 1, i32 3
  %171 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %timestamp, align 8
  %timestamp381 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i747, i32 0, i32 5
  %173 = ptrtoint ptr %timestamp381 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %timestamp381, align 8
  tail call fastcc void @trace_coda_dec_rot_done(ptr noundef %ctx, ptr noundef %call.i747, ptr noundef %meta317)
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i747, i32 0, i32 4
  %174 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp.not.i = icmp eq i32 %175, 0
  br i1 %cmp.not.i, label %if.end379.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.end379.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.end379
  %sizeimage = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 3
  %176 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i747, i32 0, i32 10, i32 0, i32 4
  %178 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %177)
  %cmp1.i = icmp ult i32 %179, %177
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !462

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.122, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %180 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %181, %if.then38.i ], [ %177, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i747, i32 0, i32 10, i32 0, i32 3
  %182 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.end379.vb2_set_plane_payload.exit_crit_edge
  %error383 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %129, i32 3
  %183 = ptrtoint ptr %error383 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %error383, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool384.not = icmp eq i32 %184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_vdoa.0)
  %tobool386.not = icmp eq i32 %err_vdoa.0, 0
  %or.cond741 = select i1 %tobool384.not, i1 %tobool386.not, i1 false
  %. = select i1 %or.cond741, i32 5, i32 6
  tail call void @coda_m2m_buf_done(ptr noundef %ctx, ptr noundef %call.i747, i32 noundef %.) #11
  %tobool390.not = icmp eq ptr %decoded_frame.0796, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %185 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp430 = icmp sgt i32 %185, 0
  br i1 %tobool390.not, label %do.body429, label %do.body392

do.body392:                                       ; preds = %vb2_set_plane_payload.exit
  br i1 %cmp430, label %do.end400, label %do.body392.if.end525_crit_edge

do.body392.if.end525_crit_edge:                   ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end525

do.end400:                                        ; preds = %do.body392
  %186 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ctx, align 8
  %name404 = getelementptr inbounds %struct.v4l2_device, ptr %187, i32 0, i32 4
  %idx406 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %188 = ptrtoint ptr %idx406 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %idx406, align 8
  %type407 = getelementptr inbounds %struct.coda_internal_frame, ptr %decoded_frame.0796, i32 0, i32 2
  %190 = ptrtoint ptr %type407 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %type407, align 8
  %and.i750 = and i32 %191, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i750)
  %tobool.not.i = icmp eq i32 %and.i750, 0
  br i1 %tobool.not.i, label %cond.false.i, label %do.end400.coda_frame_type_char.exit_crit_edge

do.end400.coda_frame_type_char.exit_crit_edge:    ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit

cond.false.i:                                     ; preds = %do.end400
  %and1.i = and i32 %191, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %cond.false4.i, label %cond.false.i.coda_frame_type_char.exit_crit_edge

cond.false.i.coda_frame_type_char.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit

cond.false4.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %and5.i = and i32 %191, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %phi.cast818 = select i1 %tobool6.not.i, i32 63, i32 66
  br label %coda_frame_type_char.exit

coda_frame_type_char.exit:                        ; preds = %cond.false4.i, %cond.false.i.coda_frame_type_char.exit_crit_edge, %do.end400.coda_frame_type_char.exit_crit_edge
  %cond9.i = phi i32 [ 73, %do.end400.coda_frame_type_char.exit_crit_edge ], [ %phi.cast818, %cond.false4.i ], [ 80, %cond.false.i.coda_frame_type_char.exit_crit_edge ]
  %sequence410 = getelementptr inbounds %struct.coda_internal_frame, ptr %decoded_frame.0796, i32 0, i32 1, i32 1
  %192 = ptrtoint ptr %sequence410 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %sequence410, align 8
  %194 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %flags, align 8
  %and.i751 = and i32 %195, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i751)
  %tobool.not.i752 = icmp eq i32 %and.i751, 0
  br i1 %tobool.not.i752, label %cond.false.i755, label %coda_frame_type_char.exit.coda_frame_type_char.exit761_crit_edge

coda_frame_type_char.exit.coda_frame_type_char.exit761_crit_edge: ; preds = %coda_frame_type_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit761

cond.false.i755:                                  ; preds = %coda_frame_type_char.exit
  %and1.i753 = and i32 %195, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i753)
  %tobool2.not.i754 = icmp eq i32 %and1.i753, 0
  br i1 %tobool2.not.i754, label %cond.false4.i759, label %cond.false.i755.coda_frame_type_char.exit761_crit_edge

cond.false.i755.coda_frame_type_char.exit761_crit_edge: ; preds = %cond.false.i755
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit761

cond.false4.i759:                                 ; preds = %cond.false.i755
  call void @__sanitizer_cov_trace_pc() #13
  %and5.i756 = and i32 %195, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i756)
  %tobool6.not.i757 = icmp eq i32 %and5.i756, 0
  %phi.cast819 = select i1 %tobool6.not.i757, i32 63, i32 66
  br label %coda_frame_type_char.exit761

coda_frame_type_char.exit761:                     ; preds = %cond.false4.i759, %cond.false.i755.coda_frame_type_char.exit761_crit_edge, %coda_frame_type_char.exit.coda_frame_type_char.exit761_crit_edge
  %cond9.i760 = phi i32 [ 73, %coda_frame_type_char.exit.coda_frame_type_char.exit761_crit_edge ], [ %phi.cast819, %cond.false4.i759 ], [ 80, %cond.false.i755.coda_frame_type_char.exit761_crit_edge ]
  %sequence415 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %129, i32 1, i32 1
  %196 = ptrtoint ptr %sequence415 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sequence415, align 8
  %198 = ptrtoint ptr %sequence313 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %sequence313, align 8
  %qsequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 12
  %200 = ptrtoint ptr %qsequence to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %qsequence, align 4
  %and418 = and i32 %195, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and418)
  %tobool419.not = icmp eq i32 %and418, 0
  %cond420 = select i1 %tobool419.not, ptr @.str.121, ptr @.str.120
  %call421 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %name404, i32 noundef %189, i32 noundef %cond9.i, i32 noundef %193, i32 noundef %cond9.i760, i32 noundef %197, i32 noundef %199, i32 noundef %201, ptr noundef nonnull %cond420) #14
  br label %if.end525

do.body429:                                       ; preds = %vb2_set_plane_payload.exit
  br i1 %cmp430, label %do.end439, label %do.body429.if.end525_crit_edge

do.body429.if.end525_crit_edge:                   ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end525

do.end439:                                        ; preds = %do.body429
  %202 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ctx, align 8
  %name443 = getelementptr inbounds %struct.v4l2_device, ptr %203, i32 0, i32 4
  %idx445 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %204 = ptrtoint ptr %idx445 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %idx445, align 8
  %206 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %flags, align 8
  %and.i762 = and i32 %207, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i762)
  %tobool.not.i763 = icmp eq i32 %and.i762, 0
  br i1 %tobool.not.i763, label %cond.false.i766, label %do.end439.coda_frame_type_char.exit772_crit_edge

do.end439.coda_frame_type_char.exit772_crit_edge: ; preds = %do.end439
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit772

cond.false.i766:                                  ; preds = %do.end439
  %and1.i764 = and i32 %207, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i764)
  %tobool2.not.i765 = icmp eq i32 %and1.i764, 0
  br i1 %tobool2.not.i765, label %cond.false4.i770, label %cond.false.i766.coda_frame_type_char.exit772_crit_edge

cond.false.i766.coda_frame_type_char.exit772_crit_edge: ; preds = %cond.false.i766
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit772

cond.false4.i770:                                 ; preds = %cond.false.i766
  call void @__sanitizer_cov_trace_pc() #13
  %and5.i767 = and i32 %207, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i767)
  %tobool6.not.i768 = icmp eq i32 %and5.i767, 0
  %phi.cast820 = select i1 %tobool6.not.i768, i32 63, i32 66
  br label %coda_frame_type_char.exit772

coda_frame_type_char.exit772:                     ; preds = %cond.false4.i770, %cond.false.i766.coda_frame_type_char.exit772_crit_edge, %do.end439.coda_frame_type_char.exit772_crit_edge
  %cond9.i771 = phi i32 [ 73, %do.end439.coda_frame_type_char.exit772_crit_edge ], [ %phi.cast820, %cond.false4.i770 ], [ 80, %cond.false.i766.coda_frame_type_char.exit772_crit_edge ]
  %sequence450 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %129, i32 1, i32 1
  %208 = ptrtoint ptr %sequence450 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %sequence450, align 8
  %210 = ptrtoint ptr %sequence313 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %sequence313, align 8
  %qsequence452 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 12
  %212 = ptrtoint ptr %qsequence452 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %qsequence452, align 4
  %and454 = and i32 %207, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454)
  %tobool455.not = icmp eq i32 %and454, 0
  %cond456 = select i1 %tobool455.not, ptr @.str.121, ptr @.str.120
  %call457 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %name443, i32 noundef %205, i32 noundef %call176, i32 noundef %cond9.i771, i32 noundef %209, i32 noundef %211, i32 noundef %213, ptr noundef nonnull %cond456) #14
  br label %if.end525

if.else465:                                       ; preds = %land.lhs.true303.if.else465_crit_edge, %if.end300.if.else465_crit_edge
  %tobool466.not = icmp eq ptr %decoded_frame.0796, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %214 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp500 = icmp sgt i32 %214, 0
  br i1 %tobool466.not, label %do.body499, label %do.body468

do.body468:                                       ; preds = %if.else465
  br i1 %cmp500, label %do.end478, label %do.body468.if.end525_crit_edge

do.body468.if.end525_crit_edge:                   ; preds = %do.body468
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end525

do.end478:                                        ; preds = %do.body468
  %215 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ctx, align 8
  %name482 = getelementptr inbounds %struct.v4l2_device, ptr %216, i32 0, i32 4
  %idx484 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %217 = ptrtoint ptr %idx484 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %idx484, align 8
  %type485 = getelementptr inbounds %struct.coda_internal_frame, ptr %decoded_frame.0796, i32 0, i32 2
  %219 = ptrtoint ptr %type485 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %type485, align 8
  %and.i773 = and i32 %220, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i773)
  %tobool.not.i774 = icmp eq i32 %and.i773, 0
  br i1 %tobool.not.i774, label %cond.false.i777, label %do.end478.coda_frame_type_char.exit783_crit_edge

do.end478.coda_frame_type_char.exit783_crit_edge: ; preds = %do.end478
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit783

cond.false.i777:                                  ; preds = %do.end478
  %and1.i775 = and i32 %220, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i775)
  %tobool2.not.i776 = icmp eq i32 %and1.i775, 0
  br i1 %tobool2.not.i776, label %cond.false4.i781, label %cond.false.i777.coda_frame_type_char.exit783_crit_edge

cond.false.i777.coda_frame_type_char.exit783_crit_edge: ; preds = %cond.false.i777
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_frame_type_char.exit783

cond.false4.i781:                                 ; preds = %cond.false.i777
  call void @__sanitizer_cov_trace_pc() #13
  %and5.i778 = and i32 %220, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i778)
  %tobool6.not.i779 = icmp eq i32 %and5.i778, 0
  %phi.cast = select i1 %tobool6.not.i779, i32 63, i32 66
  br label %coda_frame_type_char.exit783

coda_frame_type_char.exit783:                     ; preds = %cond.false4.i781, %cond.false.i777.coda_frame_type_char.exit783_crit_edge, %do.end478.coda_frame_type_char.exit783_crit_edge
  %cond9.i782 = phi i32 [ 73, %do.end478.coda_frame_type_char.exit783_crit_edge ], [ %phi.cast, %cond.false4.i781 ], [ 80, %cond.false.i777.coda_frame_type_char.exit783_crit_edge ]
  %sequence489 = getelementptr inbounds %struct.coda_internal_frame, ptr %decoded_frame.0796, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %sequence489 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %sequence489, align 8
  %call491 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef %name482, i32 noundef %218, i32 noundef %cond9.i782, i32 noundef %222, i32 noundef %129) #14
  br label %if.end525

do.body499:                                       ; preds = %if.else465
  br i1 %cmp500, label %do.end509, label %do.body499.if.end525_crit_edge

do.body499.if.end525_crit_edge:                   ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end525

do.end509:                                        ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #13
  %223 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ctx, align 8
  %name513 = getelementptr inbounds %struct.v4l2_device, ptr %224, i32 0, i32 4
  %idx515 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %225 = ptrtoint ptr %idx515 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %idx515, align 8
  %call517 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %name513, i32 noundef %226, i32 noundef %call176, i32 noundef %129) #14
  br label %if.end525

if.end525:                                        ; preds = %do.end509, %do.body499.if.end525_crit_edge, %coda_frame_type_char.exit783, %do.body468.if.end525_crit_edge, %coda_frame_type_char.exit772, %do.body429.if.end525_crit_edge, %coda_frame_type_char.exit761, %do.body392.if.end525_crit_edge
  %227 = ptrtoint ptr %display_idx161 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %call177, ptr %display_idx161, align 8
  %bitstream_mutex = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %bitstream_mutex, i32 noundef 0) #11
  tail call void @coda_fill_bitstream(ptr noundef %ctx, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %bitstream_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end525, %do.end146, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_decode_timeout(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 55
  %0 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_stream_param, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #11
  %qsequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 12
  %4 = ptrtoint ptr %qsequence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qsequence, align 4
  %sub = add i32 %5, -1
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %sequence, align 8
  tail call void @coda_m2m_buf_done(ptr noundef %ctx, ptr noundef %call.i, i32 noundef 6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_dec_seq_init_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -140
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %buffer_mutex = getelementptr i8, ptr %work, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #11
  %coda_mutex = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %coda_mutex, i32 noundef 0) #11
  %initialized = getelementptr i8, ptr %work, i32 156
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @__coda_decoder_seq_init(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %coda_mutex) #11
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_irq_handler(i32 noundef %irq, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @coda_read(ptr noundef %data, i32 noundef 16) #11
  tail call void @coda_write(ptr noundef %data, i32 noundef 0, i32 noundef 372) #11
  tail call void @coda_write(ptr noundef %data, i32 noundef 1, i32 noundef 12) #11
  %m2m_dev = getelementptr inbounds %struct.coda_dev, ptr %data, i32 0, i32 18
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  %call1 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #11
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_coda_bit_done(ptr noundef nonnull %call1)
  %aborting = getelementptr inbounds %struct.coda_ctx, ptr %call1, i32 0, i32 8
  %2 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %do.body4

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.body4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %4 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp sgt i32 %4, 0
  br i1 %cmp5, label %do.end12, label %do.body4.if.end25_crit_edge

do.body4.if.end25_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end12:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 8
  %name16 = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %call1, i32 0, i32 51
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name16, i32 noundef %8) #14
  br label %if.end25

if.end25:                                         ; preds = %do.end12, %do.body4.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call1, align 8
  %call.i = tail call i32 @coda_read(ptr noundef %10, i32 noundef 352) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end52, label %do.body30

do.body30:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %11 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp31 = icmp sgt i32 %11, 0
  br i1 %cmp31, label %do.end38, label %do.body30.cleanup_crit_edge

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end38:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call1, align 8
  %name42 = getelementptr inbounds %struct.v4l2_device, ptr %13, i32 0, i32 4
  %idx44 = getelementptr inbounds %struct.coda_ctx, ptr %call1, i32 0, i32 51
  %14 = ptrtoint ptr %idx44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx44, align 8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name42, i32 noundef %15) #14
  br label %cleanup

if.end52:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %completion = getelementptr inbounds %struct.coda_ctx, ptr %call1, i32 0, i32 5
  tail call void @complete(ptr noundef %completion) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end38, %do.body30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.end52 ], [ 0, %do.end38 ], [ 0, %do.body30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_coda_bit_done(ptr noundef %ctx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_done, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_coda_bit_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !468

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !462

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !474
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_done, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctx) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !475
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !475
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !462

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !471
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_bit_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_coda_bit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 50, ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !472
  %38 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_coda_bit_run(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %minor = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %ctx = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx, align 4
  %cmd = getelementptr inbounds %struct.trace_event_raw_coda_bit_run, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %5, i32 noundef %7) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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
define internal i32 @trace_raw_output_coda_bit_done(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %minor = getelementptr inbounds %struct.trace_event_raw_coda_bit_done, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %ctx = getelementptr inbounds %struct.trace_event_raw_coda_bit_done, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %5) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_coda_buf_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %minor = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %index = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %ctx = getelementptr inbounds %struct.trace_event_raw_coda_buf_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.40, i32 noundef %3, i32 noundef %5, i32 noundef %7) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_coda_buf_meta_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %minor = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %index = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %start = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %ctx = getelementptr inbounds %struct.trace_event_raw_coda_buf_meta_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_coda_meta_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %minor = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %start = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  %ctx = getelementptr inbounds %struct.trace_event_raw_coda_meta_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.44, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @coda_command_async(ptr noundef %ctx, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %5, label %entry.if.end_crit_edge [
    i32 61450, label %entry.if.then_crit_edge
    i32 61458, label %entry.if.then_crit_edge39
    i32 61472, label %entry.if.then_crit_edge40
  ]

entry.if.then_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge39, %entry.if.then_crit_edge40
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 55
  %7 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit_stream_param, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %8, i32 noundef 276) #11
  %frm_dis_flg = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 56
  %9 = ptrtoint ptr %frm_dis_flg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frm_dis_flg, align 4
  %reg_idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %11 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_idx, align 4
  %mul = shl i32 %12, 2
  %add = add i32 %mul, 336
  tail call void @coda_write(ptr noundef %1, i32 noundef %10, i32 noundef %add) #11
  %frame_mem_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 57
  %13 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_mem_ctrl, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %14, i32 noundef 272) #11
  %paddr = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 49, i32 1
  %15 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paddr, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %16, i32 noundef 260) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devtype, align 4
  %product10 = getelementptr inbounds %struct.coda_devtype, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %product10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %product10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %20)
  %cmp11 = icmp eq i32 %20, 61472
  br i1 %cmp11, label %if.then12, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 4256) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 4268) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 352) #11
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %22, i32 noundef 360) #11
  %codec_mode = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 27
  %23 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %codec_mode, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %24, i32 noundef 364) #11
  %codec_mode_aux = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 28
  %25 = ptrtoint ptr %codec_mode_aux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %codec_mode_aux, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %26, i32 noundef 376) #11
  tail call fastcc void @trace_coda_bit_run(ptr noundef %ctx, i32 noundef %cmd)
  tail call void @coda_write(ptr noundef %1, i32 noundef %cmd, i32 noundef 356) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_coda_bit_run(ptr noundef %ctx, i32 noundef %cmd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_run, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_coda_bit_run, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !468

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !462

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !476
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_run, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctx, i32 noundef %cmd) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !477
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !477
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !462

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !471
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_bit_run, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_bit_run.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_coda_bit_run.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 32, ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !472
  %38 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_mpeg2_parse_headers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_mpeg4_parse_headers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_h264_filler_nal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_alloc_context_buffers(ptr noundef %ctx, ptr nocapture noundef readonly %q_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %parabuf = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41
  %2 = ptrtoint ptr %parabuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parabuf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %debugfs_entry.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 60
  %4 = ptrtoint ptr %debugfs_entry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_entry.i, align 4
  %call.i = tail call i32 @coda_alloc_aux_buf(ptr noundef %1, ptr noundef %parabuf, i32 noundef 10240, ptr noundef nonnull @.str.61, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %9)
  %cmp5 = icmp eq i32 %9, 61441
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %slicebuf = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 43
  %10 = ptrtoint ptr %slicebuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slicebuf, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %land.lhs.true, label %if.end7.if.end24_crit_edge

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end7
  %fourcc = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 4
  %12 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %13)
  %cmp10 = icmp eq i32 %13, 875967048
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then11:                                        ; preds = %land.lhs.true
  %width = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %sub = add i32 %15, 15
  %div89 = lshr i32 %sub, 4
  %height = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %sub14 = add i32 %17, 15
  %div1590 = lshr i32 %sub14, 4
  %mul = mul i32 %div89, 3200
  %mul16 = mul i32 %mul, %div1590
  %div1791 = lshr exact i32 %mul16, 3
  %add18 = add nuw nsw i32 %div1791, 512
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 8
  %debugfs_entry.i92 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 60
  %20 = ptrtoint ptr %debugfs_entry.i92 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_entry.i92, align 4
  %call.i93 = tail call i32 @coda_alloc_aux_buf(ptr noundef %19, ptr noundef %slicebuf, i32 noundef %add18, ptr noundef nonnull @.str.62, ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp21 = icmp slt i32 %call.i93, 0
  br i1 %cmp21, label %if.then11.err_crit_edge, label %if.then11.if.end24_crit_edge

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then11.err_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end24:                                         ; preds = %if.then11.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %psbuf = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 42
  %22 = ptrtoint ptr %psbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psbuf, align 4
  %tobool26.not = icmp eq ptr %23, null
  br i1 %tobool26.not, label %land.lhs.true27, label %if.end24.if.end40_crit_edge

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true27:                                  ; preds = %if.end24
  %24 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devtype, align 4
  %product29 = getelementptr inbounds %struct.coda_devtype, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %product29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %product29, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %27, label %land.lhs.true27.if.end40_crit_edge [
    i32 61450, label %land.lhs.true27.if.then34_crit_edge
    i32 61458, label %land.lhs.true27.if.then34_crit_edge98
  ]

land.lhs.true27.if.then34_crit_edge98:            ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

land.lhs.true27.if.then34_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then34:                                        ; preds = %land.lhs.true27.if.then34_crit_edge, %land.lhs.true27.if.then34_crit_edge98
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 8
  %debugfs_entry.i94 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 60
  %31 = ptrtoint ptr %debugfs_entry.i94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debugfs_entry.i94, align 4
  %call.i95 = tail call i32 @coda_alloc_aux_buf(ptr noundef %30, ptr noundef %psbuf, i32 noundef 163840, ptr noundef nonnull @.str.63, ptr noundef %32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp37 = icmp slt i32 %call.i95, 0
  br i1 %cmp37, label %if.then34.err_crit_edge, label %if.then34.if.end40_crit_edge

if.then34.if.end40_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then34.err_crit_edge:                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end40:                                         ; preds = %if.then34.if.end40_crit_edge, %land.lhs.true27.if.end40_crit_edge, %if.end24.if.end40_crit_edge
  %workbuf = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 49
  %33 = ptrtoint ptr %workbuf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %workbuf, align 4
  %tobool42.not = icmp eq ptr %34, null
  br i1 %tobool42.not, label %if.then43, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  %35 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %devtype, align 4
  %workbuf_size = getelementptr inbounds %struct.coda_devtype, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %workbuf_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %workbuf_size, align 4
  %product46 = getelementptr inbounds %struct.coda_devtype, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %product46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %product46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %40)
  %cmp47 = icmp eq i32 %40, 61472
  br i1 %cmp47, label %land.lhs.true48, label %if.then43.if.end53_crit_edge

if.then43.if.end53_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true48:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %fourcc49 = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 4
  %41 = ptrtoint ptr %fourcc49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fourcc49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %42)
  %cmp50 = icmp eq i32 %42, 875967048
  %add52 = add i32 %38, 524288
  %spec.select = select i1 %cmp50, i32 %add52, i32 %38
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true48, %if.then43.if.end53_crit_edge
  %size.0 = phi i32 [ %38, %if.then43.if.end53_crit_edge ], [ %spec.select, %land.lhs.true48 ]
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 8
  %debugfs_entry.i96 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 60
  %45 = ptrtoint ptr %debugfs_entry.i96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %debugfs_entry.i96, align 4
  %call.i97 = tail call i32 @coda_alloc_aux_buf(ptr noundef %44, ptr noundef %workbuf, i32 noundef %size.0, ptr noundef nonnull @.str.64, ptr noundef %46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp56 = icmp slt i32 %call.i97, 0
  br i1 %cmp56, label %if.end53.err_crit_edge, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end53.err_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

err:                                              ; preds = %if.end53.err_crit_edge, %if.then34.err_crit_edge, %if.then11.err_crit_edge
  %ret.0 = phi i32 [ %call.i97, %if.end53.err_crit_edge ], [ %call.i95, %if.then34.err_crit_edge ], [ %call.i93, %if.then11.err_crit_edge ]
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 8
  tail call void @coda_free_aux_buf(ptr noundef %48, ptr noundef %slicebuf) #11
  %psbuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 42
  tail call void @coda_free_aux_buf(ptr noundef %48, ptr noundef %psbuf.i) #11
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %52)
  %cmp.not.i = icmp eq i32 %52, 61441
  br i1 %cmp.not.i, label %err.coda_free_context_buffers.exit_crit_edge, label %if.then.i

err.coda_free_context_buffers.exit_crit_edge:     ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_free_context_buffers.exit

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  %workbuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 49
  tail call void @coda_free_aux_buf(ptr noundef %48, ptr noundef %workbuf.i) #11
  br label %coda_free_context_buffers.exit

coda_free_context_buffers.exit:                   ; preds = %if.then.i, %err.coda_free_context_buffers.exit_crit_edge
  tail call void @coda_free_aux_buf(ptr noundef %48, ptr noundef %parabuf) #11
  br label %cleanup

cleanup:                                          ; preds = %coda_free_context_buffers.exit, %if.end53.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %coda_free_context_buffers.exit ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_alloc_aux_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_free_aux_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_set_jpeg_compression_quality(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_jpeg_write_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @coda_setup_iram(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iram_info1 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = call ptr @memset(ptr %iram_info1, i32 0, i32 44)
  %iram = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 14
  %paddr = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %paddr, align 4
  %next_paddr = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 10
  %5 = ptrtoint ptr %next_paddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %next_paddr, align 4
  %size = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %remaining = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 9
  %8 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %remaining, align 4
  %9 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iram, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup132_crit_edge, label %if.end

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup132

if.end:                                           ; preds = %entry
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %product, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %14, label %if.end.cleanup132_crit_edge [
    i32 61450, label %if.end.sw.epilog_crit_edge
    i32 61458, label %sw.bb5
    i32 61472, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup132

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %if.end.sw.epilog_crit_edge
  %dbk_bits.0 = phi i32 [ 3084, %sw.bb6 ], [ 516, %sw.bb5 ], [ 512, %if.end.sw.epilog_crit_edge ]
  %bit_bits.0 = phi i32 [ 257, %sw.bb6 ], [ 129, %sw.bb5 ], [ 128, %if.end.sw.epilog_crit_edge ]
  %ip_bits.0 = phi i32 [ 514, %sw.bb6 ], [ 258, %sw.bb5 ], [ 256, %if.end.sw.epilog_crit_edge ]
  %me_bits.0 = phi i32 [ 0, %sw.bb6 ], [ 2064, %sw.bb5 ], [ 2048, %if.end.sw.epilog_crit_edge ]
  %inst_type = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 16
  %16 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inst_type, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %17, label %sw.epilog.out_crit_edge [
    i32 0, label %if.then7
    i32 1, label %if.then54
  ]

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then7:                                         ; preds = %sw.epilog
  %width = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 4
  %sub = add i32 %20, 15
  %div213 = lshr i32 %sub, 4
  %mul = shl i32 %div213, 7
  %mul8 = shl i32 %div213, 6
  %21 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %14, label %if.then7.if.end29_crit_edge [
    i32 61450, label %if.then7.if.then15_crit_edge
    i32 61458, label %if.then7.if.then15_crit_edge322
  ]

if.then7.if.then15_crit_edge322:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then7.if.then15_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then7.if.end29_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then15:                                        ; preds = %if.then7.if.then15_crit_edge, %if.then7.if.then15_crit_edge322
  %mul16 = and i32 %sub, -16
  %mul17 = mul i32 %mul16, 36
  %sub19 = add i32 %mul17, 2047
  %or = or i32 %sub19, 1023
  %add20 = add i32 %or, 1
  %search_ram_size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 8
  %22 = ptrtoint ptr %search_ram_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add20, ptr %search_ram_size, align 4
  %23 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add20)
  %cmp.i = icmp ult i32 %24, %add20
  br i1 %cmp.i, label %coda_iram_alloc.exit.thread, label %coda_iram_alloc.exit

coda_iram_alloc.exit.thread:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %search_ram_paddr302 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 7
  %25 = ptrtoint ptr %search_ram_paddr302 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %search_ram_paddr302, align 4
  br label %do.end

coda_iram_alloc.exit:                             ; preds = %if.then15
  %sub2.i = sub i32 %24, %add20
  %26 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub2.i, ptr %remaining, align 4
  %27 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_paddr, align 4
  %add4.i = add i32 %28, %add20
  store i32 %add4.i, ptr %next_paddr, align 4
  %search_ram_paddr = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 7
  %29 = ptrtoint ptr %search_ram_paddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %search_ram_paddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %coda_iram_alloc.exit.do.end_crit_edge, label %if.end27

coda_iram_alloc.exit.do.end_crit_edge:            ; preds = %coda_iram_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %coda_iram_alloc.exit.do.end_crit_edge, %coda_iram_alloc.exit.thread
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #14
  br label %out

if.end27:                                         ; preds = %coda_iram_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iram_info1, align 4
  %or28 = or i32 %31, %me_bits.0
  store i32 %or28, ptr %iram_info1, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.then7.if.end29_crit_edge
  %sub.i = add i32 %mul8, -1
  %or.i = or i32 %sub.i, 1023
  %add.i214 = add i32 %or.i, 1
  %32 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add.i214)
  %cmp.i216 = icmp ult i32 %33, %add.i214
  br i1 %cmp.i216, label %if.end29.coda_iram_alloc.exit222_crit_edge, label %if.end.i220

if.end29.coda_iram_alloc.exit222_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_iram_alloc.exit222

if.end.i220:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %sub2.i217 = sub i32 %33, %add.i214
  %34 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub2.i217, ptr %remaining, align 4
  %35 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %next_paddr, align 4
  %add4.i219 = add i32 %36, %add.i214
  store i32 %add4.i219, ptr %next_paddr, align 4
  br label %coda_iram_alloc.exit222

coda_iram_alloc.exit222:                          ; preds = %if.end.i220, %if.end29.coda_iram_alloc.exit222_crit_edge
  %retval.0.i221 = phi i32 [ %36, %if.end.i220 ], [ 0, %if.end29.coda_iram_alloc.exit222_crit_edge ]
  %buf_dbk_y_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 3
  %37 = ptrtoint ptr %buf_dbk_y_use to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i221, ptr %buf_dbk_y_use, align 4
  %38 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add.i214)
  %cmp.i227 = icmp ult i32 %39, %add.i214
  br i1 %cmp.i227, label %coda_iram_alloc.exit233.thread, label %coda_iram_alloc.exit233

coda_iram_alloc.exit233.thread:                   ; preds = %coda_iram_alloc.exit222
  call void @__sanitizer_cov_trace_pc() #13
  %buf_dbk_c_use305 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 4
  %40 = ptrtoint ptr %buf_dbk_c_use305 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %buf_dbk_c_use305, align 4
  br label %out

coda_iram_alloc.exit233:                          ; preds = %coda_iram_alloc.exit222
  %sub2.i228 = sub i32 %39, %add.i214
  %41 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub2.i228, ptr %remaining, align 4
  %42 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %next_paddr, align 4
  %add4.i230 = add i32 %43, %add.i214
  store i32 %add4.i230, ptr %next_paddr, align 4
  %buf_dbk_c_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 4
  %44 = ptrtoint ptr %buf_dbk_c_use to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %buf_dbk_c_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool33.not = icmp eq i32 %43, 0
  br i1 %tobool33.not, label %coda_iram_alloc.exit233.out_crit_edge, label %if.end35

coda_iram_alloc.exit233.out_crit_edge:            ; preds = %coda_iram_alloc.exit233
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end35:                                         ; preds = %coda_iram_alloc.exit233
  %45 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iram_info1, align 4
  %or37 = or i32 %46, %dbk_bits.0
  store i32 %or37, ptr %iram_info1, align 4
  %sub.i234 = add i32 %mul, -1
  %or.i235 = or i32 %sub.i234, 1023
  %add.i236 = add i32 %or.i235, 1
  %47 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add.i236)
  %cmp.i238 = icmp ult i32 %48, %add.i236
  br i1 %cmp.i238, label %coda_iram_alloc.exit244.thread, label %coda_iram_alloc.exit244

coda_iram_alloc.exit244.thread:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %buf_bit_use308 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 1
  %49 = ptrtoint ptr %buf_bit_use308 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %buf_bit_use308, align 4
  br label %out

coda_iram_alloc.exit244:                          ; preds = %if.end35
  %sub2.i239 = sub i32 %48, %add.i236
  %50 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub2.i239, ptr %remaining, align 4
  %51 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %next_paddr, align 4
  %add4.i241 = add i32 %52, %add.i236
  store i32 %add4.i241, ptr %next_paddr, align 4
  %buf_bit_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 1
  %53 = ptrtoint ptr %buf_bit_use to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %buf_bit_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool40.not = icmp eq i32 %52, 0
  br i1 %tobool40.not, label %coda_iram_alloc.exit244.out_crit_edge, label %if.end42

coda_iram_alloc.exit244.out_crit_edge:            ; preds = %coda_iram_alloc.exit244
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end42:                                         ; preds = %coda_iram_alloc.exit244
  %or44 = or i32 %or37, %bit_bits.0
  %54 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or44, ptr %iram_info1, align 4
  %55 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add.i236)
  %cmp.i249 = icmp ult i32 %56, %add.i236
  br i1 %cmp.i249, label %coda_iram_alloc.exit255.thread, label %coda_iram_alloc.exit255

coda_iram_alloc.exit255.thread:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %buf_ip_ac_dc_use311 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 2
  %57 = ptrtoint ptr %buf_ip_ac_dc_use311 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %buf_ip_ac_dc_use311, align 4
  br label %out

coda_iram_alloc.exit255:                          ; preds = %if.end42
  %sub2.i250 = sub i32 %56, %add.i236
  %58 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub2.i250, ptr %remaining, align 4
  %59 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %next_paddr, align 4
  %add4.i252 = add i32 %60, %add.i236
  store i32 %add4.i252, ptr %next_paddr, align 4
  %buf_ip_ac_dc_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 2
  %61 = ptrtoint ptr %buf_ip_ac_dc_use to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %buf_ip_ac_dc_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool47.not = icmp eq i32 %60, 0
  br i1 %tobool47.not, label %coda_iram_alloc.exit255.out_crit_edge, label %if.end49

coda_iram_alloc.exit255.out_crit_edge:            ; preds = %coda_iram_alloc.exit255
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end49:                                         ; preds = %coda_iram_alloc.exit255
  call void @__sanitizer_cov_trace_pc() #13
  %or51 = or i32 %or44, %ip_bits.0
  %62 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or51, ptr %iram_info1, align 4
  br label %out

if.then54:                                        ; preds = %sw.epilog
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1
  %63 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx3.i, align 4
  %sub58 = shl i32 %64, 3
  %65 = add i32 %sub58, 120
  %mul60 = and i32 %65, -128
  %sub.i257 = add i32 %mul60, -1
  %or.i258 = or i32 %sub.i257, 1023
  %add.i259 = add i32 %or.i258, 1
  %66 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add.i259)
  %cmp.i261 = icmp ult i32 %67, %add.i259
  br i1 %cmp.i261, label %if.then54.coda_iram_alloc.exit267_crit_edge, label %if.end.i265

if.then54.coda_iram_alloc.exit267_crit_edge:      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_iram_alloc.exit267

if.end.i265:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %sub2.i262 = sub i32 %67, %add.i259
  %68 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub2.i262, ptr %remaining, align 4
  %69 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %next_paddr, align 4
  %add4.i264 = add i32 %70, %add.i259
  store i32 %add4.i264, ptr %next_paddr, align 4
  br label %coda_iram_alloc.exit267

coda_iram_alloc.exit267:                          ; preds = %if.end.i265, %if.then54.coda_iram_alloc.exit267_crit_edge
  %retval.0.i266 = phi i32 [ %70, %if.end.i265 ], [ 0, %if.then54.coda_iram_alloc.exit267_crit_edge ]
  %buf_dbk_y_use62 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 3
  %71 = ptrtoint ptr %buf_dbk_y_use62 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i266, ptr %buf_dbk_y_use62, align 4
  %72 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %add.i259)
  %cmp.i272 = icmp ult i32 %73, %add.i259
  br i1 %cmp.i272, label %coda_iram_alloc.exit278.thread, label %coda_iram_alloc.exit278

coda_iram_alloc.exit278.thread:                   ; preds = %coda_iram_alloc.exit267
  call void @__sanitizer_cov_trace_pc() #13
  %buf_dbk_c_use64314 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 4
  %74 = ptrtoint ptr %buf_dbk_c_use64314 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %buf_dbk_c_use64314, align 4
  br label %out

coda_iram_alloc.exit278:                          ; preds = %coda_iram_alloc.exit267
  %sub2.i273 = sub i32 %73, %add.i259
  %75 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub2.i273, ptr %remaining, align 4
  %76 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %next_paddr, align 4
  %add4.i275 = add i32 %77, %add.i259
  store i32 %add4.i275, ptr %next_paddr, align 4
  %buf_dbk_c_use64 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 4
  %78 = ptrtoint ptr %buf_dbk_c_use64 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %buf_dbk_c_use64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool66.not = icmp eq i32 %77, 0
  br i1 %tobool66.not, label %coda_iram_alloc.exit278.out_crit_edge, label %if.end68

coda_iram_alloc.exit278.out_crit_edge:            ; preds = %coda_iram_alloc.exit278
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end68:                                         ; preds = %coda_iram_alloc.exit278
  %79 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iram_info1, align 4
  %or70 = or i32 %80, %dbk_bits.0
  store i32 %or70, ptr %iram_info1, align 4
  %81 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %add.i259)
  %cmp.i283 = icmp ult i32 %82, %add.i259
  br i1 %cmp.i283, label %coda_iram_alloc.exit289.thread, label %coda_iram_alloc.exit289

coda_iram_alloc.exit289.thread:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %buf_bit_use72317 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 1
  %83 = ptrtoint ptr %buf_bit_use72317 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %buf_bit_use72317, align 4
  br label %out

coda_iram_alloc.exit289:                          ; preds = %if.end68
  %sub2.i284 = sub i32 %82, %add.i259
  %84 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub2.i284, ptr %remaining, align 4
  %85 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %next_paddr, align 4
  %add4.i286 = add i32 %86, %add.i259
  store i32 %add4.i286, ptr %next_paddr, align 4
  %buf_bit_use72 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 1
  %87 = ptrtoint ptr %buf_bit_use72 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %buf_bit_use72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool74.not = icmp eq i32 %86, 0
  br i1 %tobool74.not, label %coda_iram_alloc.exit289.out_crit_edge, label %if.end76

coda_iram_alloc.exit289.out_crit_edge:            ; preds = %coda_iram_alloc.exit289
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end76:                                         ; preds = %coda_iram_alloc.exit289
  %or78 = or i32 %or70, %bit_bits.0
  %88 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or78, ptr %iram_info1, align 4
  %89 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %add.i259)
  %cmp.i294 = icmp ult i32 %90, %add.i259
  br i1 %cmp.i294, label %coda_iram_alloc.exit300.thread, label %coda_iram_alloc.exit300

coda_iram_alloc.exit300.thread:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %buf_ip_ac_dc_use80320 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 2
  %91 = ptrtoint ptr %buf_ip_ac_dc_use80320 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %buf_ip_ac_dc_use80320, align 4
  br label %out

coda_iram_alloc.exit300:                          ; preds = %if.end76
  %sub2.i295 = sub i32 %90, %add.i259
  %92 = ptrtoint ptr %remaining to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub2.i295, ptr %remaining, align 4
  %93 = ptrtoint ptr %next_paddr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %next_paddr, align 4
  %add4.i297 = add i32 %94, %add.i259
  store i32 %add4.i297, ptr %next_paddr, align 4
  %buf_ip_ac_dc_use80 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 2
  %95 = ptrtoint ptr %buf_ip_ac_dc_use80 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %buf_ip_ac_dc_use80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool82.not = icmp eq i32 %94, 0
  br i1 %tobool82.not, label %coda_iram_alloc.exit300.out_crit_edge, label %if.end84

coda_iram_alloc.exit300.out_crit_edge:            ; preds = %coda_iram_alloc.exit300
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end84:                                         ; preds = %coda_iram_alloc.exit300
  call void @__sanitizer_cov_trace_pc() #13
  %or86 = or i32 %or78, %ip_bits.0
  %96 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or86, ptr %iram_info1, align 4
  br label %out

out:                                              ; preds = %if.end84, %coda_iram_alloc.exit300.out_crit_edge, %coda_iram_alloc.exit300.thread, %coda_iram_alloc.exit289.out_crit_edge, %coda_iram_alloc.exit289.thread, %coda_iram_alloc.exit278.out_crit_edge, %coda_iram_alloc.exit278.thread, %if.end49, %coda_iram_alloc.exit255.out_crit_edge, %coda_iram_alloc.exit255.thread, %coda_iram_alloc.exit244.out_crit_edge, %coda_iram_alloc.exit244.thread, %coda_iram_alloc.exit233.out_crit_edge, %coda_iram_alloc.exit233.thread, %do.end, %sw.epilog.out_crit_edge
  %97 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %iram_info1, align 4
  %and = and i32 %98, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  br i1 %tobool93.not, label %do.body95, label %out.if.end113_crit_edge

out.if.end113_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

do.body95:                                        ; preds = %out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %99 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp96 = icmp sgt i32 %99, 0
  br i1 %cmp96, label %do.end103, label %do.body95.if.end113_crit_edge

do.body95.if.end113_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

do.end103:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %102 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %idx, align 8
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name, i32 noundef %103) #14
  br label %if.end113

if.end113:                                        ; preds = %do.end103, %do.body95.if.end113_crit_edge, %out.if.end113_crit_edge
  %104 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %devtype, align 4
  %product115 = getelementptr inbounds %struct.coda_devtype, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %product115 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %product115, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %107, label %if.end113.cleanup132_crit_edge [
    i32 61450, label %if.end113.if.then121_crit_edge
    i32 61458, label %if.end113.if.then121_crit_edge323
  ]

if.end113.if.then121_crit_edge323:                ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

if.end113.if.then121_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

if.end113.cleanup132_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup132

if.then121:                                       ; preds = %if.end113.if.then121_crit_edge, %if.end113.if.then121_crit_edge323
  %109 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp123 = icmp eq i32 %110, 1
  %111 = ptrtoint ptr %iram_info1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %iram_info1, align 4
  %. = select i1 %cmp123, i32 -259, i32 -775
  %and129 = and i32 %112, %.
  store i32 %and129, ptr %iram_info1, align 4
  br label %cleanup132

cleanup132:                                       ; preds = %if.then121, %if.end113.cleanup132_crit_edge, %if.end.cleanup132_crit_edge, %entry.cleanup132_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_alloc_framebuffers(ptr noundef %ctx, ptr nocapture noundef readonly %q_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %codec = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %2 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %codec, align 4
  %src_fourcc = getelementptr inbounds %struct.coda_codec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %src_fourcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %5)
  %cmp = icmp eq i32 %5, 875967048
  %.fr = freeze i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %.fr)
  %cmp7 = icmp eq i32 %.fr, 877088845
  %or.cond = or i1 %cmp, %cmp7
  br i1 %or.cond, label %entry.if.then_crit_edge, label %switch.early.test

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

switch.early.test:                                ; preds = %entry
  %dst_fourcc = getelementptr inbounds %struct.coda_codec, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_fourcc, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %7, label %if.else [
    i32 877088845, label %switch.early.test.if.then_crit_edge
    i32 875967048, label %switch.early.test.if.then_crit_edge48
  ]

switch.early.test.if.then_crit_edge48:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

switch.early.test.if.then_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %switch.early.test.if.then_crit_edge, %switch.early.test.if.then_crit_edge48, %entry.if.then_crit_edge
  %width = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %sub = add i32 %10, -1
  %or = or i32 %sub, 15
  %add = add i32 %or, 1
  %height = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %sub13 = add i32 %12, -1
  %or14 = or i32 %sub13, 15
  %add15 = add i32 %or14, 1
  %mul = mul i32 %add15, %add
  br label %if.end

if.else:                                          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  %width17 = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %width17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width17, align 4
  %sub18 = add i32 %14, -1
  %or19 = or i32 %sub18, 7
  %add20 = add i32 %or19, 1
  %height22 = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height22, align 4
  %mul23 = mul i32 %add20, %16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ysize.0 = phi i32 [ %mul, %if.then ], [ %mul23, %if.else ]
  %tiled_map_type = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %17 = ptrtoint ptr %tiled_map_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tiled_map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp24 = icmp eq i32 %18, 1
  br i1 %cmp24, label %if.then25, label %if.else30

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub26 = add i32 %ysize.0, -1
  %or27 = or i32 %sub26, 4095
  %div5 = lshr i32 %ysize.0, 1
  %add28 = add nuw i32 %div5, 1
  %add29 = add i32 %add28, %or27
  br label %if.end33

if.else30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %div311 = lshr i32 %ysize.0, 1
  %add32 = add i32 %div311, %ysize.0
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then25
  %ycbcr_size.0 = phi i32 [ %add29, %if.then25 ], [ %add32, %if.else30 ]
  %num_internal_frames = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %19 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_internal_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3440 = icmp sgt i32 %20, 0
  br i1 %cmp3440, label %for.body.lr.ph, label %if.end33.cleanup116_crit_edge

if.end33.cleanup116_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup116

for.body.lr.ph:                                   ; preds = %if.end33
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %div464 = lshr i32 %ysize.0, 2
  %add47 = add i32 %ycbcr_size.0, %div464
  %debugfs_entry.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 60
  br label %for.body

for.cond:                                         ; preds = %if.end50
  %inc = add nuw nsw i32 %i.041, 1
  %21 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_internal_frames, align 4
  %cmp34 = icmp slt i32 %inc, %22
  br i1 %cmp34, label %for.cond.for.body_crit_edge, label %for.cond56.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond56.preheader:                             ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp5842 = icmp sgt i32 %22, 0
  br i1 %cmp5842, label %for.body59.lr.ph, label %for.cond56.preheader.cleanup116_crit_edge

for.cond56.preheader.cleanup116_crit_edge:        ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup116

for.body59.lr.ph:                                 ; preds = %for.cond56.preheader
  %div652 = lshr i32 %ysize.0, 2
  %div783 = lshr i32 %ysize.0, 1
  %parabuf.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41
  %devtype89 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  br label %for.body59

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %23 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %26)
  %cmp35.not = icmp eq i32 %26, 61441
  br i1 %cmp35.not, label %for.body.if.end48_crit_edge, label %land.lhs.true

for.body.if.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true:                                    ; preds = %for.body
  %27 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %codec, align 4
  %src_fourcc37 = getelementptr inbounds %struct.coda_codec, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %src_fourcc37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_fourcc37, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %30, label %land.lhs.true.if.end48_crit_edge [
    i32 875967048, label %land.lhs.true.if.then45_crit_edge
    i32 877088845, label %land.lhs.true43
  ]

land.lhs.true.if.then45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true43:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.041)
  %cmp44 = icmp eq i32 %i.041, 0
  br i1 %cmp44, label %land.lhs.true43.if.then45_crit_edge, label %land.lhs.true43.if.end48_crit_edge

land.lhs.true43.if.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true43.if.then45_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.then45:                                        ; preds = %land.lhs.true43.if.then45_crit_edge, %land.lhs.true.if.then45_crit_edge
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true43.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %for.body.if.end48_crit_edge
  %size.0 = phi i32 [ %add47, %if.then45 ], [ %ycbcr_size.0, %land.lhs.true43.if.end48_crit_edge ], [ %ycbcr_size.0, %for.body.if.end48_crit_edge ], [ %ycbcr_size.0, %land.lhs.true.if.end48_crit_edge ]
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.90, i32 noundef %i.041) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end48.cleanup116.sink.split_crit_edge, label %if.end50

if.end48.cleanup116.sink.split_crit_edge:         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup116.sink.split

if.end50:                                         ; preds = %if.end48
  %arrayidx = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %i.041
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 8
  %34 = ptrtoint ptr %debugfs_entry.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debugfs_entry.i, align 4
  %call.i = tail call i32 @coda_alloc_aux_buf(ptr noundef %33, ptr noundef %arrayidx, i32 noundef %size.0, ptr noundef nonnull %call, ptr noundef %35) #11
  tail call void @kfree(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp52 = icmp slt i32 %call.i, 0
  br i1 %cmp52, label %if.end50.cleanup116.sink.split_crit_edge, label %for.cond

if.end50.cleanup116.sink.split_crit_edge:         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup116.sink.split

for.body59:                                       ; preds = %cleanup107.for.body59_crit_edge, %for.body59.lr.ph
  %i.143 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc114, %cleanup107.for.body59_crit_edge ]
  %paddr = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 %i.143, i32 0, i32 1
  %36 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %paddr, align 4
  %add63 = add i32 %37, %ysize.0
  %add66 = add i32 %add63, %div652
  %add71 = add i32 %add66, %div652
  %38 = ptrtoint ptr %tiled_map_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tiled_map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp73 = icmp eq i32 %39, 1
  br i1 %cmp73, label %if.then74, label %for.body59.if.end82_crit_edge

for.body59.if.end82_crit_edge:                    ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then74:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #13
  %sub75 = add i32 %add63, -1
  %or76 = or i32 %sub75, 4095
  %add77 = add i32 %or76, 1
  %add79 = add i32 %add77, %div783
  %and = and i32 %37, -4096
  %shr = lshr i32 %add77, 20
  %or80 = or i32 %shr, %and
  %shl = shl i32 %add77, 12
  br label %if.end82

if.end82:                                         ; preds = %if.then74, %for.body59.if.end82_crit_edge
  %y.0 = phi i32 [ %or80, %if.then74 ], [ %37, %for.body59.if.end82_crit_edge ]
  %cb.0 = phi i32 [ %shl, %if.then74 ], [ %add63, %for.body59.if.end82_crit_edge ]
  %cr.0 = phi i32 [ 0, %if.then74 ], [ %add66, %for.body59.if.end82_crit_edge ]
  %mvcol.0 = phi i32 [ %add79, %if.then74 ], [ %add71, %for.body59.if.end82_crit_edge ]
  %mul83 = mul i32 %i.143, 3
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 8
  %42 = ptrtoint ptr %parabuf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parabuf.i, align 4
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %47)
  %cmp.i = icmp ne i32 %47, 61441
  %xor.i = zext i1 %cmp.i to i32
  %xor.sink.i = xor i32 %mul83, %xor.i
  %arrayidx2.i = getelementptr i32, ptr %43, i32 %xor.sink.i
  %48 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %y.0, ptr %arrayidx2.i, align 4
  %add86 = add i32 %mul83, 1
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx, align 8
  %51 = ptrtoint ptr %parabuf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parabuf.i, align 4
  %devtype.i9 = getelementptr inbounds %struct.coda_dev, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %devtype.i9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %devtype.i9, align 4
  %product.i10 = getelementptr inbounds %struct.coda_devtype, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %product.i10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %product.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %56)
  %cmp.i11 = icmp ne i32 %56, 61441
  %xor.i12 = zext i1 %cmp.i11 to i32
  %xor.sink.i13 = xor i32 %add86, %xor.i12
  %arrayidx2.i14 = getelementptr i32, ptr %52, i32 %xor.sink.i13
  %57 = ptrtoint ptr %arrayidx2.i14 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cb.0, ptr %arrayidx2.i14, align 4
  %add88 = add i32 %mul83, 2
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 8
  %60 = ptrtoint ptr %parabuf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parabuf.i, align 4
  %devtype.i16 = getelementptr inbounds %struct.coda_dev, ptr %59, i32 0, i32 3
  %62 = ptrtoint ptr %devtype.i16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %devtype.i16, align 4
  %product.i17 = getelementptr inbounds %struct.coda_devtype, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %product.i17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %product.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %65)
  %cmp.i18 = icmp ne i32 %65, 61441
  %xor.i19 = zext i1 %cmp.i18 to i32
  %xor.sink.i20 = xor i32 %add88, %xor.i19
  %arrayidx2.i21 = getelementptr i32, ptr %61, i32 %xor.sink.i20
  %66 = ptrtoint ptr %arrayidx2.i21 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cr.0, ptr %arrayidx2.i21, align 4
  %67 = ptrtoint ptr %devtype89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %devtype89, align 4
  %product90 = getelementptr inbounds %struct.coda_devtype, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %product90 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %product90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %70)
  %cmp91 = icmp eq i32 %70, 61441
  br i1 %cmp91, label %if.end82.cleanup107_crit_edge, label %if.end93

if.end82.cleanup107_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup107

if.end93:                                         ; preds = %if.end82
  %71 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %codec, align 4
  %src_fourcc95 = getelementptr inbounds %struct.coda_codec, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %src_fourcc95 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src_fourcc95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %74)
  %cmp96 = icmp eq i32 %74, 875967048
  br i1 %cmp96, label %if.then97, label %if.end93.if.end99_crit_edge

if.end93.if.end99_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %add98 = add nuw i32 %i.143, 96
  %75 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctx, align 8
  %77 = ptrtoint ptr %parabuf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parabuf.i, align 4
  %devtype.i23 = getelementptr inbounds %struct.coda_dev, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %devtype.i23 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %devtype.i23, align 4
  %product.i24 = getelementptr inbounds %struct.coda_devtype, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %product.i24 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %product.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %82)
  %cmp.i25 = icmp ne i32 %82, 61441
  %xor.i26 = zext i1 %cmp.i25 to i32
  %xor.sink.i27 = xor i32 %add98, %xor.i26
  %arrayidx2.i28 = getelementptr i32, ptr %78, i32 %xor.sink.i27
  %83 = ptrtoint ptr %arrayidx2.i28 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mvcol.0, ptr %arrayidx2.i28, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end93.if.end99_crit_edge
  %84 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %codec, align 4
  %src_fourcc101 = getelementptr inbounds %struct.coda_codec, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %src_fourcc101 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %src_fourcc101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %87)
  %cmp102 = icmp eq i32 %87, 877088845
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.143)
  %cmp104 = icmp eq i32 %i.143, 0
  %or.cond7 = select i1 %cmp102, i1 %cmp104, i1 false
  br i1 %or.cond7, label %if.then105, label %if.end99.cleanup107_crit_edge

if.end99.cleanup107_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup107

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctx, align 8
  %90 = ptrtoint ptr %parabuf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %parabuf.i, align 4
  %devtype.i30 = getelementptr inbounds %struct.coda_dev, ptr %89, i32 0, i32 3
  %92 = ptrtoint ptr %devtype.i30 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %devtype.i30, align 4
  %product.i31 = getelementptr inbounds %struct.coda_devtype, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %product.i31 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %product.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %95)
  %cmp.i32 = icmp ne i32 %95, 61441
  %xor.i33 = zext i1 %cmp.i32 to i32
  %xor.sink.i34 = xor i32 %xor.i33, 97
  %arrayidx2.i35 = getelementptr i32, ptr %91, i32 %xor.sink.i34
  %96 = ptrtoint ptr %arrayidx2.i35 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mvcol.0, ptr %arrayidx2.i35, align 4
  br label %cleanup107

cleanup107:                                       ; preds = %if.then105, %if.end99.cleanup107_crit_edge, %if.end82.cleanup107_crit_edge
  %inc114 = add nuw nsw i32 %i.143, 1
  %97 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_internal_frames, align 4
  %cmp58 = icmp slt i32 %inc114, %98
  br i1 %cmp58, label %cleanup107.for.body59_crit_edge, label %cleanup107.cleanup116_crit_edge

cleanup107.cleanup116_crit_edge:                  ; preds = %cleanup107
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup116

cleanup107.for.body59_crit_edge:                  ; preds = %cleanup107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body59

cleanup116.sink.split:                            ; preds = %if.end50.cleanup116.sink.split_crit_edge, %if.end48.cleanup116.sink.split_crit_edge
  %retval.2.ph = phi i32 [ -12, %if.end48.cleanup116.sink.split_crit_edge ], [ %call.i, %if.end50.cleanup116.sink.split_crit_edge ]
  tail call fastcc void @coda_free_framebuffers(ptr noundef %ctx)
  br label %cleanup116

cleanup116:                                       ; preds = %cleanup116.sink.split, %cleanup107.cleanup116_crit_edge, %for.cond56.preheader.cleanup116_crit_edge, %if.end33.cleanup116_crit_edge
  %retval.2 = phi i32 [ 0, %for.cond56.preheader.cleanup116_crit_edge ], [ 0, %if.end33.cleanup116_crit_edge ], [ %retval.2.ph, %cleanup116.sink.split ], [ 0, %cleanup107.cleanup116_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_encode_header(ptr noundef %ctx, ptr noundef %buf, i32 noundef %header_code, ptr nocapture noundef writeonly %header, ptr nocapture noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %5)
  %cmp = icmp eq i32 %5, 61472
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #11
  %6 = call ptr @memset(ptr %call, i32 0, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %buf, i32 noundef 0) #11
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %8, i32 noundef 388) #11
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end.vb2_plane_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then.i ], [ 0, %if.end.vb2_plane_size.exit_crit_edge ]
  %13 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devtype, align 4
  %product5 = getelementptr inbounds %struct.coda_devtype, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %product5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %product5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %16)
  %cmp6 = icmp eq i32 %16, 61472
  %div93 = lshr i32 %retval.0.i, 10
  %spec.select = select i1 %cmp6, i32 %div93, i32 %retval.0.i
  tail call void @coda_write(ptr noundef %1, i32 noundef %spec.select, i32 noundef 392) #11
  %17 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devtype, align 4
  %product10 = getelementptr inbounds %struct.coda_devtype, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %product10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %product10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %20)
  %cmp11 = icmp eq i32 %20, 61472
  br i1 %cmp11, label %land.lhs.true, label %vb2_plane_size.exit.if.end31_crit_edge

vb2_plane_size.exit.if.end31_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true:                                    ; preds = %vb2_plane_size.exit
  %codec = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %21 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %codec, align 4
  %dst_fourcc = getelementptr inbounds %struct.coda_codec, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %24)
  %cmp12 = icmp eq i32 %24, 875967048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %header_code)
  %cmp14 = icmp eq i32 %header_code, 0
  %or.cond = and i1 %cmp14, %cmp12
  br i1 %or.cond, label %if.then15, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then15:                                        ; preds = %land.lhs.true
  %width = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 4
  %rem = and i32 %26, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then15.if.then19_crit_edge

if.then15.if.then19_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then15
  %height = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %rem17 = and i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem17)
  %tobool18.not = icmp eq i32 %rem17, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then15.if.then19_crit_edge
  %sub = add i32 %26, -1
  %or = or i32 %sub, 15
  %add = sub i32 1, %26
  %sub22 = add i32 %add, %or
  %height23 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height23, align 4
  %sub24 = add i32 %30, -1
  %or25 = or i32 %sub24, 15
  %add26 = sub i32 1, %30
  %sub28 = add i32 %add26, %or25
  tail call void @coda_write(ptr noundef %1, i32 noundef %sub22, i32 noundef 396) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef %sub28, i32 noundef 400) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then19, %lor.lhs.false.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %vb2_plane_size.exit.if.end31_crit_edge
  %header_code.addr.0 = phi i32 [ 8, %if.then19 ], [ 0, %lor.lhs.false.if.end31_crit_edge ], [ %header_code, %land.lhs.true.if.end31_crit_edge ], [ %header_code, %vb2_plane_size.exit.if.end31_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef %header_code.addr.0, i32 noundef 384) #11
  %call32 = tail call fastcc i32 @coda_command_sync(ptr noundef %ctx, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end, label %if.end36

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name) #14
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %31 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devtype, align 4
  %product38 = getelementptr inbounds %struct.coda_devtype, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %product38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %product38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %34)
  %cmp39 = icmp eq i32 %34, 61472
  br i1 %cmp39, label %if.end36.for.body_crit_edge, label %if.else

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end36.for.body_crit_edge
  %i.096 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 63, %if.end36.for.body_crit_edge ]
  %call42 = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #11
  %arrayidx = getelementptr i8, ptr %call42, i32 %i.096
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp43.not = icmp eq i8 %36, 0
  br i1 %cmp43.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.096, -1
  %cmp41 = icmp ugt i32 %i.096, 1
  br i1 %cmp41, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.096, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %add47 = add nuw i32 %i.0.lcssa, 1
  br label %if.end52

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %reg_idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %37 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_idx, align 4
  %mul = shl i32 %38, 3
  %add48 = add i32 %mul, 292
  %call49 = tail call i32 @coda_read(ptr noundef %1, i32 noundef %add48) #11
  %call50 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 388) #11
  %sub51 = sub i32 %call49, %call50
  br label %if.end52

if.end52:                                         ; preds = %if.else, %for.end
  %storemerge = phi i32 [ %sub51, %if.else ], [ %add47, %for.end ]
  %39 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge, ptr %size, align 4
  %call53 = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #11
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  %42 = call ptr @memcpy(ptr %header, ptr %call53, i32 %41)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end
  %retval.0 = phi i32 [ %call32, %do.end ], [ 0, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_h264_sps_fixup(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_h264_padding(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @coda_free_framebuffers(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %arrayidx = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 0
  tail call void @coda_free_aux_buf(ptr noundef %1, ptr noundef %arrayidx) #11
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %arrayidx.1 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 1
  tail call void @coda_free_aux_buf(ptr noundef %3, ptr noundef %arrayidx.1) #11
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %arrayidx.2 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 2
  tail call void @coda_free_aux_buf(ptr noundef %5, ptr noundef %arrayidx.2) #11
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 8
  %arrayidx.3 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 3
  tail call void @coda_free_aux_buf(ptr noundef %7, ptr noundef %arrayidx.3) #11
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 8
  %arrayidx.4 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 4
  tail call void @coda_free_aux_buf(ptr noundef %9, ptr noundef %arrayidx.4) #11
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %arrayidx.5 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 5
  tail call void @coda_free_aux_buf(ptr noundef %11, ptr noundef %arrayidx.5) #11
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 8
  %arrayidx.6 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 6
  tail call void @coda_free_aux_buf(ptr noundef %13, ptr noundef %arrayidx.6) #11
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %arrayidx.7 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 7
  tail call void @coda_free_aux_buf(ptr noundef %15, ptr noundef %arrayidx.7) #11
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 8
  %arrayidx.8 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 8
  tail call void @coda_free_aux_buf(ptr noundef %17, ptr noundef %arrayidx.8) #11
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 8
  %arrayidx.9 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 9
  tail call void @coda_free_aux_buf(ptr noundef %19, ptr noundef %arrayidx.9) #11
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 8
  %arrayidx.10 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 10
  tail call void @coda_free_aux_buf(ptr noundef %21, ptr noundef %arrayidx.10) #11
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %arrayidx.11 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 11
  tail call void @coda_free_aux_buf(ptr noundef %23, ptr noundef %arrayidx.11) #11
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 8
  %arrayidx.12 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 12
  tail call void @coda_free_aux_buf(ptr noundef %25, ptr noundef %arrayidx.12) #11
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 8
  %arrayidx.13 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 13
  tail call void @coda_free_aux_buf(ptr noundef %27, ptr noundef %arrayidx.13) #11
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 8
  %arrayidx.14 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 14
  tail call void @coda_free_aux_buf(ptr noundef %29, ptr noundef %arrayidx.14) #11
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 8
  %arrayidx.15 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 15
  tail call void @coda_free_aux_buf(ptr noundef %31, ptr noundef %arrayidx.15) #11
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 8
  %arrayidx.16 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 16
  tail call void @coda_free_aux_buf(ptr noundef %33, ptr noundef %arrayidx.16) #11
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 8
  %arrayidx.17 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 17
  tail call void @coda_free_aux_buf(ptr noundef %35, ptr noundef %arrayidx.17) #11
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 8
  %arrayidx.18 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 44, i32 18
  tail call void @coda_free_aux_buf(ptr noundef %37, ptr noundef %arrayidx.18) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_set_gdi_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_write_base(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_coda_enc_pic_run(ptr noundef %ctx, ptr noundef %buf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_enc_pic_run, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_coda_enc_pic_run, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !468

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !462

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !478
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_enc_pic_run, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctx, ptr noundef %buf) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !479
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !479
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !462

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !471
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_enc_pic_run, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_enc_pic_run.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_coda_enc_pic_run.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 76, ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !472
  %38 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
define internal fastcc void @trace_coda_enc_pic_done(ptr noundef %ctx, ptr noundef %buf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_enc_pic_done, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_coda_enc_pic_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !468

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !462

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !480
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_enc_pic_done, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctx, ptr noundef %buf) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !481
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !481
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !462

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !471
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_enc_pic_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_enc_pic_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_coda_enc_pic_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 81, ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !472
  %38 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_m2m_buf_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__coda_start_decoding(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1
  %fourcc = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 4
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
  %fourcc3 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 4
  %4 = ptrtoint ptr %fourcc3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fourcc3, align 4
  %initialized = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 9
  %6 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @__coda_decoder_seq_init(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %frame_mem_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 57
  %8 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_mem_ctrl, align 8
  %and = and i32 %9, -3589
  store i32 %and, ptr %frame_mem_ctrl, align 8
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %5, label %if.else.if.end10_crit_edge [
    i32 842094158, label %if.else.if.then8_crit_edge
    i32 1448695129, label %if.else.if.then8_crit_edge145
  ]

if.else.if.then8_crit_edge145:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.else.if.then8_crit_edge, %if.else.if.then8_crit_edge145
  %or = or i32 %and, 4
  %11 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %frame_mem_ctrl, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else.if.end10_crit_edge
  %tiled_map_type = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %12 = ptrtoint ptr %tiled_map_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tiled_map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp11 = icmp eq i32 %13, 1
  br i1 %cmp11, label %if.then12, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %use_vdoa = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 62
  %14 = ptrtoint ptr %use_vdoa to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_vdoa, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  %or14 = select i1 %tobool13.not, i32 3584, i32 1536
  %16 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_mem_ctrl, align 8
  %or16 = or i32 %or14, %17
  store i32 %or16, ptr %frame_mem_ctrl, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %paddr = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41, i32 1
  %18 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %paddr, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %19, i32 noundef 264) #11
  %call19 = tail call fastcc i32 @coda_alloc_framebuffers(ptr noundef %ctx, ptr noundef %arrayidx3.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup.sink.split_crit_edge, label %if.end23

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end18
  %num_internal_frames = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %20 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_internal_frames, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %21, i32 noundef 384) #11
  %width = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5, i32 2
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %sub = add i32 %23, -1
  %or24 = or i32 %sub, 15
  %add = add i32 %or24, 1
  tail call void @coda_write(ptr noundef %1, i32 noundef %add, i32 noundef 388) #11
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %27)
  %cmp25.not = icmp eq i32 %27, 61441
  br i1 %cmp25.not, label %if.end23.if.end37_crit_edge, label %if.then26

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then26:                                        ; preds = %if.end23
  tail call fastcc void @coda_setup_iram(ptr noundef %ctx)
  %buf_bit_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 1
  %28 = ptrtoint ptr %buf_bit_use to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_bit_use, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %29, i32 noundef 400) #11
  %buf_ip_ac_dc_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 2
  %30 = ptrtoint ptr %buf_ip_ac_dc_use to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_ip_ac_dc_use, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %31, i32 noundef 404) #11
  %buf_dbk_y_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 3
  %32 = ptrtoint ptr %buf_dbk_y_use to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_dbk_y_use, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %33, i32 noundef 408) #11
  %buf_dbk_c_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 4
  %34 = ptrtoint ptr %buf_dbk_c_use to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_dbk_c_use, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %35, i32 noundef 412) #11
  %buf_ovl_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 5
  %36 = ptrtoint ptr %buf_ovl_use to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_ovl_use, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %37, i32 noundef 416) #11
  %38 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devtype, align 4
  %product32 = getelementptr inbounds %struct.coda_devtype, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %product32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %product32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %41)
  %cmp33 = icmp eq i32 %41, 61472
  br i1 %cmp33, label %if.then34, label %if.then26.if.end37_crit_edge

if.then26.if.end37_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %buf_btp_use = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 53, i32 6
  %42 = ptrtoint ptr %buf_btp_use to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_btp_use, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %43, i32 noundef 420) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef -1, i32 noundef 444) #11
  %tiled_map_type.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %44 = ptrtoint ptr %tiled_map_type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tiled_map_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp eq i32 %45, 0
  %..i = select i1 %cmp.i, i32 539369508, i32 38011459
  %.13.i = select i1 %cmp.i, i32 33554432, i32 16777216
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 8
  tail call void @coda_write(ptr noundef %47, i32 noundef %..i, i32 noundef 424) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %5)
  %switch.selectcmp.case1.i = icmp eq i32 %5, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %5)
  %switch.selectcmp.case2.i = icmp eq i32 %5, 1448695129
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %48 = select i1 %switch.selectcmp.i, i32 2097168, i32 2099208
  %or5.i = or i32 %.13.i, %48
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx, align 8
  tail call void @coda_write(ptr noundef %50, i32 noundef %or5.i, i32 noundef 428) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then26.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %3)
  %cmp38 = icmp eq i32 %3, 875967048
  br i1 %cmp38, label %if.then39, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %paddr40 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 43, i32 1
  %51 = ptrtoint ptr %paddr40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %paddr40, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %52, i32 noundef 392) #11
  %size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 43, i32 2
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  %div143 = lshr i32 %54, 10
  tail call void @coda_write(ptr noundef %1, i32 noundef %div143, i32 noundef 396) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37.if.end42_crit_edge
  %55 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %devtype, align 4
  %product44 = getelementptr inbounds %struct.coda_devtype, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %product44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %product44, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %58, label %if.end42.if.end68_crit_edge [
    i32 61450, label %if.end42.if.end68.sink.split_crit_edge
    i32 61458, label %if.end42.if.end68.sink.split_crit_edge146
    i32 61472, label %if.then58
  ]

if.end42.if.end68.sink.split_crit_edge146:        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68.sink.split

if.end42.if.end68.sink.split_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68.sink.split

if.end42.if.end68_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then58:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68.sink.split

if.end68.sink.split:                              ; preds = %if.then58, %if.end42.if.end68.sink.split_crit_edge, %if.end42.if.end68.sink.split_crit_edge146
  %.sink = phi i32 [ 440, %if.then58 ], [ 420, %if.end42.if.end68.sink.split_crit_edge ], [ 420, %if.end42.if.end68.sink.split_crit_edge146 ]
  tail call void @coda_write(ptr noundef %1, i32 noundef 534804548, i32 noundef %.sink) #11
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.end42.if.end68_crit_edge
  %call69 = tail call fastcc i32 @coda_command_sync(ptr noundef %ctx, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.cleanup_crit_edge, label %do.end74

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end74, %if.end18.cleanup.sink.split_crit_edge
  %.sink144 = phi ptr [ %61, %do.end74 ], [ %1, %if.end18.cleanup.sink.split_crit_edge ]
  %.str.80.sink = phi ptr [ @.str.80, %do.end74 ], [ @.str.77, %if.end18.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %do.end74 ], [ %call19, %if.end18.cleanup.sink.split_crit_edge ]
  %name78 = getelementptr inbounds %struct.v4l2_device, ptr %.sink144, i32 0, i32 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.80.sink, ptr noundef %name78) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end68.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__coda_decoder_seq_init(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !463

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1873, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %3 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26 = icmp sgt i32 %3, 0
  br i1 %cmp26, label %do.end33, label %if.end.do.end43_crit_edge

if.end.do.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 8
  %use_vdoa = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 62
  %8 = ptrtoint ptr %use_vdoa to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_vdoa, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool36.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool36.not, ptr @.str.136, ptr @.str.135
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name, i32 noundef %7, ptr noundef nonnull %cond) #14
  br label %do.end43

do.end43:                                         ; preds = %do.end33, %if.end.do.end43_crit_edge
  %paddr = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 1
  %10 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %paddr, align 4
  %size = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 39, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  %fourcc = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 4
  %14 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fourcc, align 4
  %fourcc47 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 4
  %16 = ptrtoint ptr %fourcc47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fourcc47, align 4
  %bitstream_fifo.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 8
  %out.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out.i, align 4
  %mask.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 37, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %23, %21
  %add.i = add i32 %and.i, %11
  %reg_idx.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 52
  %24 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_idx.i, align 4
  %mul.i = shl i32 %25, 3
  %add2.i = add i32 %mul.i, 288
  tail call void @coda_write(ptr noundef %19, i32 noundef %add.i, i32 noundef %add2.i) #11
  %26 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %paddr, align 4
  %28 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bitstream_fifo.i, align 4
  %30 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask.i, align 4
  %and6.i = and i32 %31, %29
  %add7.i = add i32 %and6.i, %27
  %32 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_idx.i, align 4
  %mul9.i = shl i32 %33, 3
  %add10.i = add i32 %mul9.i, 292
  tail call void @coda_write(ptr noundef %19, i32 noundef %add7.i, i32 noundef %add10.i) #11
  %frame_mem_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 57
  %34 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_mem_ctrl, align 8
  %and = and i32 %35, -3589
  store i32 %and, ptr %frame_mem_ctrl, align 8
  %36 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %17, label %do.end43.if.end52_crit_edge [
    i32 842094158, label %do.end43.if.then50_crit_edge
    i32 1448695129, label %do.end43.if.then50_crit_edge399
  ]

do.end43.if.then50_crit_edge399:                  ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

do.end43.if.then50_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

do.end43.if.end52_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then50:                                        ; preds = %do.end43.if.then50_crit_edge, %do.end43.if.then50_crit_edge399
  %or = or i32 %and, 4
  %37 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %frame_mem_ctrl, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %do.end43.if.end52_crit_edge
  %tiled_map_type = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %38 = ptrtoint ptr %tiled_map_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tiled_map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp53 = icmp eq i32 %39, 1
  br i1 %cmp53, label %if.then54, label %if.end52.if.end61_crit_edge

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %use_vdoa55 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 62
  %40 = ptrtoint ptr %use_vdoa55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_vdoa55, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool56.not = icmp eq i8 %41, 0
  %or58 = select i1 %tobool56.not, i32 3584, i32 1536
  %42 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frame_mem_ctrl, align 8
  %or60 = or i32 %or58, %43
  store i32 %or60, ptr %frame_mem_ctrl, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.end52.if.end61_crit_edge
  %44 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_mem_ctrl, align 8
  tail call void @coda_write(ptr noundef %1, i32 noundef %45, i32 noundef 272) #11
  %display_idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 59
  %46 = ptrtoint ptr %display_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %display_idx, align 8
  %frm_dis_flg = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 56
  %47 = ptrtoint ptr %frm_dis_flg to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %frm_dis_flg, align 4
  %48 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg_idx.i, align 4
  %mul = shl i32 %49, 2
  %add = add i32 %mul, 336
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef %add) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef %11, i32 noundef 384) #11
  %div370 = lshr i32 %13, 10
  tail call void @coda_write(ptr noundef %1, i32 noundef %div370, i32 noundef 388) #11
  %50 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx, align 8
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %product.i, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %55, label %if.end61.coda_reorder_enable.exit.thread_crit_edge [
    i32 61450, label %if.end61.if.end.i_crit_edge
    i32 61458, label %if.end61.if.end.i_crit_edge400
    i32 61472, label %if.end61.if.end.i_crit_edge401
  ]

if.end61.if.end.i_crit_edge401:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end61.if.end.i_crit_edge400:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end61.if.end.i_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end61.coda_reorder_enable.exit.thread_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_reorder_enable.exit.thread

if.end.i:                                         ; preds = %if.end61.if.end.i_crit_edge, %if.end61.if.end.i_crit_edge400, %if.end61.if.end.i_crit_edge401
  %codec.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %57 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %codec.i, align 4
  %src_fourcc.i = getelementptr inbounds %struct.coda_codec, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %src_fourcc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %src_fourcc.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %60, label %if.end.i.coda_reorder_enable.exit.thread387_crit_edge [
    i32 1195724874, label %if.end.i.coda_reorder_enable.exit.thread_crit_edge
    i32 875967048, label %if.end16.i
  ]

if.end.i.coda_reorder_enable.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_reorder_enable.exit.thread

if.end.i.coda_reorder_enable.exit.thread387_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_reorder_enable.exit.thread387

if.end16.i:                                       ; preds = %if.end.i
  %h264_profile_idc.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 10
  %62 = ptrtoint ptr %h264_profile_idc.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %h264_profile_idc.i, align 2
  %conv.i = zext i8 %63 to i32
  %call.i372 = tail call i32 @coda_h264_profile(i32 noundef %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i372)
  %cmp17.i = icmp slt i32 %call.i372, 0
  br i1 %cmp17.i, label %coda_reorder_enable.exit.thread389, label %coda_reorder_enable.exit

coda_reorder_enable.exit.thread389:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %51, i32 0, i32 4
  %64 = ptrtoint ptr %h264_profile_idc.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %h264_profile_idc.i, align 2
  %conv22.i = zext i8 %65 to i32
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %name.i, i32 noundef %conv22.i) #14
  br label %coda_reorder_enable.exit.thread

coda_reorder_enable.exit:                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i372)
  %cmp25.i.not = icmp eq i32 %call.i372, 0
  br i1 %cmp25.i.not, label %coda_reorder_enable.exit.coda_reorder_enable.exit.thread_crit_edge, label %coda_reorder_enable.exit.coda_reorder_enable.exit.thread387_crit_edge

coda_reorder_enable.exit.coda_reorder_enable.exit.thread387_crit_edge: ; preds = %coda_reorder_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_reorder_enable.exit.thread387

coda_reorder_enable.exit.coda_reorder_enable.exit.thread_crit_edge: ; preds = %coda_reorder_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_reorder_enable.exit.thread

coda_reorder_enable.exit.thread387:               ; preds = %coda_reorder_enable.exit.coda_reorder_enable.exit.thread387_crit_edge, %if.end.i.coda_reorder_enable.exit.thread387_crit_edge
  br label %coda_reorder_enable.exit.thread

coda_reorder_enable.exit.thread:                  ; preds = %coda_reorder_enable.exit.thread387, %coda_reorder_enable.exit.coda_reorder_enable.exit.thread_crit_edge, %coda_reorder_enable.exit.thread389, %if.end.i.coda_reorder_enable.exit.thread_crit_edge, %if.end61.coda_reorder_enable.exit.thread_crit_edge
  %66 = phi i32 [ 2, %coda_reorder_enable.exit.thread387 ], [ 0, %coda_reorder_enable.exit.coda_reorder_enable.exit.thread_crit_edge ], [ 0, %coda_reorder_enable.exit.thread389 ], [ 0, %if.end61.coda_reorder_enable.exit.thread_crit_edge ], [ 0, %if.end.i.coda_reorder_enable.exit.thread_crit_edge ]
  %codec = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %67 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %codec, align 4
  %src_fourcc67 = getelementptr inbounds %struct.coda_codec, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %src_fourcc67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %src_fourcc67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %70)
  %cmp68 = icmp eq i32 %70, 1195724874
  %or70 = or i32 %66, 1024
  %val.1 = select i1 %cmp68, i32 %or70, i32 %66
  tail call void @coda_write(ptr noundef %1, i32 noundef %val.1, i32 noundef 392) #11
  %71 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %codec, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %codec_mode = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 27
  %75 = ptrtoint ptr %codec_mode to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %codec_mode, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %79)
  %cmp73 = icmp eq i32 %79, 61472
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %15)
  %cmp74 = icmp eq i32 %15, 877088845
  %or.cond = select i1 %cmp73, i1 %cmp74, i1 false
  %codec_mode_aux = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 28
  %80 = ptrtoint ptr %codec_mode_aux to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %codec_mode_aux, align 4
  %brmerge = select i1 %or.cond, i1 true, i1 %cmp74
  br i1 %brmerge, label %if.end82.thread, label %if.end82

if.end82.thread:                                  ; preds = %coda_reorder_enable.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 412) #11
  br label %if.end103

if.end82:                                         ; preds = %coda_reorder_enable.exit.thread
  %81 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %15, label %if.end82.if.end103_crit_edge [
    i32 875967048, label %if.then84
    i32 1195724874, label %if.then102
  ]

if.end82.if.end103_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then84:                                        ; preds = %if.end82
  %82 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %devtype, align 4
  %product86 = getelementptr inbounds %struct.coda_devtype, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %product86 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %product86, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %85, label %if.then84.if.end94_crit_edge [
    i32 61450, label %if.then84.if.then92_crit_edge
    i32 61458, label %if.then84.if.then92_crit_edge402
  ]

if.then84.if.then92_crit_edge402:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then92

if.then84.if.then92_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then92

if.then84.if.end94_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then92:                                        ; preds = %if.then84.if.then92_crit_edge, %if.then84.if.then92_crit_edge402
  %paddr93 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 42, i32 1
  %87 = ptrtoint ptr %paddr93 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %paddr93, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %88, i32 noundef 404) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 160, i32 noundef 408) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then84.if.end94_crit_edge
  %89 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %devtype, align 4
  %product96 = getelementptr inbounds %struct.coda_devtype, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %product96 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %product96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %92)
  %cmp97 = icmp eq i32 %92, 61472
  br i1 %cmp97, label %if.then98, label %if.end94.if.end103_crit_edge

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 412) #11
  tail call void @coda_write(ptr noundef %1, i32 noundef 512, i32 noundef 416) #11
  br label %if.end103

if.then102:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 412) #11
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.then98, %if.end94.if.end103_crit_edge, %if.end82.if.end103_crit_edge, %if.end82.thread
  %cmp83392397 = phi i1 [ false, %if.then102 ], [ true, %if.then98 ], [ true, %if.end94.if.end103_crit_edge ], [ false, %if.end82.thread ], [ false, %if.end82.if.end103_crit_edge ]
  %93 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %devtype, align 4
  %product105 = getelementptr inbounds %struct.coda_devtype, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %product105 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %product105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %96)
  %cmp106.not = icmp eq i32 %96, 61472
  br i1 %cmp106.not, label %if.end103.if.end108_crit_edge, label %if.then107

if.end103.if.end108_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 396) #11
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end103.if.end108_crit_edge
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 55
  %97 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %bit_stream_param, align 8
  %call109 = tail call fastcc i32 @coda_command_sync(ptr noundef %ctx, i32 noundef 1)
  %98 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %bit_stream_param, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool111.not = icmp eq i32 %call109, 0
  br i1 %tobool111.not, label %if.end121, label %do.end115

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  %name118 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name118) #14
  br label %cleanup

if.end121:                                        ; preds = %if.end108
  %sequence_offset = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 14
  %99 = ptrtoint ptr %sequence_offset to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %sequence_offset, align 4
  %initialized = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 9
  %100 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %initialized, align 8
  %first_frame_sequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 48
  %101 = ptrtoint ptr %first_frame_sequence to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %first_frame_sequence, align 8
  %102 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctx, align 8
  %104 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reg_idx.i, align 4
  %mul.i375 = shl i32 %105, 3
  %add.i376 = add i32 %mul.i375, 288
  %call.i377 = tail call i32 @coda_read(ptr noundef %103, i32 noundef %add.i376) #11
  %106 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bitstream_fifo.i, align 4
  %108 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %109, -1
  %and.i379 = and i32 %107, %neg.i
  %110 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %paddr, align 4
  %sub.i = sub i32 %call.i377, %111
  %or.i = or i32 %sub.i, %and.i379
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %107)
  %cmp.i = icmp ugt i32 %or.i, %107
  %sub7.i = select i1 %cmp.i, i32 %neg.i, i32 0
  %spec.select.i = add i32 %sub7.i, %or.i
  %112 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %spec.select.i, ptr %out.i, align 4
  %buffer_meta_lock.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %buffer_meta_lock.i) #11
  %buffer_meta_list.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 45
  %113 = ptrtoint ptr %buffer_meta_list.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %buffer_meta_list.i, align 8
  %cmp.not47.i = icmp eq ptr %114, %buffer_meta_list.i
  br i1 %cmp.not47.i, label %if.end121.coda_decoder_drop_used_metas.exit_crit_edge, label %for.body.lr.ph.i

if.end121.coda_decoder_drop_used_metas.exit_crit_edge: ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_decoder_drop_used_metas.exit

for.body.lr.ph.i:                                 ; preds = %if.end121
  %idx.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %num_metas.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 47
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %meta.048.i = phi ptr [ %114, %for.body.lr.ph.i ], [ %tmp.050.i, %for.inc.i.for.body.i_crit_edge ]
  %115 = ptrtoint ptr %meta.048.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %tmp.050.i = load ptr, ptr %meta.048.i, align 8
  %116 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %out.i, align 4
  %end.i = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta.048.i, i32 0, i32 5
  %118 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp8.not.i = icmp ult i32 %117, %119
  br i1 %cmp8.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %120 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp9.i = icmp sgt i32 %120, 1
  br i1 %cmp9.i, label %do.end.i385, label %do.body.i.do.end21.i_crit_edge

do.body.i.do.end21.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21.i

do.end.i385:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctx, align 8
  %name.i383 = getelementptr inbounds %struct.v4l2_device, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %idx.i, align 8
  %sequence.i = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta.048.i, i32 0, i32 1
  %125 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sequence.i, align 8
  %start.i = getelementptr inbounds %struct.coda_buffer_meta, ptr %meta.048.i, i32 0, i32 4
  %127 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %start.i, align 8
  %call.i384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %name.i383, i32 noundef %124, i32 noundef %126, i32 noundef %128, i32 noundef %119) #14
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end.i385, %do.body.i.do.end21.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %meta.048.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end21.i.list_del.exit.i_crit_edge

do.end21.i.list_del.exit.i_crit_edge:             ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %meta.048.i, i32 0, i32 1
  %129 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i.i.i, align 4
  %131 = ptrtoint ptr %meta.048.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %meta.048.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev1.i.i.i.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %132, ptr %130, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end21.i.list_del.exit.i_crit_edge
  %135 = ptrtoint ptr %meta.048.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 256 to ptr), ptr %meta.048.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %meta.048.i, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %137 = ptrtoint ptr %num_metas.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_metas.i, align 4
  %dec.i = add i32 %138, -1
  store i32 %dec.i, ptr %num_metas.i, align 4
  %139 = ptrtoint ptr %first_frame_sequence to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %first_frame_sequence, align 8
  %inc.i = add i32 %140, 1
  store i32 %inc.i, ptr %first_frame_sequence, align 8
  tail call void @kfree(ptr noundef %meta.048.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.050.i, %buffer_meta_list.i
  br i1 %cmp.not.i, label %for.inc.i.coda_decoder_drop_used_metas.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.coda_decoder_drop_used_metas.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %coda_decoder_drop_used_metas.exit

coda_decoder_drop_used_metas.exit:                ; preds = %for.inc.i.coda_decoder_drop_used_metas.exit_crit_edge, %if.end121.coda_decoder_drop_used_metas.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %buffer_meta_lock.i) #11
  %call122 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 448) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %do.end127, label %if.end134

do.end127:                                        ; preds = %coda_decoder_drop_used_metas.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name130 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call132 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 480) #11
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name130, i32 noundef %call132) #14
  br label %cleanup

if.end134:                                        ; preds = %coda_decoder_drop_used_metas.exit
  %call135 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 452) #11
  %141 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %devtype, align 4
  %product137 = getelementptr inbounds %struct.coda_devtype, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %product137 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %product137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %144)
  %cmp138 = icmp eq i32 %144, 61441
  %shr = lshr i32 %call135, 10
  %and140 = and i32 %shr, 1023
  %shr143 = lshr i32 %call135, 16
  %height.0.v = select i1 %cmp138, i32 1023, i32 65535
  %height.0 = and i32 %height.0.v, %call135
  %width.0 = select i1 %cmp138, i32 %and140, i32 %shr143
  %bytesperline = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 2
  %145 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %bytesperline, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %width.0, i32 %146)
  %cmp147 = icmp ugt i32 %width.0, %146
  br i1 %cmp147, label %if.end134.do.end154_crit_edge, label %lor.lhs.false148

if.end134.do.end154_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end154

lor.lhs.false148:                                 ; preds = %if.end134
  %height149 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 1
  %147 = ptrtoint ptr %height149 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %height149, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %height.0, i32 %148)
  %cmp150 = icmp ugt i32 %height.0, %148
  br i1 %cmp150, label %lor.lhs.false148.do.end154_crit_edge, label %if.end162

lor.lhs.false148.do.end154_crit_edge:             ; preds = %lor.lhs.false148
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end154

do.end154:                                        ; preds = %lor.lhs.false148.do.end154_crit_edge, %if.end134.do.end154_crit_edge
  %name157 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %height160 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 1
  %149 = ptrtoint ptr %height160 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %height160, align 4
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %name157, i32 noundef %width.0, i32 noundef %height.0, i32 noundef %146, i32 noundef %150) #14
  br label %cleanup

if.end162:                                        ; preds = %lor.lhs.false148
  %sub = add nsw i32 %width.0, -1
  %or163 = or i32 %sub, 15
  %add164 = add nsw i32 %or163, 1
  %sub165 = add nsw i32 %height.0, -1
  %or166 = or i32 %sub165, 15
  %add167 = add nsw i32 %or166, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %151 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp169 = icmp sgt i32 %151, 0
  br i1 %cmp169, label %do.end176, label %if.end162.do.end189_crit_edge

if.end162.do.end189_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end189

do.end176:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctx, align 8
  %name180 = getelementptr inbounds %struct.v4l2_device, ptr %153, i32 0, i32 4
  %idx182 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %154 = ptrtoint ptr %idx182 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %idx182, align 8
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %name180, i32 noundef %155, i32 noundef %add164, i32 noundef %add167) #14
  br label %do.end189

do.end189:                                        ; preds = %do.end176, %if.end162.do.end189_crit_edge
  %call190 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 460) #11
  %num_internal_frames = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 50
  %156 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %call190, ptr %num_internal_frames, align 4
  %use_vdoa191 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 62
  %157 = ptrtoint ptr %use_vdoa191 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %use_vdoa191, align 1, !range !467
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool192.not = icmp eq i8 %158, 0
  br i1 %tobool192.not, label %do.end189.if.end196_crit_edge, label %if.then193

do.end189.if.end196_crit_edge:                    ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end196

if.then193:                                       ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #13
  %add195 = add i32 %call190, 1
  %159 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add195, ptr %num_internal_frames, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %do.end189.if.end196_crit_edge
  %160 = phi i32 [ %add195, %if.then193 ], [ %call190, %do.end189.if.end196_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %160)
  %cmp198 = icmp sgt i32 %160, 19
  br i1 %cmp198, label %do.end202, label %if.end209

do.end202:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #13
  %name205 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name205, i32 noundef 19, i32 noundef %160) #14
  br label %cleanup

if.end209:                                        ; preds = %if.end196
  br i1 %cmp83392397, label %if.then211, label %if.end209.if.end233_crit_edge

if.end209.if.end233_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end233

if.then211:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  %call212 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 472) #11
  %call213 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 476) #11
  %shr214 = lshr i32 %call212, 10
  %and215 = and i32 %shr214, 1023
  %rect = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5
  %161 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %and215, ptr %rect, align 4
  %shr216 = lshr i32 %call213, 10
  %and217 = and i32 %shr216, 1023
  %top = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5, i32 1
  %162 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %and217, ptr %top, align 4
  %and222 = and i32 %call212, 1023
  %163 = add nuw nsw i32 %and222, %and215
  %sub223 = sub nsw i32 %add164, %163
  %width225 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5, i32 2
  %164 = ptrtoint ptr %width225 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %sub223, ptr %width225, align 4
  %and229 = and i32 %call213, 1023
  %165 = add nuw nsw i32 %and229, %and217
  %sub230 = sub nsw i32 %add167, %165
  %height232 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 5, i32 3
  %166 = ptrtoint ptr %height232 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %sub230, ptr %height232, align 4
  br label %if.end233

if.end233:                                        ; preds = %if.then211, %if.end209.if.end233_crit_edge
  %167 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %devtype, align 4
  %product235 = getelementptr inbounds %struct.coda_devtype, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %product235 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %product235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %170)
  %cmp236.not = icmp eq i32 %170, 61441
  br i1 %cmp236.not, label %if.end233.cleanup_crit_edge, label %if.then237

if.end233.cleanup_crit_edge:                      ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then237:                                       ; preds = %if.end233
  %call238 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 492) #11
  %shr240 = lshr i32 %call238, 8
  %171 = trunc i32 %shr240 to i8
  %conv242 = and i8 %171, 127
  %conv243 = and i32 %call238, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv243)
  %tobool244.not = icmp eq i32 %conv243, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv242)
  %tobool247.not = icmp eq i8 %conv242, 0
  %or.cond371 = select i1 %tobool244.not, i1 %tobool247.not, i1 false
  br i1 %or.cond371, label %if.then237.cleanup_crit_edge, label %if.then248

if.then237.cleanup_crit_edge:                     ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then248:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %call238 to i8
  tail call void @coda_update_profile_level_ctrls(ptr noundef %ctx, i8 noundef zeroext %conv, i8 noundef zeroext %conv242) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then248, %if.then237.cleanup_crit_edge, %if.end233.cleanup_crit_edge, %do.end202, %do.end154, %do.end127, %do.end115
  %retval.0 = phi i32 [ %call109, %do.end115 ], [ -11, %do.end127 ], [ -22, %do.end154 ], [ -22, %do.end202 ], [ 0, %if.then248 ], [ 0, %if.then237.cleanup_crit_edge ], [ 0, %if.end233.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_update_profile_level_ctrls(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_h264_profile(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdoa_device_run(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_coda_dec_pic_run(ptr noundef %ctx, ptr noundef %meta) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_pic_run, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_coda_dec_pic_run, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !468

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !462

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !482
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_pic_run, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctx, ptr noundef %meta) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !483
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !483
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !462

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !471
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_pic_run, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_dec_pic_run.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_coda_dec_pic_run.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 144, ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !472
  %38 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdoa_wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_coda_dec_pic_done(ptr noundef %ctx, ptr noundef %meta) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_pic_done, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_coda_dec_pic_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !468

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !462

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !484
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_pic_done, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctx, ptr noundef %meta) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !485
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !485
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !462

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !471
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_pic_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_dec_pic_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_coda_dec_pic_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 149, ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !472
  %38 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
define internal fastcc void @trace_coda_dec_rot_done(ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_rot_done, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_coda_dec_rot_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !468

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !462

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !486
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_rot_done, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctx, ptr noundef %buf, ptr noundef %meta) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !487
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !487
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !462

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !452) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !471
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_coda_dec_rot_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_dec_rot_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_coda_dec_rot_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 155, ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !472
  %38 = tail call i32 @llvm.read_register.i32(metadata !452) #11
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
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !208, !210, !212, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !256, !257, !258, !259, !261, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !295, !297, !298, !299, !300, !302, !303, !304, !305, !306, !307, !308, !310, !311, !313, !314, !315, !316, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !331, !332, !334, !335, !336, !337, !338, !339, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !386, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !447, !448, !449, !450, !451}
!llvm.named.register.sp = !{!452}
!llvm.module.flags = !{!453, !454, !455, !456, !457, !458, !459, !460}
!llvm.ident = !{!461}

!0 = !{ptr @__tracepoint_coda_bit_run, !1, !"__tracepoint_coda_bit_run", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 13, i32 1}
!2 = !{ptr @__tracepoint_ptr_coda_bit_run, !1, !"__tracepoint_ptr_coda_bit_run", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_coda_bit_run, !1, !"__SCK__tp_func_coda_bit_run", i1 false, i1 false}
!4 = !{ptr @__tracepoint_coda_bit_done, !5, !"__tracepoint_coda_bit_done", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 34, i32 1}
!6 = !{ptr @__tracepoint_ptr_coda_bit_done, !5, !"__tracepoint_ptr_coda_bit_done", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_coda_bit_done, !5, !"__SCK__tp_func_coda_bit_done", i1 false, i1 false}
!8 = !{ptr @__tracepoint_coda_enc_pic_run, !9, !"__tracepoint_coda_enc_pic_run", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 73, i32 1}
!10 = !{ptr @__tracepoint_ptr_coda_enc_pic_run, !9, !"__tracepoint_ptr_coda_enc_pic_run", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_coda_enc_pic_run, !9, !"__SCK__tp_func_coda_enc_pic_run", i1 false, i1 false}
!12 = !{ptr @__tracepoint_coda_enc_pic_done, !13, !"__tracepoint_coda_enc_pic_done", i1 false, i1 false}
!13 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 78, i32 1}
!14 = !{ptr @__tracepoint_ptr_coda_enc_pic_done, !13, !"__tracepoint_ptr_coda_enc_pic_done", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_coda_enc_pic_done, !13, !"__SCK__tp_func_coda_enc_pic_done", i1 false, i1 false}
!16 = !{ptr @__tracepoint_coda_bit_queue, !17, !"__tracepoint_coda_bit_queue", i1 false, i1 false}
!17 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 110, i32 1}
!18 = !{ptr @__tracepoint_ptr_coda_bit_queue, !17, !"__tracepoint_ptr_coda_bit_queue", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_coda_bit_queue, !17, !"__SCK__tp_func_coda_bit_queue", i1 false, i1 false}
!20 = !{ptr @__tracepoint_coda_dec_pic_run, !21, !"__tracepoint_coda_dec_pic_run", i1 false, i1 false}
!21 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 141, i32 1}
!22 = !{ptr @__tracepoint_ptr_coda_dec_pic_run, !21, !"__tracepoint_ptr_coda_dec_pic_run", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_coda_dec_pic_run, !21, !"__SCK__tp_func_coda_dec_pic_run", i1 false, i1 false}
!24 = !{ptr @__tracepoint_coda_dec_pic_done, !25, !"__tracepoint_coda_dec_pic_done", i1 false, i1 false}
!25 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 146, i32 1}
!26 = !{ptr @__tracepoint_ptr_coda_dec_pic_done, !25, !"__tracepoint_ptr_coda_dec_pic_done", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_coda_dec_pic_done, !25, !"__SCK__tp_func_coda_dec_pic_done", i1 false, i1 false}
!28 = !{ptr @__tracepoint_coda_dec_rot_done, !29, !"__tracepoint_coda_dec_rot_done", i1 false, i1 false}
!29 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 151, i32 1}
!30 = !{ptr @__tracepoint_ptr_coda_dec_rot_done, !29, !"__tracepoint_ptr_coda_dec_rot_done", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_coda_dec_rot_done, !29, !"__SCK__tp_func_coda_dec_rot_done", i1 false, i1 false}
!32 = !{ptr @__tracepoint_coda_jpeg_run, !33, !"__tracepoint_coda_jpeg_run", i1 false, i1 false}
!33 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 157, i32 1}
!34 = !{ptr @__tracepoint_ptr_coda_jpeg_run, !33, !"__tracepoint_ptr_coda_jpeg_run", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_coda_jpeg_run, !33, !"__SCK__tp_func_coda_jpeg_run", i1 false, i1 false}
!36 = !{ptr @__tracepoint_coda_jpeg_done, !37, !"__tracepoint_coda_jpeg_done", i1 false, i1 false}
!37 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 162, i32 1}
!38 = !{ptr @__tracepoint_ptr_coda_jpeg_done, !37, !"__tracepoint_ptr_coda_jpeg_done", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_coda_jpeg_done, !37, !"__SCK__tp_func_coda_jpeg_done", i1 false, i1 false}
!40 = !{ptr @event_class_coda_bit_run, !1, !"event_class_coda_bit_run", i1 false, i1 false}
!41 = !{ptr @event_coda_bit_run, !1, !"event_coda_bit_run", i1 false, i1 false}
!42 = !{ptr @__event_coda_bit_run, !1, !"__event_coda_bit_run", i1 false, i1 false}
!43 = !{ptr @event_class_coda_bit_done, !5, !"event_class_coda_bit_done", i1 false, i1 false}
!44 = !{ptr @event_coda_bit_done, !5, !"event_coda_bit_done", i1 false, i1 false}
!45 = !{ptr @__event_coda_bit_done, !5, !"__event_coda_bit_done", i1 false, i1 false}
!46 = !{ptr @event_class_coda_buf_class, !47, !"event_class_coda_buf_class", i1 false, i1 false}
!47 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 52, i32 1}
!48 = !{ptr @event_coda_enc_pic_run, !9, !"event_coda_enc_pic_run", i1 false, i1 false}
!49 = !{ptr @__event_coda_enc_pic_run, !9, !"__event_coda_enc_pic_run", i1 false, i1 false}
!50 = !{ptr @event_coda_enc_pic_done, !13, !"event_coda_enc_pic_done", i1 false, i1 false}
!51 = !{ptr @__event_coda_enc_pic_done, !13, !"__event_coda_enc_pic_done", i1 false, i1 false}
!52 = !{ptr @event_class_coda_buf_meta_class, !53, !"event_class_coda_buf_meta_class", i1 false, i1 false}
!53 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 83, i32 1}
!54 = !{ptr @event_coda_bit_queue, !17, !"event_coda_bit_queue", i1 false, i1 false}
!55 = !{ptr @__event_coda_bit_queue, !17, !"__event_coda_bit_queue", i1 false, i1 false}
!56 = !{ptr @event_class_coda_meta_class, !57, !"event_class_coda_meta_class", i1 false, i1 false}
!57 = !{!"../include/trace/../../drivers/media/platform/coda/trace.h", i32 116, i32 1}
!58 = !{ptr @event_coda_dec_pic_run, !21, !"event_coda_dec_pic_run", i1 false, i1 false}
!59 = !{ptr @__event_coda_dec_pic_run, !21, !"__event_coda_dec_pic_run", i1 false, i1 false}
!60 = !{ptr @event_coda_dec_pic_done, !25, !"event_coda_dec_pic_done", i1 false, i1 false}
!61 = !{ptr @__event_coda_dec_pic_done, !25, !"__event_coda_dec_pic_done", i1 false, i1 false}
!62 = !{ptr @event_coda_dec_rot_done, !29, !"event_coda_dec_rot_done", i1 false, i1 false}
!63 = !{ptr @__event_coda_dec_rot_done, !29, !"__event_coda_dec_rot_done", i1 false, i1 false}
!64 = !{ptr @event_coda_jpeg_run, !33, !"event_coda_jpeg_run", i1 false, i1 false}
!65 = !{ptr @__event_coda_jpeg_run, !33, !"__event_coda_jpeg_run", i1 false, i1 false}
!66 = !{ptr @event_coda_jpeg_done, !37, !"event_coda_jpeg_done", i1 false, i1 false}
!67 = !{ptr @__event_coda_jpeg_done, !37, !"__event_coda_jpeg_done", i1 false, i1 false}
!68 = !{ptr @__bpf_trace_tp_map_coda_bit_run, !1, !"__bpf_trace_tp_map_coda_bit_run", i1 false, i1 false}
!69 = !{ptr @__bpf_trace_tp_map_coda_bit_done, !5, !"__bpf_trace_tp_map_coda_bit_done", i1 false, i1 false}
!70 = !{ptr @__bpf_trace_tp_map_coda_enc_pic_run, !9, !"__bpf_trace_tp_map_coda_enc_pic_run", i1 false, i1 false}
!71 = !{ptr @__bpf_trace_tp_map_coda_enc_pic_done, !13, !"__bpf_trace_tp_map_coda_enc_pic_done", i1 false, i1 false}
!72 = !{ptr @__bpf_trace_tp_map_coda_bit_queue, !17, !"__bpf_trace_tp_map_coda_bit_queue", i1 false, i1 false}
!73 = !{ptr @__bpf_trace_tp_map_coda_dec_pic_run, !21, !"__bpf_trace_tp_map_coda_dec_pic_run", i1 false, i1 false}
!74 = !{ptr @__bpf_trace_tp_map_coda_dec_pic_done, !25, !"__bpf_trace_tp_map_coda_dec_pic_done", i1 false, i1 false}
!75 = !{ptr @__bpf_trace_tp_map_coda_dec_rot_done, !29, !"__bpf_trace_tp_map_coda_dec_rot_done", i1 false, i1 false}
!76 = !{ptr @__bpf_trace_tp_map_coda_jpeg_run, !33, !"__bpf_trace_tp_map_coda_jpeg_run", i1 false, i1 false}
!77 = !{ptr @__bpf_trace_tp_map_coda_jpeg_done, !37, !"__bpf_trace_tp_map_coda_jpeg_done", i1 false, i1 false}
!78 = !{ptr @.str, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 118, i32 2}
!80 = !{ptr @.str.1, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 212, i32 3}
!82 = !{ptr @.str.2, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @coda_bitstream_flush._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @coda_bitstream_flush._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.3, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 364, i32 4}
!87 = !{ptr @.str.4, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @coda_fill_bitstream._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @coda_fill_bitstream._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.6, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 407, i32 6}
!92 = !{ptr @coda_fill_bitstream._entry.5, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @coda_fill_bitstream._entry_ptr.7, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.8, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 957, i32 3}
!96 = !{ptr @.str.9, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @coda_check_firmware._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @coda_check_firmware._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.11, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 964, i32 3}
!101 = !{ptr @coda_check_firmware._entry.10, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @coda_check_firmware._entry_ptr.12, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.14, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 979, i32 3}
!105 = !{ptr @coda_check_firmware._entry.13, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @coda_check_firmware._entry_ptr.15, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.17, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 986, i32 2}
!109 = !{ptr @coda_check_firmware._entry.16, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @coda_check_firmware._entry_ptr.18, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.20, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 990, i32 3}
!113 = !{ptr @coda_check_firmware._entry.19, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @coda_check_firmware._entry_ptr.21, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.23, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 993, i32 3}
!117 = !{ptr @coda_check_firmware._entry.22, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @coda_check_firmware._entry_ptr.24, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @coda_bit_encode_ops, !120, !"coda_bit_encode_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1743, i32 31}
!121 = !{ptr @coda_bit_decode_ops, !122, !"coda_bit_decode_ops", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2616, i32 31}
!123 = !{ptr @.str.25, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2641, i32 3}
!125 = !{ptr @.str.26, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @coda_irq_handler._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @coda_irq_handler._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.28, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2649, i32 3}
!130 = !{ptr @coda_irq_handler._entry.27, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @coda_irq_handler._entry_ptr.29, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.31, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2653, i32 3}
!134 = !{ptr @coda_irq_handler._entry.30, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @coda_irq_handler._entry_ptr.32, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @__tpstrtab_coda_bit_run, !1, !"__tpstrtab_coda_bit_run", i1 false, i1 false}
!137 = !{ptr @__tpstrtab_coda_bit_done, !5, !"__tpstrtab_coda_bit_done", i1 false, i1 false}
!138 = !{ptr @__tpstrtab_coda_enc_pic_run, !9, !"__tpstrtab_coda_enc_pic_run", i1 false, i1 false}
!139 = !{ptr @__tpstrtab_coda_enc_pic_done, !13, !"__tpstrtab_coda_enc_pic_done", i1 false, i1 false}
!140 = !{ptr @__tpstrtab_coda_bit_queue, !17, !"__tpstrtab_coda_bit_queue", i1 false, i1 false}
!141 = !{ptr @__tpstrtab_coda_dec_pic_run, !21, !"__tpstrtab_coda_dec_pic_run", i1 false, i1 false}
!142 = !{ptr @__tpstrtab_coda_dec_pic_done, !25, !"__tpstrtab_coda_dec_pic_done", i1 false, i1 false}
!143 = !{ptr @__tpstrtab_coda_dec_rot_done, !29, !"__tpstrtab_coda_dec_rot_done", i1 false, i1 false}
!144 = !{ptr @__tpstrtab_coda_jpeg_run, !33, !"__tpstrtab_coda_jpeg_run", i1 false, i1 false}
!145 = !{ptr @__tpstrtab_coda_jpeg_done, !37, !"__tpstrtab_coda_jpeg_done", i1 false, i1 false}
!146 = !{ptr @str__coda__trace_system_name, !147, !"str__coda__trace_system_name", i1 false, i1 false}
!147 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!148 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @trace_event_fields_coda_bit_run, !1, !"trace_event_fields_coda_bit_run", i1 false, i1 false}
!153 = !{ptr @trace_event_type_funcs_coda_bit_run, !1, !"trace_event_type_funcs_coda_bit_run", i1 false, i1 false}
!154 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @print_fmt_coda_bit_run, !1, !"print_fmt_coda_bit_run", i1 false, i1 false}
!156 = !{ptr @trace_event_fields_coda_bit_done, !5, !"trace_event_fields_coda_bit_done", i1 false, i1 false}
!157 = !{ptr @trace_event_type_funcs_coda_bit_done, !5, !"trace_event_type_funcs_coda_bit_done", i1 false, i1 false}
!158 = !{ptr @.str.38, !5, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @print_fmt_coda_bit_done, !5, !"print_fmt_coda_bit_done", i1 false, i1 false}
!160 = !{ptr @.str.39, !47, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @trace_event_fields_coda_buf_class, !47, !"trace_event_fields_coda_buf_class", i1 false, i1 false}
!162 = !{ptr @trace_event_type_funcs_coda_buf_class, !47, !"trace_event_type_funcs_coda_buf_class", i1 false, i1 false}
!163 = !{ptr @.str.40, !47, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @print_fmt_coda_buf_class, !47, !"print_fmt_coda_buf_class", i1 false, i1 false}
!165 = !{ptr @.str.41, !53, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.42, !53, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @trace_event_fields_coda_buf_meta_class, !53, !"trace_event_fields_coda_buf_meta_class", i1 false, i1 false}
!168 = !{ptr @trace_event_type_funcs_coda_buf_meta_class, !53, !"trace_event_type_funcs_coda_buf_meta_class", i1 false, i1 false}
!169 = !{ptr @.str.43, !53, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @print_fmt_coda_buf_meta_class, !53, !"print_fmt_coda_buf_meta_class", i1 false, i1 false}
!171 = !{ptr @trace_event_fields_coda_meta_class, !57, !"trace_event_fields_coda_meta_class", i1 false, i1 false}
!172 = !{ptr @trace_event_type_funcs_coda_meta_class, !57, !"trace_event_type_funcs_coda_meta_class", i1 false, i1 false}
!173 = !{ptr @.str.44, !57, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @print_fmt_coda_meta_class, !57, !"print_fmt_coda_meta_class", i1 false, i1 false}
!175 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!176 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!177 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!178 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!181 = !{ptr @.str.47, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.48, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 264, i32 3}
!184 = !{ptr @.str.49, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @coda_bitstream_try_queue._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @coda_bitstream_try_queue._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.51, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 280, i32 4}
!189 = !{ptr @coda_bitstream_try_queue._entry.50, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @coda_bitstream_try_queue._entry_ptr.52, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.54, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 286, i32 6}
!193 = !{ptr @coda_bitstream_try_queue._entry.53, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @coda_bitstream_try_queue._entry_ptr.55, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.57, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 294, i32 4}
!197 = !{ptr @coda_bitstream_try_queue._entry.56, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @coda_bitstream_try_queue._entry_ptr.58, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @coda_bitstream_try_queue._entry.59, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 305, i32 3}
!201 = !{ptr @coda_bitstream_try_queue._entry_ptr.60, !200, !"_entry_ptr", i1 false, i1 false}
!202 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!203 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!204 = distinct !{null, !205, !"coda_supported_firmwares", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 917, i32 12}
!206 = !{ptr @.str.61, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 576, i32 31}
!208 = !{ptr @.str.62, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 589, i32 11}
!210 = !{ptr @.str.63, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 597, i32 30}
!212 = !{ptr @.str.64, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 608, i32 11}
!214 = !{ptr @.str.65, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1080, i32 3}
!216 = !{ptr @.str.66, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @coda_start_encoding._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @coda_start_encoding._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.68, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1201, i32 3}
!221 = !{ptr @coda_start_encoding._entry.67, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @coda_start_encoding._entry_ptr.69, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.71, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1309, i32 3}
!225 = !{ptr @coda_start_encoding._entry.70, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @coda_start_encoding._entry_ptr.72, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.74, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1314, i32 3}
!229 = !{ptr @coda_start_encoding._entry.73, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @coda_start_encoding._entry_ptr.75, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.77, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1327, i32 4}
!233 = !{ptr @coda_start_encoding._entry.76, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @coda_start_encoding._entry_ptr.78, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.80, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1372, i32 3}
!237 = !{ptr @coda_start_encoding._entry.79, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @coda_start_encoding._entry_ptr.81, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.83, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1376, i32 2}
!241 = !{ptr @coda_start_encoding._entry.82, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @coda_start_encoding._entry_ptr.84, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.85, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 846, i32 5}
!245 = !{ptr @.str.86, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @coda_setup_iram._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @coda_setup_iram._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.88, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 898, i32 3}
!250 = !{ptr @coda_setup_iram._entry.87, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @coda_setup_iram._entry_ptr.89, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.90, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 507, i32 32}
!254 = !{ptr @.str.91, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 660, i32 3}
!256 = !{ptr @.str.92, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @coda_encode_header._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @coda_encode_header._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.93, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1485, i32 3}
!261 = !{ptr @.str.94, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @coda_prepare_encode._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @coda_prepare_encode._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.96, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1562, i32 4}
!266 = !{ptr @coda_prepare_encode._entry.95, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @coda_prepare_encode._entry_ptr.97, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.99, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1575, i32 4}
!270 = !{ptr @coda_prepare_encode._entry.98, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @coda_prepare_encode._entry_ptr.100, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.101, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 716, i32 3}
!274 = !{ptr @.str.102, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @coda_enc_param_change._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @coda_enc_param_change._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.104, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 727, i32 3}
!279 = !{ptr @coda_enc_param_change._entry.103, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @coda_enc_param_change._entry_ptr.105, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.107, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 735, i32 3}
!283 = !{ptr @coda_enc_param_change._entry.106, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @coda_enc_param_change._entry_ptr.108, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.110, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 744, i32 3}
!287 = !{ptr @coda_enc_param_change._entry.109, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @coda_enc_param_change._entry_ptr.111, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.113, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 769, i32 3}
!291 = !{ptr @coda_enc_param_change._entry.112, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @coda_enc_param_change._entry_ptr.114, !290, !"_entry_ptr", i1 false, i1 false}
!293 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!294 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!295 = !{ptr @.str.115, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1666, i32 2}
!297 = !{ptr @.str.116, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @coda_finish_encode._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @coda_finish_encode._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.118, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1692, i32 2}
!302 = !{ptr @coda_finish_encode._entry.117, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @coda_finish_encode._entry_ptr.119, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.120, !301, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.121, !301, !"<string literal>", i1 false, i1 false}
!306 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!307 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!308 = distinct !{null, !309, !"__already_done", i1 false, i1 false}
!309 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!310 = !{ptr @.str.122, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.123, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1708, i32 2}
!313 = !{ptr @.str.124, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @coda_seq_end_work._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @coda_seq_end_work._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.126, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1710, i32 3}
!318 = !{ptr @coda_seq_end_work._entry.125, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @coda_seq_end_work._entry_ptr.127, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.128, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1767, i32 3}
!322 = !{ptr @.str.129, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @coda_alloc_bitstream_buffer._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @coda_alloc_bitstream_buffer._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.130, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2079, i32 3}
!327 = !{ptr @__coda_start_decoding._entry, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @__coda_start_decoding._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @__coda_start_decoding._entry.131, !330, !"_entry", i1 false, i1 false}
!330 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2136, i32 3}
!331 = !{ptr @__coda_start_decoding._entry_ptr.132, !330, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.133, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1875, i32 2}
!334 = !{ptr @.str.134, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @__coda_decoder_seq_init._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @__coda_decoder_seq_init._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.135, !333, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.136, !333, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @__coda_decoder_seq_init._entry.137, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1943, i32 3}
!341 = !{ptr @__coda_decoder_seq_init._entry_ptr.138, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.140, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1960, i32 3}
!344 = !{ptr @__coda_decoder_seq_init._entry.139, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @__coda_decoder_seq_init._entry_ptr.141, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.143, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1976, i32 3}
!348 = !{ptr @__coda_decoder_seq_init._entry.142, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @__coda_decoder_seq_init._entry_ptr.144, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.146, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1985, i32 2}
!352 = !{ptr @__coda_decoder_seq_init._entry.145, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @__coda_decoder_seq_init._entry_ptr.147, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.149, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1998, i32 3}
!356 = !{ptr @__coda_decoder_seq_init._entry.148, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @__coda_decoder_seq_init._entry_ptr.150, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.151, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1833, i32 3}
!360 = !{ptr @.str.152, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @coda_reorder_enable._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @coda_reorder_enable._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.153, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 1851, i32 4}
!365 = !{ptr @.str.154, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @coda_decoder_drop_used_metas._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @coda_decoder_drop_used_metas._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.155, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2175, i32 3}
!370 = !{ptr @.str.156, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @coda_prepare_decode._entry, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @coda_prepare_decode._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.158, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2186, i32 4}
!375 = !{ptr @coda_prepare_decode._entry.157, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @coda_prepare_decode._entry_ptr.159, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @coda_prepare_decode.buf, !378, !"buf", i1 false, i1 false}
!378 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2267, i32 25}
!379 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!380 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!381 = !{ptr @.str.160, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2333, i32 3}
!383 = !{ptr @.str.161, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @coda_finish_decode._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @coda_finish_decode._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.163, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2337, i32 3}
!388 = !{ptr @coda_finish_decode._entry.162, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @coda_finish_decode._entry_ptr.164, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.166, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2341, i32 4}
!392 = !{ptr @coda_finish_decode._entry.165, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @coda_finish_decode._entry_ptr.167, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.169, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2345, i32 4}
!396 = !{ptr @coda_finish_decode._entry.168, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @coda_finish_decode._entry_ptr.170, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.172, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2383, i32 4}
!400 = !{ptr @coda_finish_decode._entry.171, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @coda_finish_decode._entry_ptr.173, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.175, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2393, i32 4}
!404 = !{ptr @coda_finish_decode._entry.174, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @coda_finish_decode._entry_ptr.176, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.178, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2437, i32 3}
!408 = !{ptr @coda_finish_decode._entry.177, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @coda_finish_decode._entry_ptr.179, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.181, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2465, i32 5}
!412 = !{ptr @coda_finish_decode._entry.180, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @coda_finish_decode._entry_ptr.182, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.184, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2474, i32 4}
!416 = !{ptr @coda_finish_decode._entry.183, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @coda_finish_decode._entry_ptr.185, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.187, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2501, i32 3}
!420 = !{ptr @coda_finish_decode._entry.186, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @coda_finish_decode._entry_ptr.188, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.190, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2527, i32 4}
!424 = !{ptr @coda_finish_decode._entry.189, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @coda_finish_decode._entry_ptr.191, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.193, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2535, i32 4}
!428 = !{ptr @coda_finish_decode._entry.192, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @coda_finish_decode._entry_ptr.194, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.196, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2553, i32 4}
!432 = !{ptr @coda_finish_decode._entry.195, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @coda_finish_decode._entry_ptr.197, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.199, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2562, i32 4}
!436 = !{ptr @coda_finish_decode._entry.198, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @coda_finish_decode._entry_ptr.200, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.202, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2572, i32 4}
!440 = !{ptr @coda_finish_decode._entry.201, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @coda_finish_decode._entry_ptr.203, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.205, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/platform/coda/coda-bit.c", i32 2577, i32 4}
!444 = !{ptr @coda_finish_decode._entry.204, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @coda_finish_decode._entry_ptr.206, !443, !"_entry_ptr", i1 false, i1 false}
!446 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!447 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!448 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!449 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!450 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!451 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!452 = !{!"sp"}
!453 = !{i32 1, !"wchar_size", i32 2}
!454 = !{i32 1, !"min_enum_size", i32 4}
!455 = !{i32 8, !"branch-target-enforcement", i32 0}
!456 = !{i32 8, !"sign-return-address", i32 0}
!457 = !{i32 8, !"sign-return-address-all", i32 0}
!458 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!459 = !{i32 7, !"uwtable", i32 1}
!460 = !{i32 7, !"frame-pointer", i32 2}
!461 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!462 = !{!"branch_weights", i32 2000, i32 1}
!463 = !{!"branch_weights", i32 1, i32 2000}
!464 = !{!"auto-init"}
!465 = !{i64 2157871390}
!466 = !{i64 2157871232}
!467 = !{i8 0, i8 2}
!468 = !{i64 2148797146, i64 2148797151, i64 2148797164, i64 2148797208, i64 2148797242, i64 2148797263}
!469 = !{i64 2156755807}
!470 = !{i64 2156756026}
!471 = !{i64 2149373232}
!472 = !{i64 2149374268}
!473 = !{i32 0, i32 33}
!474 = !{i64 2156701473}
!475 = !{i64 2156701668}
!476 = !{i64 2156685632}
!477 = !{i64 2156685835}
!478 = !{i64 2156721936}
!479 = !{i64 2156722147}
!480 = !{i64 2156738636}
!481 = !{i64 2156738849}
!482 = !{i64 2156772517}
!483 = !{i64 2156772730}
!484 = !{i64 2156793330}
!485 = !{i64 2156793545}
!486 = !{i64 2156810629}
!487 = !{i64 2156810854}
