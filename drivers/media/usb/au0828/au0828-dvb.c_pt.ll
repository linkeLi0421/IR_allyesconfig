; ModuleID = '/llk/IR_all_yes/drivers/media/usb/au0828/au0828-dvb.c_pt.bc'
source_filename = "../drivers/media/usb/au0828/au0828-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.au8522_config = type { i8, i8, ptr, i32, i32 }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.mxl5007t_config = type { i32, i32, i32, i32, i8 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.au8522_led_config = type { i16, i16, i16, i16, i16, i16, i16, ptr, i32 }
%struct.au0828_dev = type { %struct.mutex, ptr, i32, %struct.au0828_board, [64 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, %struct.i2c_client, i32, %struct.au0828_dvb, %struct.work_struct, %struct.timer_list, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.video_device, %struct.video_device, %struct.vb2_queue, %struct.vb2_queue, %struct.mutex, %struct.mutex, i32, i32, %struct.timer_list, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.au0828_dmaqueue, %struct.au0828_dmaqueue, %struct.au0828_usb_isoc_ctl, %struct.spinlock, i32, i32, i32, ptr, [12 x ptr], [12 x ptr], i8, i8, [16 x ptr], [16 x ptr], ptr, %struct.media_pad, %struct.media_pad, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.media_entity_notify, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.au0828_board = type { ptr, i32, i8, i8, i8, [4 x %struct.au0828_input] }
%struct.au0828_input = type { i32, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.au0828_dvb = type { %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i32, i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.au0828_dmaqueue = type { %struct.list_head, i32 }
%struct.au0828_usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_entity_notify = type { %struct.list_head, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.129], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.129 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.130 }>
%union.anon.130 = type { i64 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.dvb_demux_feed = type { %union.anon.131, %union.anon.132, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.131 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.132 = type { ptr }

@__param_str_preallocate_big_buffers = internal constant [31 x i8] c"au0828.preallocate_big_buffers\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@preallocate_big_buffers = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_preallocate_big_buffers = internal constant %struct.kernel_param { ptr @__param_str_preallocate_big_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @preallocate_big_buffers } }, section "__param", align 4
@__UNIQUE_ID_preallocate_big_bufferstype388 = internal constant [44 x i8] c"au0828.parmtype=preallocate_big_buffers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_preallocate_big_buffers389 = internal constant [96 x i8] c"au0828.parm=preallocate_big_buffers:Preallocate the larger transfer buffers at module load time\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [18 x i8] c"au0828.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype390 = internal constant [42 x i8] c"au0828.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr391 = internal constant [43 x i8] c"au0828.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@au0828_debug = external dso_local local_unnamed_addr global i32, align 4
@au0828_dvb_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017au0828: %s()\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"au0828_dvb_unregister\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/au0828/au0828-dvb.c\00", [58 x i8] zeroinitializer }, align 32
@au0828_dvb_unregister._entry_ptr = internal global ptr @au0828_dvb_unregister._entry, section ".printk_index", align 4
@au0828_dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"au0828_dvb_register\00", [44 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr = internal global ptr @au0828_dvb_register._entry, section ".printk_index", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"au8522_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:au8522_attach\00", [43 x i8] zeroinitializer }, align 32
@hauppauge_hvr950q_config = internal global { %struct.au8522_config, [16 x i8] } { %struct.au8522_config { i8 71, i8 1, ptr @hauppauge_hvr950q_led_cfg, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol au8522_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.8 = internal global ptr @au0828_dvb_register._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@hauppauge_xc5000a_config = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 6000, i8 0, i16 0, i16 143, i32 1 }, [44 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.13 = internal global ptr @au0828_dvb_register._entry.11, section ".printk_index", align 4
@hauppauge_xc5000c_config = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 6000, i8 0, i16 0, i16 143, i32 2 }, [44 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.15 = internal global ptr @au0828_dvb_register._entry.14, section ".printk_index", align 4
@au0828_dvb_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.17 = internal global ptr @au0828_dvb_register._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5007t_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5007t_attach\00", [41 x i8] zeroinitializer }, align 32
@mxl5007t_hvr950q_config = internal global { %struct.mxl5007t_config, [44 x i8] } { %struct.mxl5007t_config { i32 0, i32 0, i32 4, i32 5, i8 0 }, [44 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5007t_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.22 = internal global ptr @au0828_dvb_register._entry.20, section ".printk_index", align 4
@hauppauge_woodbury_config = internal global { %struct.au8522_config, [16 x i8] } { %struct.au8522_config { i8 71, i8 1, ptr null, i32 2, i32 1 }, [16 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.24 = internal global ptr @au0828_dvb_register._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_woodbury_tunerconfig = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 2, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.29 = internal global ptr @au0828_dvb_register._entry.27, section ".printk_index", align 4
@fusionhdtv7usb_config = internal global { %struct.au8522_config, [16 x i8] } { %struct.au8522_config { i8 71, i8 1, ptr null, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.31 = internal global ptr @au0828_dvb_register._entry.30, section ".printk_index", align 4
@au0828_dvb_register._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.33 = internal global ptr @au0828_dvb_register._entry.32, section ".printk_index", align 4
@au0828_dvb_register._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014au0828: The frontend of your DVB/ATSC card isn't supported yet\0A\00", [62 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.36 = internal global ptr @au0828_dvb_register._entry.34, section ".printk_index", align 4
@au0828_dvb_register._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013au0828: %s() Frontend initialization failed\0A\00", [49 x i8] zeroinitializer }, align 32
@au0828_dvb_register._entry_ptr.39 = internal global ptr @au0828_dvb_register._entry.37, section ".printk_index", align 4
@au0828_dvb_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&dev->bulk_timeout)\00", [43 x i8] zeroinitializer }, align 32
@au0828_dvb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016au0828: au0828_dvb_suspend(): Suspending DVB fe %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"au0828_dvb_suspend\00", [45 x i8] zeroinitializer }, align 32
@au0828_dvb_suspend._entry_ptr = internal global ptr @au0828_dvb_suspend._entry, section ".printk_index", align 4
@au0828_dvb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016au0828: au0828_dvb_resume(): Resuming DVB fe %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_dvb_resume\00", [46 x i8] zeroinitializer }, align 32
@au0828_dvb_resume._entry_ptr = internal global ptr @au0828_dvb_resume._entry, section ".printk_index", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@hauppauge_hvr950q_led_cfg = internal global { %struct.au8522_led_config, [40 x i8] } { %struct.au8522_led_config { i16 200, i16 250, i16 320, i16 224, i16 24582, i16 1632, i16 226, ptr @hauppauge_hvr950q_led_states, i32 3 }, [40 x i8] zeroinitializer }, align 32
@hauppauge_hvr950q_led_states = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\02\04", [29 x i8] zeroinitializer }, align 32
@dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.45, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_register\00", [19 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr = internal global ptr @dvb_register._entry, section ".printk_index", align 4
@dvb_register._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013au0828: failed buffer allocation (errno = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.48 = internal global ptr @dvb_register._entry.46, section ".printk_index", align 4
@dvb_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&dev->restart_streaming)\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"au0828\00", [25 x i8] zeroinitializer }, align 32
@dvb_register._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013au0828: dvb_register_adapter failed (errno = %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.53 = internal global ptr @dvb_register._entry.51, section ".printk_index", align 4
@dvb_register._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.45, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013au0828: dvb_register_frontend failed (errno = %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.56 = internal global ptr @dvb_register._entry.54, section ".printk_index", align 4
@dvb_register._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.45, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013au0828: dvb_dmx_init failed (errno = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.59 = internal global ptr @dvb_register._entry.57, section ".printk_index", align 4
@dvb_register._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.45, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013au0828: dvb_dmxdev_init failed (errno = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.62 = internal global ptr @dvb_register._entry.60, section ".printk_index", align 4
@dvb_register._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.45, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013au0828: add_frontend failed (DMX_FRONTEND_0, errno = %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.65 = internal global ptr @dvb_register._entry.63, section ".printk_index", align 4
@dvb_register._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.45, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013au0828: add_frontend failed (DMX_MEMORY_FE, errno = %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.68 = internal global ptr @dvb_register._entry.66, section ".printk_index", align 4
@dvb_register._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.45, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013au0828: connect_frontend failed (errno = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.71 = internal global ptr @dvb_register._entry.69, section ".printk_index", align 4
@au0828_restart_dvb_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017au0828: Restarting streaming...!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"au0828_restart_dvb_streaming\00", [35 x i8] zeroinitializer }, align 32
@au0828_restart_dvb_streaming._entry_ptr = internal global ptr @au0828_restart_dvb_streaming._entry, section ".printk_index", align 4
@au0828_dvb_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.74, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"au0828_dvb_start_feed\00", [42 x i8] zeroinitializer }, align 32
@au0828_dvb_start_feed._entry_ptr = internal global ptr @au0828_dvb_start_feed._entry, section ".printk_index", align 4
@au0828_dvb_start_feed._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017au0828: %s(), start_count: %d, stop_count: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@au0828_dvb_start_feed._entry_ptr.77 = internal global ptr @au0828_dvb_start_feed._entry.75, section ".printk_index", align 4
@au0828_dvb_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.78, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"au0828_dvb_stop_feed\00", [43 x i8] zeroinitializer }, align 32
@au0828_dvb_stop_feed._entry_ptr = internal global ptr @au0828_dvb_stop_feed._entry, section ".printk_index", align 4
@au0828_dvb_stop_feed._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.78, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au0828_dvb_stop_feed._entry_ptr.80 = internal global ptr @au0828_dvb_stop_feed._entry.79, section ".printk_index", align 4
@au0828_bulk_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017au0828: %s called\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"au0828_bulk_timeout\00", [44 x i8] zeroinitializer }, align 32
@au0828_bulk_timeout._entry_ptr = internal global ptr @au0828_bulk_timeout._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@stop_urb_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.83, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stop_urb_transfer\00", [46 x i8] zeroinitializer }, align 32
@stop_urb_transfer._entry_ptr = internal global ptr @stop_urb_transfer._entry, section ".printk_index", align 4
@start_urb_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.84, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"start_urb_transfer\00", [45 x i8] zeroinitializer }, align 32
@start_urb_transfer._entry_ptr = internal global ptr @start_urb_transfer._entry, section ".printk_index", align 4
@start_urb_transfer._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017au0828: %s: bulk xfer already running!\0A\00", [54 x i8] zeroinitializer }, align 32
@start_urb_transfer._entry_ptr.87 = internal global ptr @start_urb_transfer._entry.85, section ".printk_index", align 4
@start_urb_transfer._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013au0828: %s: failed big buffer allocation, err = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@start_urb_transfer._entry_ptr.90 = internal global ptr @start_urb_transfer._entry.88, section ".printk_index", align 4
@start_urb_transfer._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013au0828: %s: failed urb submission, err = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@start_urb_transfer._entry_ptr.93 = internal global ptr @start_urb_transfer._entry.91, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@urb_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017au0828: %s: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"urb_completion\00", [17 x i8] zeroinitializer }, align 32
@urb_completion._entry_ptr = internal global ptr @urb_completion._entry, section ".printk_index", align 4
@urb_completion._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017au0828: %s: no dev!\0A\00", [41 x i8] zeroinitializer }, align 32
@urb_completion._entry_ptr.98 = internal global ptr @urb_completion._entry.96, section ".printk_index", align 4
@urb_completion._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017au0828: %s: not streaming!\0A\00", [34 x i8] zeroinitializer }, align 32
@urb_completion._entry_ptr.101 = internal global ptr @urb_completion._entry.99, section ".printk_index", align 4
@urb_completion._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013au0828: %s: Unsupported URB type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@urb_completion._entry_ptr.104 = internal global ptr @urb_completion._entry.102, section ".printk_index", align 4
@urb_completion._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.95, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017au0828: Need to restart streaming %02x len=%d!\0A\00", [46 x i8] zeroinitializer }, align 32
@urb_completion._entry_ptr.107 = internal global ptr @urb_completion._entry.105, section ".printk_index", align 4
@urb_completion._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.95, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017au0828: %s cancelling bulk timeout\0A\00", [58 x i8] zeroinitializer }, align 32
@urb_completion._entry_ptr.110 = internal global ptr @urb_completion._entry.108, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.111 = private unnamed_addr constant [24 x i8] c"preallocate_big_buffers\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 22, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 535, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 568, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [25 x i8] c"hauppauge_hvr950q_config\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 51, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 574, i32 19 }
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"hauppauge_xc5000a_config\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 73, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 581, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant [25 x i8] c"hauppauge_xc5000c_config\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 80, i32 29 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 586, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 593, i32 19 }
@___asan_gen_.177 = private unnamed_addr constant [24 x i8] c"mxl5007t_hvr950q_config\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 87, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 597, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [26 x i8] c"hauppauge_woodbury_config\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 66, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 602, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant [31 x i8] c"hauppauge_woodbury_tunerconfig\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 92, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 606, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [22 x i8] c"fusionhdtv7usb_config\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 59, i32 29 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 611, i32 19 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 615, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 621, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 625, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 641, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 663, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 675, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 26, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant [26 x i8] c"hauppauge_hvr950q_led_cfg\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 37, i32 33 }
@___asan_gen_.258 = private unnamed_addr constant [29 x i8] c"hauppauge_hvr950q_led_states\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 31, i32 11 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 399, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 410, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 417, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 421, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 424, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 438, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 458, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 467, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 474, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 482, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 489, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 344, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 280, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 288, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 312, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 319, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 102, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 164, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 193, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 196, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 218, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 239, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 114, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 117, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 122, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 127, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 136, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.430 = private constant [41 x i8] c"../drivers/media/usb/au0828/au0828-dvb.c\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 144, i32 3 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_adapter_nr391, ptr @__UNIQUE_ID_adapter_nrtype390, ptr @__UNIQUE_ID_preallocate_big_buffers389, ptr @__UNIQUE_ID_preallocate_big_bufferstype388, ptr @__param_adapter_nr, ptr @__param_preallocate_big_buffers, ptr @au0828_bulk_timeout._entry, ptr @au0828_bulk_timeout._entry_ptr, ptr @au0828_dvb_register._entry, ptr @au0828_dvb_register._entry.11, ptr @au0828_dvb_register._entry.14, ptr @au0828_dvb_register._entry.16, ptr @au0828_dvb_register._entry.20, ptr @au0828_dvb_register._entry.23, ptr @au0828_dvb_register._entry.27, ptr @au0828_dvb_register._entry.30, ptr @au0828_dvb_register._entry.32, ptr @au0828_dvb_register._entry.34, ptr @au0828_dvb_register._entry.37, ptr @au0828_dvb_register._entry.6, ptr @au0828_dvb_register._entry_ptr, ptr @au0828_dvb_register._entry_ptr.13, ptr @au0828_dvb_register._entry_ptr.15, ptr @au0828_dvb_register._entry_ptr.17, ptr @au0828_dvb_register._entry_ptr.22, ptr @au0828_dvb_register._entry_ptr.24, ptr @au0828_dvb_register._entry_ptr.29, ptr @au0828_dvb_register._entry_ptr.31, ptr @au0828_dvb_register._entry_ptr.33, ptr @au0828_dvb_register._entry_ptr.36, ptr @au0828_dvb_register._entry_ptr.39, ptr @au0828_dvb_register._entry_ptr.8, ptr @au0828_dvb_resume._entry, ptr @au0828_dvb_resume._entry_ptr, ptr @au0828_dvb_start_feed._entry, ptr @au0828_dvb_start_feed._entry.75, ptr @au0828_dvb_start_feed._entry_ptr, ptr @au0828_dvb_start_feed._entry_ptr.77, ptr @au0828_dvb_stop_feed._entry, ptr @au0828_dvb_stop_feed._entry.79, ptr @au0828_dvb_stop_feed._entry_ptr, ptr @au0828_dvb_stop_feed._entry_ptr.80, ptr @au0828_dvb_suspend._entry, ptr @au0828_dvb_suspend._entry_ptr, ptr @au0828_dvb_unregister._entry, ptr @au0828_dvb_unregister._entry_ptr, ptr @au0828_restart_dvb_streaming._entry, ptr @au0828_restart_dvb_streaming._entry_ptr, ptr @dvb_register._entry, ptr @dvb_register._entry.46, ptr @dvb_register._entry.51, ptr @dvb_register._entry.54, ptr @dvb_register._entry.57, ptr @dvb_register._entry.60, ptr @dvb_register._entry.63, ptr @dvb_register._entry.66, ptr @dvb_register._entry.69, ptr @dvb_register._entry_ptr, ptr @dvb_register._entry_ptr.48, ptr @dvb_register._entry_ptr.53, ptr @dvb_register._entry_ptr.56, ptr @dvb_register._entry_ptr.59, ptr @dvb_register._entry_ptr.62, ptr @dvb_register._entry_ptr.65, ptr @dvb_register._entry_ptr.68, ptr @dvb_register._entry_ptr.71, ptr @start_urb_transfer._entry, ptr @start_urb_transfer._entry.85, ptr @start_urb_transfer._entry.88, ptr @start_urb_transfer._entry.91, ptr @start_urb_transfer._entry_ptr, ptr @start_urb_transfer._entry_ptr.87, ptr @start_urb_transfer._entry_ptr.90, ptr @start_urb_transfer._entry_ptr.93, ptr @stop_urb_transfer._entry, ptr @stop_urb_transfer._entry_ptr, ptr @urb_completion._entry, ptr @urb_completion._entry.102, ptr @urb_completion._entry.105, ptr @urb_completion._entry.108, ptr @urb_completion._entry.96, ptr @urb_completion._entry.99, ptr @urb_completion._entry_ptr, ptr @urb_completion._entry_ptr.101, ptr @urb_completion._entry_ptr.104, ptr @urb_completion._entry_ptr.107, ptr @urb_completion._entry_ptr.110, ptr @urb_completion._entry_ptr.98, ptr @preallocate_big_buffers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hauppauge_hvr950q_config, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @hauppauge_xc5000a_config, ptr @.str.12, ptr @hauppauge_xc5000c_config, ptr @.str.18, ptr @.str.19, ptr @mxl5007t_hvr950q_config, ptr @.str.21, ptr @hauppauge_woodbury_config, ptr @.str.25, ptr @.str.26, ptr @hauppauge_woodbury_tunerconfig, ptr @.str.28, ptr @fusionhdtv7usb_config, ptr @.str.35, ptr @.str.38, ptr @au0828_dvb_register.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @adapter_nr, ptr @hauppauge_hvr950q_led_cfg, ptr @hauppauge_hvr950q_led_states, ptr @.str.45, ptr @.str.47, ptr @dvb_register.__key, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preallocate_big_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr950q_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_xc5000a_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_xc5000c_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_hvr950q_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_woodbury_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_woodbury_tunerconfig to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusionhdtv7usb_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr950q_led_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr950q_led_states to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_restart_dvb_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_start_feed._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_dvb_stop_feed._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_bulk_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_urb_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_urb_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_urb_transfer._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_urb_transfer._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_urb_transfer._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_completion._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_completion._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_completion._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_completion._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_completion._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_dvb_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %frontend = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %frontend, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  %restart_streaming = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 10
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_streaming) #4
  %net = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 7
  tail call void @dvb_net_release(ptr noundef %net) #4
  %demux = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3
  %remove_frontend = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 0, i32 11
  %3 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remove_frontend, align 4
  %fe_mem = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 6
  %call10 = tail call i32 %4(ptr noundef %demux, ptr noundef %fe_mem) #4
  %5 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remove_frontend, align 4
  %fe_hw = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 5
  %call16 = tail call i32 %6(ptr noundef %demux, ptr noundef %fe_hw) #4
  %dmxdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 4
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  %7 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %frontend, align 4
  %call19 = tail call i32 @dvb_unregister_frontend(ptr noundef %8) #4
  %9 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frontend, align 4
  tail call void @dvb_frontend_detach(ptr noundef %10) #4
  %adapter = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 1
  %call21 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #4
  %11 = load i32, ptr @preallocate_big_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %if.end6.if.end25_crit_edge, label %for.body.preheader

if.end6.if.end25_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

for.body.preheader:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %13) #4
  %arrayidx.1 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %15) #4
  %arrayidx.2 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %17) #4
  %arrayidx.3 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %19) #4
  %arrayidx.4 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %21) #4
  %arrayidx.5 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.5, align 4
  tail call void @kfree(ptr noundef %23) #4
  %arrayidx.6 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.6, align 4
  tail call void @kfree(ptr noundef %25) #4
  %arrayidx.7 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 7
  %26 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.7, align 4
  tail call void @kfree(ptr noundef %27) #4
  %arrayidx.8 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 8
  %28 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.8, align 4
  tail call void @kfree(ptr noundef %29) #4
  %arrayidx.9 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 9
  %30 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.9, align 4
  tail call void @kfree(ptr noundef %31) #4
  %arrayidx.10 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 10
  %32 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.10, align 4
  tail call void @kfree(ptr noundef %33) #4
  %arrayidx.11 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 11
  %34 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.11, align 4
  tail call void @kfree(ptr noundef %35) #4
  %arrayidx.12 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 12
  %36 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.12, align 4
  tail call void @kfree(ptr noundef %37) #4
  %arrayidx.13 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 13
  %38 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.13, align 4
  tail call void @kfree(ptr noundef %39) #4
  %arrayidx.14 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 14
  %40 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.14, align 4
  tail call void @kfree(ptr noundef %41) #4
  %arrayidx.15 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 15
  %42 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.15, align 4
  tail call void @kfree(ptr noundef %43) #4
  br label %if.end25

if.end25:                                         ; preds = %for.body.preheader, %if.end6.if.end25_crit_edge
  %44 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %frontend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_dvb_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %boardnr = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %boardnr, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end253 [
    i32 2, label %do.end4.sw.bb_crit_edge
    i32 1, label %do.end4.sw.bb_crit_edge378
    i32 4, label %sw.bb79
    i32 5, label %sw.bb136
    i32 3, label %sw.bb193
  ]

do.end4.sw.bb_crit_edge378:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end4.sw.bb_crit_edge:                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %do.end4.sw.bb_crit_edge, %do.end4.sw.bb_crit_edge378
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cond.end, label %sw.bb.if.then10_crit_edge

sw.bb.if.then10_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

cond.end:                                         ; preds = %sw.bb
  %call7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5) #4
  %call8 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end16, label %cond.end.if.then10_crit_edge

cond.end.if.then10_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.then10:                                        ; preds = %cond.end.if.then10_crit_edge, %sw.bb.if.then10_crit_edge
  %cond338 = phi ptr [ %call8, %cond.end.if.then10_crit_edge ], [ %call5, %sw.bb.if.then10_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5
  %call11 = tail call ptr %cond338(ptr noundef nonnull @hauppauge_hvr950q_config, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.then12, label %if.then23

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.4) #4
  br label %if.end19.thread

do.end16:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %do.end16, %if.then12
  %frontend340 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %frontend340 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %frontend340, align 4
  br label %sw.epilog256

if.then23:                                        ; preds = %if.then10
  %frontend = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %frontend, align 4
  %tuner_type = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %7)
  %cond284 = icmp eq i32 %7, 88
  %call54 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %cond284, label %sw.bb51, label %sw.bb24

sw.bb24:                                          ; preds = %if.then23
  br i1 %tobool55.not, label %cond.end33, label %sw.bb24.if.then36_crit_edge

sw.bb24.if.then36_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

cond.end33:                                       ; preds = %sw.bb24
  %call31 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool35.not = icmp eq ptr %call32, null
  br i1 %tobool35.not, label %do.end46, label %cond.end33.if.then36_crit_edge

cond.end33.if.then36_crit_edge:                   ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.then36:                                        ; preds = %cond.end33.if.then36_crit_edge, %sw.bb24.if.then36_crit_edge
  %cond34344 = phi ptr [ %call32, %cond.end33.if.then36_crit_edge ], [ %call54, %sw.bb24.if.then36_crit_edge ]
  %8 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frontend, align 4
  %call39 = tail call ptr %cond34344(ptr noundef %9, ptr noundef %i2c_adap, ptr noundef nonnull @hauppauge_xc5000a_config) #4
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %if.then41, label %if.then36.sw.epilog256_crit_edge

if.then36.sw.epilog256_crit_edge:                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog256

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %sw.epilog256

do.end46:                                         ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %sw.epilog256

sw.bb51:                                          ; preds = %if.then23
  br i1 %tobool55.not, label %cond.end60, label %sw.bb51.if.then63_crit_edge

sw.bb51.if.then63_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then63

cond.end60:                                       ; preds = %sw.bb51
  %call58 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call59 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool62.not = icmp eq ptr %call59, null
  br i1 %tobool62.not, label %do.end73, label %cond.end60.if.then63_crit_edge

cond.end60.if.then63_crit_edge:                   ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then63

if.then63:                                        ; preds = %cond.end60.if.then63_crit_edge, %sw.bb51.if.then63_crit_edge
  %cond61347 = phi ptr [ %call59, %cond.end60.if.then63_crit_edge ], [ %call54, %sw.bb51.if.then63_crit_edge ]
  %10 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frontend, align 4
  %call66 = tail call ptr %cond61347(ptr noundef %11, ptr noundef %i2c_adap, ptr noundef nonnull @hauppauge_xc5000c_config) #4
  %cmp67 = icmp eq ptr %call66, null
  br i1 %cmp67, label %if.then68, label %if.then63.sw.epilog256_crit_edge

if.then63.sw.epilog256_crit_edge:                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog256

if.then68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %sw.epilog256

do.end73:                                         ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #6
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %sw.epilog256

sw.bb79:                                          ; preds = %do.end4
  %call82 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %cond.end88, label %sw.bb79.if.then91_crit_edge

sw.bb79.if.then91_crit_edge:                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then91

cond.end88:                                       ; preds = %sw.bb79
  %call86 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5) #4
  %call87 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool90.not = icmp eq ptr %call87, null
  br i1 %tobool90.not, label %do.end100, label %cond.end88.if.then91_crit_edge

cond.end88.if.then91_crit_edge:                   ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then91

if.then91:                                        ; preds = %cond.end88.if.then91_crit_edge, %sw.bb79.if.then91_crit_edge
  %cond89350 = phi ptr [ %call87, %cond.end88.if.then91_crit_edge ], [ %call82, %sw.bb79.if.then91_crit_edge ]
  %i2c_adap92 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5
  %call93 = tail call ptr %cond89350(ptr noundef nonnull @hauppauge_hvr950q_config, ptr noundef %i2c_adap92) #4
  %cmp94 = icmp eq ptr %call93, null
  br i1 %cmp94, label %if.then95, label %if.then108

if.then95:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.4) #4
  br label %if.end103.thread

do.end100:                                        ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #6
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %if.end103.thread

if.end103.thread:                                 ; preds = %do.end100, %if.then95
  %frontend105352 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %frontend105352 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %frontend105352, align 4
  br label %sw.epilog256

if.then108:                                       ; preds = %if.then91
  %frontend105 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %frontend105 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call93, ptr %frontend105, align 4
  %call111 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #4
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %cond.end117, label %if.then108.if.then120_crit_edge

if.then108.if.then120_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

cond.end117:                                      ; preds = %if.then108
  %call115 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #4
  %call116 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #4
  %tobool119.not = icmp eq ptr %call116, null
  br i1 %tobool119.not, label %do.end130, label %cond.end117.if.then120_crit_edge

cond.end117.if.then120_crit_edge:                 ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.then120:                                       ; preds = %cond.end117.if.then120_crit_edge, %if.then108.if.then120_crit_edge
  %cond118356 = phi ptr [ %call116, %cond.end117.if.then120_crit_edge ], [ %call111, %if.then108.if.then120_crit_edge ]
  %14 = ptrtoint ptr %frontend105 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frontend105, align 4
  %call123 = tail call ptr %cond118356(ptr noundef %15, ptr noundef %i2c_adap92, i8 noundef zeroext 96, ptr noundef nonnull @mxl5007t_hvr950q_config) #4
  %cmp124 = icmp eq ptr %call123, null
  br i1 %cmp124, label %if.then125, label %if.then120.sw.epilog256_crit_edge

if.then120.sw.epilog256_crit_edge:                ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog256

if.then125:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #4
  br label %sw.epilog256

do.end130:                                        ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #6
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #7
  br label %sw.epilog256

sw.bb136:                                         ; preds = %do.end4
  %call139 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool140.not = icmp eq ptr %call139, null
  br i1 %tobool140.not, label %cond.end145, label %sw.bb136.if.then148_crit_edge

sw.bb136.if.then148_crit_edge:                    ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then148

cond.end145:                                      ; preds = %sw.bb136
  %call143 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5) #4
  %call144 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool147.not = icmp eq ptr %call144, null
  br i1 %tobool147.not, label %do.end157, label %cond.end145.if.then148_crit_edge

cond.end145.if.then148_crit_edge:                 ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then148

if.then148:                                       ; preds = %cond.end145.if.then148_crit_edge, %sw.bb136.if.then148_crit_edge
  %cond146359 = phi ptr [ %call144, %cond.end145.if.then148_crit_edge ], [ %call139, %sw.bb136.if.then148_crit_edge ]
  %i2c_adap149 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5
  %call150 = tail call ptr %cond146359(ptr noundef nonnull @hauppauge_woodbury_config, ptr noundef %i2c_adap149) #4
  %cmp151 = icmp eq ptr %call150, null
  br i1 %cmp151, label %if.then152, label %if.then165

if.then152:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.4) #4
  br label %if.end160.thread

do.end157:                                        ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #6
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %if.end160.thread

if.end160.thread:                                 ; preds = %do.end157, %if.then152
  %frontend162361 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %frontend162361 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %frontend162361, align 4
  br label %sw.epilog256

if.then165:                                       ; preds = %if.then148
  %frontend162 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %frontend162 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call150, ptr %frontend162, align 4
  %call168 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #4
  %tobool169.not = icmp eq ptr %call168, null
  br i1 %tobool169.not, label %cond.end174, label %if.then165.if.then177_crit_edge

if.then165.if.then177_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then177

cond.end174:                                      ; preds = %if.then165
  %call172 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.26) #4
  %call173 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #4
  %tobool176.not = icmp eq ptr %call173, null
  br i1 %tobool176.not, label %do.end187, label %cond.end174.if.then177_crit_edge

cond.end174.if.then177_crit_edge:                 ; preds = %cond.end174
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then177

if.then177:                                       ; preds = %cond.end174.if.then177_crit_edge, %if.then165.if.then177_crit_edge
  %cond175365 = phi ptr [ %call173, %cond.end174.if.then177_crit_edge ], [ %call168, %if.then165.if.then177_crit_edge ]
  %18 = ptrtoint ptr %frontend162 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %frontend162, align 4
  %call180 = tail call ptr %cond175365(ptr noundef %19, i8 noundef zeroext 96, ptr noundef %i2c_adap149, ptr noundef nonnull @hauppauge_woodbury_tunerconfig) #4
  %cmp181 = icmp eq ptr %call180, null
  br i1 %cmp181, label %if.then182, label %if.then177.sw.epilog256_crit_edge

if.then177.sw.epilog256_crit_edge:                ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog256

if.then182:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.25) #4
  br label %sw.epilog256

do.end187:                                        ; preds = %cond.end174
  call void @__sanitizer_cov_trace_pc() #6
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #7
  br label %sw.epilog256

sw.bb193:                                         ; preds = %do.end4
  %call196 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool197.not = icmp eq ptr %call196, null
  br i1 %tobool197.not, label %cond.end202, label %sw.bb193.if.then205_crit_edge

sw.bb193.if.then205_crit_edge:                    ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then205

cond.end202:                                      ; preds = %sw.bb193
  %call200 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5) #4
  %call201 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.4) #4
  %tobool204.not = icmp eq ptr %call201, null
  br i1 %tobool204.not, label %do.end214, label %cond.end202.if.then205_crit_edge

cond.end202.if.then205_crit_edge:                 ; preds = %cond.end202
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then205

if.then205:                                       ; preds = %cond.end202.if.then205_crit_edge, %sw.bb193.if.then205_crit_edge
  %cond203368 = phi ptr [ %call201, %cond.end202.if.then205_crit_edge ], [ %call196, %sw.bb193.if.then205_crit_edge ]
  %i2c_adap206 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5
  %call207 = tail call ptr %cond203368(ptr noundef nonnull @fusionhdtv7usb_config, ptr noundef %i2c_adap206) #4
  %cmp208 = icmp eq ptr %call207, null
  br i1 %cmp208, label %if.then209, label %if.then222

if.then209:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.4) #4
  br label %if.end217.thread

do.end214:                                        ; preds = %cond.end202
  call void @__sanitizer_cov_trace_pc() #6
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %if.end217.thread

if.end217.thread:                                 ; preds = %do.end214, %if.then209
  %frontend219370 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %frontend219370 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %frontend219370, align 4
  br label %sw.epilog256

if.then222:                                       ; preds = %if.then205
  %frontend219 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %21 = ptrtoint ptr %frontend219 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call207, ptr %frontend219, align 4
  %call225 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool226.not = icmp eq ptr %call225, null
  br i1 %tobool226.not, label %cond.end231, label %if.then222.if.then234_crit_edge

if.then222.if.then234_crit_edge:                  ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then234

cond.end231:                                      ; preds = %if.then222
  %call229 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call230 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool233.not = icmp eq ptr %call230, null
  br i1 %tobool233.not, label %do.end244, label %cond.end231.if.then234_crit_edge

cond.end231.if.then234_crit_edge:                 ; preds = %cond.end231
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then234

if.then234:                                       ; preds = %cond.end231.if.then234_crit_edge, %if.then222.if.then234_crit_edge
  %cond232374 = phi ptr [ %call230, %cond.end231.if.then234_crit_edge ], [ %call225, %if.then222.if.then234_crit_edge ]
  %22 = ptrtoint ptr %frontend219 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %frontend219, align 4
  %call237 = tail call ptr %cond232374(ptr noundef %23, ptr noundef %i2c_adap206, ptr noundef nonnull @hauppauge_xc5000a_config) #4
  %cmp238 = icmp eq ptr %call237, null
  br i1 %cmp238, label %if.then239, label %if.then234.sw.epilog256_crit_edge

if.then234.sw.epilog256_crit_edge:                ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog256

if.then239:                                       ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %sw.epilog256

do.end244:                                        ; preds = %cond.end231
  call void @__sanitizer_cov_trace_pc() #6
  %call246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %sw.epilog256

do.end253:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #7
  br label %sw.epilog256

sw.epilog256:                                     ; preds = %do.end253, %do.end244, %if.then239, %if.then234.sw.epilog256_crit_edge, %if.end217.thread, %do.end187, %if.then182, %if.then177.sw.epilog256_crit_edge, %if.end160.thread, %do.end130, %if.then125, %if.then120.sw.epilog256_crit_edge, %if.end103.thread, %do.end73, %if.then68, %if.then63.sw.epilog256_crit_edge, %do.end46, %if.then41, %if.then36.sw.epilog256_crit_edge, %if.end19.thread
  %frontend257 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %frontend257 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %frontend257, align 4
  %cmp258 = icmp eq ptr %25, null
  br i1 %cmp258, label %do.end262, label %if.end265

do.end262:                                        ; preds = %sw.epilog256
  call void @__sanitizer_cov_trace_pc() #6
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end265:                                        ; preds = %sw.epilog256
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @au0828_tuner_callback, ptr %callback, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %27 = load i32, ptr @au0828_debug, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end265.do.end4.i_crit_edge, label %do.end.i

if.end265.do.end4.i_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45) #7
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end265.do.end4.i_crit_edge
  %28 = load i32, ptr @preallocate_big_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not.i = icmp eq i32 %28, 0
  br i1 %tobool5.not.i, label %do.end4.i.do.body19.i_crit_edge, label %for.body.preheader.i

do.end4.i.do.body19.i_crit_edge:                  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body19.i

for.body.preheader.i:                             ; preds = %do.end4.i
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 0
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call1.i.i.i.i, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool10.not.i, label %for.body.preheader.i.cleanup.i_crit_edge, label %for.cond.i

for.body.preheader.i.cleanup.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %call1.i.i.i.1.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.1.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i.i.i.1.i, ptr %arrayidx.1.i, align 4
  %tobool10.not.1.i = icmp eq ptr %call1.i.i.i.1.i, null
  br i1 %tobool10.not.1.i, label %for.cond.i.cleanup.i_crit_edge, label %for.cond.1.i

for.cond.i.cleanup.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.i.i.i.2.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.2.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 2
  %31 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call1.i.i.i.2.i, ptr %arrayidx.2.i, align 4
  %tobool10.not.2.i = icmp eq ptr %call1.i.i.i.2.i, null
  br i1 %tobool10.not.2.i, label %for.cond.1.i.cleanup.i_crit_edge, label %for.cond.2.i

for.cond.1.i.cleanup.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call1.i.i.i.3.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.3.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1.i.i.i.3.i, ptr %arrayidx.3.i, align 4
  %tobool10.not.3.i = icmp eq ptr %call1.i.i.i.3.i, null
  br i1 %tobool10.not.3.i, label %for.cond.2.i.cleanup.i_crit_edge, label %for.cond.3.i

for.cond.2.i.cleanup.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call1.i.i.i.4.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.4.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 4
  %33 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call1.i.i.i.4.i, ptr %arrayidx.4.i, align 4
  %tobool10.not.4.i = icmp eq ptr %call1.i.i.i.4.i, null
  br i1 %tobool10.not.4.i, label %for.cond.3.i.cleanup.i_crit_edge, label %for.cond.4.i

for.cond.3.i.cleanup.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call1.i.i.i.5.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.5.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 5
  %34 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call1.i.i.i.5.i, ptr %arrayidx.5.i, align 4
  %tobool10.not.5.i = icmp eq ptr %call1.i.i.i.5.i, null
  br i1 %tobool10.not.5.i, label %for.cond.4.i.cleanup.i_crit_edge, label %for.cond.5.i

for.cond.4.i.cleanup.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call1.i.i.i.6.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.6.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 6
  %35 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call1.i.i.i.6.i, ptr %arrayidx.6.i, align 4
  %tobool10.not.6.i = icmp eq ptr %call1.i.i.i.6.i, null
  br i1 %tobool10.not.6.i, label %for.cond.5.i.cleanup.i_crit_edge, label %for.cond.6.i

for.cond.5.i.cleanup.i_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %call1.i.i.i.7.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.7.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 7
  %36 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call1.i.i.i.7.i, ptr %arrayidx.7.i, align 4
  %tobool10.not.7.i = icmp eq ptr %call1.i.i.i.7.i, null
  br i1 %tobool10.not.7.i, label %for.cond.6.i.cleanup.i_crit_edge, label %for.cond.7.i

for.cond.6.i.cleanup.i_crit_edge:                 ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %call1.i.i.i.8.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.8.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 8
  %37 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call1.i.i.i.8.i, ptr %arrayidx.8.i, align 4
  %tobool10.not.8.i = icmp eq ptr %call1.i.i.i.8.i, null
  br i1 %tobool10.not.8.i, label %for.cond.7.i.cleanup.i_crit_edge, label %for.cond.8.i

for.cond.7.i.cleanup.i_crit_edge:                 ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %call1.i.i.i.9.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.9.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 9
  %38 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call1.i.i.i.9.i, ptr %arrayidx.9.i, align 4
  %tobool10.not.9.i = icmp eq ptr %call1.i.i.i.9.i, null
  br i1 %tobool10.not.9.i, label %for.cond.8.i.cleanup.i_crit_edge, label %for.cond.9.i

for.cond.8.i.cleanup.i_crit_edge:                 ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %call1.i.i.i.10.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.10.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 10
  %39 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call1.i.i.i.10.i, ptr %arrayidx.10.i, align 4
  %tobool10.not.10.i = icmp eq ptr %call1.i.i.i.10.i, null
  br i1 %tobool10.not.10.i, label %for.cond.9.i.cleanup.i_crit_edge, label %for.cond.10.i

for.cond.9.i.cleanup.i_crit_edge:                 ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %call1.i.i.i.11.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.11.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 11
  %40 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1.i.i.i.11.i, ptr %arrayidx.11.i, align 4
  %tobool10.not.11.i = icmp eq ptr %call1.i.i.i.11.i, null
  br i1 %tobool10.not.11.i, label %for.cond.10.i.cleanup.i_crit_edge, label %for.cond.11.i

for.cond.10.i.cleanup.i_crit_edge:                ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %call1.i.i.i.12.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.12.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 12
  %41 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i.i.12.i, ptr %arrayidx.12.i, align 4
  %tobool10.not.12.i = icmp eq ptr %call1.i.i.i.12.i, null
  br i1 %tobool10.not.12.i, label %for.cond.11.i.cleanup.i_crit_edge, label %for.cond.12.i

for.cond.11.i.cleanup.i_crit_edge:                ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %call1.i.i.i.13.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.13.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 13
  %42 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call1.i.i.i.13.i, ptr %arrayidx.13.i, align 4
  %tobool10.not.13.i = icmp eq ptr %call1.i.i.i.13.i, null
  br i1 %tobool10.not.13.i, label %for.cond.12.i.cleanup.i_crit_edge, label %for.cond.13.i

for.cond.12.i.cleanup.i_crit_edge:                ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %call1.i.i.i.14.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.14.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 14
  %43 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1.i.i.i.14.i, ptr %arrayidx.14.i, align 4
  %tobool10.not.14.i = icmp eq ptr %call1.i.i.i.14.i, null
  br i1 %tobool10.not.14.i, label %for.cond.13.i.cleanup.i_crit_edge, label %for.cond.14.i

for.cond.13.i.cleanup.i_crit_edge:                ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %call1.i.i.i.15.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  %arrayidx.15.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 15
  %44 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call1.i.i.i.15.i, ptr %arrayidx.15.i, align 4
  %tobool10.not.15.i = icmp eq ptr %call1.i.i.i.15.i, null
  br i1 %tobool10.not.15.i, label %for.cond.14.i.cleanup.i_crit_edge, label %for.cond.14.i.do.body19.i_crit_edge

for.cond.14.i.do.body19.i_crit_edge:              ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body19.i

for.cond.14.i.cleanup.i_crit_edge:                ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.cond.14.i.cleanup.i_crit_edge, %for.cond.13.i.cleanup.i_crit_edge, %for.cond.12.i.cleanup.i_crit_edge, %for.cond.11.i.cleanup.i_crit_edge, %for.cond.10.i.cleanup.i_crit_edge, %for.cond.9.i.cleanup.i_crit_edge, %for.cond.8.i.cleanup.i_crit_edge, %for.cond.7.i.cleanup.i_crit_edge, %for.cond.6.i.cleanup.i_crit_edge, %for.cond.5.i.cleanup.i_crit_edge, %for.cond.4.i.cleanup.i_crit_edge, %for.cond.3.i.cleanup.i_crit_edge, %for.cond.2.i.cleanup.i_crit_edge, %for.cond.1.i.cleanup.i_crit_edge, %for.cond.i.cleanup.i_crit_edge, %for.body.preheader.i.cleanup.i_crit_edge
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef -12) #7
  br label %fail_adapter.i

do.body19.i:                                      ; preds = %for.cond.14.i.do.body19.i_crit_edge, %do.end4.i.do.body19.i_crit_edge
  %restart_streaming.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 10
  tail call void @__init_work(ptr noundef %restart_streaming.i, i32 noundef 0) #4
  %45 = ptrtoint ptr %restart_streaming.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %restart_streaming.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @dvb_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry23.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %entry23.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry23.i, ptr %entry23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 10, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry23.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 10, i32 2
  %48 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @au0828_restart_dvb_streaming, ptr %func.i, align 4
  %adapter.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 1
  %usbdev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  %49 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usbdev.i, align 4
  %dev27.i = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 15
  %call28.i = tail call i32 @dvb_register_adapter(ptr noundef %adapter.i, ptr noundef nonnull @.str.50, ptr noundef null, ptr noundef %dev27.i, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %do.end33.i, label %if.end36.i

do.end33.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #6
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call28.i) #7
  br label %fail_adapter.i

if.end36.i:                                       ; preds = %do.body19.i
  %media_dev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 66
  %51 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %media_dev.i, align 4
  %mdev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 1, i32 12
  %53 = ptrtoint ptr %mdev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %mdev.i, align 4
  %priv.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 1, i32 5
  %54 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev, ptr %priv.i, align 4
  %55 = ptrtoint ptr %frontend257 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %frontend257, align 4
  %call40.i = tail call i32 @dvb_register_frontend(ptr noundef %adapter.i, ptr noundef %56) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %do.end45.i, label %if.end48.i

do.end45.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %call40.i) #7
  br label %fail_frontend.i

if.end48.i:                                       ; preds = %if.end36.i
  %57 = ptrtoint ptr %frontend257 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %frontend257, align 4
  %set_frontend.i = getelementptr inbounds %struct.dvb_frontend, ptr %58, i32 0, i32 1, i32 12
  %59 = ptrtoint ptr %set_frontend.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_frontend.i, align 4
  %set_frontend50.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 11
  %61 = ptrtoint ptr %set_frontend50.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %set_frontend50.i, align 4
  store ptr @au0828_set_frontend, ptr %set_frontend.i, align 4
  %demux.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3
  %62 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 13, ptr %demux.i, align 8
  %priv55.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 1
  %63 = ptrtoint ptr %priv55.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %dev, ptr %priv55.i, align 4
  %filternum.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 2
  %64 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 256, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 3
  %65 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 256, ptr %feednum.i, align 4
  %start_feed.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 4
  %66 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @au0828_dvb_start_feed, ptr %start_feed.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 5
  %67 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @au0828_dvb_stop_feed, ptr %stop_feed.i, align 4
  %call61.i = tail call i32 @dvb_dmx_init(ptr noundef %demux.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 0
  br i1 %cmp62.i, label %do.end66.i, label %if.end69.i

do.end66.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %call61.i) #7
  br label %fail_dmx.i

if.end69.i:                                       ; preds = %if.end48.i
  %dmxdev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 4
  %filternum70.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 4, i32 4
  %68 = ptrtoint ptr %filternum70.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 256, ptr %filternum70.i, align 8
  %demux74.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 4, i32 3
  %69 = ptrtoint ptr %demux74.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %demux.i, ptr %demux74.i, align 4
  %capabilities76.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 4, i32 5
  %70 = ptrtoint ptr %capabilities76.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %capabilities76.i, align 4
  %call79.i = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef %adapter.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp slt i32 %call79.i, 0
  br i1 %cmp80.i, label %do.end84.i, label %if.end87.i

do.end84.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call79.i) #7
  br label %fail_dmxdev.i

if.end87.i:                                       ; preds = %if.end69.i
  %fe_hw.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 5
  %source.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 5, i32 1
  %71 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %source.i, align 8
  %add_frontend.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 0, i32 10
  %72 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add_frontend.i, align 8
  %call93.i = tail call i32 %73(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %cmp94.i = icmp slt i32 %call93.i, 0
  br i1 %cmp94.i, label %do.end98.i, label %if.end101.i

do.end98.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #6
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call93.i) #7
  br label %fail_fe_hw.i

if.end101.i:                                      ; preds = %if.end87.i
  %fe_mem.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 6
  %source102.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 6, i32 1
  %74 = ptrtoint ptr %source102.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %source102.i, align 4
  %75 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add_frontend.i, align 8
  %call109.i = tail call i32 %76(ptr noundef %demux.i, ptr noundef %fe_mem.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %cmp110.i = icmp slt i32 %call109.i, 0
  br i1 %cmp110.i, label %do.end114.i, label %if.end117.i

do.end114.i:                                      ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #6
  %call116.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call109.i) #7
  br label %fail_fe_mem.i

if.end117.i:                                      ; preds = %if.end101.i
  %connect_frontend.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 0, i32 13
  %77 = ptrtoint ptr %connect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %connect_frontend.i, align 4
  %call123.i = tail call i32 %78(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %cmp124.i = icmp slt i32 %call123.i, 0
  br i1 %cmp124.i, label %do.end128.i, label %if.end131.i

do.end128.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #6
  %call130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %call123.i) #7
  br label %fail_fe_conn.i

if.end131.i:                                      ; preds = %if.end117.i
  %net.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 7
  %call135.i = tail call i32 @dvb_net_init(ptr noundef %adapter.i, ptr noundef %net.i, ptr noundef %demux.i) #4
  %start_count.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 9
  %79 = ptrtoint ptr %start_count.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %start_count.i, align 4
  %stop_count.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 10
  %80 = ptrtoint ptr %stop_count.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %stop_count.i, align 8
  %call137.i = tail call i32 @dvb_create_media_graph(ptr noundef %adapter.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %cmp138.i = icmp slt i32 %call137.i, 0
  br i1 %cmp138.i, label %fail_create_graph.i, label %do.body280

fail_create_graph.i:                              ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dvb_net_release(ptr noundef %net.i) #4
  br label %fail_fe_conn.i

fail_fe_conn.i:                                   ; preds = %fail_create_graph.i, %do.end128.i
  %result.1.i = phi i32 [ %call123.i, %do.end128.i ], [ %call137.i, %fail_create_graph.i ]
  %remove_frontend.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 0, i32 11
  %81 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %remove_frontend.i, align 4
  %call147.i = tail call i32 %82(ptr noundef %demux.i, ptr noundef %fe_mem.i) #4
  br label %fail_fe_mem.i

fail_fe_mem.i:                                    ; preds = %fail_fe_conn.i, %do.end114.i
  %result.2.i = phi i32 [ %call109.i, %do.end114.i ], [ %result.1.i, %fail_fe_conn.i ]
  %remove_frontend150.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 3, i32 0, i32 11
  %83 = ptrtoint ptr %remove_frontend150.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %remove_frontend150.i, align 4
  %call154.i = tail call i32 %84(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  br label %fail_fe_hw.i

fail_fe_hw.i:                                     ; preds = %fail_fe_mem.i, %do.end98.i
  %result.3.i = phi i32 [ %call93.i, %do.end98.i ], [ %result.2.i, %fail_fe_mem.i ]
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #4
  br label %fail_dmxdev.i

fail_dmxdev.i:                                    ; preds = %fail_fe_hw.i, %do.end84.i
  %result.4.i = phi i32 [ %call79.i, %do.end84.i ], [ %result.3.i, %fail_fe_hw.i ]
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #4
  br label %fail_dmx.i

fail_dmx.i:                                       ; preds = %fail_dmxdev.i, %do.end66.i
  %result.5.i = phi i32 [ %call61.i, %do.end66.i ], [ %result.4.i, %fail_dmxdev.i ]
  %85 = ptrtoint ptr %frontend257 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %frontend257, align 4
  %call158.i = tail call i32 @dvb_unregister_frontend(ptr noundef %86) #4
  br label %fail_frontend.i

fail_frontend.i:                                  ; preds = %fail_dmx.i, %do.end45.i
  %result.6.i = phi i32 [ %call40.i, %do.end45.i ], [ %result.5.i, %fail_dmx.i ]
  %87 = ptrtoint ptr %frontend257 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %frontend257, align 4
  tail call void @dvb_frontend_detach(ptr noundef %88) #4
  %call161.i = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #4
  br label %fail_adapter.i

fail_adapter.i:                                   ; preds = %fail_frontend.i, %do.end33.i, %cleanup.i
  %result.7.i = phi i32 [ -12, %cleanup.i ], [ %call28.i, %do.end33.i ], [ %result.6.i, %fail_frontend.i ]
  %89 = load i32, ptr @preallocate_big_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool162.not.i = icmp eq i32 %89, 0
  br i1 %tobool162.not.i, label %fail_adapter.i.if.then269_crit_edge, label %for.body167.preheader.i

fail_adapter.i.if.then269_crit_edge:              ; preds = %fail_adapter.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then269

for.body167.preheader.i:                          ; preds = %fail_adapter.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx169.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 0
  %90 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx169.i, align 4
  tail call void @kfree(ptr noundef %91) #4
  %arrayidx169.1.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 1
  %92 = ptrtoint ptr %arrayidx169.1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx169.1.i, align 4
  tail call void @kfree(ptr noundef %93) #4
  %arrayidx169.2.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 2
  %94 = ptrtoint ptr %arrayidx169.2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx169.2.i, align 4
  tail call void @kfree(ptr noundef %95) #4
  %arrayidx169.3.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 3
  %96 = ptrtoint ptr %arrayidx169.3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx169.3.i, align 4
  tail call void @kfree(ptr noundef %97) #4
  %arrayidx169.4.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 4
  %98 = ptrtoint ptr %arrayidx169.4.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx169.4.i, align 4
  tail call void @kfree(ptr noundef %99) #4
  %arrayidx169.5.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 5
  %100 = ptrtoint ptr %arrayidx169.5.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx169.5.i, align 4
  tail call void @kfree(ptr noundef %101) #4
  %arrayidx169.6.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 6
  %102 = ptrtoint ptr %arrayidx169.6.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx169.6.i, align 4
  tail call void @kfree(ptr noundef %103) #4
  %arrayidx169.7.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 7
  %104 = ptrtoint ptr %arrayidx169.7.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx169.7.i, align 4
  tail call void @kfree(ptr noundef %105) #4
  %arrayidx169.8.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 8
  %106 = ptrtoint ptr %arrayidx169.8.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx169.8.i, align 4
  tail call void @kfree(ptr noundef %107) #4
  %arrayidx169.9.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 9
  %108 = ptrtoint ptr %arrayidx169.9.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx169.9.i, align 4
  tail call void @kfree(ptr noundef %109) #4
  %arrayidx169.10.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 10
  %110 = ptrtoint ptr %arrayidx169.10.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx169.10.i, align 4
  tail call void @kfree(ptr noundef %111) #4
  %arrayidx169.11.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 11
  %112 = ptrtoint ptr %arrayidx169.11.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx169.11.i, align 4
  tail call void @kfree(ptr noundef %113) #4
  %arrayidx169.12.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 12
  %114 = ptrtoint ptr %arrayidx169.12.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx169.12.i, align 4
  tail call void @kfree(ptr noundef %115) #4
  %arrayidx169.13.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 13
  %116 = ptrtoint ptr %arrayidx169.13.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx169.13.i, align 4
  tail call void @kfree(ptr noundef %117) #4
  %arrayidx169.14.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 14
  %118 = ptrtoint ptr %arrayidx169.14.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx169.14.i, align 4
  tail call void @kfree(ptr noundef %119) #4
  %arrayidx169.15.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 15
  %120 = ptrtoint ptr %arrayidx169.15.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx169.15.i, align 4
  tail call void @kfree(ptr noundef %121) #4
  br label %if.then269

if.then269:                                       ; preds = %for.body167.preheader.i, %fail_adapter.i.if.then269_crit_edge
  %122 = ptrtoint ptr %frontend257 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %frontend257, align 4
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %123, i32 0, i32 1, i32 3
  %124 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %release, align 4
  %tobool271.not = icmp eq ptr %125, null
  br i1 %tobool271.not, label %if.then269.if.end277_crit_edge, label %if.then272

if.then269.if.end277_crit_edge:                   ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end277

if.then272:                                       ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %125(ptr noundef %123) #4
  br label %if.end277

if.end277:                                        ; preds = %if.then272, %if.then269.if.end277_crit_edge
  %126 = ptrtoint ptr %frontend257 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %frontend257, align 4
  br label %cleanup

do.body280:                                       ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #6
  %bulk_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 11
  tail call void @init_timer_key(ptr noundef %bulk_timeout, ptr noundef nonnull @au0828_bulk_timeout, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @au0828_dvb_register.__key) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body280, %if.end277, %do.end262
  %retval.0 = phi i32 [ -1, %do.end262 ], [ %result.7.i, %if.end277 ], [ 0, %do.body280 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_bulk_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bulk_timeout_running = getelementptr i8, ptr %t, i32 48
  %1 = ptrtoint ptr %bulk_timeout_running to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bulk_timeout_running, align 4
  %restart_streaming = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %restart_streaming) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_dvb_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9
  %frontend = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %entry
  %urb_streaming = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 62
  %2 = ptrtoint ptr %urb_streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %urb_streaming, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %restart_streaming = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_streaming) #4
  tail call void @mutex_lock_nested(ptr noundef %dvb1, i32 noundef 0) #4
  tail call fastcc void @stop_urb_transfer(ptr noundef %dev)
  %call.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1544, i32 noundef 0) #4
  %call1.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1545, i32 noundef 0) #4
  %call2.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1546, i32 noundef 0) #4
  %call3.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1547, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %dvb1) #4
  %need_urb_start = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 63
  %4 = ptrtoint ptr %need_urb_start to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %need_urb_start, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frontend, align 4
  %call7 = tail call i32 @dvb_frontend_suspend(ptr noundef %6) #4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %call7) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_urb_transfer(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.83) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %urb_streaming = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 62
  %1 = ptrtoint ptr %urb_streaming to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %urb_streaming, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %bulk_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 12
  %3 = ptrtoint ptr %bulk_timeout_running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bulk_timeout_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then7, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %bulk_timeout_running to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bulk_timeout_running, align 4
  %bulk_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 11
  %call9 = tail call i32 @del_timer(ptr noundef %bulk_timeout) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end6.if.end10_crit_edge
  %6 = ptrtoint ptr %urb_streaming to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %urb_streaming, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %i.01 = phi i32 [ 0, %if.end10 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 %i.01
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then14:                                        ; preds = %for.body
  tail call void @usb_kill_urb(ptr noundef nonnull %8) #4
  %9 = load i32, ptr @preallocate_big_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.then18, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %13) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then14.if.end21_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %15) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_frontend_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_dvb_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb1 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9
  %frontend = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call i32 @dvb_frontend_resume(ptr noundef nonnull %1) #4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call) #7
  %need_urb_start = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 63
  %2 = ptrtoint ptr %need_urb_start to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_urb_start, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_lock_nested(ptr noundef %dvb1, i32 noundef 0) #4
  %call.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1544, i32 noundef 144) #4
  %call1.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1545, i32 noundef 114) #4
  %call2.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1546, i32 noundef 113) #4
  %call3.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1547, i32 noundef 1) #4
  %call6 = tail call fastcc i32 @start_urb_transfer(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef %dvb1) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_frontend_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_urb_transfer(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.84) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %urb_streaming = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 62
  %1 = ptrtoint ptr %urb_streaming to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %urb_streaming, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %do.body6

for.cond.preheader:                               ; preds = %do.end3
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  br label %for.body

do.body6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %3 = load i32, ptr @au0828_debug, align 4
  %and7 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %do.end12

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84) #7
  br label %cleanup

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.cond.preheader
  %i.0104 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end43.for.body_crit_edge ]
  %call19 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #4
  %arrayidx = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 %i.0104
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call19, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %call19, null
  br i1 %tobool22.not, label %for.body.cleanup_crit_edge, label %if.end24

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %5 = load i32, ptr @preallocate_big_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool27.not = icmp eq i32 %5, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx29 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 65, i32 %i.0104
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx29, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 58658, i32 noundef 3520, i32 noundef 4) #8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then28
  %.sink = phi ptr [ %call1.i.i.i, %if.else ], [ %7, %if.then28 ]
  %8 = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 14
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.sink, ptr %8, align 4
  %tobool34.not = icmp eq ptr %.sink, null
  br i1 %tobool34.not, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_free_urb(ptr noundef nonnull %call19) #4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.84, i32 noundef -12) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %status = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 12
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -115, ptr %status, align 4
  %12 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usbdev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or46 = or i32 %shl.i, -1069449088
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or46, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 58658, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 28
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @urb_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 27
  %20 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %context4.i, align 4
  %inc = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.body50.preheader, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body50.preheader:                             ; preds = %if.end43
  %arrayidx52 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 0
  %21 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx52, align 4
  %call53 = tail call i32 @usb_submit_urb(ptr noundef %22, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %for.cond48, label %for.body50.preheader.if.then55_crit_edge

for.body50.preheader.if.then55_crit_edge:         ; preds = %for.body50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48:                                       ; preds = %for.body50.preheader
  %arrayidx52.1 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 1
  %23 = ptrtoint ptr %arrayidx52.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx52.1, align 4
  %call53.1 = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.1)
  %cmp54.not.1 = icmp eq i32 %call53.1, 0
  br i1 %cmp54.not.1, label %for.cond48.1, label %for.cond48.if.then55_crit_edge

for.cond48.if.then55_crit_edge:                   ; preds = %for.cond48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.1:                                     ; preds = %for.cond48
  %arrayidx52.2 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 2
  %25 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx52.2, align 4
  %call53.2 = tail call i32 @usb_submit_urb(ptr noundef %26, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.2)
  %cmp54.not.2 = icmp eq i32 %call53.2, 0
  br i1 %cmp54.not.2, label %for.cond48.2, label %for.cond48.1.if.then55_crit_edge

for.cond48.1.if.then55_crit_edge:                 ; preds = %for.cond48.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.2:                                     ; preds = %for.cond48.1
  %arrayidx52.3 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 3
  %27 = ptrtoint ptr %arrayidx52.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx52.3, align 4
  %call53.3 = tail call i32 @usb_submit_urb(ptr noundef %28, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.3)
  %cmp54.not.3 = icmp eq i32 %call53.3, 0
  br i1 %cmp54.not.3, label %for.cond48.3, label %for.cond48.2.if.then55_crit_edge

for.cond48.2.if.then55_crit_edge:                 ; preds = %for.cond48.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.3:                                     ; preds = %for.cond48.2
  %arrayidx52.4 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 4
  %29 = ptrtoint ptr %arrayidx52.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx52.4, align 4
  %call53.4 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.4)
  %cmp54.not.4 = icmp eq i32 %call53.4, 0
  br i1 %cmp54.not.4, label %for.cond48.4, label %for.cond48.3.if.then55_crit_edge

for.cond48.3.if.then55_crit_edge:                 ; preds = %for.cond48.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.4:                                     ; preds = %for.cond48.3
  %arrayidx52.5 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 5
  %31 = ptrtoint ptr %arrayidx52.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx52.5, align 4
  %call53.5 = tail call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.5)
  %cmp54.not.5 = icmp eq i32 %call53.5, 0
  br i1 %cmp54.not.5, label %for.cond48.5, label %for.cond48.4.if.then55_crit_edge

for.cond48.4.if.then55_crit_edge:                 ; preds = %for.cond48.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.5:                                     ; preds = %for.cond48.4
  %arrayidx52.6 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 6
  %33 = ptrtoint ptr %arrayidx52.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx52.6, align 4
  %call53.6 = tail call i32 @usb_submit_urb(ptr noundef %34, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.6)
  %cmp54.not.6 = icmp eq i32 %call53.6, 0
  br i1 %cmp54.not.6, label %for.cond48.6, label %for.cond48.5.if.then55_crit_edge

for.cond48.5.if.then55_crit_edge:                 ; preds = %for.cond48.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.6:                                     ; preds = %for.cond48.5
  %arrayidx52.7 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 7
  %35 = ptrtoint ptr %arrayidx52.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx52.7, align 4
  %call53.7 = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.7)
  %cmp54.not.7 = icmp eq i32 %call53.7, 0
  br i1 %cmp54.not.7, label %for.cond48.7, label %for.cond48.6.if.then55_crit_edge

for.cond48.6.if.then55_crit_edge:                 ; preds = %for.cond48.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.7:                                     ; preds = %for.cond48.6
  %arrayidx52.8 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 8
  %37 = ptrtoint ptr %arrayidx52.8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx52.8, align 4
  %call53.8 = tail call i32 @usb_submit_urb(ptr noundef %38, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.8)
  %cmp54.not.8 = icmp eq i32 %call53.8, 0
  br i1 %cmp54.not.8, label %for.cond48.8, label %for.cond48.7.if.then55_crit_edge

for.cond48.7.if.then55_crit_edge:                 ; preds = %for.cond48.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.8:                                     ; preds = %for.cond48.7
  %arrayidx52.9 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 9
  %39 = ptrtoint ptr %arrayidx52.9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx52.9, align 4
  %call53.9 = tail call i32 @usb_submit_urb(ptr noundef %40, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.9)
  %cmp54.not.9 = icmp eq i32 %call53.9, 0
  br i1 %cmp54.not.9, label %for.cond48.9, label %for.cond48.8.if.then55_crit_edge

for.cond48.8.if.then55_crit_edge:                 ; preds = %for.cond48.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.9:                                     ; preds = %for.cond48.8
  %arrayidx52.10 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 10
  %41 = ptrtoint ptr %arrayidx52.10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx52.10, align 4
  %call53.10 = tail call i32 @usb_submit_urb(ptr noundef %42, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.10)
  %cmp54.not.10 = icmp eq i32 %call53.10, 0
  br i1 %cmp54.not.10, label %for.cond48.10, label %for.cond48.9.if.then55_crit_edge

for.cond48.9.if.then55_crit_edge:                 ; preds = %for.cond48.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.10:                                    ; preds = %for.cond48.9
  %arrayidx52.11 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 11
  %43 = ptrtoint ptr %arrayidx52.11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx52.11, align 4
  %call53.11 = tail call i32 @usb_submit_urb(ptr noundef %44, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.11)
  %cmp54.not.11 = icmp eq i32 %call53.11, 0
  br i1 %cmp54.not.11, label %for.cond48.11, label %for.cond48.10.if.then55_crit_edge

for.cond48.10.if.then55_crit_edge:                ; preds = %for.cond48.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.11:                                    ; preds = %for.cond48.10
  %arrayidx52.12 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 12
  %45 = ptrtoint ptr %arrayidx52.12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx52.12, align 4
  %call53.12 = tail call i32 @usb_submit_urb(ptr noundef %46, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.12)
  %cmp54.not.12 = icmp eq i32 %call53.12, 0
  br i1 %cmp54.not.12, label %for.cond48.12, label %for.cond48.11.if.then55_crit_edge

for.cond48.11.if.then55_crit_edge:                ; preds = %for.cond48.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.12:                                    ; preds = %for.cond48.11
  %arrayidx52.13 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 13
  %47 = ptrtoint ptr %arrayidx52.13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx52.13, align 4
  %call53.13 = tail call i32 @usb_submit_urb(ptr noundef %48, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.13)
  %cmp54.not.13 = icmp eq i32 %call53.13, 0
  br i1 %cmp54.not.13, label %for.cond48.13, label %for.cond48.12.if.then55_crit_edge

for.cond48.12.if.then55_crit_edge:                ; preds = %for.cond48.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.13:                                    ; preds = %for.cond48.12
  %arrayidx52.14 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 14
  %49 = ptrtoint ptr %arrayidx52.14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx52.14, align 4
  %call53.14 = tail call i32 @usb_submit_urb(ptr noundef %50, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.14)
  %cmp54.not.14 = icmp eq i32 %call53.14, 0
  br i1 %cmp54.not.14, label %for.cond48.14, label %for.cond48.13.if.then55_crit_edge

for.cond48.13.if.then55_crit_edge:                ; preds = %for.cond48.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.14:                                    ; preds = %for.cond48.13
  %arrayidx52.15 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 64, i32 15
  %51 = ptrtoint ptr %arrayidx52.15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx52.15, align 4
  %call53.15 = tail call i32 @usb_submit_urb(ptr noundef %52, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.15)
  %cmp54.not.15 = icmp eq i32 %call53.15, 0
  br i1 %cmp54.not.15, label %for.cond48.15, label %for.cond48.14.if.then55_crit_edge

for.cond48.14.if.then55_crit_edge:                ; preds = %for.cond48.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

for.cond48.15:                                    ; preds = %for.cond48.14
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %urb_streaming to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %urb_streaming, align 8
  %bulk_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %54, 100
  %call67 = tail call i32 @mod_timer(ptr noundef %bulk_timeout, i32 noundef %add) #4
  %bulk_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 12
  %55 = ptrtoint ptr %bulk_timeout_running to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %bulk_timeout_running, align 4
  br label %cleanup

if.then55:                                        ; preds = %for.cond48.14.if.then55_crit_edge, %for.cond48.13.if.then55_crit_edge, %for.cond48.12.if.then55_crit_edge, %for.cond48.11.if.then55_crit_edge, %for.cond48.10.if.then55_crit_edge, %for.cond48.9.if.then55_crit_edge, %for.cond48.8.if.then55_crit_edge, %for.cond48.7.if.then55_crit_edge, %for.cond48.6.if.then55_crit_edge, %for.cond48.5.if.then55_crit_edge, %for.cond48.4.if.then55_crit_edge, %for.cond48.3.if.then55_crit_edge, %for.cond48.2.if.then55_crit_edge, %for.cond48.1.if.then55_crit_edge, %for.cond48.if.then55_crit_edge, %for.body50.preheader.if.then55_crit_edge
  %call53.lcssa = phi i32 [ %call53, %for.body50.preheader.if.then55_crit_edge ], [ %call53.1, %for.cond48.if.then55_crit_edge ], [ %call53.2, %for.cond48.1.if.then55_crit_edge ], [ %call53.3, %for.cond48.2.if.then55_crit_edge ], [ %call53.4, %for.cond48.3.if.then55_crit_edge ], [ %call53.5, %for.cond48.4.if.then55_crit_edge ], [ %call53.6, %for.cond48.5.if.then55_crit_edge ], [ %call53.7, %for.cond48.6.if.then55_crit_edge ], [ %call53.8, %for.cond48.7.if.then55_crit_edge ], [ %call53.9, %for.cond48.8.if.then55_crit_edge ], [ %call53.10, %for.cond48.9.if.then55_crit_edge ], [ %call53.11, %for.cond48.10.if.then55_crit_edge ], [ %call53.12, %for.cond48.11.if.then55_crit_edge ], [ %call53.13, %for.cond48.12.if.then55_crit_edge ], [ %call53.14, %for.cond48.13.if.then55_crit_edge ], [ %call53.15, %for.cond48.14.if.then55_crit_edge ]
  tail call fastcc void @stop_urb_transfer(ptr noundef %dev)
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.84, i32 noundef %call53.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %for.cond48.15, %if.then35, %for.body.cleanup_crit_edge, %do.end12, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then35 ], [ %call53.lcssa, %if.then55 ], [ 0, %for.cond48.15 ], [ 0, %do.end12 ], [ 0, %do.body6.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_restart_dvb_streaming(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4816
  %dvb1 = getelementptr i8, ptr %work, i32 -2192
  %urb_streaming = getelementptr i8, ptr %work, i32 4912
  %0 = ptrtoint ptr %urb_streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %urb_streaming, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %dvb1, i32 noundef 0) #4
  tail call fastcc void @stop_urb_transfer(ptr noundef %add.ptr)
  %call.i = tail call i32 @au0828_writereg(ptr noundef %add.ptr, i16 noundef zeroext 1544, i32 noundef 0) #4
  %call1.i = tail call i32 @au0828_writereg(ptr noundef %add.ptr, i16 noundef zeroext 1545, i32 noundef 0) #4
  %call2.i = tail call i32 @au0828_writereg(ptr noundef %add.ptr, i16 noundef zeroext 1546, i32 noundef 0) #4
  %call3.i = tail call i32 @au0828_writereg(ptr noundef %add.ptr, i16 noundef zeroext 1547, i32 noundef 0) #4
  %call.i19 = tail call i32 @au0828_writereg(ptr noundef %add.ptr, i16 noundef zeroext 1544, i32 noundef 144) #4
  %call1.i20 = tail call i32 @au0828_writereg(ptr noundef %add.ptr, i16 noundef zeroext 1545, i32 noundef 114) #4
  %call2.i21 = tail call i32 @au0828_writereg(ptr noundef %add.ptr, i16 noundef zeroext 1546, i32 noundef 113) #4
  %call3.i22 = tail call i32 @au0828_writereg(ptr noundef %add.ptr, i16 noundef zeroext 1547, i32 noundef 1) #4
  %call10 = tail call fastcc i32 @start_urb_transfer(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %dvb1) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dvb2 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dvb2, i32 noundef 0) #4
  %urb_streaming = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %urb_streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %urb_streaming, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1544, i32 noundef 0) #4
  %call1.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1545, i32 noundef 0) #4
  %call2.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1546, i32 noundef 0) #4
  %call3.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1547, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %dvb2) #4
  %restart_streaming = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_streaming) #4
  tail call void @mutex_lock_nested(ptr noundef %dvb2, i32 noundef 0) #4
  tail call fastcc void @stop_urb_transfer(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %dvb2) #4
  %set_frontend = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 11
  %6 = ptrtoint ptr %set_frontend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_frontend, align 4
  %call8 = tail call i32 %7(ptr noundef %fe) #4
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_lock_nested(ptr noundef %dvb2, i32 noundef 0) #4
  %call.i29 = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1544, i32 noundef 144) #4
  %call1.i30 = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1545, i32 noundef 114) #4
  %call2.i31 = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1546, i32 noundef 113) #4
  %call3.i32 = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1547, i32 noundef 1) #4
  %call12 = tail call fastcc i32 @start_urb_transfer(ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %dvb2) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_dvb_start_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
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
  %dvb2 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %4 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frontend, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %do.end5.cleanup_crit_edge, label %if.end8

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %frontend9 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %frontend9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %frontend9, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  tail call void @mutex_lock_nested(ptr noundef %dvb2, i32 noundef 0) #4
  %start_count = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 9
  %9 = ptrtoint ptr %start_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %start_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %11 = load i32, ptr @au0828_debug, align 4
  %and13 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then11.do.end24_crit_edge, label %do.end18

if.then11.do.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

do.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %stop_count = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 10
  %12 = ptrtoint ptr %stop_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stop_count, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, i32 noundef %inc, i32 noundef %13) #7
  br label %do.end24

do.end24:                                         ; preds = %do.end18, %if.then11.do.end24_crit_edge
  %feeding = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 8
  %14 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %feeding, align 8
  %inc25 = add i32 %15, 1
  store i32 %inc25, ptr %feeding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then26, label %do.end24.if.end32_crit_edge

do.end24.if.end32_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then26:                                        ; preds = %do.end24
  %call.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1544, i32 noundef 144) #4
  %call1.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1545, i32 noundef 114) #4
  %call2.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1546, i32 noundef 113) #4
  %call3.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1547, i32 noundef 1) #4
  %call27 = tail call fastcc i32 @start_urb_transfer(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i50 = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1547, i32 noundef 0) #4
  %16 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %feeding, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %feeding, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then26.if.end32_crit_edge, %do.end24.if.end32_crit_edge
  %ret.0 = phi i32 [ %call27, %if.then29 ], [ %call27, %if.then26.if.end32_crit_edge ], [ 0, %do.end24.if.end32_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dvb2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end8.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end5.cleanup_crit_edge ], [ %ret.0, %if.end32 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_dvb_stop_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
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
  %dvb2 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %4 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.78) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %frontend = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frontend, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %do.end5.if.end31_crit_edge, label %if.then7

do.end5.if.end31_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then7:                                         ; preds = %do.end5
  %restart_streaming = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 10
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_streaming) #4
  tail call void @mutex_lock_nested(ptr noundef %dvb2, i32 noundef 0) #4
  %stop_count = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 10
  %7 = ptrtoint ptr %stop_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stop_count, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %stop_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %9 = load i32, ptr @au0828_debug, align 4
  %and10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then7.do.end21_crit_edge, label %do.end15

if.then7.do.end21_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

do.end15:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %start_count = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 9
  %10 = ptrtoint ptr %start_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_count, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.78, i32 noundef %11, i32 noundef %inc) #7
  br label %do.end21

do.end21:                                         ; preds = %do.end15, %if.then7.do.end21_crit_edge
  %feeding = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 9, i32 8
  %12 = ptrtoint ptr %feeding to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %feeding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.then22, label %do.end21.if.end29_crit_edge

do.end21.if.end29_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then22:                                        ; preds = %do.end21
  %dec = add nsw i32 %13, -1
  %14 = ptrtoint ptr %feeding to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dec, ptr %feeding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp25 = icmp eq i32 %dec, 0
  br i1 %cmp25, label %if.then26, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @stop_urb_transfer(ptr noundef %3)
  %call3.i = tail call i32 @au0828_writereg(ptr noundef %3, i16 noundef zeroext 1547, i32 noundef 0) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then22.if.end29_crit_edge, %do.end21.if.end29_crit_edge
  tail call void @mutex_unlock(ptr noundef %dvb2) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %do.end5.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_create_media_graph(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_writereg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @urb_completion(ptr noundef %purb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %3, 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %4 = load i32, ptr @au0828_debug, align 4
  %and1 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %actual_length = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef %6) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.body7, label %if.end19

do.body7:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %7 = load i32, ptr @au0828_debug, align 4
  %and8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %do.end13

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95) #7
  br label %cleanup

if.end19:                                         ; preds = %do.end4
  %urb_streaming = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 62
  %8 = ptrtoint ptr %urb_streaming to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %urb_streaming, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not = icmp eq i8 %9, 0
  br i1 %tobool20.not, label %do.body22, label %if.end34

do.body22:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %10 = load i32, ptr @au0828_debug, align 4
  %and23 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %do.end28

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.95) #7
  br label %cleanup

if.end34:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 3
  br i1 %cmp.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.95, i32 noundef %shr) #7
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 14
  %actual_length42 = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp43.not = icmp eq i32 %12, 0
  br i1 %cmp43.not, label %if.end41.if.else_crit_edge, label %land.lhs.true

if.end41.if.else_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end41
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %16)
  %cmp44.not = icmp eq i8 %16, 71
  br i1 %cmp44.not, label %land.lhs.true.if.else_crit_edge, label %do.body47

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

do.body47:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %17 = load i32, ptr @au0828_debug, align 4
  %and48 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.do.end61_crit_edge, label %do.end53

do.body47.do.end61_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end61

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %conv, i32 noundef %12) #7
  br label %do.end61

do.end61:                                         ; preds = %do.end53, %do.body47.do.end61_crit_edge
  %restart_streaming = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %restart_streaming) #4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end41.if.else_crit_edge
  %bulk_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %bulk_timeout_running to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bulk_timeout_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp63 = icmp eq i32 %20, 1
  br i1 %cmp63, label %do.body66, label %if.else.if.end81_crit_edge

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

do.body66:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %21 = load i32, ptr @au0828_debug, align 4
  %and67 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body66.do.end77_crit_edge, label %do.end72

do.body66.do.end77_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end77

do.end72:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.95) #7
  br label %do.end77

do.end77:                                         ; preds = %do.end72, %do.body66.do.end77_crit_edge
  %22 = ptrtoint ptr %bulk_timeout_running to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %bulk_timeout_running, align 4
  %bulk_timeout = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 11
  %call79 = tail call i32 @del_timer(ptr noundef %bulk_timeout) #4
  br label %if.end81

if.end81:                                         ; preds = %do.end77, %if.else.if.end81_crit_edge
  %demux = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transfer_buffer, align 4
  %25 = ptrtoint ptr %actual_length42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length42, align 4
  %div = udiv i32 %26, 188
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux, ptr noundef %24, i32 noundef %div) #4
  %27 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer, align 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 58658)
  %call85 = tail call i32 @usb_submit_urb(ptr noundef %purb, i32 noundef 2592) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %do.end61, %do.end38, %do.end28, %do.body22.cleanup_crit_edge, %do.end13, %do.body7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__param_preallocate_big_buffers, !1, !"__param_preallocate_big_buffers", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_preallocate_big_bufferstype388, !1, !"__UNIQUE_ID_preallocate_big_bufferstype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_preallocate_big_buffers389, !4, !"__UNIQUE_ID_preallocate_big_buffers389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 24, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype390, !6, !"__UNIQUE_ID_adapter_nrtype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr391, !6, !"__UNIQUE_ID_adapter_nr391", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 535, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @au0828_dvb_unregister._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @au0828_dvb_unregister._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 568, i32 2}
!17 = !{ptr @au0828_dvb_register._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @au0828_dvb_register._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 574, i32 19}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @au0828_dvb_register._entry.6, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @au0828_dvb_register._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 581, i32 5}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @au0828_dvb_register._entry.11, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @au0828_dvb_register._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @au0828_dvb_register._entry.14, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 586, i32 5}
!33 = !{ptr @au0828_dvb_register._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @au0828_dvb_register._entry.16, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 593, i32 19}
!36 = !{ptr @au0828_dvb_register._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 597, i32 4}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @au0828_dvb_register._entry.20, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @au0828_dvb_register._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @au0828_dvb_register._entry.23, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 602, i32 19}
!45 = !{ptr @au0828_dvb_register._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 606, i32 4}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @au0828_dvb_register._entry.27, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @au0828_dvb_register._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @au0828_dvb_register._entry.30, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 611, i32 19}
!54 = !{ptr @au0828_dvb_register._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @au0828_dvb_register._entry.32, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 615, i32 4}
!57 = !{ptr @au0828_dvb_register._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 621, i32 3}
!60 = !{ptr @au0828_dvb_register._entry.34, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @au0828_dvb_register._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 625, i32 3}
!64 = !{ptr @au0828_dvb_register._entry.37, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @au0828_dvb_register._entry_ptr.39, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @au0828_dvb_register.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 641, i32 2}
!68 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 663, i32 3}
!71 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @au0828_dvb_suspend._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @au0828_dvb_suspend._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 675, i32 3}
!76 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @au0828_dvb_resume._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @au0828_dvb_resume._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @preallocate_big_buffers, !80, !"preallocate_big_buffers", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 22, i32 12}
!81 = !{ptr @__param_str_preallocate_big_buffers, !1, !"__param_str_preallocate_big_buffers", i1 false, i1 false}
!82 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!83 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!84 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!85 = !{ptr @hauppauge_hvr950q_config, !86, !"hauppauge_hvr950q_config", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 51, i32 29}
!87 = !{ptr @hauppauge_hvr950q_led_cfg, !88, !"hauppauge_hvr950q_led_cfg", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 37, i32 33}
!89 = !{ptr @hauppauge_hvr950q_led_states, !90, !"hauppauge_hvr950q_led_states", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 31, i32 11}
!91 = !{ptr @hauppauge_xc5000a_config, !92, !"hauppauge_xc5000a_config", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 73, i32 29}
!93 = !{ptr @hauppauge_xc5000c_config, !94, !"hauppauge_xc5000c_config", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 80, i32 29}
!95 = !{ptr @mxl5007t_hvr950q_config, !96, !"mxl5007t_hvr950q_config", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 87, i32 31}
!97 = !{ptr @hauppauge_woodbury_config, !98, !"hauppauge_woodbury_config", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 66, i32 29}
!99 = !{ptr @hauppauge_woodbury_tunerconfig, !100, !"hauppauge_woodbury_tunerconfig", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 92, i32 31}
!101 = !{ptr @fusionhdtv7usb_config, !102, !"fusionhdtv7usb_config", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 59, i32 29}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 399, i32 2}
!105 = !{ptr @dvb_register._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @dvb_register._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 410, i32 5}
!109 = !{ptr @dvb_register._entry.46, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @dvb_register._entry_ptr.48, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @dvb_register.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 417, i32 2}
!113 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 421, i32 11}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 424, i32 3}
!118 = !{ptr @dvb_register._entry.51, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @dvb_register._entry_ptr.53, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 438, i32 3}
!122 = !{ptr @dvb_register._entry.54, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @dvb_register._entry_ptr.56, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 458, i32 3}
!126 = !{ptr @dvb_register._entry.57, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @dvb_register._entry_ptr.59, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 467, i32 3}
!130 = !{ptr @dvb_register._entry.60, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @dvb_register._entry_ptr.62, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 474, i32 3}
!134 = !{ptr @dvb_register._entry.63, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @dvb_register._entry_ptr.65, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 482, i32 3}
!138 = !{ptr @dvb_register._entry.66, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @dvb_register._entry_ptr.68, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 489, i32 3}
!142 = !{ptr @dvb_register._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @dvb_register._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 344, i32 2}
!146 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @au0828_restart_dvb_streaming._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @au0828_restart_dvb_streaming._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 280, i32 2}
!151 = !{ptr @au0828_dvb_start_feed._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @au0828_dvb_start_feed._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 288, i32 3}
!155 = !{ptr @au0828_dvb_start_feed._entry.75, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @au0828_dvb_start_feed._entry_ptr.77, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 312, i32 2}
!159 = !{ptr @au0828_dvb_stop_feed._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @au0828_dvb_stop_feed._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @au0828_dvb_stop_feed._entry.79, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 319, i32 3}
!163 = !{ptr @au0828_dvb_stop_feed._entry_ptr.80, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 102, i32 2}
!166 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @au0828_bulk_timeout._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @au0828_bulk_timeout._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 164, i32 2}
!171 = !{ptr @stop_urb_transfer._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @stop_urb_transfer._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 193, i32 2}
!175 = !{ptr @start_urb_transfer._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @start_urb_transfer._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 196, i32 3}
!179 = !{ptr @start_urb_transfer._entry.85, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @start_urb_transfer._entry_ptr.87, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 218, i32 4}
!183 = !{ptr @start_urb_transfer._entry.88, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @start_urb_transfer._entry_ptr.90, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 239, i32 4}
!187 = !{ptr @start_urb_transfer._entry.91, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @start_urb_transfer._entry_ptr.93, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 114, i32 2}
!191 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @urb_completion._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @urb_completion._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 117, i32 3}
!196 = !{ptr @urb_completion._entry.96, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @urb_completion._entry_ptr.98, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 122, i32 3}
!200 = !{ptr @urb_completion._entry.99, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @urb_completion._entry_ptr.101, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 127, i32 3}
!204 = !{ptr @urb_completion._entry.102, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @urb_completion._entry_ptr.104, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 136, i32 3}
!208 = !{ptr @urb_completion._entry.105, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @urb_completion._entry_ptr.107, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/au0828/au0828-dvb.c", i32 144, i32 3}
!212 = !{ptr @urb_completion._entry.108, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @urb_completion._entry_ptr.110, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{i8 0, i8 2}
