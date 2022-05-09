; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-video.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx23885_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, [8 x %struct.cx23885_input], i32, i32 }
%struct.cx23885_input = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx23885_fmt = type { i32, i32, i32, i32 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.157, i16, i16, i16, [10 x i16] }
%union.anon.157 = type { i16 }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.161], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.161 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.162 }>
%union.anon.162 = type { i64 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168, %struct.anon.169, %struct.anon.170, %struct.anon.171 }
%struct.anon.164 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.165 = type { ptr, ptr }
%struct.anon.166 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.167 = type { ptr, ptr }
%struct.anon.168 = type { ptr, ptr, ptr }
%struct.anon.169 = type { ptr, ptr }
%struct.anon.170 = type { ptr, ptr }
%struct.anon.171 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.130, %union.anon.131, i32, ptr, i32, %struct.anon.132, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.130 = type { i64 }
%union.anon.131 = type { ptr }
%struct.anon.132 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_dvb_frontend = type { %struct.list_head, i32, %struct.vb2_dvb }
%struct.vb2_dvb = type { ptr, ptr, %struct.vb2_queue, %struct.mutex, i32, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.136 }
%union.anon.136 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.138, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.138 = type { i8 }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.cx23885_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, %struct.cx23885_riscmem, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.135, i32 }
%union.anon.135 = type { i32 }
%struct.cx23885_riscmem = type { i32, ptr, ptr, i32 }

@__UNIQUE_ID_description385 = internal constant [66 x i8] c"cx23885.description=v4l2 driver module for cx23885 based TV cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [47 x i8] c"cx23885.author=Steven Toth <stoth@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [47 x i8] c"cx23885.file=drivers/media/pci/cx23885/cx23885\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [20 x i8] c"cx23885.license=GPL\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [17 x i8] c"cx23885.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype389 = internal constant [39 x i8] c"cx23885.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__param_str_vbi_nr = internal constant [15 x i8] c"cx23885.vbi_nr\00", align 1
@__param_arr_vbi_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_nr }, align 4
@__param_vbi_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_vbi_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_nrtype390 = internal constant [37 x i8] c"cx23885.parmtype=vbi_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr391 = internal constant [43 x i8] c"cx23885.parm=video_nr:video device numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_nr392 = internal constant [39 x i8] c"cx23885.parm=vbi_nr:vbi device numbers\00", section ".modinfo", align 1
@__param_str_video_debug = internal constant [20 x i8] c"cx23885.video_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@video_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_video_debug = internal constant %struct.kernel_param { ptr @__param_str_video_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @video_debug } }, section "__param", align 4
@__UNIQUE_ID_video_debugtype393 = internal constant [33 x i8] c"cx23885.parmtype=video_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_debug394 = internal constant [55 x i8] c"cx23885.parm=video_debug:enable debug messages [video]\00", section ".modinfo", align 1
@__param_str_irq_debug = internal constant [18 x i8] c"cx23885.irq_debug\00", align 1
@irq_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq_debug = internal constant %struct.kernel_param { ptr @__param_str_irq_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @irq_debug } }, section "__param", align 4
@__UNIQUE_ID_irq_debugtype395 = internal constant [31 x i8] c"cx23885.parmtype=irq_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_debug396 = internal constant [59 x i8] c"cx23885.parm=irq_debug:enable debug messages [IRQ handler]\00", section ".modinfo", align 1
@__param_str_vid_limit = internal constant [18 x i8] c"cx23885.vid_limit\00", align 1
@vid_limit = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_vid_limit = internal constant %struct.kernel_param { ptr @__param_str_vid_limit, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @vid_limit } }, section "__param", align 4
@__UNIQUE_ID_vid_limittype397 = internal constant [31 x i8] c"cx23885.parmtype=vid_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vid_limit398 = internal constant [57 x i8] c"cx23885.parm=vid_limit:capture memory limit in megabytes\00", section ".modinfo", align 1
@cx23885_video_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: video:[%p/%d] wakeup reg=%d buf=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx23885_video_wakeup\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/cx23885/cx23885-video.c\00", [54 x i8] zeroinitializer }, align 32
@cx23885_video_wakeup._entry_ptr = internal global ptr @cx23885_video_wakeup._entry, section ".printk_index", align 4
@cx23885_set_tvnorm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: video:%s(norm = 0x%08x) name: [%s]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx23885_set_tvnorm\00", [45 x i8] zeroinitializer }, align 32
@cx23885_set_tvnorm._entry_ptr = internal global ptr @cx23885_set_tvnorm._entry, section ".printk_index", align 4
@cx23885_flatiron_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013cx23885: %s() error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx23885_flatiron_read\00", [42 x i8] zeroinitializer }, align 32
@cx23885_flatiron_read._entry_ptr = internal global ptr @cx23885_flatiron_read._entry, section ".printk_index", align 4
@cx23885_enum_input.iname = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr null, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite1\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite2\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite3\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite4\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Component\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Cable TV\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVB\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"for debug only\00", [17 x i8] zeroinitializer }, align 32
@cx23885_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017cx23885: %s: video:%s()\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx23885_enum_input\00", [45 x i8] zeroinitializer }, align 32
@cx23885_enum_input._entry_ptr = internal global ptr @cx23885_enum_input._entry, section ".printk_index", align 4
@cx23885_boards = external dso_local local_unnamed_addr global [0 x %struct.cx23885_board], align 4
@cx23885_get_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017cx23885: %s: video:%s() returns %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_get_input\00", [46 x i8] zeroinitializer }, align 32
@cx23885_get_input._entry_ptr = internal global ptr @cx23885_get_input._entry, section ".printk_index", align 4
@cx23885_set_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017cx23885: %s: video:%s(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_set_input\00", [46 x i8] zeroinitializer }, align 32
@cx23885_set_input._entry_ptr = internal global ptr @cx23885_set_input._entry, section ".printk_index", align 4
@cx23885_set_input._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017cx23885: %s: video:%s() -EINVAL\0A\00", [61 x i8] zeroinitializer }, align 32
@cx23885_set_input._entry_ptr.25 = internal global ptr @cx23885_set_input._entry.23, section ".printk_index", align 4
@cx23885_video_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: video: (VID_BC_MSK_OPC_ERR 0x%08x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_video_irq\00", [46 x i8] zeroinitializer }, align 32
@cx23885_video_irq._entry_ptr = internal global ptr @cx23885_video_irq._entry, section ".printk_index", align 4
@cx23885_video_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014cx23885: %s: video risc op code error\0A\00", [55 x i8] zeroinitializer }, align 32
@cx23885_video_irq._entry_ptr.30 = internal global ptr @cx23885_video_irq._entry.28, section ".printk_index", align 4
@cx23885_video_irq._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017cx23885: %s: video: (VID_BC_MSK_SYNC 0x%08x) video lines miss-match\0A\00", [57 x i8] zeroinitializer }, align 32
@cx23885_video_irq._entry_ptr.33 = internal global ptr @cx23885_video_irq._entry.31, section ".printk_index", align 4
@cx23885_video_irq._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017cx23885: %s: video: (VID_BC_MSK_OF 0x%08x) fifo overflow\0A\00", [36 x i8] zeroinitializer }, align 32
@cx23885_video_irq._entry_ptr.36 = internal global ptr @cx23885_video_irq._entry.34, section ".printk_index", align 4
@cx23885_video_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.37, ptr @.str.2, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx23885_video_unregister\00", [39 x i8] zeroinitializer }, align 32
@cx23885_video_unregister._entry_ptr = internal global ptr @cx23885_video_unregister._entry, section ".printk_index", align 4
@cx23885_video_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.38, ptr @.str.2, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23885_video_register\00", [41 x i8] zeroinitializer }, align 32
@cx23885_video_register._entry_ptr = internal global ptr @cx23885_video_register._entry, section ".printk_index", align 4
@cx23885_vbi_template = internal global { %struct.video_device, [344 x i8] } zeroinitializer, align 32
@cx23885_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @video_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx23885-video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 7503863, ptr null, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx23885-vbi\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@__const.cx23885_video_register.ctrl = private unnamed_addr constant { ptr, i32, i32, i32, i8, [3 x i8], i32, i8, [3 x i8] } { ptr @.str.41, i32 64, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc3028L-v36.fw\00", [17 x i8] zeroinitializer }, align 32
@__const.cx23885_video_register.ctrl.43 = private unnamed_addr constant { ptr, i32, i32, i32, i8, [3 x i8], i32, i8, [3 x i8] } { ptr @.str.42, i32 64, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@cx23885_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr @buffer_finish, ptr null, ptr @cx23885_start_streaming, ptr @cx23885_stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cx23885_vbi_qops = external dso_local constant %struct.vb2_ops, align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@video_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx23885_video_register._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cx23885: %s: can't register video device\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_video_register._entry_ptr.47 = internal global ptr @cx23885_video_register._entry.45, section ".printk_index", align 4
@cx23885_video_register._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cx23885: %s: registered device %s [v4l2]\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_video_register._entry_ptr.50 = internal global ptr @cx23885_video_register._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbi\00", [28 x i8] zeroinitializer }, align 32
@vbi_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx23885_video_register._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.38, ptr @.str.2, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cx23885: %s: can't register vbi device\0A\00", [54 x i8] zeroinitializer }, align 32
@cx23885_video_register._entry_ptr.54 = internal global ptr @cx23885_video_register._entry.52, section ".printk_index", align 4
@cx23885_video_register._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.38, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016cx23885: %s: registered device %s\0A\00", [59 x i8] zeroinitializer }, align 32
@cx23885_video_register._entry_ptr.57 = internal global ptr @cx23885_video_register._entry.55, section ".printk_index", align 4
@cx23885_video_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017cx23885: %s: video:%s() video_mux: %d [vmux=%d, gpio=0x%x,0x%x,0x%x,0x%x]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_video_mux\00", [46 x i8] zeroinitializer }, align 32
@cx23885_video_mux._entry_ptr = internal global ptr @cx23885_video_mux._entry, section ".printk_index", align 4
@cx23885_flatiron_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017cx23885: %s: video:%s(input = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx23885_flatiron_mux\00", [43 x i8] zeroinitializer }, align 32
@cx23885_flatiron_mux._entry_ptr = internal global ptr @cx23885_flatiron_mux._entry, section ".printk_index", align 4
@cx23885_flatiron_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017cx23885: %s: video:Flatiron dump\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx23885_flatiron_dump\00", [42 x i8] zeroinitializer }, align 32
@cx23885_flatiron_dump._entry_ptr = internal global ptr @cx23885_flatiron_dump._entry, section ".printk_index", align 4
@cx23885_flatiron_dump._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017cx23885: %s: video:FI[%02x] = %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@cx23885_flatiron_dump._entry_ptr.66 = internal global ptr @cx23885_flatiron_dump._entry.64, section ".printk_index", align 4
@cx23885_audio_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017cx23885: %s: video:%s(input=%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_audio_mux\00", [46 x i8] zeroinitializer }, align 32
@cx23885_audio_mux._entry_ptr = internal global ptr @cx23885_audio_mux._entry, section ".printk_index", align 4
@cx23885_set_freq_via_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017cx23885: %s: video:%s() frequency=%d tuner=%d std=0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx23885_set_freq_via_ops\00", [39 x i8] zeroinitializer }, align 32
@cx23885_set_freq_via_ops._entry_ptr = internal global ptr @cx23885_set_freq_via_ops._entry, section ".printk_index", align 4
@cx23885_set_freq_via_ops._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013cx23885: %s() No analog tuner, aborting\0A\00", [53 x i8] zeroinitializer }, align 32
@cx23885_set_freq_via_ops._entry_ptr.73 = internal global ptr @cx23885_set_freq_via_ops._entry.71, section ".printk_index", align 4
@video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @cx23885_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @cx23885_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @cx23885_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enum_audinput, ptr @vidioc_g_audinput, ptr @vidioc_s_audinput, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_pixelaspect, ptr @vidioc_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @vidioc_log_status, ptr null, ptr @cx23885_g_register, ptr @cx23885_s_register, ptr @cx23885_g_chip_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx23885\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCIe:%s\00", [24 x i8] zeroinitializer }, align 32
@formats = internal global { [1 x %struct.cx23885_fmt], [16 x i8] } { [1 x %struct.cx23885_fmt] [%struct.cx23885_fmt { i32 1448695129, i32 16, i32 1, i32 0 }], [16 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.76, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_s_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017cx23885: %s: video:%s() width=%d height=%d field=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr.79 = internal global ptr @vidioc_s_fmt_vid_cap._entry.77, section ".printk_index", align 4
@vidioc_g_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.80, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_g_std\00", [19 x i8] zeroinitializer }, align 32
@vidioc_g_std._entry_ptr = internal global ptr @vidioc_g_std._entry, section ".printk_index", align 4
@vidioc_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.81, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_std\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_std._entry_ptr = internal global ptr @vidioc_s_std._entry, section ".printk_index", align 4
@vidioc_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.82, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@vidioc_enum_input._entry_ptr = internal global ptr @vidioc_enum_input._entry, section ".printk_index", align 4
@cx23885_query_audinput.iname = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85], [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Baseband L/R 1\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Baseband L/R 2\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TV\00", [29 x i8] zeroinitializer }, align 32
@cx23885_query_audinput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.86, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23885_query_audinput\00", [41 x i8] zeroinitializer }, align 32
@cx23885_query_audinput._entry_ptr = internal global ptr @cx23885_query_audinput._entry, section ".printk_index", align 4
@vidioc_g_audinput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.87, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_g_audinput\00", [46 x i8] zeroinitializer }, align 32
@vidioc_g_audinput._entry_ptr = internal global ptr @vidioc_g_audinput._entry, section ".printk_index", align 4
@vidioc_s_audinput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.88, ptr @.str.2, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_s_audinput\00", [46 x i8] zeroinitializer }, align 32
@vidioc_s_audinput._entry_ptr = internal global ptr @vidioc_s_audinput._entry, section ".printk_index", align 4
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017cx23885: %s: video:%s() Creating TFF/NTSC risc\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@buffer_prepare._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017cx23885: %s: video:%s() Creating BFF/PAL/SECAM risc\0A\00", [41 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr.93 = internal global ptr @buffer_prepare._entry.91, section ".printk_index", align 4
@buffer_prepare._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017cx23885: %s: video:[%p/%d] buffer_init - %dx%d %dbpp 0x%08x - dma=0x%08lx\0A\00", [51 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr.96 = internal global ptr @buffer_prepare._entry.94, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@cx23885_start_video_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.98, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx23885_start_video_dma\00", [40 x i8] zeroinitializer }, align 32
@cx23885_start_video_dma._entry_ptr = internal global ptr @cx23885_start_video_dma._entry, section ".printk_index", align 4
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017cx23885: %s: video:[%p/%d] buffer_queue - first active\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@buffer_queue._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017cx23885: %s: video:[%p/%d] buffer_queue - append to active\0A\00", [34 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.103 = internal global ptr @buffer_queue._entry.101, section ".printk_index", align 4
@cx23885_vdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.104, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_vdev_init\00", [46 x i8] zeroinitializer }, align 32
@cx23885_vdev_init._entry_ptr = internal global ptr @cx23885_vdev_init._entry, section ".printk_index", align 4
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s (%s)\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 22, i64 23, i64 33]
@__sancov_gen_cov_switch_values.106 = internal global [18 x i64] [i64 16, i64 32, i64 2, i64 3, i64 20, i64 24, i64 32, i64 33, i64 36, i64 39, i64 43, i64 52, i64 54, i64 55, i64 56, i64 57, i64 58, i64 62]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.108 = internal global [9 x i64] [i64 7, i64 32, i64 20, i64 24, i64 36, i64 52, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.109 = internal global [9 x i64] [i64 7, i64 32, i64 20, i64 24, i64 36, i64 52, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 42]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 32, i64 52, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.112 = internal global [6 x i64] [i64 4, i64 32, i64 52, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 52, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.115 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.116 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 32, i64 52, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.118 = internal global [6 x i64] [i64 4, i64 32, i64 52, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 32, i64 52, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.120 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"video_debug\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 46, i32 21 }
@___asan_gen_.124 = private unnamed_addr constant [10 x i8] c"irq_debug\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 50, i32 21 }
@___asan_gen_.127 = private unnamed_addr constant [10 x i8] c"vid_limit\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 54, i32 21 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 100, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 113, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 188, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 724, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 725, i32 31 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 726, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 727, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 728, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 729, i32 31 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 730, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 731, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 732, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 733, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 734, i32 31 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 737, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 784, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 797, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 800, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1118, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1120, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1127, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1131, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1214, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1241, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [21 x i8] c"cx23885_vbi_template\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1204, i32 28 }
@___asan_gen_.268 = private unnamed_addr constant [23 x i8] c"cx23885_video_template\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1205, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1245, i32 37 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1269, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1288, i32 15 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1300, i32 15 }
@___asan_gen_.283 = private unnamed_addr constant [19 x i8] c"cx23885_video_qops\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 516, i32 29 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1355, i32 28 }
@___asan_gen_.289 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 37, i32 21 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1374, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1378, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1383, i32 26 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"vbi_nr\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 38, i32 21 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1401, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1405, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 230, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 206, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 196, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 198, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 280, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1034, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1058, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [11 x i8] c"video_fops\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1154, i32 42 }
@___asan_gen_.382 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1164, i32 36 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 634, i32 23 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 637, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 68, i32 27 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 605, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 619, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 708, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 717, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 775, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [6 x i8] c"iname\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 831, i32 21 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 832, i32 9 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 833, i32 9 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 834, i32 9 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 837, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 867, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 884, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 383, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 389, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 417, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 1163, i32 7 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 308, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 473, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 481, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 148, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.506 = private constant [45 x i8] c"../drivers/media/pci/cx23885/cx23885-video.c\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 157, i32 41 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_irq_debug396, ptr @__UNIQUE_ID_irq_debugtype395, ptr @__UNIQUE_ID_license388, ptr @__UNIQUE_ID_vbi_nr392, ptr @__UNIQUE_ID_vbi_nrtype390, ptr @__UNIQUE_ID_vid_limit398, ptr @__UNIQUE_ID_vid_limittype397, ptr @__UNIQUE_ID_video_debug394, ptr @__UNIQUE_ID_video_debugtype393, ptr @__UNIQUE_ID_video_nr391, ptr @__UNIQUE_ID_video_nrtype389, ptr @__param_irq_debug, ptr @__param_vbi_nr, ptr @__param_vid_limit, ptr @__param_video_debug, ptr @__param_video_nr, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry.91, ptr @buffer_prepare._entry.94, ptr @buffer_prepare._entry_ptr, ptr @buffer_prepare._entry_ptr.93, ptr @buffer_prepare._entry_ptr.96, ptr @buffer_queue._entry, ptr @buffer_queue._entry.101, ptr @buffer_queue._entry_ptr, ptr @buffer_queue._entry_ptr.103, ptr @cx23885_audio_mux._entry, ptr @cx23885_audio_mux._entry_ptr, ptr @cx23885_enum_input._entry, ptr @cx23885_enum_input._entry_ptr, ptr @cx23885_flatiron_dump._entry, ptr @cx23885_flatiron_dump._entry.64, ptr @cx23885_flatiron_dump._entry_ptr, ptr @cx23885_flatiron_dump._entry_ptr.66, ptr @cx23885_flatiron_mux._entry, ptr @cx23885_flatiron_mux._entry_ptr, ptr @cx23885_flatiron_read._entry, ptr @cx23885_flatiron_read._entry_ptr, ptr @cx23885_get_input._entry, ptr @cx23885_get_input._entry_ptr, ptr @cx23885_query_audinput._entry, ptr @cx23885_query_audinput._entry_ptr, ptr @cx23885_set_freq_via_ops._entry, ptr @cx23885_set_freq_via_ops._entry.71, ptr @cx23885_set_freq_via_ops._entry_ptr, ptr @cx23885_set_freq_via_ops._entry_ptr.73, ptr @cx23885_set_input._entry, ptr @cx23885_set_input._entry.23, ptr @cx23885_set_input._entry_ptr, ptr @cx23885_set_input._entry_ptr.25, ptr @cx23885_set_tvnorm._entry, ptr @cx23885_set_tvnorm._entry_ptr, ptr @cx23885_start_video_dma._entry, ptr @cx23885_start_video_dma._entry_ptr, ptr @cx23885_vdev_init._entry, ptr @cx23885_vdev_init._entry_ptr, ptr @cx23885_video_irq._entry, ptr @cx23885_video_irq._entry.28, ptr @cx23885_video_irq._entry.31, ptr @cx23885_video_irq._entry.34, ptr @cx23885_video_irq._entry_ptr, ptr @cx23885_video_irq._entry_ptr.30, ptr @cx23885_video_irq._entry_ptr.33, ptr @cx23885_video_irq._entry_ptr.36, ptr @cx23885_video_mux._entry, ptr @cx23885_video_mux._entry_ptr, ptr @cx23885_video_register._entry, ptr @cx23885_video_register._entry.45, ptr @cx23885_video_register._entry.48, ptr @cx23885_video_register._entry.52, ptr @cx23885_video_register._entry.55, ptr @cx23885_video_register._entry_ptr, ptr @cx23885_video_register._entry_ptr.47, ptr @cx23885_video_register._entry_ptr.50, ptr @cx23885_video_register._entry_ptr.54, ptr @cx23885_video_register._entry_ptr.57, ptr @cx23885_video_unregister._entry, ptr @cx23885_video_unregister._entry_ptr, ptr @cx23885_video_wakeup._entry, ptr @cx23885_video_wakeup._entry_ptr, ptr @vidioc_enum_input._entry, ptr @vidioc_enum_input._entry_ptr, ptr @vidioc_g_audinput._entry, ptr @vidioc_g_audinput._entry_ptr, ptr @vidioc_g_std._entry, ptr @vidioc_g_std._entry_ptr, ptr @vidioc_s_audinput._entry, ptr @vidioc_s_audinput._entry_ptr, ptr @vidioc_s_fmt_vid_cap._entry, ptr @vidioc_s_fmt_vid_cap._entry.77, ptr @vidioc_s_fmt_vid_cap._entry_ptr, ptr @vidioc_s_fmt_vid_cap._entry_ptr.79, ptr @vidioc_s_std._entry, ptr @vidioc_s_std._entry_ptr, ptr @video_debug, ptr @irq_debug, ptr @vid_limit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cx23885_enum_input.iname, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @cx23885_vbi_template, ptr @cx23885_video_template, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @cx23885_video_qops, ptr @.str.44, ptr @video_nr, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @vbi_nr, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @video_fops, ptr @video_ioctl_ops, ptr @.str.74, ptr @.str.75, ptr @formats, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @cx23885_query_audinput.iname, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_set_tvnorm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_flatiron_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_enum_input.iname to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_get_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_set_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_set_input._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_irq._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_irq._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_vbi_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_register._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_register._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_register._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_register._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_flatiron_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_flatiron_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_flatiron_dump._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_audio_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_set_freq_via_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_set_freq_via_ops._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_query_audinput.iname to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_query_audinput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_audinput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_audinput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_start_video_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_vdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_video_wakeup(ptr nocapture readnone %dev, ptr noundef %q, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %q, align 4
  %cmp.i.not = icmp eq ptr %1, %q
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %count2 = getelementptr inbounds %struct.cx23885_dmaqueue, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count2, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %count2, align 4
  %sequence = getelementptr i8, ptr %1, i32 -272
  %4 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %sequence, align 8
  %call.i = tail call i64 @ktime_get() #7
  %timestamp = getelementptr i8, ptr %1, i32 -712
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i, ptr %timestamp, align 8
  %6 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %do.end, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr i8, ptr %1, i32 -732
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %9 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count2, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %add.ptr, i32 noundef %8, i32 noundef %count, i32 noundef %10) #10
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.end.do.end14_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end14.list_del.exit_crit_edge

do.end14.list_del.exit_crit_edge:                 ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end14.list_del.exit_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_set_tvnorm(ptr noundef %dev, i64 noundef %norm) local_unnamed_addr #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #7
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %format, align 4
  %3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %4, align 4
  %6 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %norm to i32
  %call = tail call ptr @v4l2_norm_to_name(i64 noundef %norm) #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %conv, ptr noundef %call) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 27
  %7 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tvnorm, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %norm)
  %cmp5 = icmp eq i64 %8, %norm
  br i1 %cmp5, label %do.end4.cleanup_crit_edge, label %if.then12

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %do.end4
  %num_buffers.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 21
  %9 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then12
  %num_buffers.i135 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 21
  %11 = ptrtoint ptr %num_buffers.i135 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_buffers.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i136.not = icmp eq i32 %12, 0
  br i1 %cmp.i136.not, label %lor.lhs.false17, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %num_buffers.i137 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 21
  %13 = ptrtoint ptr %num_buffers.i137 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_buffers.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i138.not = icmp eq i32 %14, 0
  br i1 %cmp.i138.not, label %if.end22, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false17
  %15 = ptrtoint ptr %tvnorm to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %norm, ptr %tvnorm, align 8
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 46
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 720, ptr %width, align 8
  %and.i = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %height = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 47
  %17 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %height, align 4
  %field = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 48
  %18 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %field, align 8
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn139 = load ptr, ptr %subdevs, align 4
  %cmp30.not141 = icmp eq ptr %.pn139, %subdevs
  br i1 %cmp30.not141, label %if.end22.do.end47_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.do.end47_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %.pn142 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn139, %if.end22.for.body_crit_edge ]
  %__sd.0143 = getelementptr i8, ptr %.pn142, i32 -80
  %ops = getelementptr i8, ptr %.pn142, i32 24
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_std, align 4
  %tobool34.not = icmp eq ptr %25, null
  br i1 %tobool34.not, label %land.lhs.true.for.inc_crit_edge, label %if.then35

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 %25(ptr noundef %__sd.0143, i64 noundef %norm) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %.pn142 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn142, align 4
  %cmp30.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp30.not, label %for.inc.do.end47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

do.end47:                                         ; preds = %for.inc.do.end47_crit_edge, %if.end22.do.end47_crit_edge
  %27 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width, align 8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %3, align 4
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  %height55 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %height55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %height55, align 4
  %33 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %field, align 8
  %field58 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %field58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %field58, align 4
  %36 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn134144 = load ptr, ptr %subdevs, align 4
  %cmp72.not146 = icmp eq ptr %.pn134144, %subdevs
  br i1 %cmp72.not146, label %do.end47.cleanup_crit_edge, label %do.end47.for.body75_crit_edge

do.end47.for.body75_crit_edge:                    ; preds = %do.end47
  br label %for.body75

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body75:                                       ; preds = %for.inc88.for.body75_crit_edge, %do.end47.for.body75_crit_edge
  %.pn134147 = phi ptr [ %.pn134, %for.inc88.for.body75_crit_edge ], [ %.pn134144, %do.end47.for.body75_crit_edge ]
  %__sd60.0148 = getelementptr i8, ptr %.pn134147, i32 -80
  %ops76 = getelementptr i8, ptr %.pn134147, i32 24
  %37 = ptrtoint ptr %ops76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops76, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pad, align 4
  %tobool77.not = icmp eq ptr %40, null
  br i1 %tobool77.not, label %for.body75.for.inc88_crit_edge, label %land.lhs.true78

for.body75.for.inc88_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc88

land.lhs.true78:                                  ; preds = %for.body75
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_fmt, align 4
  %tobool81.not = icmp eq ptr %42, null
  br i1 %tobool81.not, label %land.lhs.true78.for.inc88_crit_edge, label %if.then82

land.lhs.true78.for.inc88_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc88

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = call i32 %42(ptr noundef %__sd60.0148, ptr noundef null, ptr noundef nonnull %format) #7
  br label %for.inc88

for.inc88:                                        ; preds = %if.then82, %land.lhs.true78.for.inc88_crit_edge, %for.body75.for.inc88_crit_edge
  %43 = ptrtoint ptr %.pn134147 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn134 = load ptr, ptr %.pn134147, align 4
  %cmp72.not = icmp eq ptr %.pn134, %subdevs
  br i1 %cmp72.not, label %for.inc88.cleanup_crit_edge, label %for.inc88.for.body75_crit_edge

for.inc88.for.body75_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75

for.inc88.cleanup_crit_edge:                      ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc88.cleanup_crit_edge, %do.end47.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end4.cleanup_crit_edge ], [ -16, %lor.lhs.false17.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.then12.cleanup_crit_edge ], [ 0, %do.end47.cleanup_crit_edge ], [ 0, %for.inc88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_norm_to_name(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_flatiron_write(ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 76, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %buf1, align 4
  %i2c_adap = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2, i32 2
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @cx23885_flatiron_read(ptr noundef %dev, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #7
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #7
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 76, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 76, ptr %arrayinit.element, align 4
  %flags3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags3, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %10 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len4, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %11 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b1, ptr %buf5, align 4
  %i2c_adap = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2, i32 2
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %b1, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #7
  ret i8 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_enum_input(ptr noundef readonly %dev, ptr noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp4 = icmp ugt i32 %2, 7
  br i1 %cmp4, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %board, align 4
  %arrayidx7 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %4, i32 12, i32 %2
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %type12 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %7 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type12, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %8 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %board, align 4
  %arrayidx16 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %9, i32 12, i32 %2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr [11 x ptr], ptr @cx23885_enum_input.iname, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 4
  %call19 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %13, i32 noundef 32) #7
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %14 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 7503863, ptr %std, align 8
  %15 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %board, align 4
  %arrayidx23 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %16, i32 12, i32 %2
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx23, align 4
  %.off = add i32 %18, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then32, label %if.end10.if.end35_crit_edge

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then32:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type12, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end10.if.end35_crit_edge
  %.sink = phi i32 [ 4, %if.then32 ], [ 3, %if.end10.if.end35_crit_edge ]
  %20 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 8
  %input36 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 24
  %22 = ptrtoint ptr %input36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %input36, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %2)
  %cmp37 = icmp eq i32 %23, %2
  br i1 %cmp37, label %do.body39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body39:                                        ; preds = %if.end35
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn92 = load ptr, ptr %subdevs, align 4
  %cmp44.not94 = icmp eq ptr %.pn92, %subdevs
  br i1 %cmp44.not94, label %do.body39.cleanup_crit_edge, label %for.body.lr.ph

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.body39
  %status = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn95 = phi ptr [ %.pn92, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__sd.096 = getelementptr i8, ptr %.pn95, i32 -80
  %ops = getelementptr i8, ptr %.pn95, i32 24
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_input_status = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %g_input_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %g_input_status, align 4
  %tobool47.not = icmp eq ptr %30, null
  br i1 %tobool47.not, label %land.lhs.true.for.inc_crit_edge, label %if.then48

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 %30(ptr noundef %__sd.096, ptr noundef %status) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn95, align 4
  %cmp44.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp44.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %do.body39.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_get_input(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef writeonly %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  %5 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.20, i32 noundef %3) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_set_input(ptr noundef %file, ptr nocapture readnone %priv, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22, i32 noundef %i) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i)
  %cmp5 = icmp ugt i32 %i, 7
  br i1 %cmp5, label %do.body7, label %if.end18

do.body7:                                         ; preds = %do.end4
  %3 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %do.body7.cleanup_crit_edge, label %do.end12

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end18:                                         ; preds = %do.end4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board, align 4
  %arrayidx19 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %5, i32 12, i32 %i
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20 = icmp eq i32 %7, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  tail call fastcc void @cx23885_video_mux(ptr noundef %1, i32 noundef %i)
  %8 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end22.cx23885_audio_mux.exit_crit_edge, label %do.end.i

if.end22.cx23885_audio_mux.exit_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_audio_mux.exit

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.68, i32 noundef %i) #10
  br label %cx23885_audio_mux.exit

cx23885_audio_mux.exit:                           ; preds = %do.end.i, %if.end22.cx23885_audio_mux.exit_crit_edge
  %9 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %board, align 4
  %amux.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %10, i32 12, i32 %i, i32 2
  %11 = ptrtoint ptr %amux.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %amux.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %switch.selectcmp.i = icmp eq i32 %12, 6
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %switch.selectcmp1.i = icmp eq i32 %12, 7
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 1, i32 %switch.select.i
  tail call fastcc void @cx23885_flatiron_mux(ptr noundef %1, i32 noundef %switch.select2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cx23885_audio_mux.exit, %if.end18.cleanup_crit_edge, %do.end12, %do.body7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cx23885_audio_mux.exit ], [ -22, %do.end12 ], [ -22, %do.body7.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_video_mux(ptr noundef %dev, i32 noundef %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end20_crit_edge, label %do.end

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %1 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %board, align 4
  %vmux = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %2, i32 12, i32 %input, i32 1
  %3 = ptrtoint ptr %vmux to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vmux, align 4
  %gpio0 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %2, i32 12, i32 %input, i32 3
  %5 = ptrtoint ptr %gpio0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio0, align 4
  %gpio1 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %2, i32 12, i32 %input, i32 4
  %7 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio1, align 4
  %gpio2 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %2, i32 12, i32 %input, i32 5
  %9 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio2, align 4
  %gpio3 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %2, i32 12, i32 %input, i32 6
  %11 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.59, i32 noundef %input, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12) #10
  br label %do.end20

do.end20:                                         ; preds = %do.end, %entry.do.end20_crit_edge
  %input21 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 24
  %13 = ptrtoint ptr %input21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %input, ptr %input21, align 8
  %board22 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %board22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %board22, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %do.end20.if.end37_crit_edge [
    i32 22, label %do.end20.if.then29_crit_edge
    i32 23, label %do.end20.if.then29_crit_edge3
    i32 33, label %do.end20.if.then29_crit_edge4
  ]

do.end20.if.then29_crit_edge4:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

do.end20.if.then29_crit_edge3:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

do.end20.if.then29_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

do.end20.if.end37_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then29:                                        ; preds = %do.end20.if.then29_crit_edge, %do.end20.if.then29_crit_edge3, %do.end20.if.then29_crit_edge4
  %arrayidx33 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %15, i32 12, i32 %input
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp34 = icmp eq i32 %18, 7
  br i1 %cmp34, label %if.then35, label %if.then29.if.end37_crit_edge

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 1) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then29.if.end37_crit_edge, %do.end20.if.end37_crit_edge
  %sd_cx25840 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 33
  %19 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_cx25840, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.end37.if.end69_crit_edge, label %if.else

if.end37.if.end69_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.else:                                          ; preds = %if.end37
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %video, align 4
  %tobool39.not = icmp eq ptr %24, null
  br i1 %tobool39.not, label %if.else.if.end69_crit_edge, label %land.lhs.true

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true:                                    ; preds = %if.else
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool42.not = icmp eq ptr %26, null
  br i1 %tobool42.not, label %land.lhs.true.if.end69_crit_edge, label %if.else44

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.else44:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool45.not = icmp eq ptr %27, null
  br i1 %tobool45.not, label %if.else44.if.else57_crit_edge, label %land.lhs.true46

if.else44.if.else57_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

land.lhs.true46:                                  ; preds = %if.else44
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool48.not = icmp eq ptr %29, null
  br i1 %tobool48.not, label %land.lhs.true46.if.else57_crit_edge, label %land.lhs.true46.if.end69.sink.split_crit_edge

land.lhs.true46.if.end69.sink.split_crit_edge:    ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.sink.split

land.lhs.true46.if.else57_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

if.else57:                                        ; preds = %land.lhs.true46.if.else57_crit_edge, %if.else44.if.else57_crit_edge
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.else57, %land.lhs.true46.if.end69.sink.split_crit_edge
  %.sink1 = phi ptr [ %26, %if.else57 ], [ %29, %land.lhs.true46.if.end69.sink.split_crit_edge ]
  %30 = ptrtoint ptr %board22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %board22, align 4
  %vmux65 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %31, i32 12, i32 %input, i32 1
  %32 = ptrtoint ptr %vmux65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vmux65, align 4
  %call66 = tail call i32 %.sink1(ptr noundef nonnull %20, i32 noundef %33, i32 noundef 0, i32 noundef 0) #7
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %land.lhs.true.if.end69_crit_edge, %if.else.if.end69_crit_edge, %if.end37.if.end69_crit_edge
  %34 = ptrtoint ptr %board22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %board22, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %35, label %if.end69.if.end178_crit_edge [
    i32 2, label %if.end69.if.then118_crit_edge
    i32 32, label %if.end69.if.then118_crit_edge5
    i32 3, label %if.end69.if.then118_crit_edge6
    i32 43, label %if.end69.if.then118_crit_edge7
    i32 20, label %if.end69.if.then118_crit_edge8
    i32 36, label %if.end69.if.then118_crit_edge9
    i32 58, label %if.end69.if.then118_crit_edge10
    i32 57, label %if.end69.if.then118_crit_edge11
    i32 56, label %if.end69.if.then118_crit_edge12
    i32 24, label %if.end69.if.then118_crit_edge13
    i32 52, label %if.end69.if.then118_crit_edge14
    i32 33, label %if.end69.if.then118_crit_edge15
    i32 39, label %if.end69.if.then118_crit_edge16
    i32 54, label %if.end69.if.then118_crit_edge17
    i32 55, label %if.end69.if.then118_crit_edge18
    i32 62, label %if.end69.if.then118_crit_edge19
  ]

if.end69.if.then118_crit_edge19:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge18:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge17:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge16:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge15:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge14:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge13:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge12:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge11:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge10:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge9:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge8:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge7:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge6:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge5:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.then118_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.end69.if.end178_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

if.then118:                                       ; preds = %if.end69.if.then118_crit_edge, %if.end69.if.then118_crit_edge5, %if.end69.if.then118_crit_edge6, %if.end69.if.then118_crit_edge7, %if.end69.if.then118_crit_edge8, %if.end69.if.then118_crit_edge9, %if.end69.if.then118_crit_edge10, %if.end69.if.then118_crit_edge11, %if.end69.if.then118_crit_edge12, %if.end69.if.then118_crit_edge13, %if.end69.if.then118_crit_edge14, %if.end69.if.then118_crit_edge15, %if.end69.if.then118_crit_edge16, %if.end69.if.then118_crit_edge17, %if.end69.if.then118_crit_edge18, %if.end69.if.then118_crit_edge19
  %37 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sd_cx25840, align 4
  %tobool122.not = icmp eq ptr %38, null
  br i1 %tobool122.not, label %if.then118.if.end157_crit_edge, label %if.else124

if.then118.if.end157_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.else124:                                       ; preds = %if.then118
  %ops125 = getelementptr inbounds %struct.v4l2_subdev, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %ops125 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops125, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %audio, align 4
  %tobool126.not = icmp eq ptr %42, null
  br i1 %tobool126.not, label %if.else124.if.end157_crit_edge, label %land.lhs.true127

if.else124.if.end157_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

land.lhs.true127:                                 ; preds = %if.else124
  %s_routing130 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %s_routing130 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_routing130, align 4
  %tobool131.not = icmp eq ptr %44, null
  br i1 %tobool131.not, label %land.lhs.true127.if.end157_crit_edge, label %if.else133

land.lhs.true127.if.end157_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.else133:                                       ; preds = %land.lhs.true127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool134.not = icmp eq ptr %45, null
  br i1 %tobool134.not, label %if.else133.if.else145_crit_edge, label %land.lhs.true135

if.else133.if.else145_crit_edge:                  ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else145

land.lhs.true135:                                 ; preds = %if.else133
  %s_routing136 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %s_routing136 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_routing136, align 4
  %tobool137.not = icmp eq ptr %47, null
  br i1 %tobool137.not, label %land.lhs.true135.if.else145_crit_edge, label %land.lhs.true135.if.end157.sink.split_crit_edge

land.lhs.true135.if.end157.sink.split_crit_edge:  ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157.sink.split

land.lhs.true135.if.else145_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else145

if.else145:                                       ; preds = %land.lhs.true135.if.else145_crit_edge, %if.else133.if.else145_crit_edge
  br label %if.end157.sink.split

if.end157.sink.split:                             ; preds = %if.else145, %land.lhs.true135.if.end157.sink.split_crit_edge
  %.sink2 = phi ptr [ %44, %if.else145 ], [ %47, %land.lhs.true135.if.end157.sink.split_crit_edge ]
  %amux153 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %35, i32 12, i32 %input, i32 2
  %48 = ptrtoint ptr %amux153 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %amux153, align 4
  %call154 = tail call i32 %.sink2(ptr noundef nonnull %38, i32 noundef %49, i32 noundef 0, i32 noundef 0) #7
  br label %if.end157

if.end157:                                        ; preds = %if.end157.sink.split, %land.lhs.true127.if.end157_crit_edge, %if.else124.if.end157_crit_edge, %if.then118.if.end157_crit_edge
  %50 = ptrtoint ptr %board22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %board22, align 4
  %amux163 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %51, i32 12, i32 %input, i32 2
  %52 = ptrtoint ptr %amux163 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %amux163, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %53, label %if.end157.if.end178_crit_edge [
    i32 7, label %if.end157.if.end178.sink.split_crit_edge
    i32 6, label %if.then174
  ]

if.end157.if.end178.sink.split_crit_edge:         ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.sink.split

if.end157.if.end178_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

if.then174:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.sink.split

if.end178.sink.split:                             ; preds = %if.then174, %if.end157.if.end178.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then174 ], [ 1, %if.end157.if.end178.sink.split_crit_edge ]
  tail call fastcc void @cx23885_flatiron_mux(ptr noundef %dev, i32 noundef %.sink)
  br label %if.end178

if.end178:                                        ; preds = %if.end178.sink.split, %if.end157.if.end178_crit_edge, %if.end69.if.end178_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_set_frequency(ptr noundef %file, ptr nocapture readnone %priv, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  %params.i = alloca %struct.analog_parameters, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %3, label %sw.default.i [
    i32 20, label %entry.sw.bb_crit_edge
    i32 36, label %entry.sw.bb_crit_edge25
    i32 58, label %entry.sw.bb_crit_edge26
    i32 24, label %entry.sw.bb_crit_edge27
    i32 52, label %entry.sw.bb_crit_edge28
    i32 56, label %entry.sw.bb_crit_edge29
    i32 57, label %entry.sw.bb_crit_edge30
  ]

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25, %entry.sw.bb_crit_edge26, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params.i) #7
  %5 = getelementptr inbounds i8, ptr %params.i, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 8589934591, ptr %5, align 8
  %frequency1.i = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %frequency1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frequency1.i, align 4
  %9 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %params.i, align 8
  %mode.i = getelementptr inbounds %struct.analog_parameters, ptr %params.i, i32 0, i32 1
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %mode.i, align 4
  %std.i = getelementptr inbounds %struct.analog_parameters, ptr %params.i, i32 0, i32 3
  %tvnorm.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tvnorm.i, align 8
  %13 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %std.i, align 8
  %freq.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 42
  %14 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %freq.i, align 8
  %ctrl_handler.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 2
  %call.i6 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler.i, i32 noundef 9963785) #7
  %tobool.not.i = icmp eq ptr %call.i6, null
  br i1 %tobool.not.i, label %sw.bb.do.body.i_crit_edge, label %if.then.i

sw.bb.do.body.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %sw.bb
  %call3.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %call.i6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.do.body.i_crit_edge

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i6, i32 0, i32 2
  %15 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %18, i32 noundef 0) #7
  %call.i.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call.i6, i32 noundef 1) #7
  %19 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i2.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %lock.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock.i2.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %22) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then5.i, %if.then.i.do.body.i_crit_edge, %sw.bb.do.body.i_crit_edge
  %old_mute_val.0.i = phi i32 [ %call3.i, %if.then.i.do.body.i_crit_edge ], [ 0, %if.then5.i ], [ 1, %sw.bb.do.body.i_crit_edge ]
  %23 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i, label %do.body.i.do.end15.i_crit_edge, label %do.end.i

do.body.i.do.end15.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %params.i, align 8
  %26 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f, align 4
  %28 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %std.i, align 8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.70, i32 noundef %25, i32 noundef %27, i64 noundef %29) #10
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %do.body.i.do.end15.i_crit_edge
  %frontends.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 21, i32 3
  %call16.i = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends.i, i32 noundef 1) #7
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %do.end15.i.cx23885_set_freq_via_ops.exit_crit_edge, label %if.end19.i

do.end15.i.cx23885_set_freq_via_ops.exit_crit_edge: ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_set_freq_via_ops.exit

if.end19.i:                                       ; preds = %do.end15.i
  %frontend.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call16.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %frontend.i, align 4
  %32 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %board, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %33, label %if.end19.i.if.end39.i_crit_edge [
    i32 24, label %if.end19.i.if.then38.i_crit_edge
    i32 20, label %if.end19.i.if.then38.i_crit_edge31
    i32 36, label %if.end19.i.if.then38.i_crit_edge32
    i32 58, label %if.end19.i.if.then38.i_crit_edge33
    i32 52, label %if.end19.i.if.then38.i_crit_edge34
    i32 56, label %if.end19.i.if.then38.i_crit_edge35
    i32 57, label %if.end19.i.if.then38.i_crit_edge36
  ]

if.end19.i.if.then38.i_crit_edge36:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end19.i.if.then38.i_crit_edge35:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end19.i.if.then38.i_crit_edge34:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end19.i.if.then38.i_crit_edge33:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end19.i.if.then38.i_crit_edge32:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end19.i.if.then38.i_crit_edge31:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end19.i.if.then38.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end19.i.if.end39.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.end19.i.if.then38.i_crit_edge, %if.end19.i.if.then38.i_crit_edge31, %if.end19.i.if.then38.i_crit_edge32, %if.end19.i.if.then38.i_crit_edge33, %if.end19.i.if.then38.i_crit_edge34, %if.end19.i.if.then38.i_crit_edge35, %if.end19.i.if.then38.i_crit_edge36
  %analog_fe.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 35
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %if.end19.i.if.end39.i_crit_edge
  %fe.0.i = phi ptr [ %analog_fe.i, %if.then38.i ], [ %31, %if.end19.i.if.end39.i_crit_edge ]
  %tobool40.not.i = icmp eq ptr %fe.0.i, null
  br i1 %tobool40.not.i, label %if.end39.i.do.end77.i_crit_edge, label %land.lhs.true.i

if.end39.i.do.end77.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77.i

land.lhs.true.i:                                  ; preds = %if.end39.i
  %set_analog_params.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe.0.i, i32 0, i32 1, i32 32, i32 7
  %35 = ptrtoint ptr %set_analog_params.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_analog_params.i, align 4
  %tobool41.not.i = icmp eq ptr %36, null
  br i1 %tobool41.not.i, label %land.lhs.true.i.do.end77.i_crit_edge, label %do.body43.i

land.lhs.true.i.do.end77.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77.i

do.body43.i:                                      ; preds = %land.lhs.true.i
  %subdevs.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn125.i = load ptr, ptr %subdevs.i, align 4
  %cmp48.not127.i = icmp eq ptr %.pn125.i, %subdevs.i
  br i1 %cmp48.not127.i, label %do.body43.i.do.end68.i_crit_edge, label %do.body43.i.for.body.i_crit_edge

do.body43.i.for.body.i_crit_edge:                 ; preds = %do.body43.i
  br label %for.body.i

do.body43.i.do.end68.i_crit_edge:                 ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body43.i.for.body.i_crit_edge
  %.pn128.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn125.i, %do.body43.i.for.body.i_crit_edge ]
  %__sd.0129.i = getelementptr i8, ptr %.pn128.i, i32 -80
  %ops49.i = getelementptr i8, ptr %.pn128.i, i32 24
  %38 = ptrtoint ptr %ops49.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops49.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %video.i, align 4
  %tobool50.not.i = icmp eq ptr %41, null
  br i1 %tobool50.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true51.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true51.i:                                ; preds = %for.body.i
  %s_std.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %s_std.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_std.i, align 4
  %tobool54.not.i = icmp eq ptr %43, null
  br i1 %tobool54.not.i, label %land.lhs.true51.i.for.inc.i_crit_edge, label %if.then55.i

land.lhs.true51.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then55.i:                                      ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tvnorm.i, align 8
  %call60.i = tail call i32 %43(ptr noundef %__sd.0129.i, i64 noundef %45) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then55.i, %land.lhs.true51.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %46 = ptrtoint ptr %.pn128.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn128.i, align 4
  %cmp48.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp48.not.i, label %for.inc.i.do.end68.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.end68.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68.i

do.end68.i:                                       ; preds = %for.inc.i.do.end68.i_crit_edge, %do.body43.i.do.end68.i_crit_edge
  %47 = ptrtoint ptr %set_analog_params.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_analog_params.i, align 4
  %call74.i = call i32 %48(ptr noundef nonnull %fe.0.i, ptr noundef nonnull %params.i) #7
  br label %if.end80.i

do.end77.i:                                       ; preds = %land.lhs.true.i.do.end77.i_crit_edge, %if.end39.i.do.end77.i_crit_edge
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #10
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.end77.i, %do.end68.i
  call void @msleep(i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_mute_val.0.i)
  %cmp81.i = icmp eq i32 %old_mute_val.0.i, 0
  br i1 %cmp81.i, label %if.then82.i, label %if.end80.i.cx23885_set_freq_via_ops.exit_crit_edge

if.end80.i.cx23885_set_freq_via_ops.exit_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_set_freq_via_ops.exit

if.then82.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i121.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i6, i32 0, i32 2
  %49 = ptrtoint ptr %handler.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %handler.i.i121.i, align 8
  %lock.i.i122.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %lock.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lock.i.i122.i, align 4
  call void @mutex_lock_nested(ptr noundef %52, i32 noundef 0) #7
  %call.i123.i = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %call.i6, i32 noundef 0) #7
  %53 = ptrtoint ptr %handler.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %handler.i.i121.i, align 8
  %lock.i2.i124.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %lock.i2.i124.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock.i2.i124.i, align 4
  call void @mutex_unlock(ptr noundef %56) #7
  br label %cx23885_set_freq_via_ops.exit

cx23885_set_freq_via_ops.exit:                    ; preds = %if.then82.i, %if.end80.i.cx23885_set_freq_via_ops.exit_crit_edge, %do.end15.i.cx23885_set_freq_via_ops.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end15.i.cx23885_set_freq_via_ops.exit_crit_edge ], [ 0, %if.then82.i ], [ 0, %if.end80.i.cx23885_set_freq_via_ops.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params.i) #7
  br label %sw.epilog

sw.default.i:                                     ; preds = %entry
  %tuner_type.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %57 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tuner_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp.i = icmp eq i32 %58, 4
  br i1 %cmp.i, label %sw.default.i.sw.epilog_crit_edge, label %sw.epilog.i

sw.default.i.sw.epilog_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.i:                                      ; preds = %sw.default.i
  %59 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp1.not.i = icmp eq i32 %60, 0
  br i1 %cmp1.not.i, label %if.end4.i, label %sw.epilog.i.sw.epilog_crit_edge, !prof !292

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4.i:                                        ; preds = %sw.epilog.i
  %frequency.i = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %61 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %frequency.i, align 4
  %freq.i8 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 42
  %63 = ptrtoint ptr %freq.i8 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %freq.i8, align 8
  %ctrl_handler.i9 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 2
  %call.i10 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler.i9, i32 noundef 9963785) #7
  %tobool5.not.i = icmp eq ptr %call.i10, null
  br i1 %tobool5.not.i, label %if.end4.i.do.body.i17_crit_edge, label %if.then6.i

if.end4.i.do.body.i17_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i17

if.then6.i:                                       ; preds = %if.end4.i
  %call7.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %call.i10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then6.i.do.body.i17_crit_edge

if.then6.i.do.body.i17_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i17

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i.i11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i10, i32 0, i32 2
  %64 = ptrtoint ptr %handler.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %handler.i.i.i11, align 8
  %lock.i.i.i12 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %lock.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lock.i.i.i12, align 4
  tail call void @mutex_lock_nested(ptr noundef %67, i32 noundef 0) #7
  %call.i.i13 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call.i10, i32 noundef 1) #7
  %68 = ptrtoint ptr %handler.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %handler.i.i.i11, align 8
  %lock.i2.i.i14 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %lock.i2.i.i14 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lock.i2.i.i14, align 4
  tail call void @mutex_unlock(ptr noundef %71) #7
  br label %do.body.i17

do.body.i17:                                      ; preds = %if.then9.i, %if.then6.i.do.body.i17_crit_edge, %if.end4.i.do.body.i17_crit_edge
  %old_mute_val.0.i15 = phi i32 [ %call7.i, %if.then6.i.do.body.i17_crit_edge ], [ 0, %if.then9.i ], [ 1, %if.end4.i.do.body.i17_crit_edge ]
  %subdevs.i16 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %subdevs.i16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn64.i = load ptr, ptr %subdevs.i16, align 4
  %cmp16.not66.i = icmp eq ptr %.pn64.i, %subdevs.i16
  br i1 %cmp16.not66.i, label %do.body.i17.do.end.i22_crit_edge, label %do.body.i17.for.body.i18_crit_edge

do.body.i17.for.body.i18_crit_edge:               ; preds = %do.body.i17
  br label %for.body.i18

do.body.i17.do.end.i22_crit_edge:                 ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i22

for.body.i18:                                     ; preds = %for.inc.i21.for.body.i18_crit_edge, %do.body.i17.for.body.i18_crit_edge
  %.pn67.i = phi ptr [ %.pn.i20, %for.inc.i21.for.body.i18_crit_edge ], [ %.pn64.i, %do.body.i17.for.body.i18_crit_edge ]
  %__sd.068.i = getelementptr i8, ptr %.pn67.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn67.i, i32 24
  %73 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i, align 4
  %tuner19.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %tuner19.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tuner19.i, align 4
  %tobool20.not.i = icmp eq ptr %76, null
  br i1 %tobool20.not.i, label %for.body.i18.for.inc.i21_crit_edge, label %land.lhs.true.i19

for.body.i18.for.inc.i21_crit_edge:               ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i21

land.lhs.true.i19:                                ; preds = %for.body.i18
  %s_frequency.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %s_frequency.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_frequency.i, align 4
  %tobool23.not.i = icmp eq ptr %78, null
  br i1 %tobool23.not.i, label %land.lhs.true.i19.for.inc.i21_crit_edge, label %if.then24.i

land.lhs.true.i19.for.inc.i21_crit_edge:          ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i21

if.then24.i:                                      ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 %78(ptr noundef %__sd.068.i, ptr noundef %f) #7
  br label %for.inc.i21

for.inc.i21:                                      ; preds = %if.then24.i, %land.lhs.true.i19.for.inc.i21_crit_edge, %for.body.i18.for.inc.i21_crit_edge
  %79 = ptrtoint ptr %.pn67.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn.i20 = load ptr, ptr %.pn67.i, align 4
  %cmp16.not.i = icmp eq ptr %.pn.i20, %subdevs.i16
  br i1 %cmp16.not.i, label %for.inc.i21.do.end.i22_crit_edge, label %for.inc.i21.for.body.i18_crit_edge

for.inc.i21.for.body.i18_crit_edge:               ; preds = %for.inc.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i18

for.inc.i21.do.end.i22_crit_edge:                 ; preds = %for.inc.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i22

do.end.i22:                                       ; preds = %for.inc.i21.do.end.i22_crit_edge, %do.body.i17.do.end.i22_crit_edge
  tail call void @msleep(i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_mute_val.0.i15)
  %cmp37.i = icmp eq i32 %old_mute_val.0.i15, 0
  br i1 %cmp37.i, label %if.then38.i23, label %do.end.i22.sw.epilog_crit_edge

do.end.i22.sw.epilog_crit_edge:                   ; preds = %do.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then38.i23:                                    ; preds = %do.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i60.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i10, i32 0, i32 2
  %80 = ptrtoint ptr %handler.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %handler.i.i60.i, align 8
  %lock.i.i61.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %lock.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lock.i.i61.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %83, i32 noundef 0) #7
  %call.i62.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %call.i10, i32 noundef 0) #7
  %84 = ptrtoint ptr %handler.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %handler.i.i60.i, align 8
  %lock.i2.i63.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %lock.i2.i63.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lock.i2.i63.i, align 4
  tail call void @mutex_unlock(ptr noundef %87) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then38.i23, %do.end.i22.sw.epilog_crit_edge, %sw.epilog.i.sw.epilog_crit_edge, %sw.default.i.sw.epilog_crit_edge, %cx23885_set_freq_via_ops.exit
  %ret.0 = phi i32 [ %retval.0.i, %cx23885_set_freq_via_ops.exit ], [ -22, %sw.default.i.sw.epilog_crit_edge ], [ -22, %sw.epilog.i.sw.epilog_crit_edge ], [ 0, %if.then38.i23 ], [ 0, %do.end.i22.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_video_irq(ptr noundef %dev, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 65544
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !293
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !294
  %and = and i32 %3, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !295
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %status)
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %6, i32 65545
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #7, !srcloc !296
  %and5 = and i32 %status, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and8 = and i32 %status, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %7 = and i32 %status, 69888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %do.body.if.end61_crit_edge, label %if.then10

do.body.if.end61_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then10:                                        ; preds = %do.body
  %and4 = and i32 %status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then10.if.end30_crit_edge, label %do.body14

if.then10.if.end30_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.body14:                                        ; preds = %if.then10
  %9 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp15 = icmp ugt i32 %9, 6
  br i1 %cmp15, label %do.end19, label %do.body14.do.end27_crit_edge

do.body14.do.end27_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 65536) #10
  br label %do.end27

do.end27:                                         ; preds = %do.end19, %do.body14.do.end27_crit_edge
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name) #10
  %sram_channels = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 22
  %10 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sram_channels, align 8
  tail call void @cx23885_sram_channel_dump(ptr noundef %dev, ptr noundef %11) #7
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.then10.if.end30_crit_edge
  br i1 %tobool6.not, label %if.end30.if.end45_crit_edge, label %do.body34

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.body34:                                        ; preds = %if.end30
  %12 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp35 = icmp ugt i32 %12, 6
  br i1 %cmp35, label %do.end39, label %do.body34.if.end45_crit_edge

do.body34.if.end45_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end39:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef 4096) #10
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %do.body34.if.end45_crit_edge, %if.end30.if.end45_crit_edge
  br i1 %tobool9.not, label %if.end45.if.end61_crit_edge, label %do.body49

if.end45.if.end61_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

do.body49:                                        ; preds = %if.end45
  %13 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp50 = icmp ugt i32 %13, 6
  br i1 %cmp50, label %do.end54, label %do.body49.if.end61_crit_edge

do.body49.if.end61_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

do.end54:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 256) #10
  br label %if.end61

if.end61:                                         ; preds = %do.end54, %do.body49.if.end61_crit_edge, %if.end45.if.end61_crit_edge, %do.body.if.end61_crit_edge
  %and62 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end73_crit_edge, label %if.then64

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then64:                                        ; preds = %if.end61
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %slock) #7
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr68 = getelementptr i32, ptr %15, i32 311304
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #7, !srcloc !293
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !297
  %vidq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 49
  %18 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not.i = icmp eq ptr %19, %vidq
  br i1 %cmp.i.not.i, label %if.then64.cx23885_video_wakeup.exit_crit_edge, label %if.end.i

if.then64.cx23885_video_wakeup.exit_crit_edge:    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_video_wakeup.exit

if.end.i:                                         ; preds = %if.then64
  %add.ptr.i = getelementptr i8, ptr %19, i32 -736
  %count2.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 49, i32 1
  %20 = ptrtoint ptr %count2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count2.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %count2.i, align 4
  %sequence.i = getelementptr i8, ptr %19, i32 -272
  %22 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sequence.i, align 8
  %call.i.i = tail call i64 @ktime_get() #7
  %timestamp.i = getelementptr i8, ptr %19, i32 -712
  %23 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %24 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp ugt i32 %24, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.end14.i_crit_edge

if.end.i.do.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %index.i = getelementptr i8, ptr %19, i32 -732
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i, align 4
  %27 = ptrtoint ptr %count2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count2.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, i32 noundef %26, i32 noundef %17, i32 noundef %28) #10
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %if.end.i.do.end14.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end14.i.list_del.exit.i_crit_edge

do.end14.i.list_del.exit.i_crit_edge:             ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end14.i.list_del.exit.i_crit_edge
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 5) #7
  br label %cx23885_video_wakeup.exit

cx23885_video_wakeup.exit:                        ; preds = %list_del.exit.i, %if.then64.cx23885_video_wakeup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #7
  br label %if.end73

if.end73:                                         ; preds = %cx23885_video_wakeup.exit, %if.end61.if.end73_crit_edge
  %handled.0 = phi i32 [ 1, %cx23885_video_wakeup.exit ], [ 0, %if.end61.if.end73_crit_edge ]
  %call74 = tail call i32 @cx23885_vbi_irq(ptr noundef %dev, i32 noundef %status) #7
  %add = add i32 %call74, %handled.0
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end73 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_sram_channel_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_vbi_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_video_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @cx23885_irq_remove(ptr noundef %dev, i32 noundef 1) #7
  %vbi_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 44
  %1 = ptrtoint ptr %vbi_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vbi_dev, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end2.if.end12_crit_edge, label %if.then3

do.end2.if.end12_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then3:                                         ; preds = %do.end2
  %flags.i = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool6.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @video_unregister_device(ptr noundef nonnull %2) #7
  br label %if.end10

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @video_device_release(ptr noundef nonnull %2) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %5 = ptrtoint ptr %vbi_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vbi_dev, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %do.end2.if.end12_crit_edge
  %video_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 43
  %6 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video_dev, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end12.if.end24_crit_edge, label %if.then14

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then14:                                        ; preds = %if.end12
  %flags.i41 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i41, align 4
  %and1.i.i42 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i42)
  %tobool17.not = icmp eq i32 %and1.i.i42, 0
  br i1 %tobool17.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @video_unregister_device(ptr noundef nonnull %7) #7
  br label %if.end22

if.else20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @video_device_release(ptr noundef nonnull %7) #7
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  %10 = ptrtoint ptr %video_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %video_dev, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end12.if.end24_crit_edge
  %audio_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 59
  %11 = ptrtoint ptr %audio_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %audio_dev, align 8
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_audio_unregister(ptr noundef %dev) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_irq_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_audio_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_video_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tun_setup = alloca %struct.tuner_setup, align 4
  %ctrl = alloca %struct.xc2028_ctrl, align 4
  %cfg = alloca %struct.v4l2_priv_tun_config, align 4
  %ctrl97 = alloca %struct.xc2028_ctrl, align 4
  %cfg98 = alloca %struct.v4l2_priv_tun_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = call ptr @memcpy(ptr @cx23885_vbi_template, ptr @cx23885_video_template, i32 1352)
  %call4 = tail call i32 @strscpy(ptr noundef getelementptr inbounds (%struct.video_device, ptr @cx23885_vbi_template, i32 0, i32 12), ptr noundef nonnull @.str.39, i32 noundef 32) #7
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %tvnorm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4096, ptr %tvnorm, align 8
  %3 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %3)
  %cmp2.i = icmp eq i32 %3, 1448695129
  %retval.0.i = select i1 %cmp2.i, ptr @formats, ptr null
  %fmt = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 45
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %retval.0.i, ptr %fmt, align 4
  %field = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 48
  %5 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %field, align 8
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 46
  %6 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 720, ptr %width, align 8
  %height = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 47
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 480, ptr %height, align 4
  %vidq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 49
  %8 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %vidq, ptr %vidq, align 4
  %prev.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 49, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vidq, ptr %prev.i, align 4
  %vbiq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 51
  %10 = ptrtoint ptr %vbiq to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %vbiq, ptr %vbiq, align 4
  %prev.i379 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 51, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i379 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vbiq, ptr %prev.i379, align 4
  tail call void @cx23885_irq_add_enable(ptr noundef %dev, i32 noundef 1) #7
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 28
  %12 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp9.not = icmp eq i32 %13, 4
  br i1 %cmp9.not, label %do.end3.if.end135_crit_edge, label %land.lhs.true

do.end3.if.end135_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

land.lhs.true:                                    ; preds = %do.end3
  %tuner_bus = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 30
  %14 = ptrtoint ptr %tuner_bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tuner_bus, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch = icmp ult i32 %15, 2
  br i1 %switch, label %if.then13, label %land.lhs.true.if.end135_crit_edge

land.lhs.true.if.end135_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then13:                                        ; preds = %land.lhs.true
  %tuner_addr = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 29
  %16 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tuner_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %v4l2_dev18 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1
  %i2c_adap22 = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 %15, i32 2
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev18, ptr noundef %i2c_adap22, ptr noundef nonnull @.str.40, i8 noundef zeroext %17, ptr noundef null) #7
  br label %if.end25

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call ptr @v4l2_i2c_tuner_addrs(i32 noundef 2) #7
  %call24 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev18, ptr noundef %i2c_adap22, ptr noundef nonnull @.str.40, i8 noundef zeroext 0, ptr noundef %call23) #7
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then14
  %sd.0 = phi ptr [ %call17, %if.then14 ], [ %call24, %if.else ]
  %tobool26.not = icmp eq ptr %sd.0, null
  br i1 %tobool26.not, label %if.end25.if.end135_crit_edge, label %if.then27

if.end25.if.end135_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then27:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup) #7
  %18 = call ptr @memset(ptr %tun_setup, i32 0, i32 16)
  %mode_mask = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %19 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %mode_mask, align 4
  %20 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tuner_type, align 8
  %type = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %type, align 4
  %call29 = tail call zeroext i16 @v4l2_i2c_subdev_addr(ptr noundef nonnull %sd.0) #7
  %23 = ptrtoint ptr %tun_setup to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %call29, ptr %tun_setup, align 4
  %tuner_callback = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 4
  %24 = ptrtoint ptr %tuner_callback to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cx23885_tuner_callback, ptr %tuner_callback, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %sd.0, i32 0, i32 6
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tuner, align 4
  %tobool33.not = icmp eq ptr %28, null
  br i1 %tobool33.not, label %if.then27.if.end54_crit_edge, label %land.lhs.true34

if.then27.if.end54_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true34:                                  ; preds = %if.then27
  %s_type_addr = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %s_type_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_type_addr, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %land.lhs.true34.if.end54_crit_edge, label %if.else39

land.lhs.true34.if.end54_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.else39:                                        ; preds = %land.lhs.true34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool40.not = icmp eq ptr %31, null
  br i1 %tobool40.not, label %if.else39.if.else47_crit_edge, label %land.lhs.true41

if.else39.if.else47_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else47

land.lhs.true41:                                  ; preds = %if.else39
  %s_type_addr42 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %s_type_addr42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_type_addr42, align 4
  %tobool43.not = icmp eq ptr %33, null
  br i1 %tobool43.not, label %land.lhs.true41.if.else47_crit_edge, label %land.lhs.true41.if.end54.sink.split_crit_edge

land.lhs.true41.if.end54.sink.split_crit_edge:    ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.sink.split

land.lhs.true41.if.else47_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else47

if.else47:                                        ; preds = %land.lhs.true41.if.else47_crit_edge, %if.else39.if.else47_crit_edge
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.else47, %land.lhs.true41.if.end54.sink.split_crit_edge
  %.sink = phi ptr [ %30, %if.else47 ], [ %33, %land.lhs.true41.if.end54.sink.split_crit_edge ]
  %call51 = call i32 %.sink(ptr noundef nonnull %sd.0, ptr noundef nonnull %tun_setup) #7
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %land.lhs.true34.if.end54_crit_edge, %if.then27.if.end54_crit_edge
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %34 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %board, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %35, label %if.end54.if.end93_crit_edge [
    i32 28, label %if.end54.if.then60_crit_edge
    i32 42, label %if.end54.if.then60_crit_edge401
  ]

if.end54.if.then60_crit_edge401:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.end54.if.then60_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.end54.if.end93_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then60:                                        ; preds = %if.end54.if.then60_crit_edge, %if.end54.if.then60_crit_edge401
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctrl) #7
  %37 = call ptr @memcpy(ptr %ctrl, ptr @__const.cx23885_video_register.ctrl, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg) #7
  %38 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %cfg, i32 0, i32 1
  %39 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tuner_type, align 8
  %41 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %cfg, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ctrl, ptr %38, align 4
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %tuner69 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %tuner69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tuner69, align 4
  %tobool70.not = icmp eq ptr %46, null
  br i1 %tobool70.not, label %if.then60.if.end91_crit_edge, label %land.lhs.true71

if.then60.if.end91_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

land.lhs.true71:                                  ; preds = %if.then60
  %s_config = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %s_config to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_config, align 4
  %tobool74.not = icmp eq ptr %48, null
  br i1 %tobool74.not, label %land.lhs.true71.if.end91_crit_edge, label %if.else76

land.lhs.true71.if.end91_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.else76:                                        ; preds = %land.lhs.true71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool77.not = icmp eq ptr %49, null
  br i1 %tobool77.not, label %if.else76.if.else84_crit_edge, label %land.lhs.true78

if.else76.if.else84_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else84

land.lhs.true78:                                  ; preds = %if.else76
  %s_config79 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %s_config79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_config79, align 4
  %tobool80.not = icmp eq ptr %51, null
  br i1 %tobool80.not, label %land.lhs.true78.if.else84_crit_edge, label %land.lhs.true78.if.end91.sink.split_crit_edge

land.lhs.true78.if.end91.sink.split_crit_edge:    ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.sink.split

land.lhs.true78.if.else84_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else84

if.else84:                                        ; preds = %land.lhs.true78.if.else84_crit_edge, %if.else76.if.else84_crit_edge
  br label %if.end91.sink.split

if.end91.sink.split:                              ; preds = %if.else84, %land.lhs.true78.if.end91.sink.split_crit_edge
  %.sink393 = phi ptr [ %48, %if.else84 ], [ %51, %land.lhs.true78.if.end91.sink.split_crit_edge ]
  %call88 = call i32 %.sink393(ptr noundef nonnull %sd.0, ptr noundef nonnull %cfg) #7
  br label %if.end91

if.end91:                                         ; preds = %if.end91.sink.split, %land.lhs.true71.if.end91_crit_edge, %if.then60.if.end91_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctrl) #7
  %52 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %board, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end91, %if.end54.if.end93_crit_edge
  %53 = phi i32 [ %35, %if.end54.if.end93_crit_edge ], [ %.pr, %if.end91 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %53)
  %cmp95 = icmp eq i32 %53, 39
  br i1 %cmp95, label %if.then96, label %if.end93.if.end133_crit_edge

if.end93.if.end133_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then96:                                        ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctrl97) #7
  %54 = call ptr @memcpy(ptr %ctrl97, ptr @__const.cx23885_video_register.ctrl.43, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg98) #7
  %55 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %cfg98, i32 0, i32 1
  %56 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tuner_type, align 8
  %58 = ptrtoint ptr %cfg98 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %cfg98, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ctrl97, ptr %55, align 4
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 4
  %tuner108 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %tuner108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tuner108, align 4
  %tobool109.not = icmp eq ptr %63, null
  br i1 %tobool109.not, label %if.then96.if.end131_crit_edge, label %land.lhs.true110

if.then96.if.end131_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

land.lhs.true110:                                 ; preds = %if.then96
  %s_config113 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %s_config113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_config113, align 4
  %tobool114.not = icmp eq ptr %65, null
  br i1 %tobool114.not, label %land.lhs.true110.if.end131_crit_edge, label %if.else116

land.lhs.true110.if.end131_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.else116:                                       ; preds = %land.lhs.true110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool117.not = icmp eq ptr %66, null
  br i1 %tobool117.not, label %if.else116.if.else124_crit_edge, label %land.lhs.true118

if.else116.if.else124_crit_edge:                  ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else124

land.lhs.true118:                                 ; preds = %if.else116
  %s_config119 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %s_config119 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_config119, align 4
  %tobool120.not = icmp eq ptr %68, null
  br i1 %tobool120.not, label %land.lhs.true118.if.else124_crit_edge, label %land.lhs.true118.if.end131.sink.split_crit_edge

land.lhs.true118.if.end131.sink.split_crit_edge:  ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.sink.split

land.lhs.true118.if.else124_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else124

if.else124:                                       ; preds = %land.lhs.true118.if.else124_crit_edge, %if.else116.if.else124_crit_edge
  br label %if.end131.sink.split

if.end131.sink.split:                             ; preds = %if.else124, %land.lhs.true118.if.end131.sink.split_crit_edge
  %.sink394 = phi ptr [ %65, %if.else124 ], [ %68, %land.lhs.true118.if.end131.sink.split_crit_edge ]
  %call128 = call i32 %.sink394(ptr noundef nonnull %sd.0, ptr noundef nonnull %cfg98) #7
  br label %if.end131

if.end131:                                        ; preds = %if.end131.sink.split, %land.lhs.true110.if.end131_crit_edge, %if.then96.if.end131_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg98) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctrl97) #7
  br label %if.end133

if.end133:                                        ; preds = %if.end131, %if.end93.if.end133_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup) #7
  br label %if.end135

if.end135:                                        ; preds = %if.end133, %if.end25.if.end135_crit_edge, %land.lhs.true.if.end135_crit_edge, %do.end3.if.end135_crit_edge
  %lock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %69 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tvnorm, align 8
  %call137 = call i32 @cx23885_set_tvnorm(ptr noundef %dev, i64 noundef %70)
  call fastcc void @cx23885_video_mux(ptr noundef %dev, i32 noundef 0)
  %71 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.not.i = icmp eq i32 %71, 0
  br i1 %cmp.not.i, label %if.end135.cx23885_audio_mux.exit_crit_edge, label %do.end.i

if.end135.cx23885_audio_mux.exit_crit_edge:       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_audio_mux.exit

do.end.i:                                         ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.68, i32 noundef 0) #10
  br label %cx23885_audio_mux.exit

cx23885_audio_mux.exit:                           ; preds = %do.end.i, %if.end135.cx23885_audio_mux.exit_crit_edge
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %72 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %board.i, align 4
  %amux.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %73, i32 12, i32 0, i32 2
  %74 = ptrtoint ptr %amux.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %amux.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %75)
  %switch.selectcmp.i = icmp eq i32 %75, 6
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %75)
  %switch.selectcmp1.i = icmp eq i32 %75, 7
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 1, i32 %switch.select.i
  call fastcc void @cx23885_flatiron_mux(ptr noundef %dev, i32 noundef %switch.select2.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  %vb2_vidq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50
  %76 = ptrtoint ptr %vb2_vidq to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %vb2_vidq, align 4
  %io_modes = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 1
  %77 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 23, ptr %io_modes, align 4
  %gfp_flags = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 14
  %78 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %gfp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 15
  %79 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %min_buffers_needed, align 4
  %drv_priv = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 10
  %80 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 12
  %81 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 776, ptr %buf_struct_size, align 4
  %ops142 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 7
  %82 = ptrtoint ptr %ops142 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @cx23885_video_qops, ptr %ops142, align 4
  %mem_ops = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 8
  %83 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 13
  %84 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock144 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 5
  %85 = ptrtoint ptr %lock144 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %lock, ptr %lock144, align 4
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %86 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pci, align 4
  %dev145 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %dev146 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 50, i32 2
  %88 = ptrtoint ptr %dev146 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dev145, ptr %dev146, align 4
  %call147 = call i32 @vb2_queue_init(ptr noundef %vb2_vidq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %cx23885_audio_mux.exit.fail_unreg_crit_edge, label %if.end150

cx23885_audio_mux.exit.fail_unreg_crit_edge:      ; preds = %cx23885_audio_mux.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_unreg

if.end150:                                        ; preds = %cx23885_audio_mux.exit
  %vb2_vbiq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52
  %89 = ptrtoint ptr %vb2_vbiq to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4, ptr %vb2_vbiq, align 4
  %io_modes152 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 1
  %90 = ptrtoint ptr %io_modes152 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 23, ptr %io_modes152, align 4
  %gfp_flags153 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 14
  %91 = ptrtoint ptr %gfp_flags153 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %gfp_flags153, align 4
  %min_buffers_needed154 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 15
  %92 = ptrtoint ptr %min_buffers_needed154 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %min_buffers_needed154, align 4
  %drv_priv155 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 10
  %93 = ptrtoint ptr %drv_priv155 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %dev, ptr %drv_priv155, align 4
  %buf_struct_size156 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 12
  %94 = ptrtoint ptr %buf_struct_size156 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 776, ptr %buf_struct_size156, align 4
  %ops157 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 7
  %95 = ptrtoint ptr %ops157 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @cx23885_vbi_qops, ptr %ops157, align 4
  %mem_ops158 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 8
  %96 = ptrtoint ptr %mem_ops158 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops158, align 4
  %timestamp_flags159 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 13
  %97 = ptrtoint ptr %timestamp_flags159 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 8192, ptr %timestamp_flags159, align 4
  %lock161 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 5
  %98 = ptrtoint ptr %lock161 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %lock, ptr %lock161, align 4
  %99 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci, align 4
  %dev163 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %dev164 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 52, i32 2
  %101 = ptrtoint ptr %dev164 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %dev163, ptr %dev164, align 4
  %call165 = call i32 @vb2_queue_init(ptr noundef %vb2_vbiq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.end150.fail_unreg_crit_edge, label %if.end168

if.end150.fail_unreg_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_unreg

if.end168:                                        ; preds = %if.end150
  %102 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.not.i380 = icmp eq i32 %102, 0
  br i1 %cmp.not.i380, label %if.end168.do.end3.i_crit_edge, label %do.end.i382

if.end168.do.end3.i_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i382:                                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  %call.i381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.104) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i382, %if.end168.do.end3.i_crit_edge
  %call4.i = call ptr @video_device_alloc() #7
  %cmp5.i = icmp eq ptr %call4.i, null
  br i1 %cmp5.i, label %do.end3.i.cx23885_vdev_init.exit_crit_edge, label %if.end7.i

do.end3.i.cx23885_vdev_init.exit_crit_edge:       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_vdev_init.exit

if.end7.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = call ptr @memcpy(ptr %call4.i, ptr @cx23885_video_template, i32 1352)
  %v4l2_dev.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev8.i = getelementptr inbounds %struct.video_device, ptr %call4.i, i32 0, i32 7
  %104 = ptrtoint ptr %v4l2_dev8.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %v4l2_dev.i, ptr %v4l2_dev8.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %call4.i, i32 0, i32 23
  %105 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @video_device_release, ptr %release.i, align 8
  %lock9.i = getelementptr inbounds %struct.video_device, ptr %call4.i, i32 0, i32 26
  %106 = ptrtoint ptr %lock9.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %lock, ptr %lock9.i, align 8
  %name.i = getelementptr inbounds %struct.video_device, ptr %call4.i, i32 0, i32 12
  %107 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %board.i, align 4
  %arrayidx.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i, align 4
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.105, ptr noundef %110, ptr noundef nonnull @.str.44) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call4.i, i32 0, i32 5, i32 8
  %111 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %dev, ptr %driver_data.i.i.i, align 4
  br label %cx23885_vdev_init.exit

cx23885_vdev_init.exit:                           ; preds = %if.end7.i, %do.end3.i.cx23885_vdev_init.exit_crit_edge
  %video_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 43
  %112 = ptrtoint ptr %video_dev to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call4.i, ptr %video_dev, align 4
  %queue = getelementptr inbounds %struct.video_device, ptr %call4.i, i32 0, i32 10
  %113 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %vb2_vidq, ptr %queue, align 8
  %114 = load ptr, ptr %video_dev, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 84017153, ptr %device_caps, align 8
  %116 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %board.i, align 4
  %118 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %117, label %sw.default [
    i32 58, label %cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge
    i32 52, label %cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge402
    i32 56, label %cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge403
    i32 57, label %cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge404
  ]

cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge404: ; preds = %cx23885_vdev_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge403: ; preds = %cx23885_vdev_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge402: ; preds = %cx23885_vdev_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge: ; preds = %cx23885_vdev_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %cx23885_vdev_init.exit
  %119 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %cmp178.not = icmp eq i32 %120, 4
  br i1 %cmp178.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge, %cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge402, %cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge403, %cx23885_vdev_init.exit.sw.epilog.sink.split_crit_edge404
  %121 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %video_dev, align 4
  %device_caps176 = getelementptr inbounds %struct.video_device, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %device_caps176 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %device_caps176, align 8
  %or182 = or i32 %124, 65536
  store i32 %or182, ptr %device_caps176, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge
  %125 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %video_dev, align 4
  %nr = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 15
  %127 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nr, align 8
  %arrayidx185 = getelementptr [8 x i32], ptr @video_nr, i32 0, i32 %128
  %129 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx185, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %126, i32 0, i32 3
  %131 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %fops.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %call.i384 = call i32 @__video_register_device(ptr noundef %126, i32 noundef 0, i32 noundef %130, i32 noundef 1, ptr noundef %134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i384)
  %cmp187 = icmp slt i32 %call.i384, 0
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  br i1 %cmp187, label %sw.epilog.fail_unreg.sink.split_crit_edge, label %do.end197

sw.epilog.fail_unreg.sink.split_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_unreg.sink.split

do.end197:                                        ; preds = %sw.epilog
  %135 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %video_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %136, i32 0, i32 5, i32 3
  %137 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end197.video_device_node_name.exit_crit_edge

do.end197.video_device_node_name.exit_crit_edge:  ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.video_device, ptr %136, i32 0, i32 5
  %139 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end197.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %140, %if.end.i.i ], [ %138, %do.end197.video_device_node_name.exit_crit_edge ]
  %call203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name, ptr noundef %retval.0.i.i) #10
  %call205 = call fastcc ptr @cx23885_vdev_init(ptr noundef %dev, ptr noundef nonnull @cx23885_vbi_template, ptr noundef nonnull @.str.51)
  %vbi_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 44
  %141 = ptrtoint ptr %vbi_dev to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call205, ptr %vbi_dev, align 8
  %queue208 = getelementptr inbounds %struct.video_device, ptr %call205, i32 0, i32 10
  %142 = ptrtoint ptr %queue208 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %vb2_vbiq, ptr %queue208, align 8
  %143 = load ptr, ptr %vbi_dev, align 8
  %device_caps210 = getelementptr inbounds %struct.video_device, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %device_caps210 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 84017168, ptr %device_caps210, align 8
  %145 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %board.i, align 4
  %147 = zext i32 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %146, label %sw.default216 [
    i32 58, label %video_device_node_name.exit.sw.epilog224.sink.split_crit_edge
    i32 52, label %video_device_node_name.exit.sw.epilog224.sink.split_crit_edge405
    i32 56, label %video_device_node_name.exit.sw.epilog224.sink.split_crit_edge406
    i32 57, label %video_device_node_name.exit.sw.epilog224.sink.split_crit_edge407
  ]

video_device_node_name.exit.sw.epilog224.sink.split_crit_edge407: ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog224.sink.split

video_device_node_name.exit.sw.epilog224.sink.split_crit_edge406: ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog224.sink.split

video_device_node_name.exit.sw.epilog224.sink.split_crit_edge405: ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog224.sink.split

video_device_node_name.exit.sw.epilog224.sink.split_crit_edge: ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog224.sink.split

sw.default216:                                    ; preds = %video_device_node_name.exit
  %148 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %149)
  %cmp218.not = icmp eq i32 %149, 4
  br i1 %cmp218.not, label %sw.default216.sw.epilog224_crit_edge, label %sw.default216.sw.epilog224.sink.split_crit_edge

sw.default216.sw.epilog224.sink.split_crit_edge:  ; preds = %sw.default216
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog224.sink.split

sw.default216.sw.epilog224_crit_edge:             ; preds = %sw.default216
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog224

sw.epilog224.sink.split:                          ; preds = %sw.default216.sw.epilog224.sink.split_crit_edge, %video_device_node_name.exit.sw.epilog224.sink.split_crit_edge, %video_device_node_name.exit.sw.epilog224.sink.split_crit_edge405, %video_device_node_name.exit.sw.epilog224.sink.split_crit_edge406, %video_device_node_name.exit.sw.epilog224.sink.split_crit_edge407
  %150 = ptrtoint ptr %vbi_dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %vbi_dev, align 8
  %device_caps214 = getelementptr inbounds %struct.video_device, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %device_caps214 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %device_caps214, align 8
  %or222 = or i32 %153, 65536
  store i32 %or222, ptr %device_caps214, align 8
  br label %sw.epilog224

sw.epilog224:                                     ; preds = %sw.epilog224.sink.split, %sw.default216.sw.epilog224_crit_edge
  %154 = ptrtoint ptr %vbi_dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %vbi_dev, align 8
  %156 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %nr, align 8
  %arrayidx227 = getelementptr [8 x i32], ptr @vbi_nr, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx227, align 4
  %fops.i385 = getelementptr inbounds %struct.video_device, ptr %155, i32 0, i32 3
  %160 = ptrtoint ptr %fops.i385 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %fops.i385, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %call.i386 = call i32 @__video_register_device(ptr noundef %155, i32 noundef 1, i32 noundef %159, i32 noundef 1, ptr noundef %163) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %cmp229 = icmp slt i32 %call.i386, 0
  br i1 %cmp229, label %sw.epilog224.fail_unreg.sink.split_crit_edge, label %do.end241

sw.epilog224.fail_unreg.sink.split_crit_edge:     ; preds = %sw.epilog224
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_unreg.sink.split

do.end241:                                        ; preds = %sw.epilog224
  %164 = ptrtoint ptr %vbi_dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %vbi_dev, align 8
  %init_name.i.i387 = getelementptr inbounds %struct.video_device, ptr %165, i32 0, i32 5, i32 3
  %166 = ptrtoint ptr %init_name.i.i387 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %init_name.i.i387, align 8
  %tobool.not.i.i388 = icmp eq ptr %167, null
  br i1 %tobool.not.i.i388, label %if.end.i.i390, label %do.end241.video_device_node_name.exit392_crit_edge

do.end241.video_device_node_name.exit392_crit_edge: ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit392

if.end.i.i390:                                    ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i389 = getelementptr inbounds %struct.video_device, ptr %165, i32 0, i32 5
  %168 = ptrtoint ptr %dev.i389 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i389, align 4
  br label %video_device_node_name.exit392

video_device_node_name.exit392:                   ; preds = %if.end.i.i390, %do.end241.video_device_node_name.exit392_crit_edge
  %retval.0.i.i391 = phi ptr [ %169, %if.end.i.i390 ], [ %167, %do.end241.video_device_node_name.exit392_crit_edge ]
  %call247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name, ptr noundef %retval.0.i.i391) #10
  %call248 = call ptr @cx23885_audio_register(ptr noundef %dev) #7
  %audio_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 59
  %170 = ptrtoint ptr %audio_dev to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call248, ptr %audio_dev, align 8
  br label %cleanup

fail_unreg.sink.split:                            ; preds = %sw.epilog224.fail_unreg.sink.split_crit_edge, %sw.epilog.fail_unreg.sink.split_crit_edge
  %.str.53.sink = phi ptr [ @.str.46, %sw.epilog.fail_unreg.sink.split_crit_edge ], [ @.str.53, %sw.epilog224.fail_unreg.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call.i384, %sw.epilog.fail_unreg.sink.split_crit_edge ], [ %call.i386, %sw.epilog224.fail_unreg.sink.split_crit_edge ]
  %call237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.53.sink, ptr noundef %name) #10
  br label %fail_unreg

fail_unreg:                                       ; preds = %fail_unreg.sink.split, %if.end150.fail_unreg_crit_edge, %cx23885_audio_mux.exit.fail_unreg_crit_edge
  %err.0 = phi i32 [ %call147, %cx23885_audio_mux.exit.fail_unreg_crit_edge ], [ %call165, %if.end150.fail_unreg_crit_edge ], [ %err.0.ph, %fail_unreg.sink.split ]
  call void @cx23885_video_unregister(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %fail_unreg, %video_device_node_name.exit392
  %retval.0 = phi i32 [ %err.0, %fail_unreg ], [ 0, %video_device_node_name.exit392 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_irq_add_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_tuner_addrs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @v4l2_i2c_subdev_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cx23885_vdev_init(ptr noundef %dev, ptr nocapture noundef readonly %template, ptr noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.104) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call ptr @video_device_alloc() #7
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %do.end3.cleanup_crit_edge, label %if.end7

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %1 = call ptr @memcpy(ptr %call4, ptr %template, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev8 = getelementptr inbounds %struct.video_device, ptr %call4, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %v4l2_dev, ptr %v4l2_dev8, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %call4, i32 0, i32 23
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @video_device_release, ptr %release, align 8
  %lock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 16
  %lock9 = getelementptr inbounds %struct.video_device, ptr %call4, i32 0, i32 26
  %4 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock9, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %call4, i32 0, i32 12
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %board, align 4
  %arrayidx = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.105, ptr noundef %8, ptr noundef %type)
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call4, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end3.cleanup_crit_edge
  ret ptr %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx23885_audio_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_flatiron_mux(ptr noundef %dev, i32 noundef %input) unnamed_addr #0 align 64 {
entry:
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i23 = alloca [2 x i8], align 1
  %msg.i24 = alloca %struct.i2c_msg, align 4
  %buf.i17 = alloca [2 x i8], align 1
  %msg.i18 = alloca %struct.i2c_msg, align 4
  %b0.i1 = alloca [1 x i8], align 1
  %b1.i2 = alloca [1 x i8], align 1
  %msg.i3 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.61, i32 noundef %input) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %input, label %do.end3.cleanup_crit_edge [
    i32 1, label %if.then5
    i32 2, label %if.then10
  ]

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 14, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 76, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 76, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %12 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b1.i, ptr %buf5.i, align 4
  %i2c_adap.i = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2, i32 2
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.then5.cx23885_flatiron_read.exit_crit_edge, label %do.end.i

if.then5.cx23885_flatiron_read.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_flatiron_read.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  br label %cx23885_flatiron_read.exit

cx23885_flatiron_read.exit:                       ; preds = %do.end.i, %if.then5.cx23885_flatiron_read.exit_crit_edge
  %14 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %16 = and i8 %15, -9
  br label %if.end16

if.then10:                                        ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i1) #7
  %17 = ptrtoint ptr %b0.i1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 14, ptr %b0.i1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i2) #7
  %18 = ptrtoint ptr %b1.i2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %b1.i2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i3) #7
  %19 = getelementptr inbounds i8, ptr %msg.i3, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %21 = ptrtoint ptr %msg.i3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 76, ptr %msg.i3, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i4, align 2
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %19, align 4
  %buf.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %b0.i1, ptr %buf.i6, align 4
  %arrayinit.element.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 1
  %25 = ptrtoint ptr %arrayinit.element.i7 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 76, ptr %arrayinit.element.i7, align 4
  %flags3.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 1, i32 1
  %26 = ptrtoint ptr %flags3.i8 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags3.i8, align 2
  %len4.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 1, i32 2
  %27 = ptrtoint ptr %len4.i9 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %len4.i9, align 4
  %buf5.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 1, i32 3
  %28 = ptrtoint ptr %buf5.i10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b1.i2, ptr %buf5.i10, align 4
  %i2c_adap.i11 = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2, i32 2
  %call.i12 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i11, ptr noundef nonnull %msg.i3, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i12)
  %cmp.not.i13 = icmp eq i32 %call.i12, 2
  br i1 %cmp.not.i13, label %if.then10.cx23885_flatiron_read.exit16_crit_edge, label %do.end.i15

if.then10.cx23885_flatiron_read.exit16_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_flatiron_read.exit16

do.end.i15:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  br label %cx23885_flatiron_read.exit16

cx23885_flatiron_read.exit16:                     ; preds = %do.end.i15, %if.then10.cx23885_flatiron_read.exit16_crit_edge
  %29 = ptrtoint ptr %b1.i2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %b1.i2, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i3) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i1) #7
  %31 = or i8 %30, 8
  br label %if.end16

if.end16:                                         ; preds = %cx23885_flatiron_read.exit16, %cx23885_flatiron_read.exit
  %val.0 = phi i8 [ %16, %cx23885_flatiron_read.exit ], [ %31, %cx23885_flatiron_read.exit16 ]
  %32 = or i8 %val.0, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i17) #7
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i17, i32 0, i32 1
  %34 = ptrtoint ptr %buf.i17 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 14, ptr %buf.i17, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i18) #7
  %36 = getelementptr inbounds i8, ptr %msg.i18, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %38 = ptrtoint ptr %msg.i18 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 76, ptr %msg.i18, align 4
  %flags.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i19, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 3
  %40 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i17, ptr %buf1.i, align 4
  %i2c_adap.i21 = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2, i32 2
  %call.i22 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i21, ptr noundef nonnull %msg.i18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i18) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i17) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i23) #7
  %41 = getelementptr inbounds [2 x i8], ptr %buf.i23, i32 0, i32 1
  %42 = ptrtoint ptr %buf.i23 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 15, ptr %buf.i23, align 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i24) #7
  %44 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 196607, ptr %44, align 4
  %46 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 76, ptr %msg.i24, align 4
  %flags.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i25 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i25, align 2
  %buf1.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %48 = ptrtoint ptr %buf1.i27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i23, ptr %buf1.i27, align 4
  %call.i29 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i21, ptr noundef nonnull %msg.i24, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i24) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i23) #7
  %49 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %if.end16.cleanup_crit_edge, label %do.end3.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end3.i:                                        ; preds = %if.end16
  %call.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #10
  %50 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  br label %do.body5.i

do.body5.i:                                       ; preds = %for.inc.i.do.body5.i_crit_edge, %do.end3.i
  %i.021.i = phi i32 [ 0, %do.end3.i ], [ %inc.i, %for.inc.i.do.body5.i_crit_edge ]
  %51 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp6.not.i = icmp eq i32 %51, 0
  br i1 %cmp6.not.i, label %do.body5.i.for.inc.i_crit_edge, label %do.end10.i

do.body5.i.for.inc.i_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end10.i:                                       ; preds = %do.body5.i
  %conv.i = trunc i32 %i.021.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #7
  %52 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #7
  %53 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %54 = call ptr @memset(ptr %50, i32 255, i32 16)
  %55 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 76, ptr %msg.i.i, align 4
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i.i, align 2
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %50, align 4
  %58 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %59 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 76, ptr %arrayinit.element.i.i, align 4
  %60 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %flags3.i.i, align 2
  %61 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %len4.i.i, align 4
  %62 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %b1.i.i, ptr %buf5.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i21, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %do.end10.i.cx23885_flatiron_read.exit.i_crit_edge, label %do.end.i.i

do.end10.i.cx23885_flatiron_read.exit.i_crit_edge: ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_flatiron_read.exit.i

do.end.i.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  br label %cx23885_flatiron_read.exit.i

cx23885_flatiron_read.exit.i:                     ; preds = %do.end.i.i, %do.end10.i.cx23885_flatiron_read.exit.i_crit_edge
  %63 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %conv13.i = zext i8 %64 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef %i.021.i, i32 noundef %conv13.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %cx23885_flatiron_read.exit.i, %do.body5.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 36
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.do.body5.i_crit_edge

for.inc.i.do.body5.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_get_frontend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.74, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %arrayidx = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %5, i32 noundef 32) #7
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %entry.pci_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i)
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %12 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2063466479, ptr %capabilities, align 4
  %13 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %board, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %14, label %sw.default [
    i32 58, label %pci_name.exit.sw.epilog.sink.split_crit_edge
    i32 52, label %pci_name.exit.sw.epilog.sink.split_crit_edge19
    i32 56, label %pci_name.exit.sw.epilog.sink.split_crit_edge20
    i32 57, label %pci_name.exit.sw.epilog.sink.split_crit_edge21
  ]

pci_name.exit.sw.epilog.sink.split_crit_edge21:   ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

pci_name.exit.sw.epilog.sink.split_crit_edge20:   ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

pci_name.exit.sw.epilog.sink.split_crit_edge19:   ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

pci_name.exit.sw.epilog.sink.split_crit_edge:     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %pci_name.exit
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %16 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.not = icmp eq i32 %17, 4
  br i1 %cmp.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %pci_name.exit.sw.epilog.sink.split_crit_edge, %pci_name.exit.sw.epilog.sink.split_crit_edge19, %pci_name.exit.sw.epilog.sink.split_crit_edge20, %pci_name.exit.sw.epilog.sink.split_crit_edge21
  %18 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2063400943, ptr %capabilities, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !292

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @formats, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %field = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 48
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 8
  %field5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %field5, align 4
  %fmt6 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 45
  %11 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt6, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pixelformat, align 4
  %16 = load ptr, ptr %fmt6, align 4
  %depth = getelementptr inbounds %struct.cx23885_fmt, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %depth, align 4
  %mul = mul i32 %18, %3
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %bytesperline, align 4
  %mul16 = mul i32 %shr, %6
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul16, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_vbi_fmt(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #7
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  %5 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.76) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat.i, align 4
  %8 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp2.i.i = icmp eq i32 %8, %7
  br i1 %cmp2.i.i, label %if.end.i, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %field4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field4.i, align 4
  %tvnorm.i = getelementptr inbounds %struct.cx23885_dev, ptr %10, i32 0, i32 27
  %13 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tvnorm.i, align 8
  %and.i.i = and i64 %14, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 576, i32 480
  %15 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %12, label %sw.default.i [
    i32 0, label %if.then7.i
    i32 2, label %if.end.i.sw.bb.i_crit_edge
    i32 3, label %if.end.i.sw.bb.i_crit_edge124
    i32 4, label %if.end.i.if.end8_crit_edge
    i32 5, label %if.end.i.if.end8_crit_edge125
    i32 6, label %if.end.i.if.end8_crit_edge126
  ]

if.end.i.if.end8_crit_edge126:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i.if.end8_crit_edge125:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i.sw.bb.i_crit_edge124:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then7.i:                                       ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %div49.i = lshr exact i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div49.i)
  %cmp9.i = icmp ugt i32 %17, %div49.i
  br i1 %cmp9.i, label %if.then7.i.if.end8_crit_edge, label %if.then7.i.sw.bb.i_crit_edge

if.then7.i.sw.bb.i_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then7.i.if.end8_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

sw.bb.i:                                          ; preds = %if.then7.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge124
  %field.051.i = phi i32 [ 3, %if.then7.i.sw.bb.i_crit_edge ], [ %12, %if.end.i.sw.bb.i_crit_edge ], [ %12, %if.end.i.sw.bb.i_crit_edge124 ]
  %div1148.i = lshr exact i32 %cond.i.i, 1
  br label %if.end8

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %sw.default.i, %sw.bb.i, %if.then7.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge125, %if.end.i.if.end8_crit_edge126
  %field.1.i = phi i32 [ 4, %sw.default.i ], [ %field.051.i, %sw.bb.i ], [ 4, %if.then7.i.if.end8_crit_edge ], [ %12, %if.end.i.if.end8_crit_edge ], [ %12, %if.end.i.if.end8_crit_edge125 ], [ %12, %if.end.i.if.end8_crit_edge126 ]
  %maxh.0.i = phi i32 [ %cond.i.i, %sw.default.i ], [ %div1148.i, %sw.bb.i ], [ %cond.i.i, %if.then7.i.if.end8_crit_edge ], [ %cond.i.i, %if.end.i.if.end8_crit_edge ], [ %cond.i.i, %if.end.i.if.end8_crit_edge125 ], [ %cond.i.i, %if.end.i.if.end8_crit_edge126 ]
  %18 = ptrtoint ptr %field4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %field.1.i, ptr %field4.i, align 4
  %height17.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt1.i, i32 noundef 48, i32 noundef 720, i32 noundef 2, ptr noundef %height17.i, i32 noundef 32, i32 noundef %maxh.0.i, i32 noundef 0, i32 noundef 0) #7
  %19 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt1.i, align 4
  %21 = load i32, ptr getelementptr inbounds ([1 x %struct.cx23885_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %mul.i = mul i32 %21, %20
  %shr.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %23 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height17.i, align 4
  %mul25.i = mul i32 %24, %shr.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul25.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %colorspace.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 50, i32 21
  %27 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.not = icmp eq i32 %28, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %num_buffers.i97 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 52, i32 21
  %29 = ptrtoint ptr %num_buffers.i97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_buffers.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i98.not = icmp eq i32 %30, 0
  br i1 %cmp.i98.not, label %lor.lhs.false11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %num_buffers.i99 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 57, i32 21
  %31 = ptrtoint ptr %num_buffers.i99 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_buffers.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i100.not = icmp eq i32 %32, 0
  br i1 %cmp.i100.not, label %if.end14, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false11
  %33 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixelformat.i, align 4
  %35 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %34)
  %cmp2.i = icmp eq i32 %35, %34
  %retval.0.i101 = select i1 %cmp2.i, ptr @formats, ptr null
  %fmt16 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 45
  %36 = ptrtoint ptr %fmt16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i101, ptr %fmt16, align 4
  %37 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmt1.i, align 4
  %width18 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 46
  %39 = ptrtoint ptr %width18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %width18, align 8
  %40 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height17.i, align 4
  %height20 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 47
  %42 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %height20, align 4
  %43 = ptrtoint ptr %field4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %field4.i, align 4
  %field22 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 48
  %45 = ptrtoint ptr %field22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %field22, align 8
  %46 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp24 = icmp ugt i32 %46, 1
  br i1 %cmp24, label %do.end28, label %if.end14.do.end36_crit_edge

if.end14.do.end36_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

do.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.76, i32 noundef %38, i32 noundef %41, i32 noundef %44) #10
  br label %do.end36

do.end36:                                         ; preds = %do.end28, %if.end14.do.end36_crit_edge
  %format37 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %47 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fmt1.i, align 4
  %49 = ptrtoint ptr %format37 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %format37, align 4
  %50 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height17.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %height2.i, align 4
  %53 = ptrtoint ptr %field4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %field4.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %field3.i, align 4
  %56 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %58 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %colorspace4.i, align 4
  %59 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %conv.i = trunc i32 %61 to i16
  %62 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i, ptr %62, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %65 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %66 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %67 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %68 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %69 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %70 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %code9.i, align 4
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn119 = load ptr, ptr %subdevs, align 4
  %cmp44.not121 = icmp eq ptr %.pn119, %subdevs
  br i1 %cmp44.not121, label %do.end36.do.end60_crit_edge, label %do.end36.for.body_crit_edge

do.end36.for.body_crit_edge:                      ; preds = %do.end36
  br label %for.body

do.end36.do.end60_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end36.for.body_crit_edge
  %.pn122 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn119, %do.end36.for.body_crit_edge ]
  %__sd.0123 = getelementptr i8, ptr %.pn122, i32 -80
  %ops = getelementptr i8, ptr %.pn122, i32 24
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pad, align 4
  %tobool.not = icmp eq ptr %75, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_fmt, align 4
  %tobool47.not = icmp eq ptr %77, null
  br i1 %tobool47.not, label %land.lhs.true.for.inc_crit_edge, label %if.then48

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = call i32 %77(ptr noundef %__sd.0123, ptr noundef null, ptr noundef nonnull %format) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %78 = ptrtoint ptr %.pn122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn = load ptr, ptr %.pn122, align 4
  %cmp44.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp44.not, label %for.inc.do.end60_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end60_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

do.end60:                                         ; preds = %for.inc.do.end60_crit_edge, %do.end36.do.end60_crit_edge
  %79 = ptrtoint ptr %format37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %format37, align 4
  %81 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %fmt1.i, align 4
  %82 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height2.i, align 4
  %84 = ptrtoint ptr %height17.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %height17.i, align 4
  %85 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %field3.i, align 4
  %87 = ptrtoint ptr %field4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %field4.i, align 4
  %88 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %colorspace4.i, align 4
  %90 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %colorspace.i, align 4
  %91 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %62, align 4
  %conv.i110 = zext i16 %92 to i32
  %93 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv.i110, ptr %59, align 4
  %94 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %quantization6.i, align 2
  %conv5.i112 = zext i16 %95 to i32
  %96 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv5.i112, ptr %quantization.i, align 4
  %97 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i115 = zext i16 %98 to i32
  %99 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv7.i115, ptr %xfer_func.i, align 4
  %100 = ptrtoint ptr %field22 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %field22, align 8
  store i32 %101, ptr %field4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end60 ], [ -16, %lor.lhs.false11.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ], [ -22, %do.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp2.i = icmp eq i32 %2, %1
  br i1 %cmp2.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %field4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %field4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field4, align 4
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %4, i32 0, i32 27
  %7 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tvnorm, align 8
  %and.i = and i64 %8, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %6, label %sw.default [
    i32 0, label %if.then7
    i32 2, label %if.end.sw.bb_crit_edge
    i32 3, label %if.end.sw.bb_crit_edge54
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 5, label %if.end.sw.epilog_crit_edge55
    i32 6, label %if.end.sw.epilog_crit_edge56
  ]

if.end.sw.epilog_crit_edge56:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog_crit_edge55:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.bb_crit_edge54:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then7:                                         ; preds = %if.end
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %div49 = lshr exact i32 %cond.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div49)
  %cmp9 = icmp ugt i32 %11, %div49
  br i1 %cmp9, label %if.then7.sw.epilog_crit_edge, label %if.then7.sw.bb_crit_edge

if.then7.sw.bb_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then7.sw.epilog_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then7.sw.bb_crit_edge, %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge54
  %field.051 = phi i32 [ 3, %if.then7.sw.bb_crit_edge ], [ %6, %if.end.sw.bb_crit_edge ], [ %6, %if.end.sw.bb_crit_edge54 ]
  %div1148 = lshr exact i32 %cond.i, 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %if.then7.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge55, %if.end.sw.epilog_crit_edge56
  %field.1 = phi i32 [ 4, %sw.default ], [ %field.051, %sw.bb ], [ 4, %if.then7.sw.epilog_crit_edge ], [ %6, %if.end.sw.epilog_crit_edge ], [ %6, %if.end.sw.epilog_crit_edge55 ], [ %6, %if.end.sw.epilog_crit_edge56 ]
  %maxh.0 = phi i32 [ %cond.i, %sw.default ], [ %div1148, %sw.bb ], [ %cond.i, %if.then7.sw.epilog_crit_edge ], [ %cond.i, %if.end.sw.epilog_crit_edge ], [ %cond.i, %if.end.sw.epilog_crit_edge55 ], [ %cond.i, %if.end.sw.epilog_crit_edge56 ]
  %12 = ptrtoint ptr %field4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %field.1, ptr %field4, align 4
  %height17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 48, i32 noundef 720, i32 noundef 2, ptr noundef %height17, i32 noundef 32, i32 noundef %maxh.0, i32 noundef 0, i32 noundef 0) #7
  %13 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt1, align 4
  %15 = load i32, ptr getelementptr inbounds ([1 x %struct.cx23885_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %mul = mul i32 %15, %14
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %bytesperline, align 4
  %17 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height17, align 4
  %mul25 = mul i32 %18, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul25, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.80) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tvnorm, align 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %tvnorms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.81) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @cx23885_set_tvnorm(ptr noundef %1, i64 noundef %tvnorms)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.82) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @cx23885_enum_input(ptr noundef %1, ptr noundef %i)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %input.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input.i, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  %5 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.cx23885_get_input.exit_crit_edge, label %do.end.i

entry.cx23885_get_input.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_get_input.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.20, i32 noundef %3) #10
  br label %cx23885_get_input.exit

cx23885_get_input.exit:                           ; preds = %do.end.i, %entry.cx23885_get_input.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx23885_set_input(ptr noundef %file, ptr undef, i32 noundef %i)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_audinput(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 0
  br i1 %cmp.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.86) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp4.i = icmp ugt i32 %2, 2
  br i1 %cmp4.i, label %do.end3.i.cx23885_query_audinput.exit_crit_edge, label %if.end6.i

do.end3.i.cx23885_query_audinput.exit_crit_edge:  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_query_audinput.exit

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds i8, ptr %i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 48)
  %arrayidx.i = getelementptr [3 x ptr], ptr @cx23885_query_audinput.iname, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call8.i = tail call i32 @strscpy(ptr noundef %3, ptr noundef %6, i32 noundef 32) #7
  %capability.i = getelementptr inbounds %struct.v4l2_audio, ptr %i, i32 0, i32 2
  %7 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %capability.i, align 4
  br label %cx23885_query_audinput.exit

cx23885_query_audinput.exit:                      ; preds = %if.end6.i, %do.end3.i.cx23885_query_audinput.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end6.i ], [ -22, %do.end3.i.cx23885_query_audinput.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_audinput(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %input1 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input1, align 8
  %arrayidx2 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %3, i32 12, i32 %5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %.off = add i32 %7, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %audinput = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %audinput to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audinput, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %entry.do.body_crit_edge
  %storemerge = phi i32 [ %9, %if.else ], [ 2, %entry.do.body_crit_edge ]
  %10 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %i, align 4
  %11 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11.not = icmp eq i32 %11, 0
  br i1 %cmp11.not, label %do.body.do.end3.i_crit_edge, label %do.end18

do.body.do.end3.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end18:                                         ; preds = %do.body
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.87, i32 noundef %storemerge) #10
  %.pr = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i, label %do.end18.do.end3.ithread-pre-split_crit_edge, label %do.end.i

do.end18.do.end3.ithread-pre-split_crit_edge:     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.ithread-pre-split

do.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.86) #10
  br label %do.end3.ithread-pre-split

do.end3.ithread-pre-split:                        ; preds = %do.end.i, %do.end18.do.end3.ithread-pre-split_crit_edge
  %12 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr30 = load i32, ptr %i, align 4
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end3.ithread-pre-split, %do.body.do.end3.i_crit_edge
  %13 = phi i32 [ %.pr30, %do.end3.ithread-pre-split ], [ %storemerge, %do.body.do.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp4.i = icmp ugt i32 %13, 2
  br i1 %cmp4.i, label %do.end3.i.cx23885_query_audinput.exit_crit_edge, label %if.end6.i

do.end3.i.cx23885_query_audinput.exit_crit_edge:  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_query_audinput.exit

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = getelementptr inbounds i8, ptr %i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 48)
  %arrayidx.i = getelementptr [3 x ptr], ptr @cx23885_query_audinput.iname, i32 0, i32 %13
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call8.i = tail call i32 @strscpy(ptr noundef %14, ptr noundef %17, i32 noundef 32) #7
  %capability.i = getelementptr inbounds %struct.v4l2_audio, ptr %i, i32 0, i32 2
  %18 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %capability.i, align 4
  br label %cx23885_query_audinput.exit

cx23885_query_audinput.exit:                      ; preds = %if.end6.i, %do.end3.i.cx23885_query_audinput.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end6.i ], [ -22, %do.end3.i.cx23885_query_audinput.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_audinput(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %input1 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input1, align 8
  %arrayidx2 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %3, i32 12, i32 %5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %.off = add i32 %7, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %8 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i, align 4
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10.not = icmp eq i32 %9, 2
  %cond = select i1 %cmp10.not, i32 0, i32 -22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp12 = icmp ugt i32 %9, 1
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %10 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15.not = icmp eq i32 %10, 0
  br i1 %cmp15.not, label %do.body.do.end22_crit_edge, label %do.end

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.88, i32 noundef %9) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end, %do.body.do.end22_crit_edge
  %11 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i, align 4
  %audinput = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %audinput to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %audinput, align 4
  %add = add i32 %12, 1
  tail call fastcc void @cx23885_flatiron_mux(ptr noundef %1, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %do.end22 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tvnorm, align 8
  %and = and i64 %3, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 11, i32 54
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %f, align 4
  %cond3 = select i1 %tobool.not, i32 10, i32 59
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond3, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %top, align 4
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 720, ptr %width, align 4
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tvnorm, align 8
  %and.i = and i64 %10, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %3, label %sw.default [
    i32 58, label %entry.sw.epilog_crit_edge
    i32 52, label %entry.sw.epilog_crit_edge41
    i32 56, label %entry.sw.epilog_crit_edge42
    i32 57, label %entry.sw.epilog_crit_edge43
  ]

entry.sw.epilog_crit_edge43:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge42:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %sw.default.cleanup_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge41, %entry.sw.epilog_crit_edge42, %entry.sw.epilog_crit_edge43
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not = icmp eq i32 %8, 0
  br i1 %cmp1.not, label %if.end3, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef 32) #7
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn36 = load ptr, ptr %subdevs, align 4
  %cmp8.not38 = icmp eq ptr %.pn36, %subdevs
  br i1 %cmp8.not38, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %if.end3.for.body_crit_edge ]
  %__sd.040 = getelementptr i8, ptr %.pn39, i32 -80
  %ops = getelementptr i8, ptr %.pn39, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %g_tuner, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %if.then12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 %15(ptr noundef %__sd.040, ptr noundef %t) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp8.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %3, label %sw.default [
    i32 58, label %entry.sw.epilog_crit_edge
    i32 52, label %entry.sw.epilog_crit_edge39
    i32 56, label %entry.sw.epilog_crit_edge40
    i32 57, label %entry.sw.epilog_crit_edge41
  ]

entry.sw.epilog_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %sw.default.cleanup_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge39, %entry.sw.epilog_crit_edge40, %entry.sw.epilog_crit_edge41
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not = icmp eq i32 %8, 0
  br i1 %cmp1.not, label %do.body, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn34 = load ptr, ptr %subdevs, align 4
  %cmp7.not36 = icmp eq ptr %.pn34, %subdevs
  br i1 %cmp7.not36, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn34, %do.body.for.body_crit_edge ]
  %__sd.038 = getelementptr i8, ptr %.pn37, i32 -80
  %ops = getelementptr i8, ptr %.pn37, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_tuner, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 %15(ptr noundef %__sd.038, ptr noundef %t) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp7.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %3, label %sw.default [
    i32 58, label %entry.sw.epilog_crit_edge
    i32 52, label %entry.sw.epilog_crit_edge38
    i32 56, label %entry.sw.epilog_crit_edge39
    i32 57, label %entry.sw.epilog_crit_edge40
  ]

entry.sw.epilog_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge38:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %sw.default.cleanup_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge38, %entry.sw.epilog_crit_edge39, %entry.sw.epilog_crit_edge40
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type, align 4
  %freq = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 42
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %frequency, align 4
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn33 = load ptr, ptr %subdevs, align 4
  %cmp4.not35 = icmp eq ptr %.pn33, %subdevs
  br i1 %cmp4.not35, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn33, %sw.epilog.for.body_crit_edge ]
  %__sd.037 = getelementptr i8, ptr %.pn36, i32 -80
  %ops = getelementptr i8, ptr %.pn36, i32 24
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %g_frequency, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then8

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 %17(ptr noundef %__sd.037, ptr noundef %f) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp4.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx23885_set_frequency(ptr noundef %file, ptr undef, ptr noundef %f)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn25 = load ptr, ptr %subdevs, align 4
  %cmp.not27 = icmp eq ptr %.pn25, %subdevs
  br i1 %cmp.not27, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn25, %entry.for.body_crit_edge ]
  %__sd.029 = getelementptr i8, ptr %.pn28, i32 -80
  %ops = getelementptr i8, ptr %.pn28, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 %8(ptr noundef %__sd.029) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn28, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_g_register(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_s_register(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_g_chip_info(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_planes, align 4
  %fmt = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 45
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.cx23885_fmt, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %depth, align 4
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 46
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width, align 8
  %mul = mul i32 %8, %6
  %height = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 47
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %mul1 = mul i32 %mul, %10
  %shr = lshr i32 %mul1, 3
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #7
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.cx23885_fmt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  %mul = mul i32 %9, %5
  %shr = lshr i32 %mul, 3
  %bpl = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 2
  %10 = ptrtoint ptr %bpl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %bpl, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %11 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  %height = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 47
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %mul6 = mul i32 %14, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul6)
  %cmp.not = icmp eq i32 %mul6, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  %height168 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 47
  %17 = ptrtoint ptr %height168 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height168, align 4
  %mul6169 = mul i32 %18, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul6169)
  %cmp170 = icmp ult i32 %16, %mul6169
  br i1 %cmp170, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i166

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i166:                                     ; preds = %vb2_plane_size.exit.thread
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %mul6169)
  %cmp1.i = icmp ult i32 %20, %mul6169
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i166.if.end42.i_crit_edge

if.then.i166.if.end42.i_crit_edge:                ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i166
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !292

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 1163, i32 noundef 9, ptr noundef null) #7
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i166.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %22, %if.then38.i ], [ %mul6169, %if.then.i166.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %23 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %height171178 = phi ptr [ %height168, %if.end42.i ], [ %height, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge ]
  %field = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 48
  %24 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %25, label %do.body83 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb13
    i32 4, label %sw.bb20
    i32 5, label %sw.bb59
    i32 6, label %sw.bb71
  ]

sw.bb:                                            ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci, align 4
  %risc = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %31 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bpl, align 8
  %33 = ptrtoint ptr %height171178 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height171178, align 4
  %call12 = tail call i32 @cx23885_risc_buffer(ptr noundef %28, ptr noundef %risc, ptr noundef %30, i32 noundef 0, i32 noundef -1, i32 noundef %32, i32 noundef 0, i32 noundef %34) #7
  br label %do.body89

sw.bb13:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pci14 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %pci14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci14, align 4
  %risc15 = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bpl, align 8
  %41 = ptrtoint ptr %height171178 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height171178, align 4
  %call19 = tail call i32 @cx23885_risc_buffer(ptr noundef %36, ptr noundef %risc15, ptr noundef %38, i32 noundef -1, i32 noundef 0, i32 noundef %40, i32 noundef 0, i32 noundef %42) #7
  br label %do.body89

sw.bb20:                                          ; preds = %vb2_set_plane_payload.exit
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 27
  %43 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tvnorm, align 8
  %and = and i64 %44, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 18
  %45 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %board, align 4
  %force_bff = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %46, i32 14
  %47 = ptrtoint ptr %force_bff to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %force_bff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool23.not = icmp ne i32 %48, 0
  %narrow = select i1 %tobool23.not, i1 true, i1 %tobool.not
  %49 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp39.not = icmp eq i32 %49, 0
  br i1 %narrow, label %do.body38, label %do.body

do.body:                                          ; preds = %sw.bb20
  br i1 %cmp39.not, label %do.body.do.end35_crit_edge, label %do.end

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.90) #10
  br label %do.end35

do.end35:                                         ; preds = %do.end, %do.body.do.end35_crit_edge
  %50 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bpl, align 8
  br label %if.end50

do.body38:                                        ; preds = %sw.bb20
  br i1 %cmp39.not, label %do.body38.do.end48_crit_edge, label %do.end43

do.body38.do.end48_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end43:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.90) #10
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %do.body38.do.end48_crit_edge
  %52 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bpl, align 8
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %do.end35
  %line0_offset.0 = phi i32 [ %51, %do.end35 ], [ 0, %do.end48 ]
  %line1_offset.0 = phi i32 [ 0, %do.end35 ], [ %53, %do.end48 ]
  %pci51 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 3
  %54 = ptrtoint ptr %pci51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pci51, align 4
  %risc52 = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %58 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bpl, align 8
  %60 = ptrtoint ptr %height171178 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height171178, align 4
  %shr57 = lshr i32 %61, 1
  %call58 = tail call i32 @cx23885_risc_buffer(ptr noundef %55, ptr noundef %risc52, ptr noundef %57, i32 noundef %line0_offset.0, i32 noundef %line1_offset.0, i32 noundef %59, i32 noundef %59, i32 noundef %shr57) #7
  br label %do.body89

sw.bb59:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pci60 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 3
  %62 = ptrtoint ptr %pci60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci60, align 4
  %risc61 = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %66 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bpl, align 8
  %68 = ptrtoint ptr %height171178 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height171178, align 4
  %shr65 = lshr i32 %69, 1
  %mul66 = mul i32 %shr65, %67
  %call70 = tail call i32 @cx23885_risc_buffer(ptr noundef %63, ptr noundef %risc61, ptr noundef %65, i32 noundef 0, i32 noundef %mul66, i32 noundef %67, i32 noundef 0, i32 noundef %shr65) #7
  br label %do.body89

sw.bb71:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pci72 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 3
  %70 = ptrtoint ptr %pci72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci72, align 4
  %risc73 = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %74 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bpl, align 8
  %76 = ptrtoint ptr %height171178 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height171178, align 4
  %shr77 = lshr i32 %77, 1
  %mul78 = mul i32 %shr77, %75
  %call82 = tail call i32 @cx23885_risc_buffer(ptr noundef %71, ptr noundef %risc73, ptr noundef %73, i32 noundef %mul78, i32 noundef 0, i32 noundef %75, i32 noundef 0, i32 noundef %shr77) #7
  br label %do.body89

do.body83:                                        ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-video.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #7, !srcloc !298
  unreachable

do.body89:                                        ; preds = %sw.bb71, %sw.bb59, %if.end50, %sw.bb13, %sw.bb
  %78 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp90 = icmp ugt i32 %78, 1
  br i1 %cmp90, label %do.end94, label %do.body89.cleanup_crit_edge

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end94:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %79 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index, align 4
  %81 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %width, align 8
  %83 = ptrtoint ptr %height171178 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height171178, align 4
  %85 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fmt, align 4
  %depth100 = getelementptr inbounds %struct.cx23885_fmt, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %depth100 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %depth100, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %86, align 4
  %dma = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3, i32 3
  %91 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma, align 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.90, ptr noundef %vb, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %88, i32 noundef %90, i32 noundef %92) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %do.body89.cleanup_crit_edge, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %do.end94 ], [ 0, %do.body89.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  tail call void @cx23885_free_buffer(ptr noundef %3, ptr noundef %vb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %vidq = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vidq, align 4
  %4 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %entry.cx23885_start_video_dma.exit_crit_edge, label %do.end.i

entry.cx23885_start_video_dma.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx23885_start_video_dma.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.98) #10
  br label %cx23885_start_video_dma.exit

cx23885_start_video_dma.exit:                     ; preds = %do.end.i, %entry.cx23885_start_video_dma.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !299
  tail call void @arm_heavy_mb() #7
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %6, i32 311312
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !300
  %8 = and i32 %7, -285212673
  %9 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %10, i32 311312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %8) #7, !srcloc !296
  %sram_channels.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sram_channels.i, align 8
  %bpl.i = getelementptr i8, ptr %3, i32 8
  %13 = ptrtoint ptr %bpl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bpl.i, align 8
  %dma.i = getelementptr i8, ptr %3, i32 24
  %15 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma.i, align 4
  %call10.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %1, ptr noundef %12, i32 noundef %14, i32 noundef %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !301
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio.i, align 4
  %add.ptr14.i = getelementptr i32, ptr %18, i32 311308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 50331648) #7, !srcloc !296
  %count.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 49, i32 1
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %count.i, align 4
  tail call void @cx23885_irq_add_enable(ptr noundef %1, i32 noundef 1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !302
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio.i, align 4
  %add.ptr20.i = getelementptr i32, ptr %21, i32 65544
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !303
  %23 = or i32 %22, 285212672
  %24 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio.i, align 4
  %add.ptr27.i = getelementptr i32, ptr %25, i32 65544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %23) #7, !srcloc !296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !304
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio.i, align 4
  %add.ptr33.i = getelementptr i32, ptr %27, i32 65536
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #7, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !305
  %29 = or i32 %28, 536870912
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr40.i = getelementptr i32, ptr %31, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %29) #7, !srcloc !296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !306
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio.i, align 4
  %add.ptr46.i = getelementptr i32, ptr %33, i32 311312
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #7, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !307
  %35 = or i32 %34, 285212672
  %36 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio.i, align 4
  %add.ptr53.i = getelementptr i32, ptr %37, i32 311312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %35) #7, !srcloc !296
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %vidq = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !308
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 311312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !309
  %5 = and i32 %4, -285212673
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %7, i32 311312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #7, !srcloc !296
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 53
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %8 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not24 = icmp eq ptr %9, %vidq
  br i1 %cmp.i.not24, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %10 = phi ptr [ %20, %list_del.exit.while.body_crit_edge ], [ %9, %entry.while.body_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %10, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr16, i32 noundef 6) #7
  %19 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not = icmp eq ptr %20, %vidq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %vidq = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 49
  %dma = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %add = add i32 %5, 12
  %6 = tail call i32 @llvm.bswap.i32(i32 %add)
  %cpu = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %arrayidx, align 4
  %jmp = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jmp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 368, ptr %11, align 4
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  %add9 = add i32 %14, 12
  %15 = tail call i32 @llvm.bswap.i32(i32 %add9)
  %16 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jmp, align 4
  %arrayidx12 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx12, align 4
  %19 = load ptr, ptr %jmp, align 4
  %arrayidx15 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx15, align 4
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 53
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %21 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not = icmp eq ptr %22, %vidq
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 49, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %24, ptr noundef %vidq) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %queue, ptr %prev.i, align 4
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vidq, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %queue, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %29 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp24 = icmp ugt i32 %29, 1
  br i1 %cmp24, label %list_add_tail.exit.if.end65.sink.split_crit_edge, label %list_add_tail.exit.if.end65_crit_edge

list_add_tail.exit.if.end65_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

list_add_tail.exit.if.end65.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.sink.split

if.else:                                          ; preds = %entry
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpu, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %or = or i32 %33, 1
  store i32 %or, ptr %31, align 4
  %prev40 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 49, i32 0, i32 1
  %34 = ptrtoint ptr %prev40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev40, align 4
  %queue43 = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 1
  %call.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue43, ptr noundef %35, ptr noundef %vidq) #7
  br i1 %call.i.i87, label %if.end.i.i89, label %if.else.list_add_tail.exit90_crit_edge

if.else.list_add_tail.exit90_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit90

if.end.i.i89:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %prev40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %queue43, ptr %prev40, align 4
  %37 = ptrtoint ptr %queue43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %vidq, ptr %queue43, align 4
  %prev3.i.i88 = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev3.i.i88 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i88, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %queue43, ptr %35, align 4
  br label %list_add_tail.exit90

list_add_tail.exit90:                             ; preds = %if.end.i.i89, %if.else.list_add_tail.exit90_crit_edge
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %jmp48 = getelementptr i8, ptr %35, i32 20
  %43 = ptrtoint ptr %jmp48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %jmp48, align 4
  %arrayidx49 = getelementptr i32, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %arrayidx49, align 4
  %46 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp51 = icmp ugt i32 %46, 1
  br i1 %cmp51, label %list_add_tail.exit90.if.end65.sink.split_crit_edge, label %list_add_tail.exit90.if.end65_crit_edge

list_add_tail.exit90.if.end65_crit_edge:          ; preds = %list_add_tail.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

list_add_tail.exit90.if.end65.sink.split_crit_edge: ; preds = %list_add_tail.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %list_add_tail.exit90.if.end65.sink.split_crit_edge, %list_add_tail.exit.if.end65.sink.split_crit_edge
  %.str.102.sink = phi ptr [ @.str.99, %list_add_tail.exit.if.end65.sink.split_crit_edge ], [ @.str.102, %list_add_tail.exit90.if.end65.sink.split_crit_edge ]
  %index60 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %47 = ptrtoint ptr %index60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index60, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.102.sink, ptr noundef nonnull @.str.100, ptr noundef %vb, i32 noundef %48) #10
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %list_add_tail.exit90.if.end65_crit_edge, %list_add_tail.exit.if.end65_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call18) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_risc_buffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_sram_channel_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !127, !128, !130, !131, !132, !134, !136, !137, !138, !140, !141, !142, !144, !146, !148, !149, !150, !151, !152, !153, !154, !155, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !196, !198, !200, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !226, !228, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !281}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @__UNIQUE_ID_description385, !1, !"__UNIQUE_ID_description385", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_author386, !3, !"__UNIQUE_ID_author386", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_file387, !5, !"__UNIQUE_ID_file387", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_license388, !5, !"__UNIQUE_ID_license388", i1 false, i1 false}
!7 = !{ptr @__param_video_nr, !8, !"__param_video_nr", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 40, i32 1}
!9 = !{ptr @__UNIQUE_ID_video_nrtype389, !8, !"__UNIQUE_ID_video_nrtype389", i1 false, i1 false}
!10 = !{ptr @__param_vbi_nr, !11, !"__param_vbi_nr", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 41, i32 1}
!12 = !{ptr @__UNIQUE_ID_vbi_nrtype390, !11, !"__UNIQUE_ID_vbi_nrtype390", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_video_nr391, !14, !"__UNIQUE_ID_video_nr391", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 43, i32 1}
!15 = !{ptr @__UNIQUE_ID_vbi_nr392, !16, !"__UNIQUE_ID_vbi_nr392", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 44, i32 1}
!17 = !{ptr @__param_video_debug, !18, !"__param_video_debug", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 47, i32 1}
!19 = !{ptr @__UNIQUE_ID_video_debugtype393, !18, !"__UNIQUE_ID_video_debugtype393", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_video_debug394, !21, !"__UNIQUE_ID_video_debug394", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 48, i32 1}
!22 = !{ptr @__param_irq_debug, !23, !"__param_irq_debug", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 51, i32 1}
!24 = !{ptr @__UNIQUE_ID_irq_debugtype395, !23, !"__UNIQUE_ID_irq_debugtype395", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_irq_debug396, !26, !"__UNIQUE_ID_irq_debug396", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 52, i32 1}
!27 = !{ptr @__param_vid_limit, !28, !"__param_vid_limit", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 55, i32 1}
!29 = !{ptr @__UNIQUE_ID_vid_limittype397, !28, !"__UNIQUE_ID_vid_limittype397", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_vid_limit398, !31, !"__UNIQUE_ID_vid_limit398", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 56, i32 1}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 100, i32 2}
!34 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cx23885_video_wakeup._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @cx23885_video_wakeup._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 113, i32 2}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cx23885_set_tvnorm._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @cx23885_set_tvnorm._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 188, i32 3}
!45 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cx23885_flatiron_read._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @cx23885_flatiron_read._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 725, i32 31}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 726, i32 31}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 727, i32 31}
!54 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 728, i32 31}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 729, i32 31}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 730, i32 31}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 731, i32 31}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 732, i32 31}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 733, i32 31}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 734, i32 31}
!68 = !{ptr @cx23885_enum_input.iname, !69, !"iname", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 724, i32 21}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 737, i32 2}
!72 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cx23885_enum_input._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cx23885_enum_input._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 784, i32 2}
!77 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cx23885_get_input._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cx23885_get_input._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 797, i32 2}
!82 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cx23885_set_input._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @cx23885_set_input._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 800, i32 3}
!87 = !{ptr @cx23885_set_input._entry.23, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cx23885_set_input._entry_ptr.25, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1118, i32 4}
!91 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cx23885_video_irq._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @cx23885_video_irq._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1120, i32 4}
!96 = !{ptr @cx23885_video_irq._entry.28, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cx23885_video_irq._entry_ptr.30, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1127, i32 4}
!100 = !{ptr @cx23885_video_irq._entry.31, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @cx23885_video_irq._entry_ptr.33, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1131, i32 4}
!104 = !{ptr @cx23885_video_irq._entry.34, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cx23885_video_irq._entry_ptr.36, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1214, i32 2}
!108 = !{ptr @cx23885_video_unregister._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @cx23885_video_unregister._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1241, i32 2}
!112 = !{ptr @cx23885_video_register._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @cx23885_video_register._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1245, i32 37}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1269, i32 5}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1288, i32 15}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1300, i32 15}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1355, i32 28}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1374, i32 3}
!126 = !{ptr @cx23885_video_register._entry.45, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cx23885_video_register._entry_ptr.47, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1378, i32 2}
!130 = !{ptr @cx23885_video_register._entry.48, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cx23885_video_register._entry_ptr.50, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1383, i32 26}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1401, i32 3}
!136 = !{ptr @cx23885_video_register._entry.52, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @cx23885_video_register._entry_ptr.54, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1405, i32 2}
!140 = !{ptr @cx23885_video_register._entry.55, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cx23885_video_register._entry_ptr.57, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @video_debug, !143, !"video_debug", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 46, i32 21}
!144 = !{ptr @irq_debug, !145, !"irq_debug", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 50, i32 21}
!146 = !{ptr @cx23885_vbi_template, !147, !"cx23885_vbi_template", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1204, i32 28}
!148 = !{ptr @__param_str_video_nr, !8, !"__param_str_video_nr", i1 false, i1 false}
!149 = !{ptr @__param_arr_video_nr, !8, !"__param_arr_video_nr", i1 false, i1 false}
!150 = !{ptr @__param_str_vbi_nr, !11, !"__param_str_vbi_nr", i1 false, i1 false}
!151 = !{ptr @__param_arr_vbi_nr, !11, !"__param_arr_vbi_nr", i1 false, i1 false}
!152 = !{ptr @__param_str_video_debug, !18, !"__param_str_video_debug", i1 false, i1 false}
!153 = !{ptr @__param_str_irq_debug, !23, !"__param_str_irq_debug", i1 false, i1 false}
!154 = !{ptr @__param_str_vid_limit, !28, !"__param_str_vid_limit", i1 false, i1 false}
!155 = !{ptr @vid_limit, !156, !"vid_limit", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 54, i32 21}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 230, i32 2}
!159 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @cx23885_video_mux._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @cx23885_video_mux._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 206, i32 2}
!164 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @cx23885_flatiron_mux._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @cx23885_flatiron_mux._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 196, i32 2}
!169 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @cx23885_flatiron_dump._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @cx23885_flatiron_dump._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 198, i32 3}
!174 = !{ptr @cx23885_flatiron_dump._entry.64, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @cx23885_flatiron_dump._entry_ptr.66, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 280, i32 2}
!178 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @cx23885_audio_mux._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @cx23885_audio_mux._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1034, i32 2}
!183 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @cx23885_set_freq_via_ops._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @cx23885_set_freq_via_ops._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1058, i32 3}
!188 = !{ptr @cx23885_set_freq_via_ops._entry.71, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @cx23885_set_freq_via_ops._entry_ptr.73, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @cx23885_video_template, !191, !"cx23885_video_template", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1205, i32 28}
!192 = !{ptr @video_fops, !193, !"video_fops", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1154, i32 42}
!194 = !{ptr @video_ioctl_ops, !195, !"video_ioctl_ops", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 1164, i32 36}
!196 = !{ptr @.str.74, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 634, i32 23}
!198 = !{ptr @.str.75, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 637, i32 25}
!200 = !{ptr @formats, !201, !"formats", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 68, i32 27}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 605, i32 2}
!204 = !{ptr @vidioc_s_fmt_vid_cap._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.78, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 619, i32 2}
!208 = !{ptr @vidioc_s_fmt_vid_cap._entry.77, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr.79, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.80, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 708, i32 2}
!212 = !{ptr @vidioc_g_std._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @vidioc_g_std._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.81, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 717, i32 2}
!216 = !{ptr @vidioc_s_std._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @vidioc_s_std._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.82, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 775, i32 2}
!220 = !{ptr @vidioc_enum_input._entry, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @vidioc_enum_input._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.83, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 832, i32 9}
!224 = !{ptr @.str.84, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 833, i32 9}
!226 = !{ptr @.str.85, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 834, i32 9}
!228 = !{ptr @cx23885_query_audinput.iname, !229, !"iname", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 831, i32 21}
!230 = !{ptr @.str.86, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 837, i32 2}
!232 = !{ptr @cx23885_query_audinput._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @cx23885_query_audinput._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.87, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 867, i32 2}
!236 = !{ptr @vidioc_g_audinput._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @vidioc_g_audinput._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.88, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 884, i32 2}
!240 = !{ptr @vidioc_s_audinput._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @vidioc_s_audinput._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @cx23885_video_qops, !243, !"cx23885_video_qops", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 516, i32 29}
!244 = !{ptr @.str.89, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 383, i32 4}
!246 = !{ptr @.str.90, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @buffer_prepare._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @buffer_prepare._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.92, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 389, i32 4}
!251 = !{ptr @buffer_prepare._entry.91, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @buffer_prepare._entry_ptr.93, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.95, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 417, i32 2}
!255 = !{ptr @buffer_prepare._entry.94, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @buffer_prepare._entry_ptr.96, !254, !"_entry_ptr", i1 false, i1 false}
!257 = distinct !{null, !258, !"__already_done", i1 false, i1 false}
!258 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!259 = !{ptr @.str.97, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.98, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 308, i32 2}
!262 = !{ptr @cx23885_start_video_dma._entry, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @cx23885_start_video_dma._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.99, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 473, i32 3}
!266 = !{ptr @.str.100, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @buffer_queue._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @buffer_queue._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.102, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 481, i32 3}
!271 = !{ptr @buffer_queue._entry.101, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @buffer_queue._entry_ptr.103, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.104, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 148, i32 2}
!275 = !{ptr @cx23885_vdev_init._entry, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @cx23885_vdev_init._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.105, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 157, i32 41}
!279 = !{ptr @video_nr, !280, !"video_nr", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 37, i32 21}
!281 = !{ptr @vbi_nr, !282, !"vbi_nr", i1 false, i1 false}
!282 = !{!"../drivers/media/pci/cx23885/cx23885-video.c", i32 38, i32 21}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{!"branch_weights", i32 2000, i32 1}
!293 = !{i64 5037900}
!294 = !{i64 2158821676}
!295 = !{i64 2158821982}
!296 = !{i64 5037482}
!297 = !{i64 2158830642}
!298 = !{i64 2158733591, i64 2158734097, i64 2158733628, i64 2158733684, i64 2158733718, i64 2158733742, i64 2158733783, i64 2158733804, i64 2158733832, i64 2158733866}
!299 = !{i64 2158717633}
!300 = !{i64 2158718692}
!301 = !{i64 2158719047}
!302 = !{i64 2158720590}
!303 = !{i64 2158721687}
!304 = !{i64 2158723094}
!305 = !{i64 2158724179}
!306 = !{i64 2158725564}
!307 = !{i64 2158726637}
!308 = !{i64 2158751432}
!309 = !{i64 2158752491}
