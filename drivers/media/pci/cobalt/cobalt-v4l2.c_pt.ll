; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-v4l2.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cobalt = type { i32, ptr, %struct.v4l2_device, %struct.mutex, ptr, ptr, i8, i16, [16 x %struct.cobalt_stream], [5 x %struct.i2c_adapter], [5 x %struct.cobalt_i2c_data], i8, i8, ptr, %struct.work_struct, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i8, [512 x i8], ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.110 }
%union.anon.110 = type { [32 x i32] }
%struct.sg_dma_desc_info = type { ptr, i32, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cobalt_i2c_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.112, i16, i16, i16, [10 x i16] }
%union.anon.112 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.84 }
%union.anon.84 = type { i32, [28 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.93, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.93 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.107 }
%union.anon.107 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.m00389_cvi_regmap = type { i32, i32, i32, i32, i32, i32 }
%struct.m00233_video_measure_regmap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.m00473_freewheel_regmap = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.m00479_clk_loss_detector_regmap = type { i32, i32, i32, i32 }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.111 }
%union.anon.111 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.90, i32 }
%union.anon.90 = type { i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cobalt_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }

@cobalt_node_register.dv1080p60 = internal constant { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, [60 x i8] } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, [60 x i8] zeroinitializer }, align 32
@cobalt_node_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@cobalt_node_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&s->irqlock\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@cobalt_node_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: Setting up dummy video node %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cobalt_node_register\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/cobalt/cobalt-v4l2.c\00", [57 x i8] zeroinitializer }, align 32
@cobalt_node_register._entry_ptr = internal global ptr @cobalt_node_register._entry, section ".printk_index", align 4
@cobalt_empty_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr null, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@cobalt_out_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr @vb2_fop_write, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@cobalt_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cobalt_ioctl_empty_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cobalt_g_register, ptr @cobalt_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@cobalt_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cobalt_querycap, ptr @cobalt_enum_fmt_vid_cap, ptr null, ptr @cobalt_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @cobalt_g_fmt_vid_cap, ptr null, ptr @cobalt_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cobalt_s_fmt_vid_cap, ptr null, ptr @cobalt_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cobalt_try_fmt_vid_cap, ptr null, ptr @cobalt_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @cobalt_enum_input, ptr @cobalt_g_input, ptr @cobalt_s_input, ptr @cobalt_enum_output, ptr @cobalt_g_output, ptr @cobalt_s_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cobalt_g_pixelaspect, ptr @cobalt_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cobalt_g_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cobalt_log_status, ptr null, ptr @cobalt_g_register, ptr @cobalt_s_register, ptr null, ptr null, ptr null, ptr @cobalt_s_dv_timings, ptr @cobalt_g_dv_timings, ptr @cobalt_query_dv_timings, ptr @cobalt_enum_dv_timings, ptr @cobalt_dv_timings_cap, ptr @cobalt_g_edid, ptr @cobalt_s_edid, ptr @cobalt_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@cobalt_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @cobalt_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @cobalt_buf_init, ptr @cobalt_buf_prepare, ptr null, ptr @cobalt_buf_cleanup, ptr @cobalt_start_streaming, ptr @cobalt_stop_streaming, ptr @cobalt_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cobalt_node_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: couldn't register v4l2 device node %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cobalt_node_register._entry_ptr.9 = internal global ptr @cobalt_node_register._entry.7, section ".printk_index", align 4
@cobalt_node_register._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: registered node %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cobalt_node_register._entry_ptr.12 = internal global ptr @cobalt_node_register._entry.10, section ".printk_index", align 4
@cobalt_debug = external dso_local local_unnamed_addr global i32, align 4
@cobalt_enable_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: video_channel %d (%s, %s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cobalt_enable_input\00", [44 x i8] zeroinitializer }, align 32
@cobalt_enable_input._entry_ptr = internal global ptr @cobalt_enable_input._entry, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"generator\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"YUYV\00", [27 x i8] zeroinitializer }, align 32
@cobalt_cobaltc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: cobalt_cobaltc: adrs = %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cobalt_cobaltc\00", [17 x i8] zeroinitializer }, align 32
@cobalt_cobaltc._entry_ptr = internal global ptr @cobalt_cobaltc._entry, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cobalt\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCIe:%s\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HDMI-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Generator-%d\00", [19 x i8] zeroinitializer }, align 32
@cea1080p60 = internal constant { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, [60 x i8] } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, [60 x i8] zeroinitializer }, align 32
@cobalt_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s: %s\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cobalt_log_status\00", [46 x i8] zeroinitializer }, align 32
@cobalt_log_status._entry_ptr = internal global ptr @cobalt_log_status._entry, section ".printk_index", align 4
@cobalt_log_status._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.6, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: sysctrl: %08x, sysstat: %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@cobalt_log_status._entry_ptr.29 = internal global ptr @cobalt_log_status._entry.27, section ".printk_index", align 4
@cobalt_log_status._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.6, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: dma channel: %d, video channel: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@cobalt_log_status._entry_ptr.32 = internal global ptr @cobalt_log_status._entry.30, section ".printk_index", align 4
@cobalt_log_status._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.6, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: tx: status: %s%s\0A\00", [40 x i8] zeroinitializer }, align 32
@cobalt_log_status._entry_ptr.35 = internal global ptr @cobalt_log_status._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no_data \00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ready_buffer_full \00", [45 x i8] zeroinitializer }, align 32
@cobalt_log_status._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.6, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: tx: evcnt: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cobalt_log_status._entry_ptr.41 = internal global ptr @cobalt_log_status._entry.39, section ".printk_index", align 4
@cobalt_video_input_status_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: rx%d: cvi resolution: %dx%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cobalt_video_input_status_show\00", [33 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr = internal global ptr @cobalt_video_input_status_show._entry, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: rx%d: cvi control: %s%s%s\0A\00", [63 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.46 = internal global ptr @cobalt_video_input_status_show._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable \00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disable \00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSync- \00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSync+ \00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSync- \00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSync+ \00", [24 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.6, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: rx%d: cvi status: %s%s\0A\00", [34 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.55 = internal global ptr @cobalt_video_input_status_show._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lock \00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no-lock \00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"error \00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no-error \00", [22 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.43, ptr @.str.6, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: rx%d: Measurements: %s%s%s%s%s%s%s\0A\00", [54 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.62 = internal global ptr @cobalt_video_input_status_show._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabled \00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled \00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"irq-enabled \00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq-disabled \00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"update-on-hsync \00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hsync-timeout \00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init-done\00", [22 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.43, ptr @.str.6, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: rx%d: irq_status: 0x%02x irq_triggers: 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.72 = internal global ptr @cobalt_video_input_status_show._entry.70, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.43, ptr @.str.6, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: rx%d: vsync: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.75 = internal global ptr @cobalt_video_input_status_show._entry.73, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.43, ptr @.str.6, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: rx%d: vbp: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.78 = internal global ptr @cobalt_video_input_status_show._entry.76, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.43, ptr @.str.6, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: rx%d: vact: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.81 = internal global ptr @cobalt_video_input_status_show._entry.79, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.43, ptr @.str.6, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: rx%d: vfb: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.84 = internal global ptr @cobalt_video_input_status_show._entry.82, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.43, ptr @.str.6, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: rx%d: hsync: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.87 = internal global ptr @cobalt_video_input_status_show._entry.85, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.43, ptr @.str.6, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: rx%d: hbp: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.90 = internal global ptr @cobalt_video_input_status_show._entry.88, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.43, ptr @.str.6, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: rx%d: hact: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.93 = internal global ptr @cobalt_video_input_status_show._entry.91, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.43, ptr @.str.6, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: rx%d: hfb: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.96 = internal global ptr @cobalt_video_input_status_show._entry.94, section ".printk_index", align 4
@cobalt_video_input_status_show._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.43, ptr @.str.6, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: rx%d: Freewheeling: %s%s%s\0A\00", [62 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.99 = internal global ptr @cobalt_video_input_status_show._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"forced \00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"freewheeling \00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"video-passthrough \00", [45 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.43, ptr @.str.6, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: rx%d: Clock Loss Detection: %s%s\0A\00", [56 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.105 = internal global ptr @cobalt_video_input_status_show._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clock-missing \00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"found-clock \00", [19 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.43, ptr @.str.6, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: rx%d: Packer: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@cobalt_video_input_status_show._entry_ptr.110 = internal global ptr @cobalt_video_input_status_show._entry.108, section ".printk_index", align 4
@cobalt_buf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.6, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: data will not fit into plane (%lu < %u)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cobalt_buf_init\00", [16 x i8] zeroinitializer }, align 32
@cobalt_buf_init._entry_ptr = internal global ptr @cobalt_buf_init._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@cobalt_enable_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.6, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: pixelclock out of range\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cobalt_enable_output\00", [43 x i8] zeroinitializer }, align 32
@cobalt_enable_output._entry_ptr = internal global ptr @cobalt_enable_output._entry, section ".printk_index", align 4
@cobalt_dma_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.6, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\014aborted\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cobalt_dma_stop_streaming\00", [38 x i8] zeroinitializer }, align 32
@cobalt_dma_stop_streaming._entry_ptr = internal global ptr @cobalt_dma_stop_streaming._entry, section ".printk_index", align 4
@switch.table.cobalt_enum_fmt_vid_cap = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1448695129, i32 859981650, i32 877807426], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 859981650, i64 877807426, i64 1448695129]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 859981650, i64 877807426, i64 1448695129]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 877807426, i64 1448695129]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 859981650, i64 877807426]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 877807426, i64 1448695129]
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"dv1080p60\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1201, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1208, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1209, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1212, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1232, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"cobalt_empty_fops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1192, i32 42 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"cobalt_out_fops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1182, i32 42 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"cobalt_fops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1172, i32 42 }
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"cobalt_ioctl_empty_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1163, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"cobalt_ioctl_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1120, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"cobalt_qops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 423, i32 29 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1281, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1285, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 215, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 443, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 482, i32 24 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 485, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 955, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 958, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant [11 x i8] c"cea1080p60\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 30, i32 37 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 579, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 580, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 583, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 596, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 601, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 514, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 516, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 523, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 529, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 544, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 547, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 548, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 549, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 550, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 551, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 552, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 553, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 554, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 555, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 563, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 568, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 68, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1163, i32 7 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 157, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.460 = private constant [42 x i8] c"../drivers/media/pci/cobalt/cobalt-v4l2.c\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 382, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant [37 x i8] c"switch.table.cobalt_enum_fmt_vid_cap\00", align 1
@llvm.compiler.used = appending global [143 x ptr] [ptr @cobalt_buf_init._entry, ptr @cobalt_buf_init._entry_ptr, ptr @cobalt_cobaltc._entry, ptr @cobalt_cobaltc._entry_ptr, ptr @cobalt_dma_stop_streaming._entry, ptr @cobalt_dma_stop_streaming._entry_ptr, ptr @cobalt_enable_input._entry, ptr @cobalt_enable_input._entry_ptr, ptr @cobalt_enable_output._entry, ptr @cobalt_enable_output._entry_ptr, ptr @cobalt_log_status._entry, ptr @cobalt_log_status._entry.27, ptr @cobalt_log_status._entry.30, ptr @cobalt_log_status._entry.33, ptr @cobalt_log_status._entry.39, ptr @cobalt_log_status._entry_ptr, ptr @cobalt_log_status._entry_ptr.29, ptr @cobalt_log_status._entry_ptr.32, ptr @cobalt_log_status._entry_ptr.35, ptr @cobalt_log_status._entry_ptr.41, ptr @cobalt_node_register._entry, ptr @cobalt_node_register._entry.10, ptr @cobalt_node_register._entry.7, ptr @cobalt_node_register._entry_ptr, ptr @cobalt_node_register._entry_ptr.12, ptr @cobalt_node_register._entry_ptr.9, ptr @cobalt_video_input_status_show._entry, ptr @cobalt_video_input_status_show._entry.103, ptr @cobalt_video_input_status_show._entry.108, ptr @cobalt_video_input_status_show._entry.44, ptr @cobalt_video_input_status_show._entry.53, ptr @cobalt_video_input_status_show._entry.60, ptr @cobalt_video_input_status_show._entry.70, ptr @cobalt_video_input_status_show._entry.73, ptr @cobalt_video_input_status_show._entry.76, ptr @cobalt_video_input_status_show._entry.79, ptr @cobalt_video_input_status_show._entry.82, ptr @cobalt_video_input_status_show._entry.85, ptr @cobalt_video_input_status_show._entry.88, ptr @cobalt_video_input_status_show._entry.91, ptr @cobalt_video_input_status_show._entry.94, ptr @cobalt_video_input_status_show._entry.97, ptr @cobalt_video_input_status_show._entry_ptr, ptr @cobalt_video_input_status_show._entry_ptr.105, ptr @cobalt_video_input_status_show._entry_ptr.110, ptr @cobalt_video_input_status_show._entry_ptr.46, ptr @cobalt_video_input_status_show._entry_ptr.55, ptr @cobalt_video_input_status_show._entry_ptr.62, ptr @cobalt_video_input_status_show._entry_ptr.72, ptr @cobalt_video_input_status_show._entry_ptr.75, ptr @cobalt_video_input_status_show._entry_ptr.78, ptr @cobalt_video_input_status_show._entry_ptr.81, ptr @cobalt_video_input_status_show._entry_ptr.84, ptr @cobalt_video_input_status_show._entry_ptr.87, ptr @cobalt_video_input_status_show._entry_ptr.90, ptr @cobalt_video_input_status_show._entry_ptr.93, ptr @cobalt_video_input_status_show._entry_ptr.96, ptr @cobalt_video_input_status_show._entry_ptr.99, ptr @cobalt_node_register.dv1080p60, ptr @cobalt_node_register.__key, ptr @.str, ptr @cobalt_node_register.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cobalt_empty_fops, ptr @cobalt_out_fops, ptr @cobalt_fops, ptr @cobalt_ioctl_empty_ops, ptr @cobalt_ioctl_ops, ptr @cobalt_qops, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @cea1080p60, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @switch.table.cobalt_enum_fmt_vid_cap], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_node_register.dv1080p60 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_node_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_node_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_node_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_empty_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_out_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_ioctl_empty_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_node_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_node_register._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_enable_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_cobaltc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cea1080p60 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_log_status._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_log_status._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_log_status._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_log_status._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_video_input_status_show._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_buf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_enable_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cobalt_enum_fmt_vid_cap to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cobalt_nodes_register(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %streams.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 8
  %v4l2_dev.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2
  %name7.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %pci_dev.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %node.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013
  %q2.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1
  %lock.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 5
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @cobalt_node_register.__key) #11
  %irqlock.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @cobalt_node_register.__key.1, i16 noundef signext 3) #11
  %name.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 12
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %name7.i, i32 noundef %node.013) #11
  %width.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 10
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1920, ptr %width.i, align 4
  %is_audio.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 31
  %1 = ptrtoint ptr %is_audio.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_audio.i, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %cond.i = select i1 %tobool.not.i, i32 1080, i32 4
  %height.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 11
  %3 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond.i, ptr %height.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %bpp.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 12
  %4 = ptrtoint ptr %bpp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %bpp.i, align 4
  %pixfmt.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 14
  %5 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1497715271, ptr %pixfmt.i, align 4
  %colorspace.c257.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 16
  %6 = ptrtoint ptr %colorspace.c257.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %colorspace.c257.i, align 4
  %stride.c260.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 13
  %7 = ptrtoint ptr %stride.c260.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1920, ptr %stride.c260.i, align 8
  br label %if.end94.i

if.else.i:                                        ; preds = %for.body
  %is_output.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 30
  %8 = ptrtoint ptr %is_output.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_output.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not.i = icmp eq i8 %9, 0
  %.sink262.i = select i1 %tobool12.not.i, i32 2, i32 4
  %.sink261.i = select i1 %tobool12.not.i, i32 1448695129, i32 877807426
  %.sink.i = select i1 %tobool12.not.i, i32 3840, i32 7680
  %10 = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink262.i, ptr %10, align 4
  %12 = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 14
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink261.i, ptr %12, align 4
  %14 = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %14, align 4
  %16 = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %16, align 8
  %is_dummy.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 32
  %18 = ptrtoint ptr %is_dummy.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_dummy.i, align 2, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool25.not.i = icmp eq i8 %19, 0
  br i1 %tobool25.not.i, label %if.end34.thread.i, label %if.end34.i

if.end34.thread.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev36246.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 7
  %20 = ptrtoint ptr %v4l2_dev36246.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %v4l2_dev.i, ptr %v4l2_dev36246.i, align 4
  br label %if.else40.i

if.end34.i:                                       ; preds = %if.else.i
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name7.i, i32 noundef %node.013) #14
  %21 = ptrtoint ptr %is_dummy.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr.i = load i8, ptr %is_dummy.i, align 2
  %v4l2_dev36.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 7
  %22 = ptrtoint ptr %v4l2_dev36.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %v4l2_dev.i, ptr %v4l2_dev36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool38.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool38.not.i, label %if.end34.i.if.else40.i_crit_edge, label %if.end34.i.if.end45.i_crit_edge

if.end34.i.if.end45.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.end34.i.if.else40.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else40.i

if.else40.i:                                      ; preds = %if.end34.i.if.else40.i_crit_edge, %if.end34.thread.i
  %23 = ptrtoint ptr %is_output.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_output.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool42.not.i = icmp eq i8 %24, 0
  %cond43.i = select i1 %tobool42.not.i, ptr @cobalt_fops, ptr @cobalt_out_fops
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else40.i, %if.end34.i.if.end45.i_crit_edge
  %cond43.sink.i = phi ptr [ %cond43.i, %if.else40.i ], [ @cobalt_empty_fops, %if.end34.i.if.end45.i_crit_edge ]
  %fops44.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 3
  %25 = ptrtoint ptr %fops44.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cond43.sink.i, ptr %fops44.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 23
  %26 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %27 = ptrtoint ptr %is_output.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_output.i, align 8, !range !197
  %29 = zext i8 %28 to i32
  %vfl_dir.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 14
  %30 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %vfl_dir.i, align 4
  %lock50.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 26
  %31 = ptrtoint ptr %lock50.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %lock.i, ptr %lock50.i, align 8
  %sd.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 4
  %32 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd.i, align 4
  %tobool51.not.i = icmp eq ptr %33, null
  br i1 %tobool51.not.i, label %if.end55.thread.i, label %if.else59.i

if.end55.thread.i:                                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %timings249.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 7
  %34 = call ptr @memcpy(ptr %timings249.i, ptr @cobalt_node_register.dv1080p60, i32 132)
  br label %if.end82.i

if.else59.i:                                      ; preds = %if.end45.i
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %33, i32 0, i32 8
  %35 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl_handler.i, align 4
  %ctrl_handler54.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 9
  %37 = ptrtoint ptr %ctrl_handler54.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %ctrl_handler54.i, align 4
  %timings.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 7
  %38 = call ptr @memcpy(ptr %timings.i, ptr @cobalt_node_register.dv1080p60, i32 132)
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %33, i32 0, i32 6
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %video.i, align 4
  %tobool60.not.i = icmp eq ptr %42, null
  br i1 %tobool60.not.i, label %if.else59.i.if.end82.i_crit_edge, label %land.lhs.true.i

if.else59.i.if.end82.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82.i

land.lhs.true.i:                                  ; preds = %if.else59.i
  %s_dv_timings.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %s_dv_timings.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_dv_timings.i, align 4
  %tobool63.not.i = icmp eq ptr %44, null
  br i1 %tobool63.not.i, label %land.lhs.true.i.if.end82.i_crit_edge, label %if.else65.i

land.lhs.true.i.if.end82.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82.i

if.else65.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool66.not.i = icmp eq ptr %45, null
  br i1 %tobool66.not.i, label %if.else65.i.if.else74.i_crit_edge, label %land.lhs.true67.i

if.else65.i.if.else74.i_crit_edge:                ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74.i

land.lhs.true67.i:                                ; preds = %if.else65.i
  %s_dv_timings68.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %s_dv_timings68.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_dv_timings68.i, align 4
  %tobool69.not.i = icmp eq ptr %47, null
  br i1 %tobool69.not.i, label %land.lhs.true67.i.if.else74.i_crit_edge, label %if.then70.i

land.lhs.true67.i.if.else74.i_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74.i

if.then70.i:                                      ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #13
  %call73.i = tail call i32 %47(ptr noundef nonnull %33, ptr noundef %timings.i) #11
  br label %if.end82.i

if.else74.i:                                      ; preds = %land.lhs.true67.i.if.else74.i_crit_edge, %if.else65.i.if.else74.i_crit_edge
  %call79.i = tail call i32 %44(ptr noundef nonnull %33, ptr noundef %timings.i) #11
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else74.i, %if.then70.i, %land.lhs.true.i.if.end82.i_crit_edge, %if.else59.i.if.end82.i_crit_edge, %if.end55.thread.i
  %48 = ptrtoint ptr %is_output.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_output.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool85.not.i = icmp eq i8 %49, 0
  br i1 %tobool85.not.i, label %land.lhs.true86.i, label %if.end82.i.if.end90.i_crit_edge

if.end82.i.if.end90.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

land.lhs.true86.i:                                ; preds = %if.end82.i
  %50 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sd.i, align 4
  %tobool88.not.i = icmp eq ptr %51, null
  br i1 %tobool88.not.i, label %land.lhs.true86.i.if.end90.i_crit_edge, label %if.then89.i

land.lhs.true86.i.if.end90.i_crit_edge:           ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

if.then89.i:                                      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cobalt_enable_input(ptr noundef %add.ptr.i) #11
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then89.i, %land.lhs.true86.i.if.end90.i_crit_edge, %if.end82.i.if.end90.i_crit_edge
  %52 = ptrtoint ptr %is_dummy.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_dummy.i, align 2, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool92.not.i = icmp eq i8 %53, 0
  %cond93.i = select i1 %tobool92.not.i, ptr @cobalt_ioctl_ops, ptr @cobalt_ioctl_empty_ops
  %ioctl_ops.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 24
  %54 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cond93.i, ptr %ioctl_ops.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.end90.i, %if.then.i
  %bufs.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 2
  %55 = ptrtoint ptr %bufs.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %bufs.i, ptr %bufs.i, align 4
  %prev.i.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 2, i32 1
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %bufs.i, ptr %prev.i.i, align 4
  %is_output95.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 30
  %57 = ptrtoint ptr %is_output95.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_output95.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool96.not.i = icmp eq i8 %58, 0
  %cond97.i = select i1 %tobool96.not.i, i32 1, i32 2
  %59 = ptrtoint ptr %q2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %cond97.i, ptr %q2.i, align 4
  %io_modes.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 1
  %or.i = select i1 %tobool96.not.i, i32 23, i32 27
  %60 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 10
  %61 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i, ptr %drv_priv.i, align 4
  %buf_struct_size.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 12
  %62 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 744, ptr %buf_struct_size.i, align 4
  %ops102.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 7
  %63 = ptrtoint ptr %ops102.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @cobalt_qops, ptr %ops102.i, align 4
  %mem_ops.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 8
  %64 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops.i, align 4
  %timestamp_flags.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 13
  %65 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %min_buffers_needed.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 15
  %66 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %min_buffers_needed.i, align 4
  %lock104.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 5
  %67 = ptrtoint ptr %lock104.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %lock.i, ptr %lock104.i, align 4
  %68 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %dev105.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 1, i32 2
  %70 = ptrtoint ptr %dev105.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %dev.i, ptr %dev105.i, align 4
  %queue.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 10
  %71 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %q2.i, ptr %queue.i, align 8
  %device_caps.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 4
  %..i = select i1 %tobool96.not.i, i32 83886081, i32 83886082
  %72 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %..i, ptr %device_caps.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 5, i32 8
  %73 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr.i, ptr %driver_data.i.i.i, align 4
  %call115.i = tail call i32 @vb2_queue_init(ptr noundef %q2.i) #11
  %74 = ptrtoint ptr %is_audio.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_audio.i, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool117.not.i = icmp eq i8 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %cmp.i = icmp eq i32 %call115.i, 0
  %or.cond.i = select i1 %tobool117.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then119.i, label %if.else121.i

if.then119.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  %fops.i.i = getelementptr inbounds %struct.video_device, ptr %add.ptr.i, i32 0, i32 3
  %76 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fops.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %79) #11
  br label %if.end127.i

if.else121.i:                                     ; preds = %if.end94.i
  %is_dummy122.i = getelementptr %struct.cobalt_stream, ptr %streams.i, i32 %node.013, i32 32
  %80 = ptrtoint ptr %is_dummy122.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_dummy122.i, align 2, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool123.not.i = icmp eq i8 %81, 0
  br i1 %tobool123.not.i, label %if.then124.i, label %if.else121.i.if.end127.i_crit_edge

if.else121.i.if.end127.i_crit_edge:               ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

if.then124.i:                                     ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #13
  %call125.i = tail call i32 @cobalt_alsa_init(ptr noundef %add.ptr.i) #11
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then124.i, %if.else121.i.if.end127.i_crit_edge, %if.then119.i
  %ret.0.i = phi i32 [ %call115.i, %if.else121.i.if.end127.i_crit_edge ], [ %call125.i, %if.then124.i ], [ %call.i.i, %if.then119.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp128.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp128.i, label %if.then129.i, label %for.inc

if.then129.i:                                     ; preds = %if.end127.i
  %82 = ptrtoint ptr %is_audio.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %is_audio.i, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool131.not.i = icmp eq i8 %83, 0
  br i1 %tobool131.not.i, label %cobalt_node_register.exit, label %if.then129.i.cleanup_crit_edge

if.then129.i.cleanup_crit_edge:                   ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cobalt_node_register.exit:                        ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #13
  %call140.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name7.i, i32 noundef %node.013) #14
  br label %cleanup

for.inc:                                          ; preds = %if.end127.i
  %call140.i10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name7.i, i32 noundef %node.013) #14
  %inc = add nuw nsw i32 %node.013, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cobalt_node_register.exit, %if.then129.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %cobalt_node_register.exit ], [ %ret.0.i, %if.then129.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cobalt_nodes_unregister(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %streams = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %entry
  %node.010 = phi i32 [ 0, %entry ], [ %inc, %if.end4.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.cobalt_stream, ptr %streams, i32 %node.010
  %is_audio = getelementptr %struct.cobalt_stream, ptr %streams, i32 %node.010, i32 31
  %0 = ptrtoint ptr %is_audio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_audio, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @video_unregister_device(ptr noundef %add.ptr) #11
  br label %if.end4

if.else:                                          ; preds = %for.body
  %is_dummy = getelementptr %struct.cobalt_stream, ptr %streams, i32 %node.010, i32 32
  %2 = ptrtoint ptr %is_dummy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dummy, align 2, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cobalt_alsa_exit(ptr noundef %add.ptr) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.else.if.end4_crit_edge, %if.then
  %inc = add nuw nsw i32 %node.010, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cobalt_alsa_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cobalt_enable_input(ptr nocapture noundef readonly %s) unnamed_addr #0 align 64 {
entry:
  %sd_fmt_yuyv = alloca %struct.v4l2_subdev_format, align 4
  %sd_fmt_rgb = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cobalt1, align 4
  %video_channel = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 21
  %2 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video_channel, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt_yuyv) #11
  %4 = getelementptr inbounds i8, ptr %sd_fmt_yuyv, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 80)
  %6 = ptrtoint ptr %sd_fmt_yuyv to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %sd_fmt_yuyv, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt_yuyv, i32 0, i32 1
  %pad_source = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 9
  %7 = ptrtoint ptr %pad_source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad_source, align 8
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pad, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt_yuyv, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8209, ptr %code, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt_rgb) #11
  %11 = getelementptr inbounds i8, ptr %sd_fmt_rgb, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 80)
  %13 = ptrtoint ptr %sd_fmt_rgb to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %sd_fmt_rgb, align 4
  %pad3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt_rgb, i32 0, i32 1
  %14 = ptrtoint ptr %pad3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %pad3, align 4
  %code6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt_rgb, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4106, ptr %code6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %16 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 2, i32 4
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 8
  %17 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9 = icmp eq i32 %18, 0
  %cond = select i1 %cmp9, ptr @.str.15, ptr @.str.16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull @.str.17) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %bar1 = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bar1, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 65536
  %mul = shl i32 %3, 12
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 1280
  %pixfmt = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 14
  %21 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixfmt, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end11.sw.epilog_crit_edge [
    i32 1448695129, label %sw.bb
    i32 859981650, label %sw.bb38
    i32 877807426, label %sw.bb72
  ]

do.end11.sw.epilog_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 50331648) #11, !srcloc !199
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 4
  %24 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %pad15 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %pad15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pad15, align 4
  %tobool16.not = icmp eq ptr %29, null
  br i1 %tobool16.not, label %if.else.sw.epilog_crit_edge, label %land.lhs.true

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_fmt, align 4
  %tobool19.not = icmp eq ptr %31, null
  br i1 %tobool19.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.else21

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.else21:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool22.not = icmp eq ptr %32, null
  br i1 %tobool22.not, label %if.else21.if.else29_crit_edge, label %land.lhs.true23

if.else21.if.else29_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

land.lhs.true23:                                  ; preds = %if.else21
  %set_fmt24 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %set_fmt24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_fmt24, align 4
  %tobool25.not = icmp eq ptr %34, null
  br i1 %tobool25.not, label %land.lhs.true23.if.else29_crit_edge, label %if.then26

land.lhs.true23.if.else29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = call i32 %34(ptr noundef nonnull %25, ptr noundef null, ptr noundef nonnull %sd_fmt_yuyv) #11
  br label %sw.epilog

if.else29:                                        ; preds = %land.lhs.true23.if.else29_crit_edge, %if.else21.if.else29_crit_edge
  %call33 = call i32 %31(ptr noundef nonnull %25, ptr noundef null, ptr noundef nonnull %sd_fmt_yuyv) #11
  br label %sw.epilog

sw.bb38:                                          ; preds = %do.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 83886080) #11, !srcloc !199
  %sd41 = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 4
  %35 = ptrtoint ptr %sd41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd41, align 4
  %tobool43.not = icmp eq ptr %36, null
  br i1 %tobool43.not, label %sw.bb38.sw.epilog_crit_edge, label %if.else45

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.else45:                                        ; preds = %sw.bb38
  %ops46 = getelementptr inbounds %struct.v4l2_subdev, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %ops46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops46, align 4
  %pad47 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %pad47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pad47, align 4
  %tobool48.not = icmp eq ptr %40, null
  br i1 %tobool48.not, label %if.else45.sw.epilog_crit_edge, label %land.lhs.true49

if.else45.sw.epilog_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true49:                                  ; preds = %if.else45
  %set_fmt52 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %set_fmt52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_fmt52, align 4
  %tobool53.not = icmp eq ptr %42, null
  br i1 %tobool53.not, label %land.lhs.true49.sw.epilog_crit_edge, label %if.else55

land.lhs.true49.sw.epilog_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.else55:                                        ; preds = %land.lhs.true49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool56.not = icmp eq ptr %43, null
  br i1 %tobool56.not, label %if.else55.if.else63_crit_edge, label %land.lhs.true57

if.else55.if.else63_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else63

land.lhs.true57:                                  ; preds = %if.else55
  %set_fmt58 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %set_fmt58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_fmt58, align 4
  %tobool59.not = icmp eq ptr %45, null
  br i1 %tobool59.not, label %land.lhs.true57.if.else63_crit_edge, label %if.then60

land.lhs.true57.if.else63_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else63

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  %call62 = call i32 %45(ptr noundef nonnull %36, ptr noundef null, ptr noundef nonnull %sd_fmt_rgb) #11
  br label %sw.epilog

if.else63:                                        ; preds = %land.lhs.true57.if.else63_crit_edge, %if.else55.if.else63_crit_edge
  %call67 = call i32 %42(ptr noundef nonnull %36, ptr noundef null, ptr noundef nonnull %sd_fmt_rgb) #11
  br label %sw.epilog

sw.bb72:                                          ; preds = %do.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 251658240) #11, !srcloc !199
  %sd75 = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 4
  %46 = ptrtoint ptr %sd75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sd75, align 4
  %tobool77.not = icmp eq ptr %47, null
  br i1 %tobool77.not, label %sw.bb72.sw.epilog_crit_edge, label %if.else79

sw.bb72.sw.epilog_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.else79:                                        ; preds = %sw.bb72
  %ops80 = getelementptr inbounds %struct.v4l2_subdev, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %ops80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops80, align 4
  %pad81 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %pad81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pad81, align 4
  %tobool82.not = icmp eq ptr %51, null
  br i1 %tobool82.not, label %if.else79.sw.epilog_crit_edge, label %land.lhs.true83

if.else79.sw.epilog_crit_edge:                    ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true83:                                  ; preds = %if.else79
  %set_fmt86 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %set_fmt86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_fmt86, align 4
  %tobool87.not = icmp eq ptr %53, null
  br i1 %tobool87.not, label %land.lhs.true83.sw.epilog_crit_edge, label %if.else89

land.lhs.true83.sw.epilog_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.else89:                                        ; preds = %land.lhs.true83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool90.not = icmp eq ptr %54, null
  br i1 %tobool90.not, label %if.else89.if.else97_crit_edge, label %land.lhs.true91

if.else89.if.else97_crit_edge:                    ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else97

land.lhs.true91:                                  ; preds = %if.else89
  %set_fmt92 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %set_fmt92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_fmt92, align 4
  %tobool93.not = icmp eq ptr %56, null
  br i1 %tobool93.not, label %land.lhs.true91.if.else97_crit_edge, label %if.then94

land.lhs.true91.if.else97_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else97

if.then94:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  %call96 = call i32 %56(ptr noundef nonnull %47, ptr noundef null, ptr noundef nonnull %sd_fmt_rgb) #11
  br label %sw.epilog

if.else97:                                        ; preds = %land.lhs.true91.if.else97_crit_edge, %if.else89.if.else97_crit_edge
  %call101 = call i32 %53(ptr noundef nonnull %47, ptr noundef null, ptr noundef nonnull %sd_fmt_rgb) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else97, %if.then94, %land.lhs.true83.sw.epilog_crit_edge, %if.else79.sw.epilog_crit_edge, %sw.bb72.sw.epilog_crit_edge, %if.else63, %if.then60, %land.lhs.true49.sw.epilog_crit_edge, %if.else45.sw.epilog_crit_edge, %sw.bb38.sw.epilog_crit_edge, %if.else29, %if.then26, %land.lhs.true.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end11.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt_rgb) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt_yuyv) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cobalt_alsa_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_register(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cobalt1, align 4
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar1.i, align 8
  %reg.i = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %reg.i, align 1
  %idx.ext.i = trunc i64 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %idx.ext.i
  %name.i = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 2, i32 4
  %call.i3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i, ptr noundef %add.ptr.i) #14
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call1.i, label %if.end.i, label %entry.cobalt_cobaltc.exit_crit_edge

entry.cobalt_cobaltc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_cobaltc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %size.i = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 4, ptr %size.i, align 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !200
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %conv4.i = zext i32 %10 to i64
  %val5.i = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %11 = ptrtoint ptr %val5.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %conv4.i, ptr %val5.i, align 1
  br label %cobalt_cobaltc.exit

cobalt_cobaltc.exit:                              ; preds = %if.end.i, %entry.cobalt_cobaltc.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.cobalt_cobaltc.exit_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_s_register(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cobalt1, align 4
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar1.i, align 8
  %reg.i = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %reg.i, align 1
  %idx.ext.i = trunc i64 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %idx.ext.i
  %name.i = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 2, i32 4
  %call.i3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i, ptr noundef %add.ptr.i) #14
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call1.i, label %if.end.i, label %entry.cobalt_cobaltc.exit_crit_edge

entry.cobalt_cobaltc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_cobaltc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %size.i = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 4, ptr %size.i, align 1
  %val.i = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %val.i, align 1
  %conv.i = trunc i64 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #11, !srcloc !199
  br label %cobalt_cobaltc.exit

cobalt_cobaltc.exit:                              ; preds = %if.end.i, %entry.cobalt_cobaltc.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.cobalt_cobaltc.exit_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %vcap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cobalt1, align 4
  %call2 = tail call i32 @strscpy(ptr noundef %vcap, ptr noundef nonnull @.str.20, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.20, i32 noundef 32) #11
  %pci_dev = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i)
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 4
  %10 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2063597567, ptr %capabilities, align 4
  %have_hsma_tx = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %have_hsma_tx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %have_hsma_tx, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %spec.store.select = select i1 %tobool.not, i32 -2063597567, i32 -2063597565
  %13 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cobalt_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cobalt_enum_fmt_vid_cap, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.load, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cobalt_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %entry.return.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 877807426, %sw.bb1 ], [ 1448695129, %entry.return.sink.split_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  %sd_fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt) #11
  %2 = getelementptr inbounds i8, ptr %sd_fmt, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  %width = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 8
  %height2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height2, align 4
  %stride = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stride, align 8
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bytesperline, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field, align 4
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %colorspace, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  %pad_source = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %pad_source to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pad_source, align 8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 1
  %19 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pad, align 4
  %20 = ptrtoint ptr %sd_fmt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %sd_fmt, align 4
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.else.if.end25_crit_edge, label %if.else4

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.else4:                                         ; preds = %if.else
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pad5, align 4
  %tobool6.not = icmp eq ptr %26, null
  br i1 %tobool6.not, label %if.else4.if.end25_crit_edge, label %land.lhs.true

if.else4.if.end25_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.else4
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_fmt, align 4
  %tobool9.not = icmp eq ptr %28, null
  br i1 %tobool9.not, label %land.lhs.true.if.end25_crit_edge, label %if.else11

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %29, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %get_fmt14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %get_fmt14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_fmt14, align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end25.sink.split_crit_edge

land.lhs.true13.if.end25.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end25.sink.split_crit_edge
  %.sink = phi ptr [ %28, %if.else19 ], [ %31, %land.lhs.true13.if.end25.sink.split_crit_edge ]
  %call23 = call i32 %.sink(ptr noundef nonnull %22, ptr noundef null, ptr noundef nonnull %sd_fmt) #11
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %land.lhs.true.if.end25_crit_edge, %if.else4.if.end25_crit_edge, %if.else.if.end25_crit_edge
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format, align 4
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fmt, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height.i, align 4
  %37 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height2, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %field.i, align 4
  %40 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %field, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %colorspace4.i, align 4
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 4
  %conv.i = zext i16 %46 to i32
  %47 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv.i, ptr %47, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 6
  %49 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %quantization.i, align 2
  %conv5.i = zext i16 %50 to i32
  %quantization6.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv5.i, ptr %quantization6.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 7
  %52 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %xfer_func.i, align 4
  %conv7.i = zext i16 %53 to i32
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %54 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv7.i, ptr %xfer_func8.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %pixfmt = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 14
  %55 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pixfmt, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %57 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %pixelformat, align 4
  %58 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bytesperline, align 4
  %60 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height2, align 4
  %mul = mul i32 %61, %59
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %62 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul, ptr %sizeimage, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %width = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 8
  %height2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height2, align 4
  %stride = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stride, align 8
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bytesperline, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field, align 4
  %pixfmt = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixfmt, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %colorspace, align 4
  %colorspace3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %colorspace3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %colorspace3, align 4
  %xfer_func = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xfer_func, align 8
  %xfer_func4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %20 = ptrtoint ptr %xfer_func4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %xfer_func4, align 4
  %ycbcr_enc = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ycbcr_enc, align 4
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %23, align 4
  %quantization = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quantization, align 8
  %quantization5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %quantization5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %quantization5, align 4
  %mul = mul i32 %9, %6
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 1, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call2 = tail call i32 @cobalt_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv_fh, ptr noundef %f)
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %width5 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %width5, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height6, align 8
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesperline, align 4
  %stride = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %stride, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %14, label %if.end.cleanup_crit_edge [
    i32 1448695129, label %if.end.sw.epilog_crit_edge
    i32 859981650, label %sw.bb7
    i32 877807426, label %sw.bb9
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 4, %sw.bb9 ], [ 3, %sw.bb7 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %bpp10 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %bpp10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %bpp10, align 4
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat, align 4
  %pixfmt = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %pixfmt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixfmt, align 4
  tail call fastcc void @cobalt_enable_input(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_s_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %f) #0 align 64 {
entry:
  %sd_fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt) #11
  %2 = call ptr @memset(ptr %sd_fmt, i32 0, i32 88)
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %4)
  %cmp.i = icmp ult i32 %4, 176
  br i1 %cmp.i, label %entry.if.end.thread.i_crit_edge, label %lor.lhs.false.i

entry.if.end.thread.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i

lor.lhs.false.i:                                  ; preds = %entry
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %6)
  %cmp1.i = icmp ult i32 %6, 144
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end.thread.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.end.thread.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %lor.lhs.false.i.if.end.thread.i_crit_edge, %entry.if.end.thread.i_crit_edge
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 176, ptr %fmt, align 4
  %height3.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 144, ptr %height3.i, align 4
  br label %lor.lhs.false6.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %4)
  %cmp5.i = icmp ugt i32 %4, 1920
  br i1 %cmp5.i, label %if.end.i.if.then9.i_crit_edge, label %if.end.i.lor.lhs.false6.i_crit_edge

if.end.i.lor.lhs.false6.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false6.i

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

lor.lhs.false6.i:                                 ; preds = %if.end.i.lor.lhs.false6.i_crit_edge, %if.end.thread.i
  %height7.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %10)
  %cmp8.i = icmp ugt i32 %10, 1080
  br i1 %cmp8.i, label %lor.lhs.false6.i.if.then9.i_crit_edge, label %lor.lhs.false6.i.if.end12.i_crit_edge

lor.lhs.false6.i.if.end12.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

lor.lhs.false6.i.if.then9.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false6.i.if.then9.i_crit_edge, %if.end.i.if.then9.i_crit_edge
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1920, ptr %fmt, align 4
  %height11.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height11.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1080, ptr %height11.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %lor.lhs.false6.i.if.end12.i_crit_edge
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt, align 4
  %and.i = and i32 %14, -4
  store i32 %and.i, ptr %fmt, align 4
  %height14.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height14.i, align 4
  %and15.i = and i32 %16, -2
  store i32 %and15.i, ptr %height14.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 877807426, i32 %18)
  %cond36.i = icmp eq i32 %18, 877807426
  %bytesperline22.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytesperline22.i, align 4
  %and23.i = and i32 %20, -4
  br i1 %cond36.i, label %sw.bb21.i, label %sw.default.i

sw.default.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl i32 %and.i, 1
  %21 = tail call i32 @llvm.umax.i32(i32 %and23.i, i32 %mul.i) #11
  %22 = ptrtoint ptr %bytesperline22.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bytesperline22.i, align 4
  %23 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1448695129, ptr %pixelformat.i, align 4
  br label %cobalt_try_fmt_vid_out.exit

sw.bb21.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul25.i = shl i32 %and.i, 2
  %24 = tail call i32 @llvm.umax.i32(i32 %and23.i, i32 %mul25.i) #11
  %25 = ptrtoint ptr %bytesperline22.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %bytesperline22.i, align 4
  br label %cobalt_try_fmt_vid_out.exit

cobalt_try_fmt_vid_out.exit:                      ; preds = %sw.bb21.i, %sw.default.i
  %26 = ptrtoint ptr %bytesperline22.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bytesperline22.i, align 4
  %mul35.i = mul i32 %27, %and15.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul35.i, ptr %sizeimage.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %field.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 1, i32 21
  %30 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i91.not = icmp eq i32 %31, 0
  br i1 %cmp.i91.not, label %cobalt_try_fmt_vid_out.exit.if.end11_crit_edge, label %land.lhs.true

cobalt_try_fmt_vid_out.exit.if.end11_crit_edge:   ; preds = %cobalt_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %cobalt_try_fmt_vid_out.exit
  %32 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pixelformat.i, align 4
  %pixfmt = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pixfmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.not = icmp eq i32 %33, %35
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %width3 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %37)
  %cmp4.not = icmp eq i32 %and.i, %37
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %height6 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %height6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %39)
  %cmp7.not = icmp eq i32 %and15.i, %39
  br i1 %cmp7.not, label %lor.lhs.false8, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %stride = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stride, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %41)
  %cmp9.not = icmp eq i32 %27, %41
  br i1 %cmp9.not, label %lor.lhs.false8.if.end11_crit_edge, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false8.if.end11_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false8.if.end11_crit_edge, %cobalt_try_fmt_vid_out.exit.if.end11_crit_edge
  %42 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pixelformat.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %43, label %if.end11.cleanup_crit_edge [
    i32 1448695129, label %if.end11.sw.epilog_crit_edge
    i32 877807426, label %sw.bb13
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %if.end11.sw.epilog_crit_edge
  %.sink = phi i32 [ 4, %sw.bb13 ], [ 2, %if.end11.sw.epilog_crit_edge ]
  %code.0 = phi i32 [ 4106, %sw.bb13 ], [ 8207, %if.end11.sw.epilog_crit_edge ]
  %bpp14 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %bpp14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink, ptr %bpp14, align 4
  %46 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fmt, align 4
  %width16 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 10
  %48 = ptrtoint ptr %width16 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %width16, align 4
  %49 = ptrtoint ptr %height14.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height14.i, align 4
  %height18 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 11
  %51 = ptrtoint ptr %height18 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %height18, align 8
  %52 = ptrtoint ptr %bytesperline22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bytesperline22.i, align 4
  %stride20 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %stride20 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %stride20, align 8
  %55 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pixelformat.i, align 4
  %pixfmt22 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 14
  %57 = ptrtoint ptr %pixfmt22 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %pixfmt22, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %58 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %colorspace, align 4
  %colorspace23 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 16
  %60 = ptrtoint ptr %colorspace23 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %colorspace23, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %61 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xfer_func, align 4
  %xfer_func24 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 17
  %63 = ptrtoint ptr %xfer_func24 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %xfer_func24, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %ycbcr_enc = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 18
  %67 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %quantization, align 4
  %quantization25 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 19
  %70 = ptrtoint ptr %quantization25 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %quantization25, align 8
  %71 = ptrtoint ptr %sd_fmt to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %sd_fmt, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2
  %72 = load i32, ptr %fmt, align 4
  %73 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %format, align 4
  %74 = load i32, ptr %height14.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %height2.i, align 4
  %76 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 3
  %78 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %field3.i, align 4
  %79 = load i32, ptr %colorspace, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 4
  %80 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %colorspace4.i, align 4
  %81 = load i32, ptr %64, align 4
  %conv.i = trunc i32 %81 to i16
  %82 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 5
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i, ptr %82, align 4
  %84 = load i32, ptr %quantization, align 4
  %conv5.i = trunc i32 %84 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 6
  %85 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %86 = load i32, ptr %xfer_func, align 4
  %conv7.i = trunc i32 %86 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 7
  %87 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %code.0, ptr %code9.i, align 4
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %89 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sd, align 4
  %tobool26.not = icmp eq ptr %90, null
  br i1 %tobool26.not, label %sw.epilog.cleanup_crit_edge, label %if.else

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pad, align 4
  %tobool28.not = icmp eq ptr %94, null
  br i1 %tobool28.not, label %if.else.cleanup_crit_edge, label %land.lhs.true29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %set_fmt, align 4
  %tobool32.not = icmp eq ptr %96, null
  br i1 %tobool32.not, label %land.lhs.true29.cleanup_crit_edge, label %if.else34

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else34:                                        ; preds = %land.lhs.true29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool35.not = icmp eq ptr %97, null
  br i1 %tobool35.not, label %if.else34.if.else42_crit_edge, label %land.lhs.true36

if.else34.if.else42_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else42

land.lhs.true36:                                  ; preds = %if.else34
  %set_fmt37 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %set_fmt37 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_fmt37, align 4
  %tobool38.not = icmp eq ptr %99, null
  br i1 %tobool38.not, label %land.lhs.true36.if.else42_crit_edge, label %land.lhs.true36.cleanup.sink.split_crit_edge

land.lhs.true36.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true36.if.else42_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else42

if.else42:                                        ; preds = %land.lhs.true36.if.else42_crit_edge, %if.else34.if.else42_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else42, %land.lhs.true36.cleanup.sink.split_crit_edge
  %.sink94 = phi ptr [ %96, %if.else42 ], [ %99, %land.lhs.true36.cleanup.sink.split_crit_edge ]
  %call41 = call i32 %.sink94(ptr noundef nonnull %90, ptr noundef null, ptr noundef nonnull %sd_fmt) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true29.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %lor.lhs.false8.cleanup_crit_edge ], [ -16, %lor.lhs.false5.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true29.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  %sd_fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt) #11
  %2 = getelementptr inbounds i8, ptr %sd_fmt, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %5)
  %cmp = icmp ult i32 %5, 176
  br i1 %cmp, label %entry.if.end.thread_crit_edge, label %lor.lhs.false

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %7)
  %cmp1 = icmp ult i32 %7, 144
  br i1 %cmp1, label %lor.lhs.false.if.end.thread_crit_edge, label %if.end

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.end.thread:                                    ; preds = %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 176, ptr %fmt, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 144, ptr %height3, align 4
  br label %lor.lhs.false6

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %5)
  %cmp5 = icmp ugt i32 %5, 1920
  br i1 %cmp5, label %if.end.if.then9_crit_edge, label %if.end.lor.lhs.false6_crit_edge

if.end.lor.lhs.false6_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false6

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false6:                                   ; preds = %if.end.lor.lhs.false6_crit_edge, %if.end.thread
  %height7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %11)
  %cmp8 = icmp ugt i32 %11, 1080
  br i1 %cmp8, label %lor.lhs.false6.if.then9_crit_edge, label %lor.lhs.false6.if.end12_crit_edge

lor.lhs.false6.if.end12_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

lor.lhs.false6.if.then9_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false6.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1920, ptr %fmt, align 4
  %height11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1080, ptr %height11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %lor.lhs.false6.if.end12_crit_edge
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt, align 4
  %and = and i32 %15, -4
  store i32 %and, ptr %fmt, align 4
  %height14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height14, align 4
  %and15 = and i32 %17, -2
  store i32 %and15, ptr %height14, align 4
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp16 = icmp eq i32 %19, 1
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1920, ptr %fmt, align 4
  %21 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1080, ptr %height14, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %colorspace, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end12
  %pad_source = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %pad_source to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pad_source, align 8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 1
  %25 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pad, align 4
  %26 = ptrtoint ptr %sd_fmt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %sd_fmt, align 4
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.else.if.end43_crit_edge, label %if.else21

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.else21:                                        ; preds = %if.else
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %pad22 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %pad22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pad22, align 4
  %tobool23.not = icmp eq ptr %32, null
  br i1 %tobool23.not, label %if.else21.if.end43_crit_edge, label %land.lhs.true

if.else21.if.end43_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true:                                    ; preds = %if.else21
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_fmt, align 4
  %tobool26.not = icmp eq ptr %34, null
  br i1 %tobool26.not, label %land.lhs.true.if.end43_crit_edge, label %if.else28

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.else28:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool29.not = icmp eq ptr %35, null
  br i1 %tobool29.not, label %if.else28.if.else36_crit_edge, label %land.lhs.true30

if.else28.if.else36_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

land.lhs.true30:                                  ; preds = %if.else28
  %get_fmt31 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %get_fmt31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_fmt31, align 4
  %tobool32.not = icmp eq ptr %37, null
  br i1 %tobool32.not, label %land.lhs.true30.if.else36_crit_edge, label %land.lhs.true30.if.end43.sink.split_crit_edge

land.lhs.true30.if.end43.sink.split_crit_edge:    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.sink.split

land.lhs.true30.if.else36_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

if.else36:                                        ; preds = %land.lhs.true30.if.else36_crit_edge, %if.else28.if.else36_crit_edge
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.else36, %land.lhs.true30.if.end43.sink.split_crit_edge
  %.sink = phi ptr [ %34, %if.else36 ], [ %37, %land.lhs.true30.if.end43.sink.split_crit_edge ]
  %call40 = call i32 %.sink(ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull %sd_fmt) #11
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %land.lhs.true.if.end43_crit_edge, %if.else21.if.end43_crit_edge, %if.else.if.end43_crit_edge
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %2, align 4
  %40 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %fmt, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height.i, align 4
  %43 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %height14, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %46 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %colorspace4.i, align 4
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %47, align 4
  %conv.i = zext i16 %49 to i32
  %50 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv.i, ptr %50, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 6
  %52 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %quantization.i, align 2
  %conv5.i = zext i16 %53 to i32
  %quantization6.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv5.i, ptr %quantization6.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 7
  %55 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %xfer_func.i, align 4
  %conv7.i = zext i16 %56 to i32
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %57 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv7.i, ptr %xfer_func8.i, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then17
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pixelformat, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %59, label %sw.default [
    i32 877807426, label %sw.bb63
    i32 859981650, label %sw.bb51
  ]

sw.default:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %61 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bytesperline, align 4
  %and45 = and i32 %62, -4
  %63 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fmt, align 4
  %mul = shl i32 %64, 1
  %65 = call i32 @llvm.umax.i32(i32 %and45, i32 %mul)
  %66 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %bytesperline, align 4
  %67 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1448695129, ptr %pixelformat, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %bytesperline52 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %68 = ptrtoint ptr %bytesperline52 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bytesperline52, align 4
  %and53 = and i32 %69, -4
  %70 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fmt, align 4
  %mul55 = mul i32 %71, 3
  %72 = call i32 @llvm.umax.i32(i32 %and53, i32 %mul55)
  %73 = ptrtoint ptr %bytesperline52 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %bytesperline52, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %bytesperline64 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %74 = ptrtoint ptr %bytesperline64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bytesperline64, align 4
  %and65 = and i32 %75, -4
  %76 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fmt, align 4
  %mul67 = shl i32 %77, 2
  %78 = call i32 @llvm.umax.i32(i32 %and65, i32 %mul67)
  %79 = ptrtoint ptr %bytesperline64 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %bytesperline64, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb63, %sw.bb51, %sw.default
  %bytesperline75 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %80 = ptrtoint ptr %bytesperline75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bytesperline75, align 4
  %82 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height14, align 4
  %mul77 = mul i32 %83, %81
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %84 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul77, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %85 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %field, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cobalt_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %1)
  %cmp = icmp ult i32 %1, 176
  br i1 %cmp, label %entry.if.end.thread_crit_edge, label %lor.lhs.false

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %3)
  %cmp1 = icmp ult i32 %3, 144
  br i1 %cmp1, label %lor.lhs.false.if.end.thread_crit_edge, label %if.end

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.end.thread:                                    ; preds = %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 176, ptr %fmt, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 144, ptr %height3, align 4
  br label %lor.lhs.false6

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %.pr)
  %cmp5 = icmp ugt i32 %.pr, 1920
  br i1 %cmp5, label %if.end.if.then9_crit_edge, label %if.end.lor.lhs.false6_crit_edge

if.end.lor.lhs.false6_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false6

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false6:                                   ; preds = %if.end.lor.lhs.false6_crit_edge, %if.end.thread
  %height7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %8)
  %cmp8 = icmp ugt i32 %8, 1080
  br i1 %cmp8, label %lor.lhs.false6.if.then9_crit_edge, label %lor.lhs.false6.if.end12_crit_edge

lor.lhs.false6.if.end12_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

lor.lhs.false6.if.then9_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false6.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1920, ptr %fmt, align 4
  %height11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1080, ptr %height11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %lor.lhs.false6.if.end12_crit_edge
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt, align 4
  %and = and i32 %12, -4
  store i32 %and, ptr %fmt, align 4
  %height14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height14, align 4
  %and15 = and i32 %14, -2
  store i32 %and15, ptr %height14, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 877807426, i32 %16)
  %cond36 = icmp eq i32 %16, 877807426
  %bytesperline22 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %bytesperline22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesperline22, align 4
  %and23 = and i32 %18, -4
  br i1 %cond36, label %sw.bb21, label %sw.default

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %and, 1
  %19 = tail call i32 @llvm.umax.i32(i32 %and23, i32 %mul)
  %20 = ptrtoint ptr %bytesperline22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bytesperline22, align 4
  %21 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1448695129, ptr %pixelformat, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %mul25 = shl i32 %and, 2
  %22 = tail call i32 @llvm.umax.i32(i32 %and23, i32 %mul25)
  %23 = ptrtoint ptr %bytesperline22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bytesperline22, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.default
  %bytesperline33 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %bytesperline33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytesperline33, align 4
  %mul35 = mul i32 %25, %and15
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul35, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %inp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %video_channel = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %video_channel, align 8
  %.str.22..str.23 = select i1 %cmp2, ptr @.str.22, ptr @.str.23
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull %.str.22..str.23, i32 noundef %5)
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %capabilities, align 4
  %8 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp11 = icmp eq i32 %9, 1
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.else15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else15:                                        ; preds = %if.end13
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.else15.cleanup_crit_edge, label %land.lhs.true

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else15
  %g_input_status = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %g_input_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %g_input_status, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %land.lhs.true.cleanup_crit_edge, label %if.else21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else21:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %if.else21.if.else29_crit_edge, label %land.lhs.true23

if.else21.if.else29_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

land.lhs.true23:                                  ; preds = %if.else21
  %g_input_status24 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %g_input_status24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g_input_status24, align 4
  %tobool25.not = icmp eq ptr %20, null
  br i1 %tobool25.not, label %land.lhs.true23.if.else29_crit_edge, label %land.lhs.true23.cleanup.sink.split_crit_edge

land.lhs.true23.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true23.if.else29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

if.else29:                                        ; preds = %land.lhs.true23.if.else29_crit_edge, %if.else21.if.else29_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else29, %land.lhs.true23.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %17, %if.else29 ], [ %20, %land.lhs.true23.cleanup.sink.split_crit_edge ]
  %status = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %call28 = tail call i32 %.sink(ptr noundef nonnull %11, ptr noundef %status) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else15.cleanup_crit_edge ], [ %call28, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp = icmp ugt i32 %i, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 1, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i, ptr %input, align 4
  tail call fastcc void @cobalt_enable_input(ptr noundef %1)
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.else

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.else14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.cleanup.sink.split_crit_edge

land.lhs.true16.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else22, %land.lhs.true16.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else22 ], [ %17, %land.lhs.true16.cleanup.sink.split_crit_edge ]
  %call21 = tail call i32 %.sink(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ %call21, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_enum_output(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef %out) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef 0)
  %type = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %capabilities = getelementptr inbounds %struct.v4l2_output, ptr %out, i32 0, i32 6
  %3 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %capabilities, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cobalt_g_output(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv_fh, ptr nocapture noundef writeonly %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cobalt_s_output(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv_fh, i32 noundef %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %fh, i32 noundef %type, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  %timings = alloca %struct.v4l2_dv_timings, align 1
  %tmp29 = alloca %struct.v4l2_fract, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings) #11
  %2 = call ptr @memset(ptr %timings, i32 255, i32 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.end26.thread45, label %if.else

if.end26.thread45:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memcpy(ptr %timings, ptr @cea1080p60, i32 132)
  br label %if.then28

if.else:                                          ; preds = %if.end
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else4:                                         ; preds = %if.else
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %video, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.else4.cleanup_crit_edge, label %land.lhs.true

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else4
  %g_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %g_dv_timings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %g_dv_timings, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.else10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %g_dv_timings13 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %g_dv_timings13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g_dv_timings13, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end26_crit_edge

land.lhs.true12.if.end26_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %land.lhs.true12.if.end26_crit_edge
  %.sink = phi ptr [ %13, %if.else18 ], [ %16, %land.lhs.true12.if.end26_crit_edge ]
  %call17 = call i32 %.sink(ptr noundef nonnull %7, ptr noundef nonnull %timings) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool27.not = icmp eq i32 %call17, 0
  br i1 %tobool27.not, label %if.end26.if.then28_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.end26.thread45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp29) #11
  call void @v4l2_dv_timings_aspect_ratio(ptr nonnull sret(%struct.v4l2_fract) align 4 %tmp29, ptr noundef nonnull %timings) #11
  %17 = ptrtoint ptr %tmp29 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tmp29, align 8
  %19 = ptrtoint ptr %f to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %f, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else4.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ %call17, %if.end26.cleanup_crit_edge ], [ -515, %if.else4.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %timings = alloca %struct.v4l2_dv_timings, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings) #11
  %2 = call ptr @memset(ptr %timings, i32 255, i32 132)
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.end26.thread54, label %if.else

if.end26.thread54:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call ptr @memcpy(ptr %timings, ptr @cea1080p60, i32 132)
  br label %if.end29

if.else:                                          ; preds = %if.end
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else4:                                         ; preds = %if.else
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.else4.cleanup_crit_edge, label %land.lhs.true

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else4
  %g_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %g_dv_timings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %g_dv_timings, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.else10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %g_dv_timings13 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %g_dv_timings13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %g_dv_timings13, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end26_crit_edge

land.lhs.true12.if.end26_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %land.lhs.true12.if.end26_crit_edge
  %.sink = phi ptr [ %15, %if.else18 ], [ %18, %land.lhs.true12.if.end26_crit_edge ]
  %call17 = call i32 %.sink(ptr noundef nonnull %9, ptr noundef nonnull %timings) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool27.not = icmp eq i32 %call17, 0
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end29:                                         ; preds = %if.end26.if.end29_crit_edge, %if.end26.thread54
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %19 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target, align 4
  %.off = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %top, align 4
  %22 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %r, align 4
  %23 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %23, align 1
  %width32 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %width32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %width32, align 4
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %height, align 1
  %height34 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height34, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else4.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ %call17, %if.end26.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ -515, %if.else4.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #0 align 64 {
entry:
  %tmp = alloca %struct.v4l2_fract, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #11
  %timings = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 7
  call void @v4l2_calc_timeperframe(ptr nonnull sret(%struct.v4l2_fract) align 4 %tmp, ptr noundef %timings) #11
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %fps.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  %fps.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %5 = ptrtoint ptr %fps.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %fps.sroa.5.0.copyload = load i32, ptr %fps.sroa.5.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #11
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %fps.sroa.0.0.copyload, ptr %timeperframe, align 4
  %denominator4 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %denominator4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %fps.sroa.5.0.copyload, ptr %denominator4, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %readbuffers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_log_status(ptr noundef %file, ptr nocapture noundef readnone %priv_fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cobalt1, align 4
  %bar1 = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar1, align 8
  %name = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 2, i32 4
  %hdl_info = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 25
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, ptr noundef %hdl_info) #14
  %6 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 1024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !200
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %10 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bar1, align 8
  %add.ptr.i.i102 = getelementptr i8, ptr %11, i32 1280
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i102) #11, !srcloc !200
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %9, i32 noundef %13) #14
  %dma_channel = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %dma_channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dma_channel, align 4
  %conv = zext i8 %15 to i32
  %video_channel = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %video_channel, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, i32 noundef %conv, i32 noundef %17) #14
  tail call void @cobalt_pcie_status_show(ptr noundef %3) #11
  tail call void @cobalt_cpld_status(ptr noundef %3) #11
  tail call void @cobalt_irq_log_status(ptr noundef %3) #11
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %if.else

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %if.else.if.end42_crit_edge, label %land.lhs.true

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true:                                    ; preds = %if.else
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool26.not = icmp eq ptr %25, null
  br i1 %tobool26.not, label %land.lhs.true.if.end42_crit_edge, label %if.else28

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.else28:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %26 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool29.not = icmp eq ptr %26, null
  br i1 %tobool29.not, label %if.else28.if.else36_crit_edge, label %land.lhs.true30

if.else28.if.else36_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

land.lhs.true30:                                  ; preds = %if.else28
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool32.not = icmp eq ptr %28, null
  br i1 %tobool32.not, label %land.lhs.true30.if.else36_crit_edge, label %land.lhs.true30.if.end42.sink.split_crit_edge

land.lhs.true30.if.end42.sink.split_crit_edge:    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split

land.lhs.true30.if.else36_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

if.else36:                                        ; preds = %land.lhs.true30.if.else36_crit_edge, %if.else28.if.else36_crit_edge
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.else36, %land.lhs.true30.if.end42.sink.split_crit_edge
  %.sink = phi ptr [ %25, %if.else36 ], [ %28, %land.lhs.true30.if.end42.sink.split_crit_edge ]
  %call40 = tail call i32 %.sink(ptr noundef nonnull %19) #11
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %land.lhs.true.if.end42_crit_edge, %if.else.if.end42_crit_edge, %entry.if.end42_crit_edge
  %is_output = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 30
  %29 = ptrtoint ptr %is_output to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_output, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool44.not = icmp eq i8 %30, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %video_channel, align 8
  %33 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cobalt1, align 4
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %36, i32 65536
  %mul.i = shl i32 %32, 12
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr7.i = getelementptr i8, ptr %add.ptr2.i, i32 256
  %add.ptr12.i = getelementptr i8, ptr %add.ptr2.i, i32 768
  %add.ptr17.i = getelementptr i8, ptr %add.ptr2.i, i32 1024
  %add.ptr22.i = getelementptr i8, ptr %add.ptr2.i, i32 1280
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !200
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %status.i = getelementptr inbounds %struct.m00389_cvi_regmap, ptr %add.ptr2.i, i32 0, i32 5
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i) #11, !srcloc !200
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %control24.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 9
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control24.i) #11, !srcloc !200
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %status26.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status26.i) #11, !srcloc !200
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %name.i = getelementptr inbounds %struct.cobalt, ptr %34, i32 0, i32 2, i32 4
  %frame_width.i = getelementptr inbounds %struct.m00389_cvi_regmap, ptr %add.ptr2.i, i32 0, i32 1
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_width.i) #11, !srcloc !200
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %frame_height.i = getelementptr inbounds %struct.m00389_cvi_regmap, ptr %add.ptr2.i, i32 0, i32 2
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_height.i) #11, !srcloc !200
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i, i32 noundef %32, i32 noundef %46, i32 noundef %48) #14
  %and.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.48, ptr @.str.47
  %and38.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %cond40.i = select i1 %tobool39.not.i, ptr @.str.50, ptr @.str.49
  %and41.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %cond43.i = select i1 %tobool42.not.i, ptr @.str.52, ptr @.str.51
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name.i, i32 noundef %32, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond40.i, ptr noundef nonnull %cond43.i) #14
  %and52.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  %cond54.i = select i1 %tobool53.not.i, ptr @.str.57, ptr @.str.56
  %and55.i = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %cond57.i = select i1 %tobool56.not.i, ptr @.str.59, ptr @.str.58
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name.i, i32 noundef %32, ptr noundef nonnull %cond54.i, ptr noundef nonnull %cond57.i) #14
  %and66.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  %cond68.i = select i1 %tobool67.not.i, ptr @.str.50, ptr @.str.49
  %and69.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  %cond71.i = select i1 %tobool70.not.i, ptr @.str.52, ptr @.str.51
  %and72.i = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  %cond74.i = select i1 %tobool73.not.i, ptr @.str.64, ptr @.str.63
  %and75.i = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  %cond77.i = select i1 %tobool76.not.i, ptr @.str.66, ptr @.str.65
  %and78.i = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  %cond80.i = select i1 %tobool79.not.i, ptr @.str.37, ptr @.str.67
  %and81.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  %cond83.i = select i1 %tobool82.not.i, ptr @.str.37, ptr @.str.68
  %and84.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  %cond86.i = select i1 %tobool85.not.i, ptr @.str.37, ptr @.str.69
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name.i, i32 noundef %32, ptr noundef nonnull %cond68.i, ptr noundef nonnull %cond71.i, ptr noundef nonnull %cond74.i, ptr noundef nonnull %cond77.i, ptr noundef nonnull %cond80.i, ptr noundef nonnull %cond83.i, ptr noundef nonnull %cond86.i) #14
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !200
  %50 = lshr i32 %49, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %irq_triggers.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 10
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %irq_triggers.i) #11, !srcloc !200
  %52 = lshr i32 %51, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call99.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name.i, i32 noundef %32, i32 noundef %50, i32 noundef %52) #14
  %vsync_time.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 1
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vsync_time.i) #11, !srcloc !200
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %32, i32 noundef %54) #14
  %vback_porch.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 2
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vback_porch.i) #11, !srcloc !200
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name.i, i32 noundef %32, i32 noundef %56) #14
  %vactive_area.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 3
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vactive_area.i) #11, !srcloc !200
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call126.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name.i, i32 noundef %32, i32 noundef %58) #14
  %vfront_porch.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vfront_porch.i) #11, !srcloc !200
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name.i, i32 noundef %32, i32 noundef %60) #14
  %hsync_time.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 5
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hsync_time.i) #11, !srcloc !200
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name.i, i32 noundef %32, i32 noundef %62) #14
  %hback_porch.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 6
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hback_porch.i) #11, !srcloc !200
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call153.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name.i, i32 noundef %32, i32 noundef %64) #14
  %hactive_area.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 7
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hactive_area.i) #11, !srcloc !200
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call162.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name.i, i32 noundef %32, i32 noundef %66) #14
  %hfront_porch.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr7.i, i32 0, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hfront_porch.i) #11, !srcloc !200
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name.i, i32 noundef %32, i32 noundef %68) #14
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %70 = and i32 %69, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool181.not.i = icmp eq i32 %70, 0
  %cond182.i = select i1 %tobool181.not.i, ptr @.str.64, ptr @.str.63
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %72 = and i32 %71, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool186.not.i = icmp eq i32 %72, 0
  %cond187.i = select i1 %tobool186.not.i, ptr @.str.37, ptr @.str.100
  %status188.i = getelementptr inbounds %struct.m00473_freewheel_regmap, ptr %add.ptr12.i, i32 0, i32 1
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status188.i) #11, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %74 = and i32 %73, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool191.not.i = icmp eq i32 %74, 0
  %cond192.i = select i1 %tobool191.not.i, ptr @.str.102, ptr @.str.101
  %call193.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name.i, i32 noundef %32, ptr noundef nonnull %cond182.i, ptr noundef nonnull %cond187.i, ptr noundef nonnull %cond192.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 -16777216) #11, !srcloc !199
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #11, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %76 = and i32 %75, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool205.not.i = icmp eq i32 %76, 0
  %cond206.i = select i1 %tobool205.not.i, ptr @.str.64, ptr @.str.63
  %status207.i = getelementptr inbounds %struct.m00479_clk_loss_detector_regmap, ptr %add.ptr17.i, i32 0, i32 1
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status207.i) #11, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %78 = and i32 %77, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool210.not.i = icmp eq i32 %78, 0
  %cond211.i = select i1 %tobool210.not.i, ptr @.str.107, ptr @.str.106
  %call212.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name.i, i32 noundef %32, ptr noundef nonnull %cond206.i, ptr noundef nonnull %cond211.i) #14
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #11, !srcloc !200
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call222.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name.i, i32 noundef %32, i32 noundef %80) #14
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %rd_status = getelementptr i8, ptr %5, i32 86056
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_status) #11, !srcloc !200
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %and = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool57.not, ptr @.str.37, ptr @.str.36
  %and59 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %cond61 = select i1 %tobool60.not, ptr @.str.37, ptr @.str.38
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name, ptr noundef nonnull %cond, ptr noundef nonnull %cond61) #14
  %rd_evcnt_count = getelementptr i8, ptr %5, i32 86060
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_evcnt_count) #11, !srcloc !200
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %84) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then45
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_s_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %timings, ptr @cea1080p60, i32 132)
  br label %cleanup

if.end:                                           ; preds = %entry
  %timings1 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7
  %call2 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef %timings1, i32 noundef 0, i1 noundef zeroext true) #11
  br i1 %call2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 1, i32 21
  %5 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.else

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %s_dv_timings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_dv_timings, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.else14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %s_dv_timings17 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %s_dv_timings17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_dv_timings17, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.if.end29_crit_edge

land.lhs.true16.if.end29_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %land.lhs.true16.if.end29_crit_edge
  %.sink = phi ptr [ %14, %if.else22 ], [ %17, %land.lhs.true16.if.end29_crit_edge ]
  %call26 = tail call i32 %.sink(ptr noundef nonnull %8, ptr noundef %timings) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool30.not = icmp eq i32 %call26, 0
  br i1 %tobool30.not, label %if.then31, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %18 = call ptr @memcpy(ptr %timings1, ptr %timings, i32 132)
  %19 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %19, align 1
  %width33 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %width33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width33, align 4
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %height, align 1
  %height34 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height34, align 8
  %26 = load i32, ptr %19, align 1
  %bpp = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bpp, align 4
  %mul = mul i32 %28, %26
  %stride = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %stride, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ 0, %if.then31 ], [ %call26, %if.end29.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %timings, ptr @cea1080p60, i32 132)
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %g_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %g_dv_timings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_dv_timings, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.else7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %g_dv_timings10 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %g_dv_timings10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %g_dv_timings10, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %if.then12

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else15

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 %15(ptr noundef nonnull %6, ptr noundef %timings) #11
  br label %cleanup

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  %call19 = tail call i32 %12(ptr noundef nonnull %6, ptr noundef %timings) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %if.then12, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call14, %if.then12 ], [ %call19, %if.else15 ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_query_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %timings, ptr @cea1080p60, i32 132)
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %query_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %query_dv_timings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %query_dv_timings, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.else7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %query_dv_timings10 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %query_dv_timings10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %query_dv_timings10, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %if.then12

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else15

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 %15(ptr noundef nonnull %6, ptr noundef %timings) #11
  br label %cleanup

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  %call19 = tail call i32 %12(ptr noundef nonnull %6, ptr noundef %timings) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %if.then12, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call14, %if.then12 ], [ %call19, %if.else15 ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_enum_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %reserved = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 2
  %6 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %reserved, align 4
  %timings2 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %timings2, ptr @cea1080p60, i32 132)
  br label %cleanup

if.end3:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pad, align 4
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.else

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %pad6 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pad6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pad6, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_dv_timings = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %enum_dv_timings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enum_dv_timings, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.else12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %enum_dv_timings15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %enum_dv_timings15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enum_dv_timings15, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %if.then17

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else20

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 %19(ptr noundef nonnull %10, ptr noundef %timings) #11
  br label %cleanup

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  %call24 = tail call i32 %16(ptr noundef nonnull %10, ptr noundef %timings) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.then17, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call19, %if.then17 ], [ %call24, %if.else20 ], [ -19, %if.end3.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_dv_timings_cap(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pad, align 4
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.else

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %pad1 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pad1, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.else.if.end21_crit_edge, label %land.lhs.true

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %if.else
  %dv_timings_cap = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %dv_timings_cap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dv_timings_cap, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true.if.end21_crit_edge, label %if.else7

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %dv_timings_cap10 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %dv_timings_cap10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dv_timings_cap10, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end21.sink.split_crit_edge

land.lhs.true9.if.end21.sink.split_crit_edge:     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.sink.split

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.else15, %land.lhs.true9.if.end21.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.else15 ], [ %13, %land.lhs.true9.if.end21.sink.split_crit_edge ]
  %call19 = tail call i32 %.sink(ptr noundef nonnull %4, ptr noundef %cap) #11
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %land.lhs.true.if.end21_crit_edge, %if.else.if.end21_crit_edge, %entry.if.end21_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end21_crit_edge ], [ -515, %land.lhs.true.if.end21_crit_edge ], [ -515, %if.else.if.end21_crit_edge ], [ %call19, %if.end21.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_g_edid(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %edid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %edid, align 4
  %is_output = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %is_output to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_output, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond)
  %cmp.not = icmp ult i32 %3, %cond
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %edid, align 4
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.if.end27_crit_edge, label %if.else

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %pad6 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %pad6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pad6, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.else.if.end27_crit_edge, label %land.lhs.true

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else
  %get_edid = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %get_edid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_edid, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %land.lhs.true.if.end27_crit_edge, label %if.else12

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %get_edid15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %get_edid15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_edid15, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27.sink.split_crit_edge

land.lhs.true14.if.end27.sink.split_crit_edge:    ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.sink.split

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else20, %land.lhs.true14.if.end27.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else20 ], [ %17, %land.lhs.true14.if.end27.sink.split_crit_edge ]
  %call24 = tail call i32 %.sink(ptr noundef nonnull %8, ptr noundef %edid) #11
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %land.lhs.true.if.end27_crit_edge, %if.else.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %__result.0 = phi i32 [ -19, %if.end.if.end27_crit_edge ], [ -515, %land.lhs.true.if.end27_crit_edge ], [ -515, %if.else.if.end27_crit_edge ], [ %call24, %if.end27.sink.split ]
  %18 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %3, ptr %edid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__result.0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_s_edid(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %edid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %edid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %edid, align 4
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end26_crit_edge, label %if.else

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pad5, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %set_edid = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %set_edid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_edid, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %land.lhs.true.if.end26_crit_edge, label %if.else11

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %set_edid14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %set_edid14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_edid14, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26.sink.split_crit_edge

land.lhs.true13.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %12, %if.else19 ], [ %15, %land.lhs.true13.if.end26.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %6, ptr noundef %edid) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %__result.0 = phi i32 [ -19, %if.end.if.end26_crit_edge ], [ -515, %land.lhs.true.if.end26_crit_edge ], [ -515, %if.else.if.end26_crit_edge ], [ %call23, %if.end26.sink.split ]
  %16 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %1, ptr %edid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__result.0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 4, ptr noundef null) #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #11
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_dv_timings_aspect_ratio(ptr sret(%struct.v4l2_fract) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_calc_timeperframe(ptr sret(%struct.v4l2_fract) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cobalt_pcie_status_show(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cobalt_cpld_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cobalt_irq_log_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cobalt_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %stride = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stride, align 8
  %height = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 8
  %mul = mul i32 %5, %3
  %6 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ult i32 %7, 3
  br i1 %cmp, label %entry.if.end3.sink.split_crit_edge, label %if.end

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp1 = icmp ugt i32 %7, 32
  br i1 %cmp1, label %if.end.if.end3.sink.split_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.if.end3.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.end.if.end3.sink.split_crit_edge, %entry.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 3, %entry.if.end3.sink.split_crit_edge ], [ 32, %if.end.if.end3.sink.split_crit_edge ]
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %num_buffers, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.end.if.end3_crit_edge
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul)
  %cmp5 = icmp ult i32 %12, %mul
  %cond = select i1 %cmp5, i32 -22, i32 0
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_planes, align 4
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_buf_init(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cobalt1, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.cobalt_stream, ptr %3, i32 0, i32 24, i32 %7
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #11
  %stride = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stride, align 8
  %height = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 8
  %mul = mul i32 %11, %9
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %12 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not = icmp eq i32 %mul, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.if.end_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit57_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit57_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit57

vb2_plane_size.exit.if.end_crit_edge:             ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul)
  %cmp59 = icmp ult i32 %15, %mul
  br i1 %cmp59, label %if.then.i55, label %vb2_plane_size.exit.thread.if.end_crit_edge

vb2_plane_size.exit.thread.if.end_crit_edge:      ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i55:                                      ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit57

vb2_plane_size.exit57:                            ; preds = %if.then.i55, %vb2_plane_size.exit.vb2_plane_size.exit57_crit_edge
  %retval.0.i56 = phi i32 [ %17, %if.then.i55 ], [ 0, %vb2_plane_size.exit.vb2_plane_size.exit57_crit_edge ]
  %name62 = getelementptr inbounds %struct.cobalt, ptr %5, i32 0, i32 2, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name62, i32 noundef %retval.0.i56, i32 noundef %mul) #14
  br label %cleanup

if.end:                                           ; preds = %vb2_plane_size.exit.thread.if.end_crit_edge, %vb2_plane_size.exit.if.end_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %cmp5 = icmp eq ptr %19, null
  br i1 %cmp5, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %pci_dev = getelementptr inbounds %struct.cobalt, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %dev7 = getelementptr %struct.cobalt_stream, ptr %3, i32 0, i32 24, i32 %7, i32 4
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev7, align 4
  %is_audio = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 31
  %23 = ptrtoint ptr %is_audio to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_audio, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  %cond = select i1 %tobool.not, i32 115200, i32 64
  %call8 = tail call ptr @descriptor_list_allocate(ptr noundef %arrayidx, i32 noundef %cond) #11
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %cmp10 = icmp eq ptr %26, null
  br i1 %cmp10, label %if.then6.cleanup_crit_edge, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %is_output = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 30
  %29 = ptrtoint ptr %is_output to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_output, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool14.not = icmp eq i8 %30, 0
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nents, align 4
  %width = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 10
  %33 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 12
  %35 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bpp, align 4
  %mul15 = mul i32 %36, %34
  %37 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stride, align 8
  %call17 = tail call i32 @descriptor_list_create(ptr noundef %5, ptr noundef %28, i1 noundef zeroext %tobool14.not, i32 noundef %32, i32 noundef %mul, i32 noundef %mul15, i32 noundef %38, ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end13.cleanup_crit_edge, label %if.then19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @descriptor_list_free(ptr noundef %arrayidx) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end13.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %vb2_plane_size.exit57
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit57 ], [ -12, %if.then6.cleanup_crit_edge ], [ %call17, %if.then19 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_set_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv, align 4
  %stride = getelementptr inbounds %struct.cobalt_stream, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stride, align 8
  %height = getelementptr inbounds %struct.cobalt_stream, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 8
  %mul = mul i32 %9, %7
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul)
  %cmp1.i = icmp ult i32 %11, %mul
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !202

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %13, %if.then38.i ], [ %mul, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %14 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %entry.vb2_set_plane_payload.exit_crit_edge
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %15 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cobalt_buf_cleanup(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.cobalt_stream, ptr %3, i32 0, i32 24, i32 %5
  tail call void @descriptor_list_free(ptr noundef %arrayidx) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  %sd_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cobalt1, align 4
  %video_channel = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %video_channel, align 8
  %bar1 = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar1, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 65536
  %mul = shl i32 %5, 12
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr7 = getelementptr i8, ptr %add.ptr2, i32 512
  %8 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1
  %is_audio = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 31
  %9 = ptrtoint ptr %is_audio to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_audio, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %entry
  %is_output = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 30
  %11 = ptrtoint ptr %is_output to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_output, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  %unstable_frame = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %unstable_frame to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %unstable_frame, align 8
  %14 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar1, align 8
  %add.ptr2.i = getelementptr i8, ptr %15, i32 86016
  %pixfmt.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixfmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 877807426, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 877807426
  %cond.i = select i1 %cmp.not.i, i32 0, i32 -2147483648
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt.i) #11
  %18 = getelementptr inbounds i8, ptr %sd_fmt.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 84)
  %20 = ptrtoint ptr %sd_fmt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %sd_fmt.i, align 4
  %pixelclock.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 4
  %21 = ptrtoint ptr %pixelclock.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %pixelclock.i, align 1
  %flags.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 16
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %flags.i, align 1
  %and.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %extract.t105.i = trunc i64 %22 to i32
  br i1 %tobool.not.i, label %if.then9.if.end.i_crit_edge, label %if.then.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = mul i64 %22, 1000
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9011446405638332408, i64 %mul.i, i32 0) #15, !srcloc !203
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %25, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9011446405638332408, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #15, !srcloc !204
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %26, 0
  %div158.i.i106.i = lshr i64 %asmresult10.i.i.i.i, 9
  %extract.t.i = trunc i64 %div158.i.i106.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then9.if.end.i_crit_edge
  %clk.0.off0.i = phi i32 [ %extract.t.i, %if.then.i ], [ %extract.t105.i, %if.then9.if.end.i_crit_edge ]
  %call3.i = tail call zeroext i1 @cobalt_cpld_set_freq(ptr noundef %3, i32 noundef %clk.0.off0.i) #11
  br i1 %call3.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 2, i32 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name.i) #14
  br label %cobalt_enable_output.exit

if.end6.i:                                        ; preds = %if.end.i
  %colorspace.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %colorspace.i, align 4
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2
  %colorspace7.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %colorspace7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %colorspace7.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xfer_func.i, align 8
  %conv8.i = trunc i32 %31 to i16
  %xfer_func10.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 7
  %32 = ptrtoint ptr %xfer_func10.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv8.i, ptr %xfer_func10.i, align 4
  %ycbcr_enc.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 18
  %33 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ycbcr_enc.i, align 4
  %conv11.i = trunc i32 %34 to i16
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv11.i, ptr %35, align 4
  %quantization.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 19
  %37 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quantization.i, align 8
  %conv13.i = trunc i32 %38 to i16
  %quantization15.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 6
  %39 = ptrtoint ptr %quantization15.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv13.i, ptr %quantization15.i, align 2
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %8, align 1
  %42 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %format.i, align 4
  %height.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %height.i, align 1
  %height19.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %height19.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %height19.i, align 4
  %46 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pixfmt.i, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %47, label %if.end6.i.sw.epilog.i_crit_edge [
    i32 1448695129, label %if.end6.i.sw.epilog.sink.split.i_crit_edge
    i32 877807426, label %sw.bb22.i
  ]

if.end6.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

if.end6.i.sw.epilog.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb22.i, %if.end6.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 4106, %sw.bb22.i ], [ 8207, %if.end6.i.sw.epilog.sink.split.i_crit_edge ]
  %code24.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %code24.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink.i, ptr %code24.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end6.i.sw.epilog.i_crit_edge
  %sd.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sd.i, align 4
  %tobool25.not.i = icmp eq ptr %51, null
  br i1 %tobool25.not.i, label %sw.epilog.i.if.end47.i_crit_edge, label %if.else.i

sw.epilog.i.if.end47.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.else.i:                                        ; preds = %sw.epilog.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pad.i, align 4
  %tobool27.not.i = icmp eq ptr %55, null
  br i1 %tobool27.not.i, label %if.else.i.if.end47.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %set_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %set_fmt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_fmt.i, align 4
  %tobool30.not.i = icmp eq ptr %57, null
  br i1 %tobool30.not.i, label %land.lhs.true.i.if.end47.i_crit_edge, label %if.else32.i

land.lhs.true.i.if.end47.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.else32.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool33.not.i = icmp eq ptr %58, null
  br i1 %tobool33.not.i, label %if.else32.i.if.else40.i_crit_edge, label %land.lhs.true34.i

if.else32.i.if.else40.i_crit_edge:                ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else40.i

land.lhs.true34.i:                                ; preds = %if.else32.i
  %set_fmt35.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %set_fmt35.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_fmt35.i, align 4
  %tobool36.not.i = icmp eq ptr %60, null
  br i1 %tobool36.not.i, label %land.lhs.true34.i.if.else40.i_crit_edge, label %land.lhs.true34.i.if.end47.sink.split.i_crit_edge

land.lhs.true34.i.if.end47.sink.split.i_crit_edge: ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.sink.split.i

land.lhs.true34.i.if.else40.i_crit_edge:          ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else40.i

if.else40.i:                                      ; preds = %land.lhs.true34.i.if.else40.i_crit_edge, %if.else32.i.if.else40.i_crit_edge
  br label %if.end47.sink.split.i

if.end47.sink.split.i:                            ; preds = %if.else40.i, %land.lhs.true34.i.if.end47.sink.split.i_crit_edge
  %.sink107.i = phi ptr [ %57, %if.else40.i ], [ %60, %land.lhs.true34.i.if.end47.sink.split.i_crit_edge ]
  %call44.i = call i32 %.sink107.i(ptr noundef nonnull %51, ptr noundef null, ptr noundef nonnull %sd_fmt.i) #11
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end47.sink.split.i, %land.lhs.true.i.if.end47.i_crit_edge, %if.else.i.if.end47.i_crit_edge, %sw.epilog.i.if.end47.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #11, !srcloc !199
  %hsync.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 7
  %61 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %hsync.i, align 1
  %sync_generator_h_sync_length.i = getelementptr i8, ptr %15, i32 86020
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %63 = call i32 @llvm.bswap.i32(i32 %62) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sync_generator_h_sync_length.i, i32 %63) #11, !srcloc !199
  %hbackporch.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 8
  %64 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %hbackporch.i, align 1
  %sync_generator_h_backporch_length.i = getelementptr i8, ptr %15, i32 86024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %66 = call i32 @llvm.bswap.i32(i32 %65) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sync_generator_h_backporch_length.i, i32 %66) #11, !srcloc !199
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %8, align 1
  %sync_generator_h_active_length.i = getelementptr i8, ptr %15, i32 86028
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %69 = call i32 @llvm.bswap.i32(i32 %68) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sync_generator_h_active_length.i, i32 %69) #11, !srcloc !199
  %hfrontporch.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 6
  %70 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %hfrontporch.i, align 1
  %sync_generator_h_frontporch_length.i = getelementptr i8, ptr %15, i32 86032
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %72 = call i32 @llvm.bswap.i32(i32 %71) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sync_generator_h_frontporch_length.i, i32 %72) #11, !srcloc !199
  %vsync.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 10
  %73 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %vsync.i, align 1
  %sync_generator_v_sync_length.i = getelementptr i8, ptr %15, i32 86036
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %75 = call i32 @llvm.bswap.i32(i32 %74) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sync_generator_v_sync_length.i, i32 %75) #11, !srcloc !199
  %vbackporch.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 11
  %76 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %vbackporch.i, align 1
  %sync_generator_v_backporch_length.i = getelementptr i8, ptr %15, i32 86040
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %78 = call i32 @llvm.bswap.i32(i32 %77) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sync_generator_v_backporch_length.i, i32 %78) #11, !srcloc !199
  %79 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %height.i, align 1
  %sync_generator_v_active_length.i = getelementptr i8, ptr %15, i32 86044
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %81 = call i32 @llvm.bswap.i32(i32 %80) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sync_generator_v_active_length.i, i32 %81) #11, !srcloc !199
  %vfrontporch.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 9
  %82 = ptrtoint ptr %vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %vfrontporch.i, align 1
  %sync_generator_v_frontporch_length.i = getelementptr i8, ptr %15, i32 86048
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %84 = call i32 @llvm.bswap.i32(i32 %83) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sync_generator_v_frontporch_length.i, i32 %84) #11, !srcloc !199
  %error_color.i = getelementptr i8, ptr %15, i32 86052
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %error_color.i, i32 -1056925440) #11, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %85 = or i32 %cond.i, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %85) #11, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %86 = or i32 %cond.i, 1073741824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %86) #11, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %87 = or i32 %cond.i, 100663296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %87) #11, !srcloc !199
  br label %cobalt_enable_output.exit

cobalt_enable_output.exit:                        ; preds = %if.end47.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i) #11
  br label %done

if.end10:                                         ; preds = %if.end
  tail call fastcc void @cobalt_enable_input(ptr noundef %1)
  %88 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bar1, align 8
  %add.ptr12 = getelementptr i8, ptr %89, i32 65536
  %add.ptr14 = getelementptr i8, ptr %add.ptr12, i32 %mul
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 768
  %add.ptr20 = getelementptr i8, ptr %add.ptr14, i32 256
  %add.ptr25 = getelementptr i8, ptr %add.ptr14, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 33554432) #11, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #11, !srcloc !199
  %90 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %8, align 1
  %frame_width = getelementptr inbounds %struct.m00389_cvi_regmap, ptr %add.ptr2, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %frame_width, i32 %92) #11, !srcloc !199
  %height = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %height, align 1
  %frame_height = getelementptr inbounds %struct.m00389_cvi_regmap, ptr %add.ptr2, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %frame_height, i32 %95) #11, !srcloc !199
  %96 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %8, align 1
  %hfrontporch = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 6
  %98 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %hfrontporch, align 1
  %hsync = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 7
  %100 = ptrtoint ptr %hsync to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %hsync, align 1
  %hbackporch = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 8
  %102 = ptrtoint ptr %hbackporch to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %hbackporch, align 1
  %add = add i32 %99, %97
  %add28 = add i32 %add, %101
  %add29 = add i32 %add28, %103
  %104 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %height, align 1
  %vfrontporch = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 9
  %106 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %vfrontporch, align 1
  %vsync = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 10
  %108 = ptrtoint ptr %vsync to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %vsync, align 1
  %vbackporch = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 11
  %110 = ptrtoint ptr %vbackporch to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %vbackporch, align 1
  %il_vfrontporch = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 12
  %112 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 13
  %114 = ptrtoint ptr %il_vsync to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %il_vsync, align 1
  %il_vbackporch = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 14
  %116 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %il_vbackporch, align 1
  %add31 = add i32 %107, %105
  %add32 = add i32 %add31, %109
  %add33 = add i32 %add32, %111
  %add34 = add i32 %add33, %113
  %add35 = add i32 %add34, %115
  %add36 = add i32 %add35, %117
  %mul37 = mul i32 %add36, %add29
  %conv = zext i32 %mul37 to i64
  %conv45 = zext i32 %add29 to i64
  %mul47 = mul nuw nsw i64 %conv45, 200000000
  %pixelclock = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 4
  %118 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %118, i32 8)
  %119 = load i64, ptr %pixelclock, align 1
  %conv48 = trunc i64 %119 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul47)
  %cmp164.i.i = icmp ult i64 %mul47, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !202

if.then168.i.i:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i.i = trunc i64 %mul47 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv48
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %120 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv48, i64 %mul47) #15, !srcloc !205
  %asmresult1.i.i.i = extractvalue { i64, i64 } %120, 1
  %extract.t281 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t281, %if.else174.i.i ]
  %hsync_timeout_val = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr20, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %121 = tail call i32 @llvm.bswap.i32(i32 %dividend.addr.0.i.i.off0) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hsync_timeout_val, i32 %121) #11, !srcloc !199
  %control50 = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr20, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control50, i32 67108864) #11, !srcloc !199
  %clk_freq51 = getelementptr inbounds %struct.m00473_freewheel_regmap, ptr %add.ptr15, i32 0, i32 6
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %clk_freq51) #11, !srcloc !200
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %div = udiv i32 %123, 1000000
  %ref_clk_cnt_val = getelementptr inbounds %struct.m00479_clk_loss_detector_regmap, ptr %add.ptr25, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %124 = tail call i32 @llvm.bswap.i32(i32 %div) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ref_clk_cnt_val, i32 %124) #11, !srcloc !199
  %125 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %pixelclock, align 1
  %mul54 = mul i64 %126, 995
  %127 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul54, i32 0) #15, !srcloc !203
  %asmresult.i.i.i136 = extractvalue { i64, i32 } %127, 0
  %asmresult4.i.i.i137 = extractvalue { i64, i32 } %127, 1
  %128 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul54, i64 %asmresult.i.i.i136, i32 %asmresult4.i.i.i137) #15, !srcloc !204
  %asmresult10.i.i.i149 = extractvalue { i64, i32 } %128, 0
  %div158.i.i154283 = lshr i64 %asmresult10.i.i.i149, 29
  %conv56 = trunc i64 %div158.i.i154283 to i32
  %test_clk_cnt_val = getelementptr inbounds %struct.m00479_clk_loss_detector_regmap, ptr %add.ptr25, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %129 = tail call i32 @llvm.bswap.i32(i32 %conv56) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %test_clk_cnt_val, i32 %129) #11, !srcloc !199
  %130 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %8, align 1
  %132 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %height, align 1
  %mul59 = mul i32 %133, %131
  %active_length = getelementptr inbounds %struct.m00473_freewheel_regmap, ptr %add.ptr15, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %134 = tail call i32 @llvm.bswap.i32(i32 %mul59) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %active_length, i32 %134) #11, !srcloc !199
  %conv60 = zext i32 %123 to i64
  %mul61 = mul nuw i64 %conv60, %conv
  %135 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %135, i32 8)
  %136 = load i64, ptr %pixelclock, align 1
  %conv63 = trunc i64 %136 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul61)
  %cmp164.i.i261 = icmp ult i64 %mul61, 4294967296
  br i1 %cmp164.i.i261, label %if.then168.i.i266, label %if.else174.i.i268, !prof !202

if.then168.i.i266:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i.i263 = trunc i64 %mul61 to i32
  %div172.i.i264 = udiv i32 %conv169.i.i263, %conv63
  br label %div_u64.exit270

if.else174.i.i268:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #13
  %137 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv63, i64 %mul61) #15, !srcloc !205
  %asmresult1.i.i.i267 = extractvalue { i64, i64 } %137, 1
  %extract.t286 = trunc i64 %asmresult1.i.i.i267 to i32
  br label %div_u64.exit270

div_u64.exit270:                                  ; preds = %if.else174.i.i268, %if.then168.i.i266
  %dividend.addr.0.i.i269.off0 = phi i32 [ %div172.i.i264, %if.then168.i.i266 ], [ %extract.t286, %if.else174.i.i268 ]
  %total_length = getelementptr inbounds %struct.m00473_freewheel_regmap, ptr %add.ptr15, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %138 = tail call i32 @llvm.bswap.i32(i32 %dividend.addr.0.i.i269.off0) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %total_length, i32 %138) #11, !srcloc !199
  %irq_triggers = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr20, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irq_triggers, i32 1140850688) #11, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #11, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control50, i32 67108864) #11, !srcloc !199
  %output_color = getelementptr inbounds %struct.m00473_freewheel_regmap, ptr %add.ptr15, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %output_color, i32 -16777216) #11, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 16777216) #11, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 50331648) #11, !srcloc !199
  %unstable_frame69 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 26
  %139 = ptrtoint ptr %unstable_frame69 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %unstable_frame69, align 8
  %enable_freewheel = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 28
  %140 = ptrtoint ptr %enable_freewheel to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %enable_freewheel, align 2
  %enable_cvi = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 27
  %141 = ptrtoint ptr %enable_cvi to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %enable_cvi, align 1
  %skip_first_frames = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 29
  %142 = ptrtoint ptr %skip_first_frames to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %skip_first_frames, align 4
  br label %done

done:                                             ; preds = %div_u64.exit270, %cobalt_enable_output.exit, %entry.done_crit_edge
  %sequence = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 15
  %143 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %sequence, align 8
  %144 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cobalt1, align 4
  %146 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %video_channel, align 8
  %bar1.i272 = getelementptr inbounds %struct.cobalt, ptr %145, i32 0, i32 5
  %148 = ptrtoint ptr %bar1.i272 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bar1.i272, align 8
  %irqlock.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 6
  %call5.i273 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #11
  %is_output.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 30
  %150 = ptrtoint ptr %is_output.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %is_output.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i274 = icmp eq i8 %151, 0
  br i1 %tobool.not.i274, label %if.then.i277, label %if.else.i278

if.then.i277:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %149, i32 65536
  %mul.i275 = shl i32 %147, 12
  %add.ptr2.i276 = getelementptr i8, ptr %add.ptr.i, i32 %mul.i275
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i276, i32 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 33554432) #11, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #11, !srcloc !199
  br label %cobalt_dma_start_streaming.exit

if.else.i278:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %bar1.i272 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bar1.i272, align 8
  %add.ptr11.i = getelementptr i8, ptr %153, i32 86016
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #11, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %155 = and i32 %154, -1610612737
  %156 = call i32 @llvm.bswap.i32(i32 %155) #11
  %or.i = or i32 %156, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %157 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %157) #11, !srcloc !199
  %or15.i = or i32 %156, 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %158 = call i32 @llvm.bswap.i32(i32 %or15.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %158) #11, !srcloc !199
  br label %cobalt_dma_start_streaming.exit

cobalt_dma_start_streaming.exit:                  ; preds = %if.else.i278, %if.then.i277
  %bufs.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 2
  %159 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bufs.i, align 8
  %index.i = getelementptr i8, ptr %160, i32 -732
  %161 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr %struct.cobalt_stream, ptr %1, i32 0, i32 24, i32 %162
  call void @omni_sg_dma_start(ptr noundef %1, ptr noundef %arrayidx.i) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call5.i273) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cobalt_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cobalt1, align 4
  %video_channel = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %video_channel, align 8
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar1.i, align 8
  %is_output.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %is_output.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_output.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %7, i32 65536
  %mul.i = shl i32 %5, 12
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #11, !srcloc !199
  br label %do.body12.i

if.else.i:                                        ; preds = %entry
  %is_audio.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %is_audio.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_audio.i, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not.i = icmp eq i8 %11, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i.do.body12.i_crit_edge

if.else.i.do.body12.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr8.i = getelementptr i8, ptr %7, i32 86016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 1073741824) #11, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #11, !srcloc !199
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then5.i, %if.else.i.do.body12.i_crit_edge, %if.then.i
  %irqlock.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 6
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #11
  %bufs.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %p.0117.i = load ptr, ptr %bufs.i, align 4
  %cmp.i.not118.i = icmp eq ptr %p.0117.i, %bufs.i
  br i1 %cmp.i.not118.i, label %do.body12.i.for.end.i_crit_edge, label %do.body12.i.for.body.i_crit_edge

do.body12.i.for.body.i_crit_edge:                 ; preds = %do.body12.i
  br label %for.body.i

do.body12.i.for.end.i_crit_edge:                  ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body12.i.for.body.i_crit_edge
  %p.0119.i = phi ptr [ %p.0.i, %for.body.i.for.body.i_crit_edge ], [ %p.0117.i, %do.body12.i.for.body.i_crit_edge ]
  %index.i = getelementptr i8, ptr %p.0119.i, i32 -732
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr %struct.cobalt_stream, ptr %1, i32 0, i32 24, i32 %14
  tail call void @descriptor_list_end_of_chain(ptr noundef %arrayidx.i) #11
  %15 = ptrtoint ptr %p.0119.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.0.i = load ptr, ptr %p.0119.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, %bufs.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.body12.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call13.i) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 380) #11
  %call30.i = tail call zeroext i1 @is_dma_done(ptr noundef %1) #11
  br i1 %call30.i, label %for.end.i.cobalt_dma_stop_streaming.exit_crit_edge, label %if.then42.i

for.end.i.cobalt_dma_stop_streaming.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_dma_stop_streaming.exit

if.then42.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %16 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %done_wq.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 1, i32 27
  %call46120.i = call i32 @prepare_to_wait_event(ptr noundef %done_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call48121.i = call zeroext i1 @is_dma_done(ptr noundef %1) #11
  br i1 %call48121.i, label %if.end72.thread.i, label %if.then42.i.cleanup.i_crit_edge

if.then42.i.cleanup.i_crit_edge:                  ; preds = %if.then42.i
  br label %cleanup.i

if.end72.thread.i:                                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %done_wq.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %cobalt_dma_stop_streaming.exit

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then42.i.cleanup.i_crit_edge
  %__ret43.1122.i = phi i32 [ %__ret43.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 10, %if.then42.i.cleanup.i_crit_edge ]
  %call67.i = call i32 @schedule_timeout(i32 noundef %__ret43.1122.i) #11
  %call46.i = call i32 @prepare_to_wait_event(ptr noundef %done_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call48.i = call zeroext i1 @is_dma_done(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool53.not.i = icmp eq i32 %call67.i, 0
  %17 = select i1 %call48.i, i1 %tobool53.not.i, i1 false
  %__ret43.1.i = select i1 %17, i32 1, i32 %call67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.1.i)
  %tobool60.not.i = icmp eq i32 %__ret43.1.i, 0
  %18 = select i1 %call48.i, i1 true, i1 %tobool60.not.i
  br i1 %18, label %if.end72.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end72.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %done_wq.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br i1 %tobool60.not.i, label %if.then75.i, label %if.end72.i.cobalt_dma_stop_streaming.exit_crit_edge

if.end72.i.cobalt_dma_stop_streaming.exit_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cobalt_dma_stop_streaming.exit

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @omni_sg_dma_abort_channel(ptr noundef %1) #11
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #14
  br label %cobalt_dma_stop_streaming.exit

cobalt_dma_stop_streaming.exit:                   ; preds = %if.then75.i, %if.end72.i.cobalt_dma_stop_streaming.exit_crit_edge, %if.end72.thread.i, %for.end.i.cobalt_dma_stop_streaming.exit_crit_edge
  %dma_channel.i = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %dma_channel.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dma_channel.i, align 4
  %conv82.i = zext i8 %20 to i32
  %shl.i = shl nuw i32 1, %conv82.i
  %bar0.i.i = getelementptr inbounds %struct.cobalt, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %bar0.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bar0.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  %23 = call i32 @llvm.bswap.i32(i32 %shl.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #11, !srcloc !199
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #11
  %24 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bufs.i, align 8
  %cmp.i.not58 = icmp eq ptr %25, %bufs.i
  br i1 %cmp.i.not58, label %cobalt_dma_stop_streaming.exit.for.end_crit_edge, label %cobalt_dma_stop_streaming.exit.for.body_crit_edge

cobalt_dma_stop_streaming.exit.for.body_crit_edge: ; preds = %cobalt_dma_stop_streaming.exit
  br label %for.body

cobalt_dma_stop_streaming.exit.for.end_crit_edge: ; preds = %cobalt_dma_stop_streaming.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %cobalt_dma_stop_streaming.exit.for.body_crit_edge
  %p.059 = phi ptr [ %safe.061, %list_del.exit.for.body_crit_edge ], [ %25, %cobalt_dma_stop_streaming.exit.for.body_crit_edge ]
  %26 = ptrtoint ptr %p.059 to i32
  call void @__asan_load4_noabort(i32 %26)
  %safe.061 = load ptr, ptr %p.059, align 4
  %add.ptr = getelementptr i8, ptr %p.059, i32 -736
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %p.059) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.059, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %p.059 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p.059, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %33 = ptrtoint ptr %p.059 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %p.059, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.059, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #11
  %cmp.i.not = icmp eq ptr %safe.061, %bufs.i
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %cobalt_dma_stop_streaming.exit.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call3) #11
  %is_audio = getelementptr inbounds %struct.cobalt_stream, ptr %1, i32 0, i32 31
  %35 = ptrtoint ptr %is_audio to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_audio, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool12.not = icmp eq i8 %36, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %37 = ptrtoint ptr %is_output.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_output.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool14.not = icmp eq i8 %38, 0
  br i1 %tobool14.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bar1.i, align 8
  %add.ptr16 = getelementptr i8, ptr %40, i32 65536
  %mul = shl i32 %5, 12
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 %mul
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 768
  %add.ptr23 = getelementptr i8, ptr %add.ptr17, i32 256
  %add.ptr28 = getelementptr i8, ptr %add.ptr17, i32 1024
  %control = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr23, i32 0, i32 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control, i32 0) #11, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control, i32 67108864) #11, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #11, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #11, !srcloc !199
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cobalt_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  %desc.i = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.cobalt_stream, ptr %3, i32 0, i32 24, i32 %5
  tail call void @descriptor_list_loopback(ptr noundef %arrayidx) #11
  tail call void @descriptor_list_interrupt_disable(ptr noundef %arrayidx) #11
  %irqlock = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #11
  %list = getelementptr inbounds %struct.cobalt_buffer, ptr %vb, i32 0, i32 1
  %bufs = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %bufs) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cobalt_buffer, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %desc.i) #11
  %12 = call ptr @memset(ptr %desc.i, i32 255, i32 128)
  %13 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.014.i = load ptr, ptr %bufs, align 4
  %cmp.i.not15.i = icmp eq ptr %p.014.i, %bufs
  br i1 %cmp.i.not15.i, label %list_add_tail.exit.chain_all_buffers.exit_crit_edge, label %list_add_tail.exit.for.body.i_crit_edge

list_add_tail.exit.for.body.i_crit_edge:          ; preds = %list_add_tail.exit
  br label %for.body.i

list_add_tail.exit.chain_all_buffers.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %chain_all_buffers.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %list_add_tail.exit.for.body.i_crit_edge
  %p.018.i = phi ptr [ %p.0.i, %if.end.i.for.body.i_crit_edge ], [ %p.014.i, %list_add_tail.exit.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %list_add_tail.exit.for.body.i_crit_edge ]
  %index.i = getelementptr i8, ptr %p.018.i, i32 -732
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr %struct.cobalt_stream, ptr %3, i32 0, i32 24, i32 %15
  %arrayidx2.i = getelementptr [32 x ptr], ptr %desc.i, i32 0, i32 %i.016.i
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.i, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.016.i)
  %cmp.i = icmp sgt i32 %i.016.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add nsw i32 %i.016.i, -1
  %arrayidx3.i = getelementptr [32 x ptr], ptr %desc.i, i32 0, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @descriptor_list_chain(ptr noundef %18, ptr noundef %arrayidx.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add i32 %i.016.i, 1
  %19 = ptrtoint ptr %p.018.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %p.0.i = load ptr, ptr %p.018.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, %bufs
  br i1 %cmp.i.not.i, label %if.end.i.chain_all_buffers.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.chain_all_buffers.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chain_all_buffers.exit

chain_all_buffers.exit:                           ; preds = %if.end.i.chain_all_buffers.exit_crit_edge, %list_add_tail.exit.chain_all_buffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %desc.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @descriptor_list_allocate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @descriptor_list_create(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @descriptor_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cobalt_cpld_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omni_sg_dma_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @descriptor_list_end_of_chain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_dma_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omni_sg_dma_abort_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @descriptor_list_loopback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @descriptor_list_interrupt_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @descriptor_list_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174, !175, !177, !178, !180, !181, !182, !183, !185, !186, !187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @cobalt_node_register.dv1080p60, !1, !"dv1080p60", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1201, i32 38}
!2 = !{ptr @cobalt_node_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1208, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cobalt_node_register.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1209, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1212, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1232, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cobalt_node_register._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @cobalt_node_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1281, i32 4}
!18 = !{ptr @cobalt_node_register._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cobalt_node_register._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1285, i32 2}
!22 = !{ptr @cobalt_node_register._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cobalt_node_register._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cobalt_empty_fops, !25, !"cobalt_empty_fops", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1192, i32 42}
!26 = !{ptr @cobalt_out_fops, !27, !"cobalt_out_fops", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1182, i32 42}
!28 = !{ptr @cobalt_fops, !29, !"cobalt_fops", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1172, i32 42}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 215, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cobalt_enable_input._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @cobalt_enable_input._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cobalt_ioctl_empty_ops, !39, !"cobalt_ioctl_empty_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1163, i32 36}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 443, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cobalt_cobaltc._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cobalt_cobaltc._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @cobalt_ioctl_ops, !46, !"cobalt_ioctl_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 1120, i32 36}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 482, i32 24}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 485, i32 4}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 955, i32 5}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 958, i32 5}
!55 = !{ptr @cea1080p60, !56, !"cea1080p60", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 30, i32 37}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 579, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cobalt_log_status._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @cobalt_log_status._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 580, i32 2}
!64 = !{ptr @cobalt_log_status._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cobalt_log_status._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 583, i32 2}
!68 = !{ptr @cobalt_log_status._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cobalt_log_status._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 596, i32 2}
!72 = !{ptr @cobalt_log_status._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cobalt_log_status._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 601, i32 2}
!79 = !{ptr @cobalt_log_status._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cobalt_log_status._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 514, i32 2}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cobalt_video_input_status_show._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @cobalt_video_input_status_show._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 516, i32 2}
!88 = !{ptr @cobalt_video_input_status_show._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cobalt_video_input_status_show._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 523, i32 2}
!98 = !{ptr @cobalt_video_input_status_show._entry.53, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cobalt_video_input_status_show._entry_ptr.55, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.58, !97, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.59, !97, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 529, i32 2}
!106 = !{ptr @cobalt_video_input_status_show._entry.60, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cobalt_video_input_status_show._entry_ptr.62, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.65, !105, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.66, !105, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.67, !105, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.69, !105, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 544, i32 2}
!117 = !{ptr @cobalt_video_input_status_show._entry.70, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @cobalt_video_input_status_show._entry_ptr.72, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 547, i32 2}
!121 = !{ptr @cobalt_video_input_status_show._entry.73, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cobalt_video_input_status_show._entry_ptr.75, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.77, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 548, i32 2}
!125 = !{ptr @cobalt_video_input_status_show._entry.76, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @cobalt_video_input_status_show._entry_ptr.78, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 549, i32 2}
!129 = !{ptr @cobalt_video_input_status_show._entry.79, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @cobalt_video_input_status_show._entry_ptr.81, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.83, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 550, i32 2}
!133 = !{ptr @cobalt_video_input_status_show._entry.82, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @cobalt_video_input_status_show._entry_ptr.84, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.86, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 551, i32 2}
!137 = !{ptr @cobalt_video_input_status_show._entry.85, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @cobalt_video_input_status_show._entry_ptr.87, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.89, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 552, i32 2}
!141 = !{ptr @cobalt_video_input_status_show._entry.88, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cobalt_video_input_status_show._entry_ptr.90, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.92, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 553, i32 2}
!145 = !{ptr @cobalt_video_input_status_show._entry.91, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @cobalt_video_input_status_show._entry_ptr.93, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.95, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 554, i32 2}
!149 = !{ptr @cobalt_video_input_status_show._entry.94, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @cobalt_video_input_status_show._entry_ptr.96, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.98, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 555, i32 2}
!153 = !{ptr @cobalt_video_input_status_show._entry.97, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cobalt_video_input_status_show._entry_ptr.99, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.100, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.101, !152, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.102, !152, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.104, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 563, i32 2}
!160 = !{ptr @cobalt_video_input_status_show._entry.103, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @cobalt_video_input_status_show._entry_ptr.105, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.106, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.107, !159, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.109, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 568, i32 2}
!166 = !{ptr @cobalt_video_input_status_show._entry.108, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @cobalt_video_input_status_show._entry_ptr.110, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @cobalt_qops, !169, !"cobalt_qops", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 423, i32 29}
!170 = !{ptr @.str.111, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 68, i32 3}
!172 = !{ptr @.str.112, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @cobalt_buf_init._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @cobalt_buf_init._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = distinct !{null, !176, !"__already_done", i1 false, i1 false}
!176 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!177 = !{ptr @.str.113, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.114, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 157, i32 3}
!180 = !{ptr @.str.115, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @cobalt_enable_output._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @cobalt_enable_output._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.116, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/cobalt/cobalt-v4l2.c", i32 382, i32 3}
!185 = !{ptr @.str.117, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @cobalt_dma_stop_streaming._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @cobalt_dma_stop_streaming._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i8 0, i8 2}
!198 = !{i64 2153794117}
!199 = !{i64 6251995}
!200 = !{i64 6252413}
!201 = !{i64 2153792762}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{i64 896573, i64 896600, i64 896622, i64 896650}
!204 = !{i64 896981, i64 897008, i64 897041, i64 897062, i64 897089, i64 897115}
!205 = !{i64 2148382117, i64 2148382397, i64 2148382731, i64 2148383065}
