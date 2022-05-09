; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-dvb.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.s5h1409_config = type { i8, i8, i8, i16, i8, i8, i16, i8 }
%struct.mxl5005s_config = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cx18_dvb = type { ptr, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_adapter, %struct.dvb_demux, ptr, %struct.dvb_net, i32, i32, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.168, %struct.anon.169, %struct.anon.170, %struct.anon.171, %struct.anon.172, %struct.anon.173, %struct.anon.174, %struct.anon.175 }
%struct.anon.168 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.169 = type { ptr, ptr }
%struct.anon.170 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.171 = type { ptr, ptr }
%struct.anon.172 = type { ptr, ptr, ptr }
%struct.anon.173 = type { ptr, ptr }
%struct.anon.174 = type { ptr, ptr }
%struct.anon.175 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.141 }
%union.anon.141 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.143, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.143 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.167, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.167 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.165], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.165 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.166 }>
%union.anon.166 = type { i64 }
%struct.dvb_demux_feed = type { %union.anon.163, %union.anon.164, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.163 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.164 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_adapter_nr = internal constant [16 x i8] c"cx18.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype385 = internal constant [40 x i8] c"cx18.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr386 = internal constant [41 x i8] c"cx18.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cx18\00", [27 x i8] zeroinitializer }, align 32
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@cx18_dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: DVB Frontend registered\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx18_dvb_register\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/cx18/cx18-dvb.c\00", [62 x i8] zeroinitializer }, align 32
@cx18_dvb_register._entry_ptr = internal global ptr @cx18_dvb_register._entry, section ".printk_index", align 4
@cx18_dvb_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: Registered DVB adapter%d for %s (%d x %d.%02d kB)\0A\00", [39 x i8] zeroinitializer }, align 32
@cx18_dvb_register._entry_ptr.6 = internal global ptr @cx18_dvb_register._entry.4, section ".printk_index", align 4
@cx18_dvb_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dvb->feedlock\00", [17 x i8] zeroinitializer }, align 32
@cx18_dvb_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: unregister DVB\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx18_dvb_unregister\00", [44 x i8] zeroinitializer }, align 32
@cx18_dvb_unregister._entry_ptr = internal global ptr @cx18_dvb_unregister._entry, section ".printk_index", align 4
@__UNIQUE_ID_firmware387 = internal constant [39 x i8] c"cx18.firmware=dvb-cx18-mpc718-mt352.fw\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_dvb_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s:  info: Start feed: pid = 0x%x index = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx18_dvb_start_feed\00", [44 x i8] zeroinitializer }, align 32
@cx18_dvb_start_feed._entry_ptr = internal global ptr @cx18_dvb_start_feed._entry, section ".printk_index", align 4
@cx18_dvb_start_feed._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Failed to initialize firmware starting DVB feed\0A\00", [41 x i8] zeroinitializer }, align 32
@cx18_dvb_start_feed._entry_ptr.14 = internal global ptr @cx18_dvb_start_feed._entry.12, section ".printk_index", align 4
@cx18_dvb_start_feed._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  info: Starting Transport DMA\0A\00", [59 x i8] zeroinitializer }, align 32
@cx18_dvb_start_feed._entry_ptr.17 = internal global ptr @cx18_dvb_start_feed._entry.15, section ".printk_index", align 4
@cx18_dvb_start_feed._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:  info: Failed to start Transport DMA\0A\00", [52 x i8] zeroinitializer }, align 32
@cx18_dvb_start_feed._entry_ptr.20 = internal global ptr @cx18_dvb_start_feed._entry.18, section ".printk_index", align 4
@cx18_dvb_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s:  info: Stop feed: pid = 0x%x index = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx18_dvb_stop_feed\00", [45 x i8] zeroinitializer }, align 32
@cx18_dvb_stop_feed._entry_ptr = internal global ptr @cx18_dvb_stop_feed._entry, section ".printk_index", align 4
@cx18_dvb_stop_feed._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  info: Stopping Transport DMA\0A\00", [59 x i8] zeroinitializer }, align 32
@cx18_dvb_stop_feed._entry_ptr.25 = internal global ptr @cx18_dvb_stop_feed._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1409_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1409_attach\00", [42 x i8] zeroinitializer }, align 32
@hauppauge_hvr1600_config = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 1, i16 -21536, i8 0, i8 1, i16 1, i8 1 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1409_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_register\00", [19 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr = internal global ptr @dvb_register._entry, section ".printk_index", align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5005s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5005s_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_hvr1600_tuner = internal global { %struct.mxl5005s_config, [32 x i8] } { %struct.mxl5005s_config { i8 99, i32 5380000, i32 16000000, i8 1, i8 3, i8 1, i8 1, i8 1, i8 0, i32 200, i32 252, i8 1, i8 0, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dvb_register._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.3, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5005s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.34 = internal global ptr @dvb_register._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1411_attach\00", [42 x i8] zeroinitializer }, align 32
@hcw_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 1, i8 0, i16 1, i16 4000, i16 -21536, i8 1, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_register._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.3, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1411_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.39 = internal global ptr @dvb_register._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_tda18271_std_map, i32 0, i32 2, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.3, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.44 = internal global ptr @dvb_register._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@leadtek_dvr3100h_demod = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.3, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.49 = internal global ptr @dvb_register._entry.47, section ".printk_index", align 4
@dvb_register.ctrl = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.50, i32 64, i32 0, i32 0, i8 0, i32 4560, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_register._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.29, ptr @.str.3, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.55 = internal global ptr @dvb_register._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@yuan_mpc718_mt352_demod = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 20480, i32 4560, i32 1, ptr @yuan_mpc718_mt352_init }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.29, ptr @.str.3, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.60 = internal global ptr @dvb_register._entry.58, section ".printk_index", align 4
@yuan_mpc718_zl10353_demod = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.62 = internal global ptr @dvb_register._entry.61, section ".printk_index", align 4
@dvb_register.ctrl.64 = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.50, i32 64, i32 0, i32 0, i8 0, i32 4560, i8 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.29, ptr @.str.3, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.66 = internal global ptr @dvb_register._entry.65, section ".printk_index", align 4
@gotview_dvd3_zl10353_demod = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.3, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.68 = internal global ptr @dvb_register._entry.67, section ".printk_index", align 4
@dvb_register.ctrl.70 = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.50, i32 64, i32 0, i32 0, i8 0, i32 4560, i8 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.29, ptr @.str.3, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.72 = internal global ptr @dvb_register._entry.71, section ".printk_index", align 4
@dvb_register._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.29, ptr @.str.3, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: frontend initialization failed\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.75 = internal global ptr @dvb_register._entry.73, section ".printk_index", align 4
@hauppauge_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 5380, i8 -37, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -61, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb-cx18-mpc718-mt352.fw\00", [39 x i8] zeroinitializer }, align 32
@yuan_mpc718_mt352_reqfw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Unable to open firmware file %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"yuan_mpc718_mt352_reqfw\00", [40 x i8] zeroinitializer }, align 32
@yuan_mpc718_mt352_reqfw._entry_ptr = internal global ptr @yuan_mpc718_mt352_reqfw._entry, section ".printk_index", align 4
@yuan_mpc718_mt352_reqfw._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.3, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Firmware %s has a bad size: %lu bytes\0A\00", [51 x i8] zeroinitializer }, align 32
@yuan_mpc718_mt352_reqfw._entry_ptr.82 = internal global ptr @yuan_mpc718_mt352_reqfw._entry.80, section ".printk_index", align 4
@yuan_mpc718_mt352_reqfw._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.3, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013%s: The MPC718 board variant with the MT352 DVB-T demodulator will not work without it\0A\00", [38 x i8] zeroinitializer }, align 32
@yuan_mpc718_mt352_reqfw._entry_ptr.85 = internal global ptr @yuan_mpc718_mt352_reqfw._entry.83, section ".printk_index", align 4
@yuan_mpc718_mt352_reqfw._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s: Run 'linux/scripts/get_dvb_firmware mpc718' if you need the firmware\0A\00", [52 x i8] zeroinitializer }, align 32
@yuan_mpc718_mt352_reqfw._entry_ptr.88 = internal global ptr @yuan_mpc718_mt352_reqfw._entry.86, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 8, i64 84, i64 85, i64 86, i64 87]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 347, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 27, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 397, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 398, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 403, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 431, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 246, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 253, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 286, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 291, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 314, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 319, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [25 x i8] c"hauppauge_hvr1600_config\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 58, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 463, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant [24 x i8] c"hauppauge_hvr1600_tuner\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 40, i32 31 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 467, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"hcw_s5h1411_config\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 72, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 474, i32 13 }
@___asan_gen_.226 = private unnamed_addr constant [26 x i8] c"hauppauge_tda18271_config\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 89, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 478, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [23 x i8] c"leadtek_dvr3100h_demod\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 99, i32 30 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 483, i32 13 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 493, i32 30 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 494, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 500, i32 9 }
@___asan_gen_.274 = private unnamed_addr constant [24 x i8] c"yuan_mpc718_mt352_demod\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 204, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 511, i32 13 }
@___asan_gen_.283 = private unnamed_addr constant [26 x i8] c"yuan_mpc718_zl10353_demod\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 212, i32 30 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 515, i32 14 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 525, i32 30 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 532, i32 9 }
@___asan_gen_.295 = private unnamed_addr constant [27 x i8] c"gotview_dvd3_zl10353_demod\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 220, i32 30 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 538, i32 14 }
@___asan_gen_.301 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 548, i32 30 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 555, i32 9 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 566, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [27 x i8] c"hauppauge_tda18271_std_map\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 82, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 126, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 131, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 135, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 144, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [37 x i8] c"../drivers/media/pci/cx18/cx18-dvb.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 145, i32 3 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_adapter_nr386, ptr @__UNIQUE_ID_adapter_nrtype385, ptr @__UNIQUE_ID_firmware387, ptr @__param_adapter_nr, ptr @cx18_dvb_register._entry, ptr @cx18_dvb_register._entry.4, ptr @cx18_dvb_register._entry_ptr, ptr @cx18_dvb_register._entry_ptr.6, ptr @cx18_dvb_start_feed._entry, ptr @cx18_dvb_start_feed._entry.12, ptr @cx18_dvb_start_feed._entry.15, ptr @cx18_dvb_start_feed._entry.18, ptr @cx18_dvb_start_feed._entry_ptr, ptr @cx18_dvb_start_feed._entry_ptr.14, ptr @cx18_dvb_start_feed._entry_ptr.17, ptr @cx18_dvb_start_feed._entry_ptr.20, ptr @cx18_dvb_stop_feed._entry, ptr @cx18_dvb_stop_feed._entry.23, ptr @cx18_dvb_stop_feed._entry_ptr, ptr @cx18_dvb_stop_feed._entry_ptr.25, ptr @cx18_dvb_unregister._entry, ptr @cx18_dvb_unregister._entry_ptr, ptr @dvb_register._entry, ptr @dvb_register._entry.32, ptr @dvb_register._entry.37, ptr @dvb_register._entry.42, ptr @dvb_register._entry.47, ptr @dvb_register._entry.53, ptr @dvb_register._entry.58, ptr @dvb_register._entry.61, ptr @dvb_register._entry.65, ptr @dvb_register._entry.67, ptr @dvb_register._entry.71, ptr @dvb_register._entry.73, ptr @dvb_register._entry_ptr, ptr @dvb_register._entry_ptr.34, ptr @dvb_register._entry_ptr.39, ptr @dvb_register._entry_ptr.44, ptr @dvb_register._entry_ptr.49, ptr @dvb_register._entry_ptr.55, ptr @dvb_register._entry_ptr.60, ptr @dvb_register._entry_ptr.62, ptr @dvb_register._entry_ptr.66, ptr @dvb_register._entry_ptr.68, ptr @dvb_register._entry_ptr.72, ptr @dvb_register._entry_ptr.75, ptr @yuan_mpc718_mt352_reqfw._entry, ptr @yuan_mpc718_mt352_reqfw._entry.80, ptr @yuan_mpc718_mt352_reqfw._entry.83, ptr @yuan_mpc718_mt352_reqfw._entry.86, ptr @yuan_mpc718_mt352_reqfw._entry_ptr, ptr @yuan_mpc718_mt352_reqfw._entry_ptr.82, ptr @yuan_mpc718_mt352_reqfw._entry_ptr.85, ptr @yuan_mpc718_mt352_reqfw._entry_ptr.88, ptr @.str, ptr @adapter_nr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @cx18_dvb_register.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @hauppauge_hvr1600_config, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @hauppauge_hvr1600_tuner, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @hcw_s5h1411_config, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @hauppauge_tda18271_config, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @leadtek_dvr3100h_demod, ptr @.str.48, ptr @dvb_register.ctrl, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @yuan_mpc718_mt352_demod, ptr @.str.59, ptr @yuan_mpc718_zl10353_demod, ptr @dvb_register.ctrl.64, ptr @gotview_dvd3_zl10353_demod, ptr @dvb_register.ctrl.70, ptr @.str.74, ptr @hauppauge_tda18271_std_map, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_start_feed._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_start_feed._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_start_feed._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dvb_stop_feed._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1600_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1600_tuner to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leadtek_dvr3100h_demod to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuan_mpc718_mt352_demod to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuan_mpc718_zl10353_demod to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.ctrl.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gotview_dvd3_zl10353_demod to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.ctrl.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuan_mpc718_mt352_reqfw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuan_mpc718_mt352_reqfw._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuan_mpc718_mt352_reqfw._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuan_mpc718_mt352_reqfw._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_dvb_register(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.xc2028_config, align 4
  %cfg233.i = alloca %struct.xc2028_config, align 4
  %cfg309.i = alloca %struct.xc2028_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %dvb2 = getelementptr inbounds %struct.cx18_stream, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %dvb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %enabled, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %stream, ptr %3, align 8
  %dvb_adapter4 = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 4
  %pci_dev = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adapter4, ptr noundef nonnull @.str, ptr noundef null, ptr noundef %dev, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %demux = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5
  %priv = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %stream, ptr %priv, align 4
  %filternum = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 256, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 256, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cx18_dvb_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cx18_dvb_stop_feed, ptr %stop_feed, align 4
  %13 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 13, ptr %demux, align 8
  %call9 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.err_dvb_unregister_adapter_crit_edge, label %if.end12

if.end6.err_dvb_unregister_adapter_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dvb_unregister_adapter

if.end12:                                         ; preds = %if.end6
  %hw_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 1
  %source = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %source, align 4
  %mem_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 2
  %source14 = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %source14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %source14, align 8
  %dmxdev = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 3
  %filternum15 = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %filternum15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %filternum15, align 4
  %demux17 = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %demux17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %demux, ptr %demux17, align 4
  %call19 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adapter4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end12.err_dvb_dmx_release_crit_edge, label %if.end22

if.end12.err_dvb_dmx_release_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dvb_dmx_release

if.end22:                                         ; preds = %if.end12
  %add_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 0, i32 10
  %18 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add_frontend, align 4
  %call24 = tail call i32 %19(ptr noundef %demux, ptr noundef %hw_frontend) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.err_dvb_dmxdev_release_crit_edge, label %if.end27

if.end22.err_dvb_dmxdev_release_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dvb_dmxdev_release

if.end27:                                         ; preds = %if.end22
  %20 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add_frontend, align 4
  %call30 = tail call i32 %21(ptr noundef %demux, ptr noundef %mem_frontend) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end27.err_remove_hw_frontend_crit_edge, label %if.end33

if.end27.err_remove_hw_frontend_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_remove_hw_frontend

if.end33:                                         ; preds = %if.end27
  %connect_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 0, i32 13
  %22 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connect_frontend, align 4
  %call35 = tail call i32 %23(ptr noundef %demux, ptr noundef %hw_frontend) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end33.err_remove_mem_frontend_crit_edge, label %if.end38

if.end33.err_remove_mem_frontend_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_remove_mem_frontend

if.end38:                                         ; preds = %if.end33
  %24 = ptrtoint ptr %dvb2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvb2, align 8
  %26 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cx1, align 4
  %card.i = getelementptr inbounds %struct.cx18, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.end38.sw.epilog.i_crit_edge [
    i32 0, label %if.end38.sw.bb.i_crit_edge
    i32 1, label %if.end38.sw.bb.i_crit_edge141
    i32 9, label %sw.bb42.i
    i32 7, label %sw.bb101.i
    i32 3, label %sw.bb170.i
    i32 8, label %sw.bb277.i
  ]

if.end38.sw.bb.i_crit_edge141:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end38.sw.bb.i_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end38.sw.epilog.i_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end38.sw.bb.i_crit_edge, %if.end38.sw.bb.i_crit_edge141
  %call.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end.i, label %sw.bb.i.if.then.i_crit_edge

sw.bb.i.if.then.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

cond.end.i:                                       ; preds = %sw.bb.i
  %call3.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #4
  %call4.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #4
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end.i, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end.i.if.then.i_crit_edge, %sw.bb.i.if.then.i_crit_edge
  %cond455.i = phi ptr [ %call4.i, %cond.end.i.if.then.i_crit_edge ], [ %call.i, %sw.bb.i.if.then.i_crit_edge ]
  %i2c_adap.i = getelementptr inbounds %struct.cx18, ptr %27, i32 0, i32 55
  %call6.i = tail call ptr %cond455.i(ptr noundef nonnull @hauppauge_hvr1600_config, ptr noundef %i2c_adap.i) #4
  %cmp.i = icmp eq ptr %call6.i, null
  br i1 %cmp.i, label %if.then7.i, label %if.then13.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #4
  br label %if.end9.thread.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #7
  br label %if.end9.thread.i

if.end9.thread.i:                                 ; preds = %do.end.i, %if.then7.i
  %fe457.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %33 = ptrtoint ptr %fe457.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %fe457.i, align 8
  br label %sw.epilog.i

if.then13.i:                                      ; preds = %if.then.i
  %fe.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %34 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call6.i, ptr %fe.i, align 8
  %call16.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.30) #4
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %cond.end22.i, label %if.then13.i.if.then25.i_crit_edge

if.then13.i.if.then25.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25.i

cond.end22.i:                                     ; preds = %if.then13.i
  %call20.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.31) #4
  %call21.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.30) #4
  %tobool24.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool24.not.i, label %do.end36.i, label %cond.end22.i.if.then25.i_crit_edge

cond.end22.i.if.then25.i_crit_edge:               ; preds = %cond.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25.i

if.then25.i:                                      ; preds = %cond.end22.i.if.then25.i_crit_edge, %if.then13.i.if.then25.i_crit_edge
  %cond23461.i = phi ptr [ %call21.i, %cond.end22.i.if.then25.i_crit_edge ], [ %call16.i, %if.then13.i.if.then25.i_crit_edge ]
  %35 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fe.i, align 8
  %call29.i = tail call ptr %cond23461.i(ptr noundef %36, ptr noundef %i2c_adap.i, ptr noundef nonnull @hauppauge_hvr1600_tuner) #4
  %cmp30.i = icmp eq ptr %call29.i, null
  br i1 %cmp30.i, label %if.then31.i, label %if.then25.i.sw.epilog.i_crit_edge

if.then25.i.sw.epilog.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.then31.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.30) #4
  br label %sw.epilog.i

do.end36.i:                                       ; preds = %cond.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #7
  br label %sw.epilog.i

sw.bb42.i:                                        ; preds = %if.end38
  %call45.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.35) #4
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %cond.end51.i, label %sw.bb42.i.if.then54.i_crit_edge

sw.bb42.i.if.then54.i_crit_edge:                  ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54.i

cond.end51.i:                                     ; preds = %sw.bb42.i
  %call49.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.36) #4
  %call50.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.35) #4
  %tobool53.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool53.not.i, label %do.end64.i, label %cond.end51.i.if.then54.i_crit_edge

cond.end51.i.if.then54.i_crit_edge:               ; preds = %cond.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54.i

if.then54.i:                                      ; preds = %cond.end51.i.if.then54.i_crit_edge, %sw.bb42.i.if.then54.i_crit_edge
  %cond52464.i = phi ptr [ %call50.i, %cond.end51.i.if.then54.i_crit_edge ], [ %call45.i, %sw.bb42.i.if.then54.i_crit_edge ]
  %i2c_adap55.i = getelementptr inbounds %struct.cx18, ptr %27, i32 0, i32 55
  %call57.i = tail call ptr %cond52464.i(ptr noundef nonnull @hcw_s5h1411_config, ptr noundef %i2c_adap55.i) #4
  %cmp58.i = icmp eq ptr %call57.i, null
  br i1 %cmp58.i, label %if.then59.i, label %if.then72.i

if.then59.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.35) #4
  br label %if.end67.thread.i

do.end64.i:                                       ; preds = %cond.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #7
  br label %if.end67.thread.i

if.end67.thread.i:                                ; preds = %do.end64.i, %if.then59.i
  %fe69466.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %37 = ptrtoint ptr %fe69466.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %fe69466.i, align 8
  br label %sw.epilog.i

if.then72.i:                                      ; preds = %if.then54.i
  %fe69.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %38 = ptrtoint ptr %fe69.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call57.i, ptr %fe69.i, align 8
  %call75.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #4
  %tobool76.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool76.not.i, label %cond.end81.i, label %if.then72.i.if.then84.i_crit_edge

if.then72.i.if.then84.i_crit_edge:                ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then84.i

cond.end81.i:                                     ; preds = %if.then72.i
  %call79.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.41) #4
  %call80.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #4
  %tobool83.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool83.not.i, label %do.end95.i, label %cond.end81.i.if.then84.i_crit_edge

cond.end81.i.if.then84.i_crit_edge:               ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then84.i

if.then84.i:                                      ; preds = %cond.end81.i.if.then84.i_crit_edge, %if.then72.i.if.then84.i_crit_edge
  %cond82470.i = phi ptr [ %call80.i, %cond.end81.i.if.then84.i_crit_edge ], [ %call75.i, %if.then72.i.if.then84.i_crit_edge ]
  %39 = ptrtoint ptr %fe69.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fe69.i, align 8
  %call88.i = tail call ptr %cond82470.i(ptr noundef %40, i8 noundef zeroext 96, ptr noundef %i2c_adap55.i, ptr noundef nonnull @hauppauge_tda18271_config) #4
  %cmp89.i = icmp eq ptr %call88.i, null
  br i1 %cmp89.i, label %if.then90.i, label %if.then84.i.sw.epilog.i_crit_edge

if.then84.i.sw.epilog.i_crit_edge:                ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.then90.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.40) #4
  br label %sw.epilog.i

do.end95.i:                                       ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #6
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #7
  br label %sw.epilog.i

sw.bb101.i:                                       ; preds = %if.end38
  %call104.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.45) #4
  %tobool105.not.i = icmp eq ptr %call104.i, null
  br i1 %tobool105.not.i, label %cond.end110.i, label %sw.bb101.i.if.then113.i_crit_edge

sw.bb101.i.if.then113.i_crit_edge:                ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then113.i

cond.end110.i:                                    ; preds = %sw.bb101.i
  %call108.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.46) #4
  %call109.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.45) #4
  %tobool112.not.i = icmp eq ptr %call109.i, null
  br i1 %tobool112.not.i, label %do.end123.i, label %cond.end110.i.if.then113.i_crit_edge

cond.end110.i.if.then113.i_crit_edge:             ; preds = %cond.end110.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then113.i

if.then113.i:                                     ; preds = %cond.end110.i.if.then113.i_crit_edge, %sw.bb101.i.if.then113.i_crit_edge
  %cond111473.i = phi ptr [ %call109.i, %cond.end110.i.if.then113.i_crit_edge ], [ %call104.i, %sw.bb101.i.if.then113.i_crit_edge ]
  %arrayidx115.i = getelementptr %struct.cx18, ptr %27, i32 0, i32 55, i32 1
  %call116.i = tail call ptr %cond111473.i(ptr noundef nonnull @leadtek_dvr3100h_demod, ptr noundef %arrayidx115.i) #4
  %cmp117.i = icmp eq ptr %call116.i, null
  br i1 %cmp117.i, label %if.then118.i, label %if.then131.i

if.then118.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.45) #4
  br label %if.end126.thread.i

do.end123.i:                                      ; preds = %cond.end110.i
  call void @__sanitizer_cov_trace_pc() #6
  %call125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #7
  br label %if.end126.thread.i

if.end126.thread.i:                               ; preds = %do.end123.i, %if.then118.i
  %fe128475.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %41 = ptrtoint ptr %fe128475.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %fe128475.i, align 8
  br label %sw.epilog.i

if.then131.i:                                     ; preds = %if.then113.i
  %fe128.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %42 = ptrtoint ptr %fe128.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call116.i, ptr %fe128.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i) #4
  %43 = getelementptr inbounds i8, ptr %cfg.i, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1644167167, ptr %43, align 4
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx115.i, ptr %cfg.i, align 4
  %ctrl.i = getelementptr inbounds %struct.xc2028_config, ptr %cfg.i, i32 0, i32 2
  %46 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ctrl.i, align 4
  %call138.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #4
  %tobool139.not.i = icmp eq ptr %call138.i, null
  br i1 %tobool139.not.i, label %cond.end144.i, label %if.then131.i.if.then147.i_crit_edge

if.then131.i.if.then147.i_crit_edge:              ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then147.i

cond.end144.i:                                    ; preds = %if.then131.i
  %call142.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #4
  %call143.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #4
  %tobool146.not.i = icmp eq ptr %call143.i, null
  br i1 %tobool146.not.i, label %do.end156.i, label %cond.end144.i.if.then147.i_crit_edge

cond.end144.i.if.then147.i_crit_edge:             ; preds = %cond.end144.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then147.i

if.then147.i:                                     ; preds = %cond.end144.i.if.then147.i_crit_edge, %if.then131.i.if.then147.i_crit_edge
  %cond145479.i = phi ptr [ %call143.i, %cond.end144.i.if.then147.i_crit_edge ], [ %call138.i, %if.then131.i.if.then147.i_crit_edge ]
  %47 = ptrtoint ptr %fe128.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fe128.i, align 8
  %call149.i = call ptr %cond145479.i(ptr noundef %48, ptr noundef nonnull %cfg.i) #4
  %cmp150.i = icmp eq ptr %call149.i, null
  br i1 %cmp150.i, label %if.then151.i, label %land.lhs.true.i

if.then151.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.51) #4
  br label %if.end168.i

do.end156.i:                                      ; preds = %cond.end144.i
  call void @__sanitizer_cov_trace_pc() #6
  %call158.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #7
  br label %if.end168.i

land.lhs.true.i:                                  ; preds = %if.then147.i
  %set_config.i = getelementptr inbounds %struct.dvb_frontend, ptr %call149.i, i32 0, i32 1, i32 32, i32 8
  %49 = ptrtoint ptr %set_config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_config.i, align 4
  %cmp162.not.i = icmp eq ptr %50, null
  br i1 %cmp162.not.i, label %land.lhs.true.i.if.end168.i_crit_edge, label %if.then163.i

land.lhs.true.i.if.end168.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end168.i

if.then163.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %call167.i = call i32 %50(ptr noundef nonnull %call149.i, ptr noundef nonnull @dvb_register.ctrl) #4
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.then163.i, %land.lhs.true.i.if.end168.i_crit_edge, %do.end156.i, %if.then151.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #4
  br label %sw.epilog.i

sw.bb170.i:                                       ; preds = %if.end38
  %call173.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #4
  %tobool174.not.i = icmp eq ptr %call173.i, null
  br i1 %tobool174.not.i, label %cond.end179.i, label %sw.bb170.i.if.then182.i_crit_edge

sw.bb170.i.if.then182.i_crit_edge:                ; preds = %sw.bb170.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then182.i

cond.end179.i:                                    ; preds = %sw.bb170.i
  %call177.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #4
  %call178.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #4
  %tobool181.not.i = icmp eq ptr %call178.i, null
  br i1 %tobool181.not.i, label %do.end192.i, label %cond.end179.i.if.then182.i_crit_edge

cond.end179.i.if.then182.i_crit_edge:             ; preds = %cond.end179.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then182.i

if.then182.i:                                     ; preds = %cond.end179.i.if.then182.i_crit_edge, %sw.bb170.i.if.then182.i_crit_edge
  %cond180484.i = phi ptr [ %call178.i, %cond.end179.i.if.then182.i_crit_edge ], [ %call173.i, %sw.bb170.i.if.then182.i_crit_edge ]
  %arrayidx184.i = getelementptr %struct.cx18, ptr %27, i32 0, i32 55, i32 1
  %call185.i = tail call ptr %cond180484.i(ptr noundef nonnull @yuan_mpc718_mt352_demod, ptr noundef %arrayidx184.i) #4
  %cmp186.i = icmp eq ptr %call185.i, null
  br i1 %cmp186.i, label %if.then187.i, label %if.end228.thread.i

if.then187.i:                                     ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #4
  br label %if.then200.i

do.end192.i:                                      ; preds = %cond.end179.i
  call void @__sanitizer_cov_trace_pc() #6
  %call194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #7
  br label %if.then200.i

if.end228.thread.i:                               ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #6
  %fe197.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %51 = ptrtoint ptr %fe197.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call185.i, ptr %fe197.i, align 8
  br label %if.then231.i

if.then200.i:                                     ; preds = %do.end192.i, %if.then187.i
  %fe197486.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %52 = ptrtoint ptr %fe197486.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %fe197486.i, align 8
  %call203.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.45) #4
  %tobool204.not.i = icmp eq ptr %call203.i, null
  br i1 %tobool204.not.i, label %cond.end209.i, label %if.then200.i.if.then212.i_crit_edge

if.then200.i.if.then212.i_crit_edge:              ; preds = %if.then200.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then212.i

cond.end209.i:                                    ; preds = %if.then200.i
  %call207.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.46) #4
  %call208.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.45) #4
  %tobool211.not.i = icmp eq ptr %call208.i, null
  br i1 %tobool211.not.i, label %do.end222.i, label %cond.end209.i.if.then212.i_crit_edge

cond.end209.i.if.then212.i_crit_edge:             ; preds = %cond.end209.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then212.i

if.then212.i:                                     ; preds = %cond.end209.i.if.then212.i_crit_edge, %if.then200.i.if.then212.i_crit_edge
  %cond210492.i = phi ptr [ %call208.i, %cond.end209.i.if.then212.i_crit_edge ], [ %call203.i, %if.then200.i.if.then212.i_crit_edge ]
  %arrayidx214.i = getelementptr %struct.cx18, ptr %27, i32 0, i32 55, i32 1
  %call215.i = tail call ptr %cond210492.i(ptr noundef nonnull @yuan_mpc718_zl10353_demod, ptr noundef %arrayidx214.i) #4
  %cmp216.i = icmp eq ptr %call215.i, null
  br i1 %cmp216.i, label %if.then217.i, label %if.end228.i

if.then217.i:                                     ; preds = %if.then212.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.45) #4
  br label %if.end228.thread496.i

do.end222.i:                                      ; preds = %cond.end209.i
  call void @__sanitizer_cov_trace_pc() #6
  %call224.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #7
  br label %if.end228.thread496.i

if.end228.thread496.i:                            ; preds = %do.end222.i, %if.then217.i
  %53 = ptrtoint ptr %fe197486.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %fe197486.i, align 8
  br label %sw.epilog.i

if.end228.i:                                      ; preds = %if.then212.i
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %fe197486.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call215.i, ptr %fe197486.i, align 8
  br label %if.then231.i

if.then231.i:                                     ; preds = %if.end228.i, %if.end228.thread.i
  %fe197489495.i = phi ptr [ %fe197.i, %if.end228.thread.i ], [ %fe197486.i, %if.end228.i ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg233.i) #4
  %55 = getelementptr inbounds i8, ptr %cfg233.i, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1644167167, ptr %55, align 4
  %arrayidx236.i = getelementptr %struct.cx18, ptr %27, i32 0, i32 55, i32 1
  %57 = ptrtoint ptr %cfg233.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx236.i, ptr %cfg233.i, align 4
  %ctrl238.i = getelementptr inbounds %struct.xc2028_config, ptr %cfg233.i, i32 0, i32 2
  %58 = ptrtoint ptr %ctrl238.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %ctrl238.i, align 4
  %call241.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #4
  %tobool242.not.i = icmp eq ptr %call241.i, null
  br i1 %tobool242.not.i, label %cond.end247.i, label %if.then231.i.if.then250.i_crit_edge

if.then231.i.if.then250.i_crit_edge:              ; preds = %if.then231.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then250.i

cond.end247.i:                                    ; preds = %if.then231.i
  %call245.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #4
  %call246.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #4
  %tobool249.not.i = icmp eq ptr %call246.i, null
  br i1 %tobool249.not.i, label %do.end259.i, label %cond.end247.i.if.then250.i_crit_edge

cond.end247.i.if.then250.i_crit_edge:             ; preds = %cond.end247.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then250.i

if.then250.i:                                     ; preds = %cond.end247.i.if.then250.i_crit_edge, %if.then231.i.if.then250.i_crit_edge
  %cond248501.i = phi ptr [ %call246.i, %cond.end247.i.if.then250.i_crit_edge ], [ %call241.i, %if.then231.i.if.then250.i_crit_edge ]
  %59 = ptrtoint ptr %fe197489495.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fe197489495.i, align 8
  %call252.i = call ptr %cond248501.i(ptr noundef %60, ptr noundef nonnull %cfg233.i) #4
  %cmp253.i = icmp eq ptr %call252.i, null
  br i1 %cmp253.i, label %if.then254.i, label %land.lhs.true265.i

if.then254.i:                                     ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.51) #4
  br label %if.end275.i

do.end259.i:                                      ; preds = %cond.end247.i
  call void @__sanitizer_cov_trace_pc() #6
  %call261.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #7
  br label %if.end275.i

land.lhs.true265.i:                               ; preds = %if.then250.i
  %set_config268.i = getelementptr inbounds %struct.dvb_frontend, ptr %call252.i, i32 0, i32 1, i32 32, i32 8
  %61 = ptrtoint ptr %set_config268.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_config268.i, align 4
  %cmp269.not.i = icmp eq ptr %62, null
  br i1 %cmp269.not.i, label %land.lhs.true265.i.if.end275.i_crit_edge, label %if.then270.i

land.lhs.true265.i.if.end275.i_crit_edge:         ; preds = %land.lhs.true265.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end275.i

if.then270.i:                                     ; preds = %land.lhs.true265.i
  call void @__sanitizer_cov_trace_pc() #6
  %call274.i = call i32 %62(ptr noundef nonnull %call252.i, ptr noundef nonnull @dvb_register.ctrl.64) #4
  br label %if.end275.i

if.end275.i:                                      ; preds = %if.then270.i, %land.lhs.true265.i.if.end275.i_crit_edge, %do.end259.i, %if.then254.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg233.i) #4
  br label %sw.epilog.i

sw.bb277.i:                                       ; preds = %if.end38
  %call280.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.45) #4
  %tobool281.not.i = icmp eq ptr %call280.i, null
  br i1 %tobool281.not.i, label %cond.end286.i, label %sw.bb277.i.if.then289.i_crit_edge

sw.bb277.i.if.then289.i_crit_edge:                ; preds = %sw.bb277.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then289.i

cond.end286.i:                                    ; preds = %sw.bb277.i
  %call284.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.46) #4
  %call285.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.45) #4
  %tobool288.not.i = icmp eq ptr %call285.i, null
  br i1 %tobool288.not.i, label %do.end299.i, label %cond.end286.i.if.then289.i_crit_edge

cond.end286.i.if.then289.i_crit_edge:             ; preds = %cond.end286.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then289.i

if.then289.i:                                     ; preds = %cond.end286.i.if.then289.i_crit_edge, %sw.bb277.i.if.then289.i_crit_edge
  %cond287506.i = phi ptr [ %call285.i, %cond.end286.i.if.then289.i_crit_edge ], [ %call280.i, %sw.bb277.i.if.then289.i_crit_edge ]
  %arrayidx291.i = getelementptr %struct.cx18, ptr %27, i32 0, i32 55, i32 1
  %call292.i = tail call ptr %cond287506.i(ptr noundef nonnull @gotview_dvd3_zl10353_demod, ptr noundef %arrayidx291.i) #4
  %cmp293.i = icmp eq ptr %call292.i, null
  br i1 %cmp293.i, label %if.then294.i, label %if.then307.i

if.then294.i:                                     ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.45) #4
  br label %if.end302.thread.i

do.end299.i:                                      ; preds = %cond.end286.i
  call void @__sanitizer_cov_trace_pc() #6
  %call301.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #7
  br label %if.end302.thread.i

if.end302.thread.i:                               ; preds = %do.end299.i, %if.then294.i
  %fe304508.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %63 = ptrtoint ptr %fe304508.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %fe304508.i, align 8
  br label %sw.epilog.i

if.then307.i:                                     ; preds = %if.then289.i
  %fe304.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %64 = ptrtoint ptr %fe304.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call292.i, ptr %fe304.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg309.i) #4
  %65 = getelementptr inbounds i8, ptr %cfg309.i, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1644167167, ptr %65, align 4
  %67 = ptrtoint ptr %cfg309.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx291.i, ptr %cfg309.i, align 4
  %ctrl314.i = getelementptr inbounds %struct.xc2028_config, ptr %cfg309.i, i32 0, i32 2
  %68 = ptrtoint ptr %ctrl314.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %ctrl314.i, align 4
  %call317.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #4
  %tobool318.not.i = icmp eq ptr %call317.i, null
  br i1 %tobool318.not.i, label %cond.end323.i, label %if.then307.i.if.then326.i_crit_edge

if.then307.i.if.then326.i_crit_edge:              ; preds = %if.then307.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then326.i

cond.end323.i:                                    ; preds = %if.then307.i
  %call321.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #4
  %call322.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #4
  %tobool325.not.i = icmp eq ptr %call322.i, null
  br i1 %tobool325.not.i, label %do.end335.i, label %cond.end323.i.if.then326.i_crit_edge

cond.end323.i.if.then326.i_crit_edge:             ; preds = %cond.end323.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then326.i

if.then326.i:                                     ; preds = %cond.end323.i.if.then326.i_crit_edge, %if.then307.i.if.then326.i_crit_edge
  %cond324512.i = phi ptr [ %call322.i, %cond.end323.i.if.then326.i_crit_edge ], [ %call317.i, %if.then307.i.if.then326.i_crit_edge ]
  %69 = ptrtoint ptr %fe304.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fe304.i, align 8
  %call328.i = call ptr %cond324512.i(ptr noundef %70, ptr noundef nonnull %cfg309.i) #4
  %cmp329.i = icmp eq ptr %call328.i, null
  br i1 %cmp329.i, label %if.then330.i, label %land.lhs.true341.i

if.then330.i:                                     ; preds = %if.then326.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.51) #4
  br label %if.end351.i

do.end335.i:                                      ; preds = %cond.end323.i
  call void @__sanitizer_cov_trace_pc() #6
  %call337.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #7
  br label %if.end351.i

land.lhs.true341.i:                               ; preds = %if.then326.i
  %set_config344.i = getelementptr inbounds %struct.dvb_frontend, ptr %call328.i, i32 0, i32 1, i32 32, i32 8
  %71 = ptrtoint ptr %set_config344.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_config344.i, align 4
  %cmp345.not.i = icmp eq ptr %72, null
  br i1 %cmp345.not.i, label %land.lhs.true341.i.if.end351.i_crit_edge, label %if.then346.i

land.lhs.true341.i.if.end351.i_crit_edge:         ; preds = %land.lhs.true341.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end351.i

if.then346.i:                                     ; preds = %land.lhs.true341.i
  call void @__sanitizer_cov_trace_pc() #6
  %call350.i = call i32 %72(ptr noundef nonnull %call328.i, ptr noundef nonnull @dvb_register.ctrl.70) #4
  br label %if.end351.i

if.end351.i:                                      ; preds = %if.then346.i, %land.lhs.true341.i.if.end351.i_crit_edge, %do.end335.i, %if.then330.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg309.i) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end351.i, %if.end302.thread.i, %if.end275.i, %if.end228.thread496.i, %if.end168.i, %if.end126.thread.i, %do.end95.i, %if.then90.i, %if.then84.i.sw.epilog.i_crit_edge, %if.end67.thread.i, %do.end36.i, %if.then31.i, %if.then25.i.sw.epilog.i_crit_edge, %if.end9.thread.i, %if.end38.sw.epilog.i_crit_edge
  %fe353.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 6
  %73 = ptrtoint ptr %fe353.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fe353.i, align 8
  %cmp354.i = icmp eq ptr %74, null
  br i1 %cmp354.i, label %do.end358.i, label %if.end361.i

do.end358.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.cx18, ptr %27, i32 0, i32 2, i32 4
  %call360.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name.i) #7
  br label %err_disconnect_frontend

if.end361.i:                                      ; preds = %sw.epilog.i
  %callback.i = getelementptr inbounds %struct.dvb_frontend, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @cx18_reset_tuner_gpio, ptr %callback.i, align 4
  %dvb_adapter.i = getelementptr inbounds %struct.cx18_dvb, ptr %25, i32 0, i32 4
  %76 = ptrtoint ptr %fe353.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fe353.i, align 8
  %call364.i = call i32 @dvb_register_frontend(ptr noundef %dvb_adapter.i, ptr noundef %77) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364.i)
  %cmp365.i = icmp slt i32 %call364.i, 0
  br i1 %cmp365.i, label %if.then366.i, label %if.end376.i

if.then366.i:                                     ; preds = %if.end361.i
  %78 = ptrtoint ptr %fe353.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fe353.i, align 8
  %release.i = getelementptr inbounds %struct.dvb_frontend, ptr %79, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %release.i, align 4
  %tobool369.not.i = icmp eq ptr %81, null
  br i1 %tobool369.not.i, label %if.then366.i.err_disconnect_frontend_crit_edge, label %if.then370.i

if.then366.i.err_disconnect_frontend_crit_edge:   ; preds = %if.then366.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_disconnect_frontend

if.then370.i:                                     ; preds = %if.then366.i
  call void @__sanitizer_cov_trace_pc() #6
  call void %81(ptr noundef %79) #4
  br label %err_disconnect_frontend

if.end376.i:                                      ; preds = %if.end361.i
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %27, i32 0, i32 40
  %82 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 13045796
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end376.i
  %i.01.i.i.i = phi i32 [ 0, %if.end376.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2147450880) #4, !srcloc !169
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp1.i.i.i = icmp ne i32 %84, -1
  %85 = and i32 %84, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %85)
  %cmp4.i.i.i = icmp eq i32 %85, -2147483648
  %or.cond.i.i.i = and i1 %cmp1.i.i.i, %cmp4.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  %or.cond2.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond2.i.i.i, label %if.end42, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

if.end42:                                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dvbnet = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 7
  %call43 = call i32 @dvb_net_init(ptr noundef %dvb_adapter4, ptr noundef %dvbnet, ptr noundef %demux) #4
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name) #7
  %86 = ptrtoint ptr %dvb2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dvb2, align 8
  %dvb_adapter53 = getelementptr inbounds %struct.cx18_dvb, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %dvb_adapter53 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dvb_adapter53, align 4
  %name54 = getelementptr inbounds %struct.cx18_stream, ptr %stream, i32 0, i32 3
  %90 = ptrtoint ptr %name54 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name54, align 8
  %buffers = getelementptr inbounds %struct.cx18_stream, ptr %stream, i32 0, i32 13
  %92 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buffers, align 4
  %buf_size = getelementptr inbounds %struct.cx18_stream, ptr %stream, i32 0, i32 14
  %94 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %buf_size, align 8
  %div136 = lshr i32 %95, 10
  %mul = mul i32 %95, 100
  %div56137 = lshr i32 %mul, 10
  %rem = urem i32 %div56137, 100
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %89, ptr noundef %91, i32 noundef %93, i32 noundef %div136, i32 noundef %rem) #7
  %feedlock = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 10
  call void @__mutex_init(ptr noundef %feedlock, ptr noundef nonnull @.str.7, ptr noundef nonnull @cx18_dvb_register.__key) #4
  %96 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %enabled, align 4
  br label %cleanup

err_disconnect_frontend:                          ; preds = %if.then370.i, %if.then366.i.err_disconnect_frontend_crit_edge, %do.end358.i
  %retval.0.i140 = phi i32 [ %call364.i, %if.then366.i.err_disconnect_frontend_crit_edge ], [ %call364.i, %if.then370.i ], [ -1, %do.end358.i ]
  %disconnect_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 0, i32 14
  %97 = ptrtoint ptr %disconnect_frontend to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %disconnect_frontend, align 4
  %call62 = call i32 %98(ptr noundef %demux) #4
  br label %err_remove_mem_frontend

err_remove_mem_frontend:                          ; preds = %err_disconnect_frontend, %if.end33.err_remove_mem_frontend_crit_edge
  %ret.0 = phi i32 [ %call35, %if.end33.err_remove_mem_frontend_crit_edge ], [ %retval.0.i140, %err_disconnect_frontend ]
  %remove_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 0, i32 11
  %99 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %remove_frontend, align 4
  %call64 = call i32 %100(ptr noundef %demux, ptr noundef %mem_frontend) #4
  br label %err_remove_hw_frontend

err_remove_hw_frontend:                           ; preds = %err_remove_mem_frontend, %if.end27.err_remove_hw_frontend_crit_edge
  %ret.1 = phi i32 [ %call30, %if.end27.err_remove_hw_frontend_crit_edge ], [ %ret.0, %err_remove_mem_frontend ]
  %remove_frontend65 = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 0, i32 11
  %101 = ptrtoint ptr %remove_frontend65 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %remove_frontend65, align 4
  %call67 = call i32 %102(ptr noundef %demux, ptr noundef %hw_frontend) #4
  br label %err_dvb_dmxdev_release

err_dvb_dmxdev_release:                           ; preds = %err_remove_hw_frontend, %if.end22.err_dvb_dmxdev_release_crit_edge
  %ret.2 = phi i32 [ %call24, %if.end22.err_dvb_dmxdev_release_crit_edge ], [ %ret.1, %err_remove_hw_frontend ]
  call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  br label %err_dvb_dmx_release

err_dvb_dmx_release:                              ; preds = %err_dvb_dmxdev_release, %if.end12.err_dvb_dmx_release_crit_edge
  %ret.3 = phi i32 [ %call19, %if.end12.err_dvb_dmx_release_crit_edge ], [ %ret.2, %err_dvb_dmxdev_release ]
  call void @dvb_dmx_release(ptr noundef %demux) #4
  br label %err_dvb_unregister_adapter

err_dvb_unregister_adapter:                       ; preds = %err_dvb_dmx_release, %if.end6.err_dvb_unregister_adapter_crit_edge
  %ret.4 = phi i32 [ %call9, %if.end6.err_dvb_unregister_adapter_crit_edge ], [ %ret.3, %err_dvb_dmx_release ]
  %call69 = call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter4) #4
  br label %cleanup

cleanup:                                          ; preds = %err_dvb_unregister_adapter, %if.end42, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call364.i, %if.end42 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %ret.4, %err_dvb_unregister_adapter ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_dvb_start_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cx2 = getelementptr inbounds %struct.cx18_stream, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cx2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %6 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.end8_crit_edge, label %do.end

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pid, align 4
  %conv = zext i16 %8 to i32
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 16
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %conv, i32 noundef %10) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  %serialize_lock = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #4
  %call9 = tail call i32 @cx18_init_on_first_open(ptr noundef %5) #4
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end21, label %do.end15

do.end15:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %name18 = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name18) #7
  br label %cleanup

if.end21:                                         ; preds = %do.end8
  %card = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %14, label %if.end21.sw.epilog_crit_edge [
    i32 0, label %if.end21.sw.bb_crit_edge
    i32 1, label %if.end21.sw.bb_crit_edge120
    i32 9, label %if.end21.sw.bb_crit_edge121
  ]

if.end21.sw.bb_crit_edge121:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end21.sw.bb_crit_edge120:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end21.sw.bb_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21.sw.bb_crit_edge, %if.end21.sw.bb_crit_edge120, %if.end21.sw.bb_crit_edge121
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 40
  %16 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 14000128
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  %19 = or i32 %18, 2117376
  %20 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i119 = getelementptr i8, ptr %21, i32 14000128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %19)
  %cmp1.i.i = icmp eq i32 %22, %19
  br i1 %cmp1.i.i, label %sw.bb.sw.epilog_crit_edge, label %for.cond.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.i.i:                                     ; preds = %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp1.1.i.i = icmp eq i32 %23, %19
  br i1 %cmp1.1.i.i, label %for.cond.i.i.sw.epilog_crit_edge, label %for.cond.1.i.i

for.cond.i.i.sw.epilog_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %19)
  %cmp1.2.i.i = icmp eq i32 %24, %19
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.sw.epilog_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp1.3.i.i = icmp eq i32 %25, %19
  br i1 %cmp1.3.i.i, label %for.cond.2.i.i.sw.epilog_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %19)
  %cmp1.4.i.i = icmp eq i32 %26, %19
  br i1 %cmp1.4.i.i, label %for.cond.3.i.i.sw.epilog_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %19)
  %cmp1.5.i.i = icmp eq i32 %27, %19
  br i1 %cmp1.5.i.i, label %for.cond.4.i.i.sw.epilog_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %19)
  %cmp1.6.i.i = icmp eq i32 %28, %19
  br i1 %cmp1.6.i.i, label %for.cond.5.i.i.sw.epilog_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %19)
  %cmp1.7.i.i = icmp eq i32 %29, %19
  br i1 %cmp1.7.i.i, label %for.cond.6.i.i.sw.epilog_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %19)
  %cmp1.8.i.i = icmp eq i32 %30, %19
  br i1 %cmp1.8.i.i, label %for.cond.7.i.i.sw.epilog_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #4, !srcloc !169
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond.8.i.i, %for.cond.7.i.i.sw.epilog_crit_edge, %for.cond.6.i.i.sw.epilog_crit_edge, %for.cond.5.i.i.sw.epilog_crit_edge, %for.cond.4.i.i.sw.epilog_crit_edge, %for.cond.3.i.i.sw.epilog_crit_edge, %for.cond.2.i.i.sw.epilog_crit_edge, %for.cond.1.i.i.sw.epilog_crit_edge, %for.cond.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %frontend, align 4
  %tobool28.not = icmp eq ptr %33, null
  br i1 %tobool28.not, label %sw.epilog.cleanup_crit_edge, label %if.end30

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end30:                                         ; preds = %sw.epilog
  %dvb = getelementptr inbounds %struct.cx18_stream, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dvb, align 8
  %feedlock = getelementptr inbounds %struct.cx18_dvb, ptr %35, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %feedlock, i32 noundef 0) #4
  %36 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dvb, align 8
  %feeding = getelementptr inbounds %struct.cx18_dvb, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %feeding, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %feeding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp eq i32 %39, 0
  br i1 %cmp, label %do.body34, label %if.end30.if.end80_crit_edge

if.end30.if.end80_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

do.body34:                                        ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %40 = load i32, ptr @cx18_debug, align 4
  %and35 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.do.end48_crit_edge, label %do.end40

do.body34.do.end48_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end48

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %name43 = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name43) #7
  br label %do.end48

do.end48:                                         ; preds = %do.end40, %do.body34.do.end48_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #4
  %s_flags = getelementptr inbounds %struct.cx18_stream, ptr %3, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %s_flags) #4
  %call50 = tail call i32 @cx18_start_v4l2_encode_stream(ptr noundef nonnull %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.body54, label %do.end48.if.end78_crit_edge

do.end48.if.end78_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

do.body54:                                        ; preds = %do.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %41 = load i32, ptr @cx18_debug, align 4
  %and55 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end68_crit_edge, label %do.end60

do.body54.do.end68_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  %name63 = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name63) #7
  br label %do.end68

do.end68:                                         ; preds = %do.end60, %do.body54.do.end68_crit_edge
  %42 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dvb, align 8
  %feeding70 = getelementptr inbounds %struct.cx18_dvb, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %feeding70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %feeding70, align 8
  %dec = add i32 %45, -1
  store i32 %dec, ptr %feeding70, align 8
  %46 = load ptr, ptr %dvb, align 8
  %feeding72 = getelementptr inbounds %struct.cx18_dvb, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %feeding72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %feeding72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp73 = icmp eq i32 %48, 0
  br i1 %cmp73, label %if.then75, label %do.end68.if.end78_crit_edge

do.end68.if.end78_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then75:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %do.end68.if.end78_crit_edge, %do.end48.if.end78_crit_edge
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #4
  br label %if.end80

if.end80:                                         ; preds = %if.end78, %if.end30.if.end80_crit_edge
  %ret.0 = phi i32 [ %call50, %if.end78 ], [ 0, %if.end30.if.end80_crit_edge ]
  %49 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dvb, align 8
  %feedlock82 = getelementptr inbounds %struct.cx18_dvb, ptr %50, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %feedlock82) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %sw.epilog.cleanup_crit_edge, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end15 ], [ %ret.0, %if.end80 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_dvb_stop_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then:                                          ; preds = %entry
  %cx2 = getelementptr inbounds %struct.cx18_stream, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cx2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %6 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.do.end7_crit_edge, label %do.end

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pid, align 4
  %conv = zext i16 %8 to i32
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 16
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %conv, i32 noundef %10) #7
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then.do.end7_crit_edge
  %dvb = getelementptr inbounds %struct.cx18_stream, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dvb, align 8
  %feedlock = getelementptr inbounds %struct.cx18_dvb, ptr %12, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %feedlock, i32 noundef 0) #4
  %13 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvb, align 8
  %feeding = getelementptr inbounds %struct.cx18_dvb, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %feeding, align 8
  %dec = add i32 %16, -1
  store i32 %dec, ptr %feeding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.body11, label %do.end7.if.end28_crit_edge

do.end7.if.end28_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.body11:                                        ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %17 = load i32, ptr @cx18_debug, align 4
  %and12 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end25_crit_edge, label %do.end17

do.body11.do.end25_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  %name20 = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name20) #7
  br label %do.end25

do.end25:                                         ; preds = %do.end17, %do.body11.do.end25_crit_edge
  %serialize_lock = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #4
  %call26 = tail call i32 @cx18_stop_v4l2_encode_stream(ptr noundef nonnull %3, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #4
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %do.end7.if.end28_crit_edge
  %ret.0 = phi i32 [ %call26, %do.end25 ], [ 0, %do.end7.if.end28_crit_edge ]
  %18 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dvb, align 8
  %feedlock30 = getelementptr inbounds %struct.cx18_dvb, ptr %19, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %feedlock30) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end28, %entry.if.end31_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end28 ], [ -22, %entry.if.end31_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_dvb_unregister(ptr nocapture noundef readonly %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %dvb2 = getelementptr inbounds %struct.cx18_stream, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %dvb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb2, align 8
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #7
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %dvb_adapter3 = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 4
  %demux = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5
  %close = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 0, i32 4
  %6 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close, align 4
  %call5 = tail call i32 %7(ptr noundef %demux) #4
  %dvbnet = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 7
  tail call void @dvb_net_release(ptr noundef %dvbnet) #4
  %remove_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 5, i32 0, i32 11
  %8 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remove_frontend, align 4
  %mem_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 2
  %call6 = tail call i32 %9(ptr noundef %demux, ptr noundef %mem_frontend) #4
  %10 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_frontend, align 4
  %hw_frontend = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 1
  %call8 = tail call i32 %11(ptr noundef %demux, ptr noundef %hw_frontend) #4
  %dmxdev = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 3
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  %fe = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe, align 8
  %call9 = tail call i32 @dvb_unregister_frontend(ptr noundef %13) #4
  %14 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe, align 8
  tail call void @dvb_frontend_detach(ptr noundef %15) #4
  %call11 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_init_on_first_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_start_v4l2_encode_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_stop_v4l2_encode_stream(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_reset_tuner_gpio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yuan_mpc718_mt352_init(ptr noundef %fe) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1028
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #4
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !172
  %6 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !172
  %8 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !172
  %cx1.i = getelementptr inbounds %struct.cx18_stream, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %cx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cx1.i, align 4
  %pci_dev.i = getelementptr inbounds %struct.cx18, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.77, ptr noundef %dev.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.cx18, ptr %11, i32 0, i32 2, i32 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name.i, ptr noundef nonnull @.str.77) #7
  br label %yuan_mpc718_mt352_reqfw.exit.thread

if.else.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = add i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %18)
  %19 = icmp ult i32 %18, 63
  %rem.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp5.not.i = icmp eq i32 %rem.i, 0
  %or.cond49.i = and i1 %19, %cmp5.not.i
  br i1 %or.cond49.i, label %for.cond.preheader, label %do.end9.i

for.cond.preheader:                               ; preds = %if.else.i
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp55.not = icmp eq i32 %23, 0
  br i1 %cmp55.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %write.i38 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  br label %for.body

do.end9.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %name12.i = getelementptr inbounds %struct.cx18, ptr %11, i32 0, i32 2, i32 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name12.i, ptr noundef nonnull @.str.77, i32 noundef %17) #7
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %25) #4
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %fw, align 4
  br label %yuan_mpc718_mt352_reqfw.exit.thread

yuan_mpc718_mt352_reqfw.exit.thread:              ; preds = %do.end9.i, %do.end.i
  %ret.1.ph.i = phi i32 [ -84, %do.end9.i ], [ %call.i, %do.end.i ]
  %name23.i = getelementptr inbounds %struct.cx18, ptr %11, i32 0, i32 2, i32 4
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name23.i) #7
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name23.i) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %27 = phi ptr [ %21, %for.body.lr.ph ], [ %48, %for.inc.for.body_crit_edge ]
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %add18, %for.inc.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %29, i32 %i.056
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %buf, align 1
  %33 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %31, label %sw.default [
    i8 85, label %for.body.for.inc_crit_edge
    i8 84, label %sw.bb
    i8 87, label %for.body.for.inc_crit_edge58
    i8 86, label %sw.bb8
  ]

for.body.for.inc_crit_edge58:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 114, ptr %6, align 1
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 73, ptr %8, align 1
  %36 = ptrtoint ptr %write.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write.i38, align 4
  %tobool.not.i36 = icmp eq ptr %37, null
  br i1 %tobool.not.i36, label %sw.bb.for.inc_crit_edge, label %if.then.i

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call.i37 = call i32 %37(ptr noundef %fe, ptr noundef nonnull %buf, i32 noundef 3) #4
  br label %for.inc

sw.bb8:                                           ; preds = %for.body
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 49, ptr %6, align 1
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -64, ptr %8, align 1
  %40 = ptrtoint ptr %write.i38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i38, align 4
  %tobool.not.i39 = icmp eq ptr %41, null
  br i1 %tobool.not.i39, label %sw.bb8.for.inc_crit_edge, label %if.then.i41

sw.bb8.for.inc_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.i41:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  %call.i40 = call i32 %41(ptr noundef %fe, ptr noundef nonnull %buf, i32 noundef 3) #4
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %add = or i32 %i.056, 1
  %arrayidx14 = getelementptr i8, ptr %29, i32 %add
  %42 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx14, align 1
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %6, align 1
  %45 = ptrtoint ptr %write.i38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write.i38, align 4
  %tobool.not.i44 = icmp eq ptr %46, null
  br i1 %tobool.not.i44, label %sw.default.for.inc_crit_edge, label %if.then.i46

sw.default.for.inc_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.i46:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  %call.i45 = call i32 %46(ptr noundef %fe, ptr noundef nonnull %buf, i32 noundef 2) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i46, %sw.default.for.inc_crit_edge, %if.then.i41, %sw.bb8.for.inc_crit_edge, %if.then.i, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge58
  %add18 = add i32 %i.056, 2
  %47 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %cmp = icmp ult i32 %add18, %50
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 93, ptr %buf, align 1
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %6, align 1
  %write.i48 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %53 = ptrtoint ptr %write.i48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write.i48, align 4
  %tobool.not.i49 = icmp eq ptr %54, null
  br i1 %tobool.not.i49, label %for.end.mt352_write.exit52_crit_edge, label %if.then.i51

for.end.mt352_write.exit52_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt352_write.exit52

if.then.i51:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i50 = call i32 %54(ptr noundef %fe, ptr noundef nonnull %buf, i32 noundef 2) #4
  br label %mt352_write.exit52

mt352_write.exit52:                               ; preds = %if.then.i51, %for.end.mt352_write.exit52_crit_edge
  %55 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %56) #4
  br label %cleanup

cleanup:                                          ; preds = %mt352_write.exit52, %yuan_mpc718_mt352_reqfw.exit.thread
  %retval.0 = phi i32 [ 0, %mt352_write.exit52 ], [ %ret.1.ph.i, %yuan_mpc718_mt352_reqfw.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !88, !90, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !107, !109, !110, !112, !113, !115, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype385, !1, !"__UNIQUE_ID_adapter_nrtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr386, !1, !"__UNIQUE_ID_adapter_nr386", i1 false, i1 false}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 347, i32 4}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 397, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cx18_dvb_register._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @cx18_dvb_register._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 398, i32 2}
!14 = !{ptr @cx18_dvb_register._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cx18_dvb_register._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @cx18_dvb_register.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 403, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 431, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cx18_dvb_unregister._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @cx18_dvb_unregister._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_firmware387, !25, !"__UNIQUE_ID_firmware387", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 593, i32 1}
!26 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!27 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!28 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 246, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cx18_dvb_start_feed._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @cx18_dvb_start_feed._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 253, i32 3}
!36 = !{ptr @cx18_dvb_start_feed._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cx18_dvb_start_feed._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 286, i32 3}
!40 = !{ptr @cx18_dvb_start_feed._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cx18_dvb_start_feed._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 291, i32 4}
!44 = !{ptr @cx18_dvb_start_feed._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cx18_dvb_start_feed._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 314, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cx18_dvb_stop_feed._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @cx18_dvb_stop_feed._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 319, i32 4}
!53 = !{ptr @cx18_dvb_stop_feed._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cx18_dvb_stop_feed._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 463, i32 13}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dvb_register._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @dvb_register._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 467, i32 4}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dvb_register._entry.32, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @dvb_register._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 474, i32 13}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @dvb_register._entry.37, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @dvb_register._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 478, i32 4}
!76 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @dvb_register._entry.42, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @dvb_register._entry_ptr.44, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 483, i32 13}
!82 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @dvb_register._entry.47, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @dvb_register._entry_ptr.49, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 494, i32 16}
!88 = !{ptr @dvb_register.ctrl, !89, !"ctrl", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 493, i32 30}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 500, i32 9}
!92 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @dvb_register._entry.53, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @dvb_register._entry_ptr.55, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 511, i32 13}
!98 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.59, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dvb_register._entry.58, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @dvb_register._entry_ptr.60, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @dvb_register._entry.61, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 515, i32 14}
!104 = !{ptr @dvb_register._entry_ptr.62, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @dvb_register.ctrl.64, !106, !"ctrl", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 525, i32 30}
!107 = !{ptr @dvb_register._entry.65, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 532, i32 9}
!109 = !{ptr @dvb_register._entry_ptr.66, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @dvb_register._entry.67, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 538, i32 14}
!112 = !{ptr @dvb_register._entry_ptr.68, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @dvb_register.ctrl.70, !114, !"ctrl", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 548, i32 30}
!115 = !{ptr @dvb_register._entry.71, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 555, i32 9}
!117 = !{ptr @dvb_register._entry_ptr.72, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 566, i32 3}
!120 = !{ptr @dvb_register._entry.73, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @dvb_register._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @hauppauge_hvr1600_config, !123, !"hauppauge_hvr1600_config", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 58, i32 30}
!124 = !{ptr @hauppauge_hvr1600_tuner, !125, !"hauppauge_hvr1600_tuner", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 40, i32 31}
!126 = !{ptr @hcw_s5h1411_config, !127, !"hcw_s5h1411_config", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 72, i32 30}
!128 = !{ptr @hauppauge_tda18271_config, !129, !"hauppauge_tda18271_config", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 89, i32 31}
!130 = !{ptr @hauppauge_tda18271_std_map, !131, !"hauppauge_tda18271_std_map", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 82, i32 32}
!132 = !{ptr @leadtek_dvr3100h_demod, !133, !"leadtek_dvr3100h_demod", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 99, i32 30}
!134 = !{ptr @yuan_mpc718_mt352_demod, !135, !"yuan_mpc718_mt352_demod", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 204, i32 28}
!136 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 126, i32 19}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 131, i32 3}
!140 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @yuan_mpc718_mt352_reqfw._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @yuan_mpc718_mt352_reqfw._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.81, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 135, i32 4}
!145 = !{ptr @yuan_mpc718_mt352_reqfw._entry.80, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @yuan_mpc718_mt352_reqfw._entry_ptr.82, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.84, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 144, i32 3}
!149 = !{ptr @yuan_mpc718_mt352_reqfw._entry.83, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @yuan_mpc718_mt352_reqfw._entry_ptr.85, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 145, i32 3}
!153 = !{ptr @yuan_mpc718_mt352_reqfw._entry.86, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @yuan_mpc718_mt352_reqfw._entry_ptr.88, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @yuan_mpc718_zl10353_demod, !156, !"yuan_mpc718_zl10353_demod", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 212, i32 30}
!157 = !{ptr @gotview_dvd3_zl10353_demod, !158, !"gotview_dvd3_zl10353_demod", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/cx18/cx18-dvb.c", i32 220, i32 30}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2158657533}
!169 = !{i64 5757152}
!170 = !{i64 5757570}
!171 = !{i64 2158657163}
!172 = !{!"auto-init"}
