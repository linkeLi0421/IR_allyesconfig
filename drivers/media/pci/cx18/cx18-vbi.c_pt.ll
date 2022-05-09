; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-vbi.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_decode_vbi_line = type { i32, ptr, i32, i32 }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.140 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.104], %struct.media_entity_enum, i32 }
%struct.anon.104 = type { ptr, ptr }
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
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.116 }
%union.anon.116 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.118, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.118 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vbi_data_hdr = type { i32, i32, i32 }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@copy_vbi_data.mpeg_hdr_data = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\00\00\01\BAD\00\0Cf$\01\01\D1\D3\FA\FF\FF\00\00\01\BD\00\1A\84\80\07!\00]c\A7\FF\FF", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 96]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 176, i64 240]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 176, i64 240]
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"mpeg_hdr_data\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../drivers/media/pci/cx18/cx18-vbi.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 31, i32 18 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @copy_vbi_data.mpeg_hdr_data], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_vbi_data.mpeg_hdr_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_process_vbi_data(ptr nocapture noundef %cx, ptr noundef %mdl, i32 noundef %streamtype) local_unnamed_addr #0 align 64 {
entry:
  %vbi.i60.i = alloca %struct.v4l2_decode_vbi_line, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %streamtype)
  %cmp.not = icmp eq i32 %streamtype, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_list = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 4
  %0 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.022 = load ptr, ptr %buf_list, align 4
  %cmp2.not23 = icmp eq ptr %buf.022, %buf_list
  br i1 %cmp2.not23, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %vbi.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41
  %1 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi.i60.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi.i60.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi.i60.i, i32 0, i32 3
  %is_60hz.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 9
  %sd_av.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 3
  %sliced_data.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 6
  %line.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 6, i32 0, i32 2
  %field.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 6, i32 0, i32 1
  %insert_mpeg.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 5
  %frame.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 4
  %count.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 2
  %bytesused7 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %_cx18_process_vbi_data.exit.for.body_crit_edge, %for.body.lr.ph
  %buf.024 = phi ptr [ %buf.022, %for.body.lr.ph ], [ %buf.0, %_cx18_process_vbi_data.exit.for.body_crit_edge ]
  %bytesused = getelementptr inbounds %struct.cx18_buffer, ptr %buf.024, i32 0, i32 3
  %4 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytesused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %buf1.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.024, i32 0, i32 2
  %6 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf1.i, align 4
  call void @cx18_buf_swap(ptr noundef %buf.024) #4
  %8 = ptrtoint ptr %vbi.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vbi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, 4
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end5
  %10 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i.i, align 4
  %mul.i.i = shl i32 %11, 1
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp1.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp1.not.i.i, label %if.then.i.compress_raw_buf.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.compress_raw_buf.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compress_raw_buf.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %sub.i.i = add i32 %mul.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %q.02.i.i = phi ptr [ %7, %for.body.lr.ph.i.i ], [ %q.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %mul1.i.i = mul i32 %i.03.i.i, 1444
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul1.i.i
  %12 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp3.not.i.i = icmp eq i8 %13, -1
  br i1 %cmp3.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.i.compress_raw_buf.exit.i_crit_edge

for.body.i.i.compress_raw_buf.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compress_raw_buf.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 1
  %14 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false7.i.i, label %lor.lhs.false.i.i.compress_raw_buf.exit.i_crit_edge

lor.lhs.false.i.i.compress_raw_buf.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compress_raw_buf.exit.i

lor.lhs.false7.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 2
  %16 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool10.not.i.i, label %lor.lhs.false11.i.i, label %lor.lhs.false7.i.i.compress_raw_buf.exit.i_crit_edge

lor.lhs.false7.i.i.compress_raw_buf.exit.i_crit_edge: ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compress_raw_buf.exit.i

lor.lhs.false11.i.i:                              ; preds = %lor.lhs.false7.i.i
  %arrayidx12.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 3
  %18 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12.i.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %lor.lhs.false11.i.i.compress_raw_buf.exit.i_crit_edge [
    i8 32, label %lor.lhs.false11.i.i.if.end.i.i_crit_edge
    i8 96, label %lor.lhs.false11.i.i.if.end.i.i_crit_edge25
  ]

lor.lhs.false11.i.i.if.end.i.i_crit_edge25:       ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

lor.lhs.false11.i.i.if.end.i.i_crit_edge:         ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

lor.lhs.false11.i.i.compress_raw_buf.exit.i_crit_edge: ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compress_raw_buf.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false11.i.i.if.end.i.i_crit_edge, %lor.lhs.false11.i.i.if.end.i.i_crit_edge25
  call void @__sanitizer_cov_trace_cmp4(i32 %i.03.i.i, i32 %sub.i.i)
  %cmp22.i.i = icmp eq i32 %i.03.i.i, %sub.i.i
  %add.ptr25.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 4
  br i1 %cmp22.i.i, label %if.then24.i.i, label %if.else.i.i

if.then24.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = call ptr @memcpy(ptr %q.02.i.i, ptr %add.ptr25.i.i, i32 1428)
  %add.ptr30.i.i = getelementptr i8, ptr %q.02.i.i, i32 1428
  %add.ptr33.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 1431
  %22 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr33.i.i, align 1
  %24 = zext i8 %23 to i32
  %25 = call ptr @memset(ptr %add.ptr30.i.i, i32 %24, i32 12)
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = call ptr @memcpy(ptr %q.02.i.i, ptr %add.ptr25.i.i, i32 1440)
  %add.ptr38.i.i = getelementptr i8, ptr %q.02.i.i, i32 1440
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then24.i.i
  %q.1.i.i = phi ptr [ %add.ptr30.i.i, %if.then24.i.i ], [ %add.ptr38.i.i, %if.else.i.i ]
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %mul.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.compress_raw_buf.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.compress_raw_buf.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compress_raw_buf.exit.i

compress_raw_buf.exit.i:                          ; preds = %for.inc.i.i.compress_raw_buf.exit.i_crit_edge, %lor.lhs.false11.i.i.compress_raw_buf.exit.i_crit_edge, %lor.lhs.false7.i.i.compress_raw_buf.exit.i_crit_edge, %lor.lhs.false.i.i.compress_raw_buf.exit.i_crit_edge, %for.body.i.i.compress_raw_buf.exit.i_crit_edge, %if.then.i.compress_raw_buf.exit.i_crit_edge
  %mul41.i.i = mul i32 %11, 2880
  %27 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul41.i.i, ptr %bytesused, align 4
  %sub.i = add i32 %mul41.i.i, -4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %sub.i
  %28 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frame.i.i, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %add.ptr.i, align 1
  br label %_cx18_process_vbi_data.exit

if.end.i:                                         ; preds = %if.end5
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %32)
  %cmp.i = icmp eq i32 %32, 1073741823
  br i1 %cmp.i, label %cond.true.i, label %if.end.i.cond.end.i_crit_edge

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %pts7.i = getelementptr inbounds %struct.vbi_data_hdr, ptr %7, i32 0, i32 2
  %33 = ptrtoint ptr %pts7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pts7.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %34, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vbi.i60.i) #4
  %35 = call ptr @memset(ptr %vbi.i60.i, i32 255, i32 16)
  %36 = ptrtoint ptr %is_60hz.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_60hz.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i61.i = icmp eq i8 %37, 0
  %cond.i.i = select i1 %tobool.not.i61.i, i32 284, i32 272
  %add.ptr.i62.i = getelementptr i8, ptr %7, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp1.i.i = icmp ugt i32 %5, 12
  br i1 %cmp1.i.i, label %for.body.preheader.i.i, label %cond.end.i.for.end.i.i_crit_edge

cond.end.i.for.end.i.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %cond.end.i
  %uglygep.i.i = getelementptr i8, ptr %7, i32 %5
  br label %for.body.i63.i

for.body.i63.i:                                   ; preds = %for.inc.i68.i.for.body.i63.i_crit_edge, %for.body.preheader.i.i
  %i.04.i.i = phi i32 [ %inc.i66.i, %for.inc.i68.i.for.body.i63.i_crit_edge ], [ 12, %for.body.preheader.i.i ]
  %buf.addr.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i68.i.for.body.i63.i_crit_edge ], [ %add.ptr.i62.i, %for.body.preheader.i.i ]
  %38 = ptrtoint ptr %buf.addr.02.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf.addr.02.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp3.i.i = icmp eq i8 %39, -1
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i63.i.for.inc.i68.i_crit_edge

for.body.i63.i.for.inc.i68.i_crit_edge:           ; preds = %for.body.i63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i68.i

land.lhs.true.i.i:                                ; preds = %for.body.i63.i
  %arrayidx5.i64.i = getelementptr i8, ptr %buf.addr.02.i.i, i32 1
  %40 = ptrtoint ptr %arrayidx5.i64.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx5.i64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool6.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i68.i_crit_edge

land.lhs.true.i.i.for.inc.i68.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i68.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %arrayidx8.i65.i = getelementptr i8, ptr %buf.addr.02.i.i, i32 2
  %42 = ptrtoint ptr %arrayidx8.i65.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx8.i65.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool9.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true10.i.i, label %land.lhs.true7.i.i.for.inc.i68.i_crit_edge

land.lhs.true7.i.i.for.inc.i68.i_crit_edge:       ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i68.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true7.i.i
  %arrayidx11.i.i = getelementptr i8, ptr %buf.addr.02.i.i, i32 3
  %44 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx11.i.i, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %45, label %land.lhs.true10.i.i.for.inc.i68.i_crit_edge [
    i8 -80, label %land.lhs.true10.i.i.for.end.i.i_crit_edge
    i8 -16, label %land.lhs.true10.i.i.for.end.i.i_crit_edge26
  ]

land.lhs.true10.i.i.for.end.i.i_crit_edge26:      ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

land.lhs.true10.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

land.lhs.true10.i.i.for.inc.i68.i_crit_edge:      ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i68.i

for.inc.i68.i:                                    ; preds = %land.lhs.true10.i.i.for.inc.i68.i_crit_edge, %land.lhs.true7.i.i.for.inc.i68.i_crit_edge, %land.lhs.true.i.i.for.inc.i68.i_crit_edge, %for.body.i63.i.for.inc.i68.i_crit_edge
  %inc.i66.i = add nuw i32 %i.04.i.i, 1
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.02.i.i, i32 1
  %exitcond.not.i67.i = icmp eq i32 %inc.i66.i, %5
  br i1 %exitcond.not.i67.i, label %for.inc.i68.i.for.end.i.i_crit_edge, label %for.inc.i68.i.for.body.i63.i_crit_edge

for.inc.i68.i.for.body.i63.i_crit_edge:           ; preds = %for.inc.i68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i63.i

for.inc.i68.i.for.end.i.i_crit_edge:              ; preds = %for.inc.i68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i68.i.for.end.i.i_crit_edge, %land.lhs.true10.i.i.for.end.i.i_crit_edge, %land.lhs.true10.i.i.for.end.i.i_crit_edge26, %cond.end.i.for.end.i.i_crit_edge
  %buf.addr.0.lcssa.i.i = phi ptr [ %add.ptr.i62.i, %cond.end.i.for.end.i.i_crit_edge ], [ %uglygep.i.i, %for.inc.i68.i.for.end.i.i_crit_edge ], [ %buf.addr.02.i.i, %land.lhs.true10.i.i.for.end.i.i_crit_edge ], [ %buf.addr.02.i.i, %land.lhs.true10.i.i.for.end.i.i_crit_edge26 ]
  %i.0.lcssa.i.i = phi i32 [ 12, %cond.end.i.for.end.i.i_crit_edge ], [ %5, %for.inc.i68.i.for.end.i.i_crit_edge ], [ %i.04.i.i, %land.lhs.true10.i.i.for.end.i.i_crit_edge ], [ %i.04.i.i, %land.lhs.true10.i.i.for.end.i.i_crit_edge26 ]
  %sub.neg.i.i = add i32 %5, 12
  %sub21.i.i = sub i32 %sub.neg.i.i, %i.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21.i.i, i32 %cond.i.i)
  %cmp22.i69.i = icmp ult i32 %sub21.i.i, %cond.i.i
  br i1 %cmp22.i69.i, label %compress_sliced_buf.exit.thread.i, label %for.body29.lr.ph.i.i

compress_sliced_buf.exit.thread.i:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vbi.i60.i) #4
  br label %if.then10.i

for.body29.lr.ph.i.i:                             ; preds = %for.end.i.i
  %div.i.i = udiv i32 %sub21.i.i, %cond.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #4
  br label %for.body29.i.i

for.body29.i.i:                                   ; preds = %cleanup.i.i.for.body29.i.i_crit_edge, %for.body29.lr.ph.i.i
  %line.014.i.i = phi i32 [ 0, %for.body29.lr.ph.i.i ], [ %line.2.i.i, %cleanup.i.i.for.body29.i.i_crit_edge ]
  %i.113.i.i = phi i32 [ 0, %for.body29.lr.ph.i.i ], [ %inc103.i.i, %cleanup.i.i.for.body29.i.i_crit_edge ]
  %mul.i70.i = mul i32 %i.113.i.i, %cond.i.i
  %add.ptr30.i71.i = getelementptr i8, ptr %buf.addr.0.lcssa.i.i, i32 %mul.i70.i
  %47 = ptrtoint ptr %add.ptr30.i71.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr30.i71.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp33.not.i.i = icmp eq i8 %48, -1
  br i1 %cmp33.not.i.i, label %lor.lhs.false35.i.i, label %for.body29.i.i.cleanup.i.i_crit_edge

for.body29.i.i.cleanup.i.i_crit_edge:             ; preds = %for.body29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i

lor.lhs.false35.i.i:                              ; preds = %for.body29.i.i
  %arrayidx36.i.i = getelementptr i8, ptr %add.ptr30.i71.i, i32 1
  %49 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx36.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool38.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool38.not.i.i, label %lor.lhs.false39.i.i, label %lor.lhs.false35.i.i.cleanup.i.i_crit_edge

lor.lhs.false35.i.i.cleanup.i.i_crit_edge:        ; preds = %lor.lhs.false35.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i

lor.lhs.false39.i.i:                              ; preds = %lor.lhs.false35.i.i
  %arrayidx40.i.i = getelementptr i8, ptr %add.ptr30.i71.i, i32 2
  %51 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx40.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool42.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool42.not.i.i, label %lor.lhs.false43.i.i, label %lor.lhs.false39.i.i.cleanup.i.i_crit_edge

lor.lhs.false39.i.i.cleanup.i.i_crit_edge:        ; preds = %lor.lhs.false39.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i

lor.lhs.false43.i.i:                              ; preds = %lor.lhs.false39.i.i
  %arrayidx44.i.i = getelementptr i8, ptr %add.ptr30.i71.i, i32 3
  %53 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx44.i.i, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %54, label %lor.lhs.false43.i.i.cleanup.i.i_crit_edge [
    i8 -80, label %lor.lhs.false43.i.i.if.end56.i.i_crit_edge
    i8 -16, label %lor.lhs.false43.i.i.if.end56.i.i_crit_edge27
  ]

lor.lhs.false43.i.i.if.end56.i.i_crit_edge27:     ; preds = %lor.lhs.false43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56.i.i

lor.lhs.false43.i.i.if.end56.i.i_crit_edge:       ; preds = %lor.lhs.false43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56.i.i

lor.lhs.false43.i.i.cleanup.i.i_crit_edge:        ; preds = %lor.lhs.false43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i

if.end56.i.i:                                     ; preds = %lor.lhs.false43.i.i.if.end56.i.i_crit_edge, %lor.lhs.false43.i.i.if.end56.i.i_crit_edge27
  %add.ptr57.i.i = getelementptr i8, ptr %add.ptr30.i71.i, i32 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr57.i.i, ptr %1, align 4
  %57 = ptrtoint ptr %sd_av.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sd_av.i.i, align 8
  %tobool59.not.i.i = icmp eq ptr %58, null
  br i1 %tobool59.not.i.i, label %if.end56.i.i.if.end82.i.i_crit_edge, label %if.else.i72.i

if.end56.i.i.if.end82.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82.i.i

if.else.i72.i:                                    ; preds = %if.end56.i.i
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i, align 4
  %vbi61.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %vbi61.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vbi61.i.i, align 4
  %tobool62.not.i.i = icmp eq ptr %62, null
  br i1 %tobool62.not.i.i, label %if.else.i72.i.if.end82.i.i_crit_edge, label %land.lhs.true63.i.i

if.else.i72.i.if.end82.i.i_crit_edge:             ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82.i.i

land.lhs.true63.i.i:                              ; preds = %if.else.i72.i
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool66.not.i.i = icmp eq ptr %64, null
  br i1 %tobool66.not.i.i, label %land.lhs.true63.i.i.if.end82.i.i_crit_edge, label %if.else68.i.i

land.lhs.true63.i.i.if.end82.i.i_crit_edge:       ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82.i.i

if.else68.i.i:                                    ; preds = %land.lhs.true63.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool69.not.i.i = icmp eq ptr %65, null
  br i1 %tobool69.not.i.i, label %if.else68.i.i.if.else75.i.i_crit_edge, label %land.lhs.true70.i.i

if.else68.i.i.if.else75.i.i_crit_edge:            ; preds = %if.else68.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else75.i.i

land.lhs.true70.i.i:                              ; preds = %if.else68.i.i
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool72.not.i.i = icmp eq ptr %67, null
  br i1 %tobool72.not.i.i, label %land.lhs.true70.i.i.if.else75.i.i_crit_edge, label %land.lhs.true70.i.i.if.end82.sink.split.i.i_crit_edge

land.lhs.true70.i.i.if.end82.sink.split.i.i_crit_edge: ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82.sink.split.i.i

land.lhs.true70.i.i.if.else75.i.i_crit_edge:      ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else75.i.i

if.else75.i.i:                                    ; preds = %land.lhs.true70.i.i.if.else75.i.i_crit_edge, %if.else68.i.i.if.else75.i.i_crit_edge
  br label %if.end82.sink.split.i.i

if.end82.sink.split.i.i:                          ; preds = %if.else75.i.i, %land.lhs.true70.i.i.if.end82.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %64, %if.else75.i.i ], [ %67, %land.lhs.true70.i.i.if.end82.sink.split.i.i_crit_edge ]
  %call79.i.i = call i32 %.sink.i.i(ptr noundef nonnull %58, ptr noundef nonnull %vbi.i60.i) #4
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.end82.sink.split.i.i, %land.lhs.true63.i.i.if.end82.i.i_crit_edge, %if.else.i72.i.if.end82.i.i_crit_edge, %if.end56.i.i.if.end82.i.i_crit_edge
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool83.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool83.not.i.i, label %if.end82.i.i.cleanup.i.i_crit_edge, label %if.then84.i.i

if.end82.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i

if.then84.i.i:                                    ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx87.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 41, i32 6, i32 %line.014.i.i
  %70 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx87.i.i, align 4
  %71 = ptrtoint ptr %vbi.i60.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vbi.i60.i, align 4
  %field.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 41, i32 6, i32 %line.014.i.i, i32 1
  %73 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %field.i.i, align 4
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %2, align 4
  %line95.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 41, i32 6, i32 %line.014.i.i, i32 2
  %76 = ptrtoint ptr %line95.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %line95.i.i, align 4
  %data.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 41, i32 6, i32 %line.014.i.i, i32 4
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %79 = call ptr @memcpy(ptr %data.i.i, ptr %78, i32 42)
  %inc100.i.i = add i32 %line.014.i.i, 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then84.i.i, %if.end82.i.i.cleanup.i.i_crit_edge, %lor.lhs.false43.i.i.cleanup.i.i_crit_edge, %lor.lhs.false39.i.i.cleanup.i.i_crit_edge, %lor.lhs.false35.i.i.cleanup.i.i_crit_edge, %for.body29.i.i.cleanup.i.i_crit_edge
  %line.2.i.i = phi i32 [ %line.014.i.i, %lor.lhs.false43.i.i.cleanup.i.i_crit_edge ], [ %line.014.i.i, %lor.lhs.false39.i.i.cleanup.i.i_crit_edge ], [ %line.014.i.i, %lor.lhs.false35.i.i.cleanup.i.i_crit_edge ], [ %line.014.i.i, %for.body29.i.i.cleanup.i.i_crit_edge ], [ %inc100.i.i, %if.then84.i.i ], [ %line.014.i.i, %if.end82.i.i.cleanup.i.i_crit_edge ]
  %inc103.i.i = add nuw nsw i32 %i.113.i.i, 1
  %exitcond16.not.i.i = icmp eq i32 %inc103.i.i, %umax.i.i
  br i1 %exitcond16.not.i.i, label %compress_sliced_buf.exit.i, label %cleanup.i.i.for.body29.i.i_crit_edge

cleanup.i.i.for.body29.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29.i.i

compress_sliced_buf.exit.i:                       ; preds = %cleanup.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vbi.i60.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %line.2.i.i)
  %cmp9.i = icmp eq i32 %line.2.i.i, 0
  br i1 %cmp9.i, label %compress_sliced_buf.exit.i.if.then10.i_crit_edge, label %compress_sliced_buf.exit.i.if.end18.i_crit_edge

compress_sliced_buf.exit.i.if.end18.i_crit_edge:  ; preds = %compress_sliced_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

compress_sliced_buf.exit.i.if.then10.i_crit_edge: ; preds = %compress_sliced_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10.i

if.then10.i:                                      ; preds = %compress_sliced_buf.exit.i.if.then10.i_crit_edge, %compress_sliced_buf.exit.thread.i
  %80 = ptrtoint ptr %sliced_data.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %sliced_data.i, align 4
  %81 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %line.i, align 4
  %82 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %field.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then10.i, %compress_sliced_buf.exit.i.if.end18.i_crit_edge
  %lines.0.i = phi i32 [ 1, %if.then10.i ], [ %line.2.i.i, %compress_sliced_buf.exit.i.if.end18.i_crit_edge ]
  %mul.i = shl i32 %lines.0.i, 6
  %83 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul.i, ptr %bytesused, align 4
  %84 = call ptr @memcpy(ptr %7, ptr %sliced_data.i, i32 %mul.i)
  %85 = ptrtoint ptr %insert_mpeg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %insert_mpeg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool24.not.i = icmp eq i32 %86, 0
  br i1 %tobool24.not.i, label %if.end18.i._cx18_process_vbi_data.exit_crit_edge, label %if.then25.i

if.end18.i._cx18_process_vbi_data.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_cx18_process_vbi_data.exit

if.then25.i:                                      ; preds = %if.end18.i
  %87 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frame.i.i, align 4
  %rem.i.i = and i32 %88, 31
  %arrayidx.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 41, i32 7, i32 %rem.i.i
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lines.0.i)
  %cmp132.i.i = icmp sgt i32 %lines.0.i, 0
  br i1 %cmp132.i.i, label %for.body.lr.ph.i73.i, label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  %91 = call ptr @memcpy(ptr %90, ptr @copy_vbi_data.mpeg_hdr_data, i32 32)
  br label %if.else41.i.i

for.body.lr.ph.i73.i:                             ; preds = %if.then25.i
  %add.ptr22.i.i = getelementptr i8, ptr %90, i32 45
  br label %for.body.i75.i

for.body.i75.i:                                   ; preds = %cleanup.i85.i.for.body.i75.i_crit_edge, %for.body.lr.ph.i73.i
  %line.0137.i.i = phi i32 [ 0, %for.body.lr.ph.i73.i ], [ %line.1.i.i, %cleanup.i85.i.for.body.i75.i_crit_edge ]
  %i.0135.i.i = phi i32 [ 0, %for.body.lr.ph.i73.i ], [ %inc27.i.i, %cleanup.i85.i.for.body.i75.i_crit_edge ]
  %linemask.sroa.0.0134.i.i = phi i32 [ 0, %for.body.lr.ph.i73.i ], [ %linemask.sroa.0.2.i.i, %cleanup.i85.i.for.body.i75.i_crit_edge ]
  %linemask.sroa.8.0133.i.i = phi i32 [ 0, %for.body.lr.ph.i73.i ], [ %linemask.sroa.8.2.i.i, %cleanup.i85.i.for.body.i75.i_crit_edge ]
  %add.ptr.i74.i = getelementptr %struct.v4l2_sliced_vbi_data, ptr %sliced_data.i, i32 %i.0135.i.i
  %92 = ptrtoint ptr %add.ptr.i74.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp4.i.i = icmp eq i32 %93, 0
  br i1 %cmp4.i.i, label %for.body.i75.i.cleanup.i85.i_crit_edge, label %if.end.i78.i

for.body.i75.i.cleanup.i85.i_crit_edge:           ; preds = %for.body.i75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i85.i

if.end.i78.i:                                     ; preds = %for.body.i75.i
  %line5.i.i = getelementptr %struct.v4l2_sliced_vbi_data, ptr %sliced_data.i, i32 %i.0135.i.i, i32 2
  %94 = ptrtoint ptr %line5.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %line5.i.i, align 4
  %field.i76.i = getelementptr %struct.v4l2_sliced_vbi_data, ptr %sliced_data.i, i32 %i.0135.i.i, i32 1
  %96 = ptrtoint ptr %field.i76.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %field.i76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i77.i = icmp eq i32 %97, 0
  %spec.select.v.i.i = select i1 %tobool.not.i77.i, i32 -6, i32 12
  %spec.select.i.i = add i32 %spec.select.v.i.i, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %spec.select.i.i)
  %cmp8.i.i = icmp slt i32 %spec.select.i.i, 32
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else.i79.i

if.then9.i.i:                                     ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i.i = shl nuw i32 1, %spec.select.i.i
  %or.i.i = or i32 %shl.i.i, %linemask.sroa.0.0134.i.i
  br label %if.end15.i.i

if.else.i79.i:                                    ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub11.i.i = add nsw i32 %spec.select.i.i, -32
  %shl12.i.i = shl nuw i32 1, %sub11.i.i
  %or14.i.i = or i32 %shl12.i.i, %linemask.sroa.8.0133.i.i
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else.i79.i, %if.then9.i.i
  %linemask.sroa.8.1.i.i = phi i32 [ %linemask.sroa.8.0133.i.i, %if.then9.i.i ], [ %or14.i.i, %if.else.i79.i ]
  %linemask.sroa.0.1.i.i = phi i32 [ %or.i.i, %if.then9.i.i ], [ %linemask.sroa.0.0134.i.i, %if.else.i79.i ]
  %call.i.i = call zeroext i16 @cx18_service2vbi(i32 noundef %93) #4
  %conv.i80.i = trunc i16 %call.i.i to i8
  %mul.i81.i = mul i32 %line.0137.i.i, 43
  %add17.i.i = add i32 %mul.i81.i, 44
  %arrayidx18.i.i = getelementptr i8, ptr %90, i32 %add17.i.i
  %98 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv.i80.i, ptr %arrayidx18.i.i, align 1
  %add.ptr23.i.i = getelementptr i8, ptr %add.ptr22.i.i, i32 %mul.i81.i
  %data.i82.i = getelementptr %struct.v4l2_sliced_vbi_data, ptr %sliced_data.i, i32 %i.0135.i.i, i32 4
  %99 = call ptr @memcpy(ptr %add.ptr23.i.i, ptr %data.i82.i, i32 42)
  %inc.i83.i = add i32 %line.0137.i.i, 1
  br label %cleanup.i85.i

cleanup.i85.i:                                    ; preds = %if.end15.i.i, %for.body.i75.i.cleanup.i85.i_crit_edge
  %linemask.sroa.8.2.i.i = phi i32 [ %linemask.sroa.8.0133.i.i, %for.body.i75.i.cleanup.i85.i_crit_edge ], [ %linemask.sroa.8.1.i.i, %if.end15.i.i ]
  %linemask.sroa.0.2.i.i = phi i32 [ %linemask.sroa.0.0134.i.i, %for.body.i75.i.cleanup.i85.i_crit_edge ], [ %linemask.sroa.0.1.i.i, %if.end15.i.i ]
  %line.1.i.i = phi i32 [ %line.0137.i.i, %for.body.i75.i.cleanup.i85.i_crit_edge ], [ %inc.i83.i, %if.end15.i.i ]
  %inc27.i.i = add nuw nsw i32 %i.0135.i.i, 1
  %exitcond.not.i84.i = icmp eq i32 %inc27.i.i, %lines.0.i
  br i1 %exitcond.not.i84.i, label %for.end.i86.i, label %cleanup.i85.i.for.body.i75.i_crit_edge

cleanup.i85.i.for.body.i75.i_crit_edge:           ; preds = %cleanup.i85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i75.i

for.end.i86.i:                                    ; preds = %cleanup.i85.i
  %100 = call ptr @memcpy(ptr %90, ptr @copy_vbi_data.mpeg_hdr_data, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %line.1.i.i)
  %cmp28.i.i = icmp eq i32 %line.1.i.i, 36
  br i1 %cmp28.i.i, label %if.then30.i.i, label %for.end.i86.i.if.else41.i.i_crit_edge

for.end.i86.i.if.else41.i.i_crit_edge:            ; preds = %for.end.i86.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else41.i.i

if.then30.i.i:                                    ; preds = %for.end.i86.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr33.i87.i = getelementptr i8, ptr %90, i32 36
  %add.ptr35.i.i = getelementptr i8, ptr %90, i32 44
  %101 = call ptr @memmove(ptr %add.ptr33.i87.i, ptr %add.ptr35.i.i, i32 1548)
  br label %copy_vbi_data.exit.i

if.else41.i.i:                                    ; preds = %for.end.i86.i.if.else41.i.i_crit_edge, %for.end.thread.i.i
  %line.0.lcssa146.i.i = phi i32 [ 0, %for.end.thread.i.i ], [ %line.1.i.i, %for.end.i86.i.if.else41.i.i_crit_edge ]
  %linemask.sroa.0.0.lcssa145.i.i = phi i32 [ 0, %for.end.thread.i.i ], [ %linemask.sroa.0.2.i.i, %for.end.i86.i.if.else41.i.i_crit_edge ]
  %linemask.sroa.8.0.lcssa144.i.i = phi i32 [ 0, %for.end.thread.i.i ], [ %linemask.sroa.8.2.i.i, %for.end.i86.i.if.else41.i.i_crit_edge ]
  %add.ptr46.i.i = getelementptr i8, ptr %90, i32 36
  %102 = zext i32 %linemask.sroa.0.0.lcssa145.i.i to i64
  %103 = zext i32 %linemask.sroa.8.0.lcssa144.i.i to i64
  %104 = shl nuw i64 %103, 32
  %105 = or i64 %104, %102
  %106 = call i64 @llvm.bswap.i64(i64 %105) #4
  %107 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 %106, ptr %add.ptr46.i.i, align 1
  %108 = mul i32 %line.0.lcssa146.i.i, 43
  %109 = add i32 %108, 15
  %conv52.i.i = and i32 %109, 65532
  br label %copy_vbi_data.exit.i

copy_vbi_data.exit.i:                             ; preds = %if.else41.i.i, %if.then30.i.i
  %.sink.i88.i = phi i32 [ 1230263856, %if.then30.i.i ], [ 1769240112, %if.else41.i.i ]
  %size.0.i.i = phi i32 [ 1552, %if.then30.i.i ], [ %conv52.i.i, %if.else41.i.i ]
  %110 = getelementptr i8, ptr %90, i32 32
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %.sink.i88.i, ptr %110, align 1
  %add55.i.i = add nuw nsw i32 %size.0.i.i, 10
  %112 = lshr i32 %add55.i.i, 8
  %conv56.i.i = trunc i32 %112 to i8
  %arrayidx57.i.i = getelementptr i8, ptr %90, i32 20
  %113 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv56.i.i, ptr %arrayidx57.i.i, align 1
  %conv61.i.i = trunc i32 %add55.i.i to i8
  %arrayidx62.i.i = getelementptr i8, ptr %90, i32 21
  %114 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv61.i.i, ptr %arrayidx62.i.i, align 1
  %shr63.i.i = lshr i32 %cond.i, 29
  %115 = trunc i32 %shr63.i.i to i8
  %conv66.i.i = or i8 %115, 33
  %arrayidx67.i.i = getelementptr i8, ptr %90, i32 25
  %116 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv66.i.i, ptr %arrayidx67.i.i, align 1
  %shr68.i.i = lshr i32 %cond.i, 22
  %conv70.i.i = trunc i32 %shr68.i.i to i8
  %arrayidx71.i.i = getelementptr i8, ptr %90, i32 26
  %117 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv70.i.i, ptr %arrayidx71.i.i, align 1
  %shr72.i.i = lshr i32 %cond.i, 14
  %118 = trunc i32 %shr72.i.i to i8
  %conv75.i.i = or i8 %118, 1
  %arrayidx76.i.i = getelementptr i8, ptr %90, i32 27
  %119 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv75.i.i, ptr %arrayidx76.i.i, align 1
  %shr77.i.i = lshr i32 %cond.i, 7
  %conv79.i.i = trunc i32 %shr77.i.i to i8
  %arrayidx80.i.i = getelementptr i8, ptr %90, i32 28
  %120 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv79.i.i, ptr %arrayidx80.i.i, align 1
  %pts_stamp.tr.i.i = trunc i32 %cond.i to i8
  %121 = shl i8 %pts_stamp.tr.i.i, 1
  %conv84.i.i = or i8 %121, 1
  %arrayidx85.i.i = getelementptr i8, ptr %90, i32 29
  %122 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv84.i.i, ptr %arrayidx85.i.i, align 1
  %add87.i.i = add nuw nsw i32 %size.0.i.i, 32
  %arrayidx89.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 41, i32 8, i32 %rem.i.i
  %123 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add87.i.i, ptr %arrayidx89.i.i, align 4
  br label %_cx18_process_vbi_data.exit

_cx18_process_vbi_data.exit:                      ; preds = %copy_vbi_data.exit.i, %if.end18.i._cx18_process_vbi_data.exit_crit_edge, %compress_raw_buf.exit.i
  %124 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %frame.i.i, align 4
  %inc29.i = add i32 %125, 1
  store i32 %inc29.i, ptr %frame.i.i, align 4
  %126 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bytesused, align 4
  %sub.neg = sub i32 %127, %5
  %128 = ptrtoint ptr %bytesused7 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bytesused7, align 4
  %sub8 = add i32 %sub.neg, %129
  store i32 %sub8, ptr %bytesused7, align 4
  %130 = ptrtoint ptr %buf.024 to i32
  call void @__asan_load4_noabort(i32 %130)
  %buf.0 = load ptr, ptr %buf.024, align 4
  %cmp2.not = icmp eq ptr %buf.0, %buf_list
  br i1 %cmp2.not, label %_cx18_process_vbi_data.exit.cleanup_crit_edge, label %_cx18_process_vbi_data.exit.for.body_crit_edge

_cx18_process_vbi_data.exit.for.body_crit_edge:   ; preds = %_cx18_process_vbi_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

_cx18_process_vbi_data.exit.cleanup_crit_edge:    ; preds = %_cx18_process_vbi_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %_cx18_process_vbi_data.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_buf_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cx18_service2vbi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !{null, !1, !"raw_vbi_sav_rp", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-vbi.c", i32 22, i32 17}
!2 = distinct !{null, !3, !"sliced_vbi_eav_rp", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx18/cx18-vbi.c", i32 23, i32 17}
!4 = !{ptr @copy_vbi_data.mpeg_hdr_data, !5, !"mpeg_hdr_data", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx18/cx18-vbi.c", i32 31, i32 18}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-vbi.c", i32 72, i32 20}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx18/cx18-vbi.c", i32 76, i32 20}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
