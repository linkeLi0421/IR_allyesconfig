; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-cec.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.xfer_on_bus = type { ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.95, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.95 = type { ptr, ptr }
%struct.anon.96 = type { ptr, ptr }
%struct.anon.97 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.98, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.98 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.99 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.90 }
%union.anon.90 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.100, i32, i32 }
%union.anon.100 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.103 }
%union.anon.103 = type { [16 x i32] }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/test-drivers/vivid/vivid-cec.c\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vivid-%03d-vid-%s%d\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cap\00", [28 x i8] zeroinitializer }, align 32
@vivid_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @vivid_cec_adap_enable, ptr null, ptr null, ptr @vivid_cec_adap_log_addr, ptr @vivid_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr @vivid_received }, [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 116, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 321, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 322, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 322, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"vivid_cec_adap_ops\00", align 1
@___asan_gen_.17 = private constant [48 x i8] c"../drivers/media/test-drivers/vivid/vivid-cec.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 307, i32 34 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vivid_cec_adap_ops], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_cec_bus_thread(ptr noundef %_dev) local_unnamed_addr #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %first_msg = alloca %struct.cec_msg, align 8
  %xfers_on_bus = alloca [16 x %struct.xfer_on_bus], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_sft = getelementptr inbounds %struct.vivid_dev, ptr %_dev, i32 0, i32 359
  %0 = ptrtoint ptr %cec_sft to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %cec_sft, align 8
  %kthread_waitq_cec = getelementptr inbounds %struct.vivid_dev, ptr %_dev, i32 0, i32 356
  %cec_xfers_slock = getelementptr inbounds %struct.vivid_dev, ptr %_dev, i32 0, i32 358
  %msg = getelementptr inbounds %struct.cec_msg, ptr %first_msg, i32 0, i32 6
  %len46 = getelementptr inbounds %struct.cec_msg, ptr %first_msg, i32 0, i32 2
  %last_initiator = getelementptr inbounds %struct.vivid_dev, ptr %_dev, i32 0, i32 360
  %cec_rx_adap.i = getelementptr inbounds %struct.vivid_dev, ptr %_dev, i32 0, i32 352
  br label %for.cond

for.cond:                                         ; preds = %cleanup169, %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %first_msg) #7
  %1 = call ptr @memset(ptr %first_msg, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %xfers_on_bus) #7
  %2 = call ptr @memset(ptr %xfers_on_bus, i32 0, i32 128)
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 117) #7
  %call = call fastcc zeroext i1 @xfer_ready(ptr noundef %_dev)
  br i1 %call, label %for.cond.if.end15_crit_edge, label %lor.lhs.false

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

lor.lhs.false:                                    ; preds = %for.cond
  %call4 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call4, label %lor.lhs.false.if.end15_crit_edge, label %if.then

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call7292 = call i32 @prepare_to_wait_event(ptr noundef %kthread_waitq_cec, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %call8293 = call fastcc zeroext i1 @xfer_ready(ptr noundef %_dev)
  br i1 %call8293, label %if.then.for.end_crit_edge, label %if.then.lor.lhs.false9_crit_edge

if.then.lor.lhs.false9_crit_edge:                 ; preds = %if.then
  br label %lor.lhs.false9

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false9:                                   ; preds = %cleanup.lor.lhs.false9_crit_edge, %if.then.lor.lhs.false9_crit_edge
  %call7294 = phi i32 [ %call7, %cleanup.lor.lhs.false9_crit_edge ], [ %call7292, %if.then.lor.lhs.false9_crit_edge ]
  %call10 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call10, label %lor.lhs.false9.for.end_crit_edge, label %if.end

lor.lhs.false9.for.end_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7294)
  %tobool.not = icmp eq i32 %call7294, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #7
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %kthread_waitq_cec, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %call8 = call fastcc zeroext i1 @xfer_ready(ptr noundef %_dev)
  br i1 %call8, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false9_crit_edge

cleanup.lor.lhs.false9_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false9

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false9.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %kthread_waitq_cec, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end15

if.end15:                                         ; preds = %__out, %lor.lhs.false.if.end15_crit_edge, %for.cond.if.end15_crit_edge
  %call17 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call17, label %if.end15.for.end179_crit_edge, label %if.end19

if.end15.for.end179_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end179

if.end19:                                         ; preds = %if.end15
  %4 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cec_sft, align 8
  store i32 0, ptr %cec_sft, align 8
  call void @_raw_spin_lock(ptr noundef %cec_xfers_slock) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %i.0299 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  %first_idx.0298 = phi i32 [ 0, %if.end19 ], [ %first_idx.2, %for.inc.for.body_crit_edge ]
  %wait_arb_lost_us.0297 = phi i32 [ 0, %if.end19 ], [ %wait_arb_lost_us.2, %for.inc.for.body_crit_edge ]
  %first.0.off0296 = phi i1 [ true, %if.end19 ], [ %first.2.off0, %for.inc.for.body_crit_edge ]
  %sft = getelementptr %struct.vivid_dev, ptr %_dev, i32 0, i32 357, i32 %i.0299, i32 3
  %6 = ptrtoint ptr %sft to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool23.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp28 = icmp ugt i32 %7, %5
  %or.cond = select i1 %tobool23.not, i1 true, i1 %cmp28
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end30:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.vivid_dev, ptr %_dev, i32 0, i32 357, i32 %i.0299
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  br i1 %first.0.off0296, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %msg39 = getelementptr %struct.vivid_dev, ptr %_dev, i32 0, i32 357, i32 %i.0299, i32 1
  %len = getelementptr %struct.vivid_dev, ptr %_dev, i32 0, i32 357, i32 %i.0299, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = call ptr @memcpy(ptr %msg, ptr %msg39, i32 %11)
  %13 = ptrtoint ptr %len46 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %len46, align 8
  br label %if.end53

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr [16 x %struct.xfer_on_bus], ptr %xfers_on_bus, i32 0, i32 %i.0299, i32 1
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %status, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then32
  %wait_arb_lost_us.1 = phi i32 [ %wait_arb_lost_us.0297, %if.then32 ], [ 14100, %if.else ]
  %first_idx.1 = phi i32 [ %i.0299, %if.then32 ], [ %first_idx.0298, %if.else ]
  %15 = getelementptr [16 x %struct.xfer_on_bus], ptr %xfers_on_bus, i32 0, i32 %i.0299
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %15, align 4
  %17 = ptrtoint ptr %sft to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sft, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end53, %for.body.for.inc_crit_edge
  %first.2.off0 = phi i1 [ false, %if.end53 ], [ %first.0.off0296, %for.body.for.inc_crit_edge ]
  %wait_arb_lost_us.2 = phi i32 [ %wait_arb_lost_us.1, %if.end53 ], [ %wait_arb_lost_us.0297, %for.body.for.inc_crit_edge ]
  %first_idx.2 = phi i32 [ %first_idx.1, %if.end53 ], [ %first_idx.0298, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0299, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end57, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end57:                                        ; preds = %for.inc
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msg, align 8
  %20 = lshr i8 %19, 4
  %21 = ptrtoint ptr %last_initiator to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %last_initiator, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end57
  %i.027.i = phi i32 [ 0, %for.end57 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %sft.i = getelementptr %struct.vivid_dev, ptr %_dev, i32 0, i32 357, i32 %i.027.i, i32 3
  %22 = ptrtoint ptr %sft.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sft.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp1.i = icmp ult i32 %23, 4
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %msg.i = getelementptr %struct.vivid_dev, ptr %_dev, i32 0, i32 357, i32 %i.027.i, i32 1
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %msg.i, align 4
  %26 = lshr i8 %25, 4
  %27 = ptrtoint ptr %last_initiator to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %last_initiator, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp8.i = icmp eq i8 %26, %28
  %..i = select i1 %cmp8.i, i32 7, i32 5
  %29 = ptrtoint ptr %sft.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %..i, ptr %sft.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %adjust_sfts.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

adjust_sfts.exit:                                 ; preds = %for.inc.i
  call void @_raw_spin_unlock(ptr noundef %cec_xfers_slock) #7
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %msg, align 8
  %32 = and i8 %31, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %32)
  %cmp.i = icmp eq i8 %32, 15
  br i1 %cmp.i, label %adjust_sfts.exit.if.then72_crit_edge, label %if.end.i272

adjust_sfts.exit.if.then72_crit_edge:             ; preds = %adjust_sfts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then72

if.end.i272:                                      ; preds = %adjust_sfts.exit
  %arrayidx65 = getelementptr [16 x %struct.xfer_on_bus], ptr %xfers_on_bus, i32 0, i32 %first_idx.2
  %33 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx65, align 4
  %35 = ptrtoint ptr %cec_rx_adap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cec_rx_adap.i, align 8
  %cmp2.not.i = icmp eq ptr %36, %34
  %tobool.not.i = icmp eq ptr %36, null
  %or.cond.i = or i1 %cmp2.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i272.if.end13.i_crit_edge, label %land.lhs.true5.i

if.end.i272.if.end13.i_crit_edge:                 ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

land.lhs.true5.i:                                 ; preds = %if.end.i272
  %is_configured.i = getelementptr inbounds %struct.cec_adapter, ptr %36, i32 0, i32 21
  %37 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_configured.i, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool7.not.i = icmp eq i8 %38, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.if.end13.i_crit_edge, label %land.lhs.true9.i

land.lhs.true5.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true5.i
  %log_addr_mask.i.i = getelementptr inbounds %struct.cec_adapter, ptr %36, i32 0, i32 31, i32 1
  %39 = ptrtoint ptr %log_addr_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %log_addr_mask.i.i, align 4
  %conv.i.i = zext i16 %40 to i32
  %conv1.i.i = zext i8 %32 to i32
  %shl.i.i = shl nuw nsw i32 1, %conv1.i.i
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true9.i.if.end13.i_crit_edge, label %land.lhs.true9.i.if.then72_crit_edge

land.lhs.true9.i.if.then72_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then72

land.lhs.true9.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true9.i.if.end13.i_crit_edge, %land.lhs.true5.i.if.end13.i_crit_edge, %if.end.i272.if.end13.i_crit_edge
  %conv1.i52.i = zext i8 %32 to i32
  %shl.i53.i = shl nuw nsw i32 1, %conv1.i52.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i276.land.rhs.i_crit_edge, %if.end13.i
  %i.056.i = phi i32 [ 0, %if.end13.i ], [ %inc.i274, %for.inc.i276.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %_dev, i32 0, i32 353, i32 %i.056.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %tobool16.not.i = icmp eq ptr %42, null
  br i1 %tobool16.not.i, label %land.rhs.i.if.end76_crit_edge, label %for.body.i273

land.rhs.i.if.end76_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

for.body.i273:                                    ; preds = %land.rhs.i
  %cmp19.i = icmp eq ptr %42, %34
  br i1 %cmp19.i, label %for.body.i273.for.inc.i276_crit_edge, label %if.end22.i

for.body.i273.for.inc.i276_crit_edge:             ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i276

if.end22.i:                                       ; preds = %for.body.i273
  %is_configured25.i = getelementptr inbounds %struct.cec_adapter, ptr %42, i32 0, i32 21
  %43 = ptrtoint ptr %is_configured25.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_configured25.i, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool26.not.i = icmp eq i8 %44, 0
  br i1 %tobool26.not.i, label %if.end22.i.for.inc.i276_crit_edge, label %if.end28.i

if.end22.i.for.inc.i276_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i276

if.end28.i:                                       ; preds = %if.end22.i
  %log_addr_mask.i50.i = getelementptr inbounds %struct.cec_adapter, ptr %42, i32 0, i32 31, i32 1
  %45 = ptrtoint ptr %log_addr_mask.i50.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %log_addr_mask.i50.i, align 4
  %conv.i51.i = zext i16 %46 to i32
  %and.i54.i = and i32 %shl.i53.i, %conv.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool.i55.not.i = icmp eq i32 %and.i54.i, 0
  br i1 %tobool.i55.not.i, label %if.end28.i.for.inc.i276_crit_edge, label %if.end28.i.if.then72_crit_edge

if.end28.i.if.then72_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then72

if.end28.i.for.inc.i276_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i276

for.inc.i276:                                     ; preds = %if.end28.i.for.inc.i276_crit_edge, %if.end22.i.for.inc.i276_crit_edge, %for.body.i273.for.inc.i276_crit_edge
  %inc.i274 = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i275 = icmp eq i32 %inc.i274, 16
  br i1 %exitcond.not.i275, label %for.inc.i276.if.end76_crit_edge, label %for.inc.i276.land.rhs.i_crit_edge

for.inc.i276.land.rhs.i_crit_edge:                ; preds = %for.inc.i276
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.inc.i276.if.end76_crit_edge:                  ; preds = %for.inc.i276
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then72:                                        ; preds = %if.end28.i.if.then72_crit_edge, %land.lhs.true9.i.if.then72_crit_edge, %adjust_sfts.exit.if.then72_crit_edge
  %47 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len46, align 8
  %mul74 = mul i32 %48, 24000
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %for.inc.i276.if.end76_crit_edge, %land.rhs.i.if.end76_crit_edge
  %valid_dest.0.in287 = phi i1 [ true, %if.then72 ], [ false, %for.inc.i276.if.end76_crit_edge ], [ false, %land.rhs.i.if.end76_crit_edge ]
  %wait_xfer_us.0 = phi i32 [ %mul74, %if.then72 ], [ 24000, %for.inc.i276.if.end76_crit_edge ], [ 24000, %land.rhs.i.if.end76_crit_edge ]
  %first_status.0 = phi i8 [ 1, %if.then72 ], [ 4, %for.inc.i276.if.end76_crit_edge ], [ 4, %land.rhs.i.if.end76_crit_edge ]
  %add = add i32 %wait_xfer_us.0, 4500
  %arrayidx78 = getelementptr [16 x %struct.xfer_on_bus], ptr %xfers_on_bus, i32 0, i32 %first_idx.2
  %status79 = getelementptr [16 x %struct.xfer_on_bus], ptr %xfers_on_bus, i32 0, i32 %first_idx.2, i32 1
  %49 = ptrtoint ptr %status79 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %first_status.0, ptr %status79, align 4
  %call80 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_arb_lost_us.2)
  %tobool81.not = icmp eq i32 %wait_arb_lost_us.2, 0
  br i1 %tobool81.not, label %if.end76.if.end102_crit_edge, label %if.then82

if.end76.if.end102_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then82:                                        ; preds = %if.end76
  %sub = add i32 %wait_arb_lost_us.2, -350
  call void @usleep_range_state(i32 noundef %sub, i32 noundef %wait_arb_lost_us.2, i32 noundef 2) #7
  br label %for.body86

for.body86:                                       ; preds = %for.inc96.for.body86_crit_edge, %if.then82
  %i.1302 = phi i32 [ 0, %if.then82 ], [ %inc97, %for.inc96.for.body86_crit_edge ]
  %status88 = getelementptr [16 x %struct.xfer_on_bus], ptr %xfers_on_bus, i32 0, i32 %i.1302, i32 1
  %50 = ptrtoint ptr %status88 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %status88, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp90.not = icmp eq i8 %51, 2
  br i1 %cmp90.not, label %if.end93, label %for.body86.for.inc96_crit_edge

for.body86.for.inc96_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc96

if.end93:                                         ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx87 = getelementptr [16 x %struct.xfer_on_bus], ptr %xfers_on_bus, i32 0, i32 %i.1302
  %52 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx87, align 4
  %call.i = call i64 @ktime_get() #7
  call void @cec_transmit_attempt_done_ts(ptr noundef %53, i8 noundef zeroext 2, i64 noundef %call.i) #7
  br label %for.inc96

for.inc96:                                        ; preds = %if.end93, %for.body86.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %i.1302, 1
  %exitcond305.not = icmp eq i32 %inc97, 16
  br i1 %exitcond305.not, label %for.end98, label %for.inc96.for.body86_crit_edge

for.inc96.for.body86_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86

for.end98:                                        ; preds = %for.inc96
  %call99 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call99, label %for.end98.for.end179_crit_edge, label %for.end98.if.end102_crit_edge

for.end98.if.end102_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

for.end98.for.end179_crit_edge:                   ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end179

if.end102:                                        ; preds = %for.end98.if.end102_crit_edge, %if.end76.if.end102_crit_edge
  %sub103 = sub i32 %add, %wait_arb_lost_us.2
  %sub104 = add i32 %sub103, -350
  call void @usleep_range_state(i32 noundef %sub104, i32 noundef %sub103, i32 noundef 2) #7
  %54 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx78, align 4
  %call.i277 = call i64 @ktime_get() #7
  call void @cec_transmit_attempt_done_ts(ptr noundef %55, i8 noundef zeroext %first_status.0, i64 noundef %call.i277) #7
  %call108 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call108, label %if.end102.for.end179_crit_edge, label %if.end110

if.end102.for.end179_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end179

if.end110:                                        ; preds = %if.end102
  br i1 %valid_dest.0.in287, label %if.then113, label %if.end110.if.end140_crit_edge

if.end110.if.end140_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.then113:                                       ; preds = %if.end110
  %56 = ptrtoint ptr %cec_rx_adap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cec_rx_adap.i, align 8
  %cmp116.not = icmp eq ptr %55, %57
  br i1 %cmp116.not, label %if.then113.land.rhs.preheader_crit_edge, label %if.then118

if.then113.land.rhs.preheader_crit_edge:          ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.preheader

if.then118:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  %call.i278 = call i64 @ktime_get() #7
  call void @cec_received_msg_ts(ptr noundef %57, ptr noundef nonnull %first_msg, i64 noundef %call.i278) #7
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.then118, %if.then113.land.rhs.preheader_crit_edge
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc137.land.rhs_crit_edge, %land.rhs.preheader
  %i.2304 = phi i32 [ %inc138, %for.inc137.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %arrayidx124 = getelementptr %struct.vivid_dev, ptr %_dev, i32 0, i32 353, i32 %i.2304
  %58 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx124, align 4
  %tobool125.not = icmp eq ptr %59, null
  br i1 %tobool125.not, label %land.rhs.if.end140_crit_edge, label %for.body126

land.rhs.if.end140_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

for.body126:                                      ; preds = %land.rhs
  %cmp131.not = icmp eq ptr %55, %59
  br i1 %cmp131.not, label %for.body126.for.inc137_crit_edge, label %if.then133

for.body126.for.inc137_crit_edge:                 ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc137

if.then133:                                       ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #9
  %call.i279 = call i64 @ktime_get() #7
  call void @cec_received_msg_ts(ptr noundef nonnull %59, ptr noundef nonnull %first_msg, i64 noundef %call.i279) #7
  br label %for.inc137

for.inc137:                                       ; preds = %if.then133, %for.body126.for.inc137_crit_edge
  %inc138 = add nuw nsw i32 %i.2304, 1
  %exitcond306.not = icmp eq i32 %inc138, 16
  br i1 %exitcond306.not, label %for.inc137.if.end140_crit_edge, label %for.inc137.land.rhs_crit_edge

for.inc137.land.rhs_crit_edge:                    ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc137.if.end140_crit_edge:                   ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.end140:                                        ; preds = %for.inc137.if.end140_crit_edge, %land.rhs.if.end140_crit_edge, %if.end110.if.end140_crit_edge
  %call141 = call i64 @ktime_get() #7
  %sub142 = sub i64 %call141, %call80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #7
  %60 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %remainder.i, align 4, !annotation !20
  %call.i280 = call i64 @div_s64_rem(i64 noundef %sub142, i32 noundef 1000, ptr noundef nonnull %remainder.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #7
  %conv145 = sext i32 %add to i64
  %sub146.neg = sub i64 %conv145, %call.i280
  %sub147 = add i64 %sub146.neg, 7200
  call void @__sanitizer_cov_trace_const_cmp8(i64 350, i64 %sub147)
  %cmp148 = icmp sgt i64 %sub147, 350
  br i1 %cmp148, label %if.then150, label %if.end140.if.end154_crit_edge

if.end140.if.end154_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then150:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  %61 = trunc i64 %sub146.neg to i32
  %conv152 = add i32 %61, 6850
  %conv153 = trunc i64 %sub147 to i32
  call void @usleep_range_state(i32 noundef %conv152, i32 noundef %conv153, i32 noundef 2) #7
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %if.end140.if.end154_crit_edge
  %62 = ptrtoint ptr %cec_sft to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %cec_sft, align 8
  br label %land.lhs.true162

land.lhs.true162:                                 ; preds = %while.body.land.lhs.true162_crit_edge, %if.end154
  %call163 = call fastcc zeroext i1 @xfer_ready(ptr noundef %_dev)
  br i1 %call163, label %land.lhs.true162.cleanup169_crit_edge, label %land.rhs164

land.lhs.true162.cleanup169_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup169

land.rhs164:                                      ; preds = %land.lhs.true162
  %call165 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call165, label %land.rhs164.cleanup169_crit_edge, label %while.body

land.rhs164.cleanup169_crit_edge:                 ; preds = %land.rhs164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup169

while.body:                                       ; preds = %land.rhs164
  call void @usleep_range_state(i32 noundef 4450, i32 noundef 4800, i32 noundef 2) #7
  %63 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cec_sft, align 8
  %add168 = add i32 %64, 2
  store i32 %add168, ptr %cec_sft, align 8
  %65 = add i32 %64, -1
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %while.body.land.lhs.true162_crit_edge, label %while.body.cleanup169_crit_edge

while.body.cleanup169_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup169

while.body.land.lhs.true162_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true162

cleanup169:                                       ; preds = %while.body.cleanup169_crit_edge, %land.rhs164.cleanup169_crit_edge, %land.lhs.true162.cleanup169_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %xfers_on_bus) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %first_msg) #7
  br label %for.cond

for.end179:                                       ; preds = %if.end102.for.end179_crit_edge, %for.end98.for.end179_crit_edge, %if.end15.for.end179_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %xfers_on_bus) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %first_msg) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xfer_ready(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_xfers_slock = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 358
  tail call void @_raw_spin_lock(ptr noundef %cec_xfers_slock) #7
  %cec_sft = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 359
  %sft = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 0, i32 3
  %0 = ptrtoint ptr %sft to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4.not = icmp ugt i32 %1, %3
  br i1 %cmp4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %sft.1 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 1, i32 3
  %4 = ptrtoint ptr %sft.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sft.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %6 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4.not.1 = icmp ugt i32 %5, %7
  br i1 %cmp4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.for.end_crit_edge

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %sft.2 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 2, i32 3
  %8 = ptrtoint ptr %sft.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sft.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.2 = icmp eq i32 %9, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %10 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.not.2 = icmp ugt i32 %9, %11
  br i1 %cmp4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.for.end_crit_edge

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %sft.3 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 3, i32 3
  %12 = ptrtoint ptr %sft.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sft.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.3 = icmp eq i32 %13, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %14 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.not.3 = icmp ugt i32 %13, %15
  br i1 %cmp4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.for.end_crit_edge

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %sft.4 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 4, i32 3
  %16 = ptrtoint ptr %sft.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sft.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.4 = icmp eq i32 %17, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %18 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp4.not.4 = icmp ugt i32 %17, %19
  br i1 %cmp4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.for.end_crit_edge

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %sft.5 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 5, i32 3
  %20 = ptrtoint ptr %sft.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sft.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.5 = icmp eq i32 %21, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %22 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp4.not.5 = icmp ugt i32 %21, %23
  br i1 %cmp4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true.5.for.end_crit_edge

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %sft.6 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 6, i32 3
  %24 = ptrtoint ptr %sft.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sft.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.6 = icmp eq i32 %25, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %26 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp4.not.6 = icmp ugt i32 %25, %27
  br i1 %cmp4.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.for.end_crit_edge

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %sft.7 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 7, i32 3
  %28 = ptrtoint ptr %sft.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sft.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.7 = icmp eq i32 %29, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %30 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp4.not.7 = icmp ugt i32 %29, %31
  br i1 %cmp4.not.7, label %land.lhs.true.7.for.inc.7_crit_edge, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %sft.8 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 8, i32 3
  %32 = ptrtoint ptr %sft.8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sft.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.8 = icmp eq i32 %33, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %land.lhs.true.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %34 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp4.not.8 = icmp ugt i32 %33, %35
  br i1 %cmp4.not.8, label %land.lhs.true.8.for.inc.8_crit_edge, label %land.lhs.true.8.for.end_crit_edge

land.lhs.true.8.for.end_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8

for.inc.8:                                        ; preds = %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %sft.9 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 9, i32 3
  %36 = ptrtoint ptr %sft.9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sft.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.9 = icmp eq i32 %37, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %land.lhs.true.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  %38 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp4.not.9 = icmp ugt i32 %37, %39
  br i1 %cmp4.not.9, label %land.lhs.true.9.for.inc.9_crit_edge, label %land.lhs.true.9.for.end_crit_edge

land.lhs.true.9.for.end_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.9.for.inc.9_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9

for.inc.9:                                        ; preds = %land.lhs.true.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %sft.10 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 10, i32 3
  %40 = ptrtoint ptr %sft.10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sft.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.10 = icmp eq i32 %41, 0
  br i1 %tobool.not.10, label %for.inc.9.for.inc.10_crit_edge, label %land.lhs.true.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.10

land.lhs.true.10:                                 ; preds = %for.inc.9
  %42 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp4.not.10 = icmp ugt i32 %41, %43
  br i1 %cmp4.not.10, label %land.lhs.true.10.for.inc.10_crit_edge, label %land.lhs.true.10.for.end_crit_edge

land.lhs.true.10.for.end_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.10.for.inc.10_crit_edge:            ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.10

for.inc.10:                                       ; preds = %land.lhs.true.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %sft.11 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 11, i32 3
  %44 = ptrtoint ptr %sft.11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sft.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.11 = icmp eq i32 %45, 0
  br i1 %tobool.not.11, label %for.inc.10.for.inc.11_crit_edge, label %land.lhs.true.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.11

land.lhs.true.11:                                 ; preds = %for.inc.10
  %46 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp4.not.11 = icmp ugt i32 %45, %47
  br i1 %cmp4.not.11, label %land.lhs.true.11.for.inc.11_crit_edge, label %land.lhs.true.11.for.end_crit_edge

land.lhs.true.11.for.end_crit_edge:               ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.11.for.inc.11_crit_edge:            ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.11

for.inc.11:                                       ; preds = %land.lhs.true.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %sft.12 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 12, i32 3
  %48 = ptrtoint ptr %sft.12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sft.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.12 = icmp eq i32 %49, 0
  br i1 %tobool.not.12, label %for.inc.11.for.inc.12_crit_edge, label %land.lhs.true.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.12

land.lhs.true.12:                                 ; preds = %for.inc.11
  %50 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp4.not.12 = icmp ugt i32 %49, %51
  br i1 %cmp4.not.12, label %land.lhs.true.12.for.inc.12_crit_edge, label %land.lhs.true.12.for.end_crit_edge

land.lhs.true.12.for.end_crit_edge:               ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.12.for.inc.12_crit_edge:            ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.12

for.inc.12:                                       ; preds = %land.lhs.true.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %sft.13 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 13, i32 3
  %52 = ptrtoint ptr %sft.13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sft.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.13 = icmp eq i32 %53, 0
  br i1 %tobool.not.13, label %for.inc.12.for.inc.13_crit_edge, label %land.lhs.true.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.13

land.lhs.true.13:                                 ; preds = %for.inc.12
  %54 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp4.not.13 = icmp ugt i32 %53, %55
  br i1 %cmp4.not.13, label %land.lhs.true.13.for.inc.13_crit_edge, label %land.lhs.true.13.for.end_crit_edge

land.lhs.true.13.for.end_crit_edge:               ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.13.for.inc.13_crit_edge:            ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.13

for.inc.13:                                       ; preds = %land.lhs.true.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  %sft.14 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 14, i32 3
  %56 = ptrtoint ptr %sft.14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sft.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.14 = icmp eq i32 %57, 0
  br i1 %tobool.not.14, label %for.inc.13.for.inc.14_crit_edge, label %land.lhs.true.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.14

land.lhs.true.14:                                 ; preds = %for.inc.13
  %58 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp4.not.14 = icmp ugt i32 %57, %59
  br i1 %cmp4.not.14, label %land.lhs.true.14.for.inc.14_crit_edge, label %land.lhs.true.14.for.end_crit_edge

land.lhs.true.14.for.end_crit_edge:               ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.14.for.inc.14_crit_edge:            ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.14

for.inc.14:                                       ; preds = %land.lhs.true.14.for.inc.14_crit_edge, %for.inc.13.for.inc.14_crit_edge
  %sft.15 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 357, i32 15, i32 3
  %60 = ptrtoint ptr %sft.15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sft.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.15 = icmp eq i32 %61, 0
  br i1 %tobool.not.15, label %for.inc.14.for.inc.15_crit_edge, label %land.lhs.true.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.15

land.lhs.true.15:                                 ; preds = %for.inc.14
  %62 = ptrtoint ptr %cec_sft to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cec_sft, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp4.not.15 = icmp ugt i32 %61, %63
  br i1 %cmp4.not.15, label %land.lhs.true.15.for.inc.15_crit_edge, label %land.lhs.true.15.for.end_crit_edge

land.lhs.true.15.for.end_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.15.for.inc.15_crit_edge:            ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.15

for.inc.15:                                       ; preds = %land.lhs.true.15.for.inc.15_crit_edge, %for.inc.14.for.inc.15_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.15, %land.lhs.true.15.for.end_crit_edge, %land.lhs.true.14.for.end_crit_edge, %land.lhs.true.13.for.end_crit_edge, %land.lhs.true.12.for.end_crit_edge, %land.lhs.true.11.for.end_crit_edge, %land.lhs.true.10.for.end_crit_edge, %land.lhs.true.9.for.end_crit_edge, %land.lhs.true.8.for.end_crit_edge, %land.lhs.true.7.for.end_crit_edge, %land.lhs.true.6.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %cmp.lcssa = phi i1 [ true, %land.lhs.true.for.end_crit_edge ], [ true, %land.lhs.true.1.for.end_crit_edge ], [ true, %land.lhs.true.2.for.end_crit_edge ], [ true, %land.lhs.true.3.for.end_crit_edge ], [ true, %land.lhs.true.4.for.end_crit_edge ], [ true, %land.lhs.true.5.for.end_crit_edge ], [ true, %land.lhs.true.6.for.end_crit_edge ], [ true, %land.lhs.true.7.for.end_crit_edge ], [ true, %land.lhs.true.8.for.end_crit_edge ], [ true, %land.lhs.true.9.for.end_crit_edge ], [ true, %land.lhs.true.10.for.end_crit_edge ], [ true, %land.lhs.true.11.for.end_crit_edge ], [ true, %land.lhs.true.12.for.end_crit_edge ], [ true, %land.lhs.true.13.for.end_crit_edge ], [ true, %land.lhs.true.14.for.end_crit_edge ], [ true, %land.lhs.true.15.for.end_crit_edge ], [ false, %for.inc.15 ]
  tail call void @_raw_spin_unlock(ptr noundef %cec_xfers_slock) #7
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vivid_cec_alloc_adap(ptr noundef %dev, i32 noundef %idx, i1 noundef zeroext %is_source) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev, align 8
  %cond = select i1 %is_source, ptr @.str.2, ptr @.str.3
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %2, ptr noundef nonnull %cond, i32 noundef %idx)
  %call2 = call ptr @cec_allocate_adapter(ptr noundef nonnull @vivid_cec_adap_ops, ptr noundef %dev, ptr noundef nonnull %name, i32 noundef 190, i8 noundef zeroext 4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  ret ptr %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vivid_cec_adap_enable(ptr nocapture noundef writeonly %adap, i1 noundef zeroext %enable) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_pin_is_high = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 22
  %0 = ptrtoint ptr %cec_pin_is_high to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %cec_pin_is_high, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vivid_cec_adap_log_addr(ptr nocapture noundef readnone %adap, i8 noundef zeroext %log_addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_cec_adap_transmit(ptr noundef %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %msg1.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg1.i, align 8
  %4 = lshr i8 %3, 4
  %cec_xfers_slock = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 358
  tail call void @_raw_spin_lock(ptr noundef %cec_xfers_slock) #7
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 357, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %adap, ptr %arrayidx, align 4
  %msg6 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 357, i32 %idxprom, i32 1
  %6 = call ptr @memcpy(ptr %msg6, ptr %msg1.i, i32 16)
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 8
  %len12 = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 357, i32 %idxprom, i32 2
  %9 = ptrtoint ptr %len12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %len12, align 4
  %sft = getelementptr %struct.vivid_dev, ptr %1, i32 0, i32 357, i32 %idxprom, i32 3
  %10 = ptrtoint ptr %sft to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %sft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %signal_free_time)
  %cmp = icmp ugt i32 %signal_free_time, 3
  br i1 %cmp, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %last_initiator = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 360
  %11 = ptrtoint ptr %last_initiator to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %last_initiator, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %12)
  %cmp17 = icmp eq i8 %4, %12
  %. = select i1 %cmp17, i32 7, i32 5
  %13 = ptrtoint ptr %sft to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %., ptr %sft, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then, %entry.if.end28_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cec_xfers_slock) #7
  %kthread_waitq_cec = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 356
  tail call void @__wake_up(ptr noundef %kthread_waitq_cec, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_received(ptr noundef %adap, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  %reply = alloca %struct.cec_msg, align 8
  %osd = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reply) #7
  %msg1.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg1.i, align 8
  %4 = and i8 %3, 15
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %osd) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp.i.not = icmp eq i8 %4, 15
  %5 = call ptr @memset(ptr %osd, i32 255, i32 14)
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %log_addrs = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 31
  %6 = ptrtoint ptr %log_addrs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %log_addrs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dest.0 = phi i8 [ %7, %if.then ], [ %4, %entry.if.end_crit_edge ]
  %8 = call ptr @memset(ptr %reply, i32 0, i32 56)
  %or.i = tail call i8 @llvm.fshl.i8(i8 %dest.0, i8 %3, i8 4)
  %msg3.i = getelementptr inbounds %struct.cec_msg, ptr %reply, i32 0, i32 6
  %9 = ptrtoint ptr %msg3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or.i, ptr %msg3.i, align 8
  %len.i = getelementptr inbounds %struct.cec_msg, ptr %reply, i32 0, i32 2
  %len.i47 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len.i47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i48 = icmp ugt i32 %11, 1
  br i1 %cmp.i48, label %cec_msg_opcode.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cec_msg_opcode.exit:                              ; preds = %if.end
  %arrayidx.i = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %13)
  %cond = icmp eq i8 %13, 100
  br i1 %cond, label %sw.bb, label %cec_msg_opcode.exit.cleanup_crit_edge

cec_msg_opcode.exit.cleanup_crit_edge:            ; preds = %cec_msg_opcode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %cec_msg_opcode.exit
  %phys_addr.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 18
  %14 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phys_addr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i49 = icmp eq i16 %15, 0
  br i1 %cmp.i49, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %11, i32 3) #7
  %arrayidx.i50 = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i50, align 2
  %19 = tail call i32 @llvm.umin.i32(i32 %16, i32 13) #7
  %add.ptr.i = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 3
  %20 = call ptr @memcpy(ptr %osd, ptr %add.ptr.i, i32 %19)
  %arrayidx6.i = getelementptr i8, ptr %osd, i32 %19
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx6.i, align 1
  %22 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %cec_msg_opcode.exit57 [
    i8 0, label %sw.bb8
    i8 64, label %sw.bb13
    i8 -128, label %sw.bb19
  ]

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %osd9 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 361
  %call12 = call i32 @strscpy(ptr noundef %osd9, ptr noundef nonnull %osd, i32 noundef 14) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %osd_jiffies = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 362
  %24 = ptrtoint ptr %osd_jiffies to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %osd_jiffies, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %osd14 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 361
  %call17 = call i32 @strscpy(ptr noundef %osd14, ptr noundef nonnull %osd, i32 noundef 14) #7
  %osd_jiffies18 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 362
  %25 = ptrtoint ptr %osd_jiffies18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %osd_jiffies18, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %osd20 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 361
  %26 = ptrtoint ptr %osd20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %osd20, align 1
  %osd_jiffies22 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 362
  %27 = ptrtoint ptr %osd_jiffies22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %osd_jiffies22, align 4
  br label %cleanup

cec_msg_opcode.exit57:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %len.i, align 8
  %arrayidx.i59 = getelementptr inbounds %struct.cec_msg, ptr %reply, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx.i59, align 1
  %arrayidx3.i = getelementptr inbounds %struct.cec_msg, ptr %reply, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %29, ptr %arrayidx3.i, align 2
  %arrayidx5.i = getelementptr inbounds %struct.cec_msg, ptr %reply, i32 0, i32 6, i32 3
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %arrayidx5.i, align 1
  %call25 = call i32 @cec_transmit_msg(ptr noundef %adap, ptr noundef nonnull %reply, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %cec_msg_opcode.exit57, %sw.bb19, %sw.bb13, %sw.bb8, %sw.bb.cleanup_crit_edge, %cec_msg_opcode.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -42, %sw.bb.cleanup_crit_edge ], [ -42, %cec_msg_opcode.exit.cleanup_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb13 ], [ 0, %sw.bb19 ], [ 0, %cec_msg_opcode.exit57 ], [ -42, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %osd) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reply) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_transmit_msg(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-cec.c", i32 116, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-cec.c", i32 321, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vivid/vivid-cec.c", i32 322, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vivid/vivid-cec.c", i32 322, i32 35}
!8 = !{ptr @vivid_cec_adap_ops, !9, !"vivid_cec_adap_ops", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-cec.c", i32 307, i32 34}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{!"auto-init"}
