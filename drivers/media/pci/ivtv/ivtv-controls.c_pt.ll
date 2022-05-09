; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-controls.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-controls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cx2341x_handler_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.123, i16, i16, i16, [10 x i16] }
%union.anon.123 = type { i16 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.89, %struct.anon.90, %struct.anon.91, %struct.anon.92, %struct.anon.93 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.87 = type { ptr, ptr }
%struct.anon.88 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.89 = type { ptr, ptr }
%struct.anon.90 = type { ptr, ptr, ptr }
%struct.anon.91 = type { ptr, ptr }
%struct.anon.92 = type { ptr, ptr }
%struct.anon.93 = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.126, %struct.anon.127, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.anon.126 = type { ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.102 }
%union.anon.102 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.104, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.104 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.1, %union.anon.2, i32, ptr, i32, %struct.anon, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.1 = type { i64 }
%union.anon.2 = type { ptr }
%struct.anon = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@ivtv_cxhdl_ops = dso_local constant { %struct.cx2341x_handler_ops, [16 x i8] } { %struct.cx2341x_handler_ops { ptr @ivtv_s_audio_sampling_freq, ptr @ivtv_s_audio_mode, ptr @ivtv_s_video_encoding, ptr @ivtv_s_stream_vbi_fmt }, [16 x i8] zeroinitializer }, align 32
@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_g_pts_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:  warn: GET_TIMING: couldn't read clock\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtv_g_pts_frame\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/ivtv/ivtv-controls.c\00", [57 x i8] zeroinitializer }, align 32
@ivtv_g_pts_frame._entry_ptr = internal global ptr @ivtv_g_pts_frame._entry, section ".printk_index", align 4
@ivtv_hdl_out_ops = dso_local constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ivtv_g_volatile_ctrl, ptr null, ptr @ivtv_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ivtv_s_audio_sampling_freq.freqs = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 32000], [20 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"ivtv_cxhdl_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 87, i32 34 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 108, i32 4 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"ivtv_hdl_out_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 150, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"freqs\00", align 1
@___asan_gen_.22 = private constant [42 x i8] c"../drivers/media/pci/ivtv/ivtv-controls.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 69, i32 19 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @ivtv_g_pts_frame._entry, ptr @ivtv_g_pts_frame._entry_ptr, ptr @ivtv_cxhdl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ivtv_hdl_out_ops, ptr @ivtv_s_audio_sampling_freq.freqs], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_cxhdl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_g_pts_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_hdl_out_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_s_audio_sampling_freq.freqs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_audio_sampling_freq(ptr noundef readonly %cxhdl, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp ult i32 %idx, 3
  br i1 %cmp, label %do.body, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body:                                          ; preds = %entry
  %subdevs = getelementptr i8, ptr %cxhdl, i32 -120
  %0 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn31 = load ptr, ptr %subdevs, align 4
  %cmp7.not33 = icmp eq ptr %.pn31, %subdevs
  br i1 %cmp7.not33, label %do.body.if.end22_crit_edge, label %for.body.lr.ph

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body.lr.ph:                                   ; preds = %do.body
  %arrayidx = getelementptr [3 x i32], ptr @ivtv_s_audio_sampling_freq.freqs, i32 0, i32 %idx
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn34 = phi ptr [ %.pn31, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__sd.035 = getelementptr i8, ptr %.pn34, i32 -80
  %ops = getelementptr i8, ptr %.pn34, i32 24
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %audio, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 %6(ptr noundef %__sd.035, i32 noundef %8) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp7.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp7.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %do.body.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ivtv_s_audio_mode(ptr nocapture noundef writeonly %cxhdl, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dualwatch_stereo_mode = getelementptr i8, ptr %cxhdl, i32 77484
  %0 = ptrtoint ptr %dualwatch_stereo_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %dualwatch_stereo_mode, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_video_encoding(ptr nocapture noundef readonly %cxhdl, i32 noundef %val) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp eq i32 %val, 0
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #6
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %format, align 4
  %width = getelementptr inbounds %struct.cx2341x_handler, ptr %cxhdl, i32 0, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %width, align 4
  %conv1 = zext i16 %4 to i32
  %5 = zext i1 %cmp to i32
  %div39 = lshr i32 %conv1, %5
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %6 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div39, ptr %format2, align 4
  %height = getelementptr inbounds %struct.cx2341x_handler, ptr %cxhdl, i32 0, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %height, align 2
  %conv4 = zext i16 %8 to i32
  %height6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %height6, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %code, align 4
  %sd_video = getelementptr i8, ptr %cxhdl, i32 -212
  %11 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_video, align 8
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %entry.if.end27_crit_edge, label %if.else

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pad, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.else.if.end27_crit_edge, label %land.lhs.true

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_fmt, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %land.lhs.true.if.end27_crit_edge, label %if.else14

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.else14.if.else21_crit_edge, label %land.lhs.true16

if.else14.if.else21_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else21

land.lhs.true16:                                  ; preds = %if.else14
  %set_fmt17 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %set_fmt17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_fmt17, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else21_crit_edge, label %land.lhs.true16.if.end27.sink.split_crit_edge

land.lhs.true16.if.end27.sink.split_crit_edge:    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.sink.split

land.lhs.true16.if.else21_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true16.if.else21_crit_edge, %if.else14.if.else21_crit_edge
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else21, %land.lhs.true16.if.end27.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.else21 ], [ %21, %land.lhs.true16.if.end27.sink.split_crit_edge ]
  %call25 = call i32 %.sink(ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull %format) #6
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %land.lhs.true.if.end27_crit_edge, %if.else.if.end27_crit_edge, %entry.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_stream_vbi_fmt(ptr nocapture noundef %cxhdl, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fmt)
  %tobool.not = icmp eq i32 %fmt, 0
  br i1 %tobool.not, label %if.end17.thread, label %land.lhs.true

if.end17.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %insert_mpeg61 = getelementptr i8, ptr %cxhdl, i32 77748
  %0 = ptrtoint ptr %insert_mpeg61 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %insert_mpeg61, align 4
  br label %cleanup41

land.lhs.true:                                    ; preds = %entry
  %sliced_mpeg_data = getelementptr i8, ptr %cxhdl, i32 83408
  %1 = ptrtoint ptr %sliced_mpeg_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sliced_mpeg_data, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %land.lhs.true.for.body_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true.for.body_crit_edge:                 ; preds = %land.lhs.true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.lhs.true.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %land.lhs.true.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 2049) #9
  %arrayidx4 = getelementptr [32 x ptr], ptr %sliced_mpeg_data, i32 0, i32 %i.065
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %arrayidx4, align 4
  %cmp8 = icmp eq ptr %call7.i, null
  br i1 %cmp8, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065)
  %cmp1067.not = icmp eq i32 %i.065, 0
  br i1 %cmp1067.not, label %while.cond.preheader.cleanup41_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup41_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup41

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec68.in = phi i32 [ %dec68, %while.body.while.body_crit_edge ], [ %i.065, %while.cond.preheader.while.body_crit_edge ]
  %dec68 = add nsw i32 %dec68.in, -1
  %arrayidx13 = getelementptr [32 x ptr], ptr %sliced_mpeg_data, i32 0, i32 %dec68
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx13, align 4
  tail call void @kfree(ptr noundef %6) #6
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx13, align 4
  %cmp10 = icmp sgt i32 %dec68.in, 1
  br i1 %cmp10, label %while.body.while.body_crit_edge, label %while.body.cleanup41_crit_edge

while.body.cleanup41_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup41

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.if.end23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end23:                                         ; preds = %for.inc.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge
  %insert_mpeg = getelementptr i8, ptr %cxhdl, i32 77748
  %8 = ptrtoint ptr %insert_mpeg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fmt, ptr %insert_mpeg, align 4
  %sliced_in = getelementptr i8, ptr %cxhdl, i32 77744
  %9 = ptrtoint ptr %sliced_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sliced_in, align 4
  %call25 = tail call zeroext i16 @ivtv_get_service_set(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call25)
  %cmp26 = icmp eq i16 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end23.cleanup41_crit_edge

if.end23.cleanup41_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup41

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %is_60hz = getelementptr i8, ptr %cxhdl, i32 737
  %11 = ptrtoint ptr %is_60hz to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_60hz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool29.not = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %sliced_in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sliced_in, align 4
  %. = select i1 %tobool29.not, i16 16384, i16 4096
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %., ptr %14, align 4
  %16 = load ptr, ptr %sliced_in, align 4
  %is_50hz = getelementptr i8, ptr %cxhdl, i32 736
  %17 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_50hz, align 4
  %conv39 = zext i8 %18 to i32
  tail call void @ivtv_expand_service_set(ptr noundef %16, i32 noundef %conv39) #6
  br label %cleanup41

cleanup41:                                        ; preds = %if.then28, %if.end23.cleanup41_crit_edge, %while.body.cleanup41_crit_edge, %while.cond.preheader.cleanup41_crit_edge, %if.end17.thread
  %retval.1 = phi i32 [ 0, %if.then28 ], [ 0, %if.end23.cleanup41_crit_edge ], [ 0, %if.end17.thread ], [ -12, %while.cond.preheader.cleanup41_crit_edge ], [ -12, %while.body.cleanup41_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_g_pts_frame(ptr noundef %itv, ptr nocapture noundef writeonly %pts, ptr nocapture noundef writeonly %frame) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  %1 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %i_flags, align 4
  %3 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %last_dec_timing = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 86
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 86, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %conv = zext i32 %5 to i64
  %shl = shl nuw i64 %conv, 32
  %arrayidx2 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 86, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %conv3 = zext i32 %7 to i64
  %or = or i64 %shl, %conv3
  %8 = ptrtoint ptr %pts to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or, ptr %pts, align 8
  %9 = ptrtoint ptr %last_dec_timing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_dec_timing, align 8
  %conv6 = zext i32 %10 to i64
  %11 = ptrtoint ptr %frame to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv6, ptr %frame, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %pts to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %pts, align 8
  %13 = ptrtoint ptr %frame to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %frame, align 8
  %decoding = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding, i32 noundef 4) #6
  %14 = ptrtoint ptr %decoding to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %decoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @ivtv_api(ptr noundef %itv, i32 noundef 21, i32 noundef 5, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end21, label %do.body

do.body:                                          ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %16 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #10
  br label %cleanup

if.end21:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %last_dec_timing22 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 86
  %17 = call ptr @memcpy(ptr %last_dec_timing22, ptr %data, i32 12)
  call void @_set_bit(i32 noundef 14, ptr noundef %i_flags) #6
  %arrayidx26 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx26, align 4
  %conv27 = zext i32 %19 to i64
  %shl28 = shl nuw i64 %conv27, 32
  %arrayidx29 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29, align 4
  %conv30 = zext i32 %21 to i64
  %or31 = or i64 %shl28, %conv30
  %22 = ptrtoint ptr %pts to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or31, ptr %pts, align 8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %conv33 = zext i32 %24 to i64
  %25 = ptrtoint ptr %frame to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv33, ptr %frame, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %if.end21 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_api(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10029535, i32 %1)
  %cond = icmp eq i32 %1, 10029535
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -272
  %4 = getelementptr i8, ptr %3, i32 312
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_new, align 8
  %ctrl_frame = getelementptr i8, ptr %3, i32 316
  %9 = ptrtoint ptr %ctrl_frame to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_frame, align 4
  %p_new1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %p_new1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_new1, align 8
  %call = tail call i32 @ivtv_g_pts_frame(ptr noundef %add.ptr, ptr noundef %8, ptr noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10029424, i32 %1)
  %cond = icmp eq i32 %1, 10029424
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -272
  %4 = getelementptr i8, ptr %3, i32 320
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = trunc i32 %8 to i8
  %conv = add i8 %9, -1
  %audio_stereo_mode = getelementptr i8, ptr %3, i32 752
  %10 = ptrtoint ptr %audio_stereo_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %audio_stereo_mode, align 8
  %ctrl_audio_multilingual_playback = getelementptr i8, ptr %3, i32 324
  %11 = ptrtoint ptr %ctrl_audio_multilingual_playback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_audio_multilingual_playback, align 4
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val1, align 4
  %15 = trunc i32 %14 to i8
  %conv3 = add i8 %15, -1
  %audio_bilingual_mode = getelementptr i8, ptr %3, i32 753
  %16 = ptrtoint ptr %audio_bilingual_mode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3, ptr %audio_bilingual_mode, align 1
  %conv5 = zext i8 %conv3 to i32
  %conv7 = zext i8 %conv to i32
  %call = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %add.ptr, i32 noundef 22, i32 noundef 2, i32 noundef %conv5, i32 noundef %conv7) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ivtv_get_service_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_expand_service_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @ivtv_cxhdl_ops, !1, !"ivtv_cxhdl_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-controls.c", i32 87, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ivtv/ivtv-controls.c", i32 108, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ivtv_g_pts_frame._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ivtv_g_pts_frame._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @ivtv_hdl_out_ops, !9, !"ivtv_hdl_out_ops", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ivtv/ivtv-controls.c", i32 150, i32 28}
!10 = !{ptr @ivtv_s_audio_sampling_freq.freqs, !11, !"freqs", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ivtv/ivtv-controls.c", i32 69, i32 19}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
