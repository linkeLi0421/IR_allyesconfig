; ModuleID = '/llk/IR_all_yes/drivers/media/usb/tm6000/tm6000-dvb.c_pt.bc'
source_filename = "../drivers/media/usb/tm6000/tm6000-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.tm6000_ops = type { %struct.list_head, ptr, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.tm6000_core = type { [30 x i8], i32, i32, i32, [256 x i8], i32, i64, i32, i32, i32, %struct.tm6000_capabilities, %struct.work_struct, i32, i32, %struct.tm6000_gpio, ptr, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.list_head, i32, ptr, i8, %struct.video_device, %struct.video_device, %struct.tm6000_dmaqueue, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, [3 x %struct.tm6000_input], %struct.tm6000_input, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, %struct.mutex, %struct.mutex, ptr, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, i32, %struct.usb_isoc_ctl, %struct.spinlock, ptr, ptr, i32, i32 }
%struct.tm6000_capabilities = type { i8, [3 x i8] }
%struct.tm6000_gpio = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tm6000_dmaqueue = type { %struct.list_head, %struct.list_head, ptr, %struct.wait_queue_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tm6000_input = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tm6000_endpoint = type { ptr, i8, i8, i32 }
%struct.usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.tm6000_dvb = type { %struct.dvb_adapter, %struct.dvb_demux, ptr, %struct.dmxdev, i32, ptr, %struct.mutex }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.104], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.104 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.105 }>
%union.anon.105 = type { i64 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.dvb_demux_feed = type { %union.anon.102, %union.anon.103, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.102 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.103 = type { ptr }

@__UNIQUE_ID_description303 = internal constant [87 x i8] c"tm6000_dvb.description=DVB driver extension module for tm5600/6000/6010 based TV cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [40 x i8] c"tm6000_dvb.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [52 x i8] c"tm6000_dvb.file=drivers/media/usb/tm6000/tm6000-dvb\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [23 x i8] c"tm6000_dvb.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [17 x i8] c"tm6000_dvb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype307 = internal constant [30 x i8] c"tm6000_dvb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug308 = internal constant [43 x i8] c"tm6000_dvb.parm=debug:enable debug message\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [22 x i8] c"tm6000_dvb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype309 = internal constant [46 x i8] c"tm6000_dvb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr310 = internal constant [47 x i8] c"tm6000_dvb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@dvb_ops = internal global { %struct.tm6000_ops, [36 x i8] } { %struct.tm6000_ops { %struct.list_head zeroinitializer, ptr @.str, i32 32, ptr @dvb_init, ptr @dvb_fini, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_tm6000_dvb__311_453_tm6000_dvb_register6 = internal global ptr @tm6000_dvb_register, section ".initcall6.init", align 4
@__exitcall_tm6000_dvb_unregister = internal global ptr @tm6000_dvb_unregister, section ".exitcall.exit", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TM6000 dvb Extension\00", [43 x i8] zeroinitializer }, align 32
@dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016This USB2.0 device cannot be run on a USB1.1 port. (it lacks a hardware PID filter)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvb_init\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/tm6000/tm6000-dvb.c\00", [58 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr = internal global ptr @dvb_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@register_dvb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dvb->mutex\00", [20 x i8] zeroinitializer }, align 32
@register_dvb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013tm6000: couldn't attach the frontend!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"register_dvb\00", [19 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr = internal global ptr @register_dvb._entry, section ".printk_index", align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Trident TVMaster 6000 DVB-T\00", [36 x i8] zeroinitializer }, align 32
@register_dvb._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.3, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013tm6000: couldn't register the adapter!\0A\00", [54 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.10 = internal global ptr @register_dvb._entry.8, section ".printk_index", align 4
@register_dvb._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.3, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tm6000: couldn't register frontend\0A\00", [58 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.13 = internal global ptr @register_dvb._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@register_dvb._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.18 = internal global ptr @register_dvb._entry.16, section ".printk_index", align 4
@register_dvb._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013tm6000: couldn't register frontend (xc3028)\0A\00", [49 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.21 = internal global ptr @register_dvb._entry.19, section ".printk_index", align 4
@register_dvb._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.3, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016tm6000: XC2028/3028 asked to be attached to frontend!\0A\00", [39 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.24 = internal global ptr @register_dvb._entry.22, section ".printk_index", align 4
@register_dvb._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.27 = internal global ptr @register_dvb._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@register_dvb._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.6, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.32 = internal global ptr @register_dvb._entry.30, section ".printk_index", align 4
@register_dvb._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.6, ptr @.str.3, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013tm6000: couldn't register frontend (xc5000)\0A\00", [49 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.35 = internal global ptr @register_dvb._entry.33, section ".printk_index", align 4
@register_dvb._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.6, ptr @.str.3, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tm6000: XC5000 asked to be attached to frontend!\0A\00", [44 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.38 = internal global ptr @register_dvb._entry.36, section ".printk_index", align 4
@register_dvb._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.6, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013tm6000: no frontend found\0A\00", [35 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.41 = internal global ptr @register_dvb._entry.39, section ".printk_index", align 4
@register_dvb._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.6, ptr @.str.3, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013tm6000: dvb_dmx_init failed (errno = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.44 = internal global ptr @register_dvb._entry.42, section ".printk_index", align 4
@register_dvb._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.6, ptr @.str.3, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013tm6000: dvb_dmxdev_init failed (errno = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.47 = internal global ptr @register_dvb._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@tm6000_dvb_attach_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tm6000_dvb_attach_frontend\00", [37 x i8] zeroinitializer }, align 32
@tm6000_dvb_attach_frontend._entry_ptr = internal global ptr @tm6000_dvb_attach_frontend._entry, section ".printk_index", align 4
@tm6000_dvb_attach_frontend._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013tm6000: no frontend defined for the device!\0A\00", [49 x i8] zeroinitializer }, align 32
@tm6000_dvb_attach_frontend._entry_ptr.54 = internal global ptr @tm6000_dvb_attach_frontend._entry.52, section ".printk_index", align 4
@tm6000_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016tm6000: got start feed request %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tm6000_start_feed\00", [46 x i8] zeroinitializer }, align 32
@tm6000_start_feed._entry_ptr = internal global ptr @tm6000_start_feed._entry, section ".printk_index", align 4
@tm6000_start_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016tm6000: got start stream request %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm6000_start_stream\00", [44 x i8] zeroinitializer }, align 32
@tm6000_start_stream._entry_ptr = internal global ptr @tm6000_start_stream._entry, section ".printk_index", align 4
@tm6000_start_stream._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013tm6000: error %i in %s during pipe reset\0A\00", [52 x i8] zeroinitializer }, align 32
@tm6000_start_stream._entry_ptr.61 = internal global ptr @tm6000_start_stream._entry.59, section ".printk_index", align 4
@tm6000_start_stream._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013tm6000: pipe reset\0A\00", [42 x i8] zeroinitializer }, align 32
@tm6000_start_stream._entry_ptr.64 = internal global ptr @tm6000_start_stream._entry.62, section ".printk_index", align 4
@tm6000_start_stream._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013tm6000: submit of urb failed (error=%i)\0A\00", [53 x i8] zeroinitializer }, align 32
@tm6000_start_stream._entry_ptr.67 = internal global ptr @tm6000_start_stream._entry.65, section ".printk_index", align 4
@tm6000_urb_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013tm6000:  error %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm6000_urb_received\00", [44 x i8] zeroinitializer }, align 32
@tm6000_urb_received._entry_ptr = internal global ptr @tm6000_urb_received._entry, section ".printk_index", align 4
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@tm6000_debug = external dso_local local_unnamed_addr global i32, align 4
@print_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016(%lu) %s %s :URB status %d [%s].\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_err_status\00", [47 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr = internal global ptr @print_err_status._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@print_err_status._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016(%lu) %s %s :URB packet %d, status %d [%s].\0A\00", [49 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr.84 = internal global ptr @print_err_status._entry.82, section ".printk_index", align 4
@tm6000_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016tm6000: got stop feed request %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tm6000_stop_feed\00", [47 x i8] zeroinitializer }, align 32
@tm6000_stop_feed._entry_ptr = internal global ptr @tm6000_stop_feed._entry, section ".printk_index", align 4
@tm6000_stop_feed._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016stream %#x\0A\00", [18 x i8] zeroinitializer }, align 32
@tm6000_stop_feed._entry_ptr.89 = internal global ptr @tm6000_stop_feed._entry.87, section ".printk_index", align 4
@tm6000_stop_feed._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016stop stream\0A\00", [17 x i8] zeroinitializer }, align 32
@tm6000_stop_feed._entry_ptr.92 = internal global ptr @tm6000_stop_feed._entry.90, section ".printk_index", align 4
@tm6000_stop_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016urb killing\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tm6000_stop_stream\00", [45 x i8] zeroinitializer }, align 32
@tm6000_stop_stream._entry_ptr = internal global ptr @tm6000_stop_stream._entry, section ".printk_index", align 4
@tm6000_stop_stream._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016urb buffer free\0A\00", [45 x i8] zeroinitializer }, align 32
@tm6000_stop_stream._entry_ptr.97 = internal global ptr @tm6000_stop_stream._entry.95, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 71, i64 76]
@__sancov_gen_cov_switch_values.98 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 26, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [8 x i8] c"dvb_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 436, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 246, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 438, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 399, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 253, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 260, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 264, i32 44 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 267, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 284, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 289, i32 9 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 290, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 294, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 305, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 310, i32 9 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 311, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 315, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 320, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 332, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 342, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 236, i32 19 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 239, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 186, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 109, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 140, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 148, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 155, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 95, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 34, i32 17 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 44, i32 12 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 47, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 50, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 53, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 56, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 59, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 63, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 66, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 206, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 210, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 213, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 172, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [41 x i8] c"../drivers/media/usb/tm6000/tm6000-dvb.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 174, i32 3 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_adapter_nr310, ptr @__UNIQUE_ID_adapter_nrtype309, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_debug308, ptr @__UNIQUE_ID_debugtype307, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_tm6000_dvb_unregister, ptr @__initcall__kmod_tm6000_dvb__311_453_tm6000_dvb_register6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @dvb_init._entry, ptr @dvb_init._entry_ptr, ptr @print_err_status._entry, ptr @print_err_status._entry.82, ptr @print_err_status._entry_ptr, ptr @print_err_status._entry_ptr.84, ptr @register_dvb._entry, ptr @register_dvb._entry.11, ptr @register_dvb._entry.16, ptr @register_dvb._entry.19, ptr @register_dvb._entry.22, ptr @register_dvb._entry.26, ptr @register_dvb._entry.30, ptr @register_dvb._entry.33, ptr @register_dvb._entry.36, ptr @register_dvb._entry.39, ptr @register_dvb._entry.42, ptr @register_dvb._entry.45, ptr @register_dvb._entry.8, ptr @register_dvb._entry_ptr, ptr @register_dvb._entry_ptr.10, ptr @register_dvb._entry_ptr.13, ptr @register_dvb._entry_ptr.18, ptr @register_dvb._entry_ptr.21, ptr @register_dvb._entry_ptr.24, ptr @register_dvb._entry_ptr.27, ptr @register_dvb._entry_ptr.32, ptr @register_dvb._entry_ptr.35, ptr @register_dvb._entry_ptr.38, ptr @register_dvb._entry_ptr.41, ptr @register_dvb._entry_ptr.44, ptr @register_dvb._entry_ptr.47, ptr @tm6000_dvb_attach_frontend._entry, ptr @tm6000_dvb_attach_frontend._entry.52, ptr @tm6000_dvb_attach_frontend._entry_ptr, ptr @tm6000_dvb_attach_frontend._entry_ptr.54, ptr @tm6000_dvb_unregister, ptr @tm6000_start_feed._entry, ptr @tm6000_start_feed._entry_ptr, ptr @tm6000_start_stream._entry, ptr @tm6000_start_stream._entry.59, ptr @tm6000_start_stream._entry.62, ptr @tm6000_start_stream._entry.65, ptr @tm6000_start_stream._entry_ptr, ptr @tm6000_start_stream._entry_ptr.61, ptr @tm6000_start_stream._entry_ptr.64, ptr @tm6000_start_stream._entry_ptr.67, ptr @tm6000_stop_feed._entry, ptr @tm6000_stop_feed._entry.87, ptr @tm6000_stop_feed._entry.90, ptr @tm6000_stop_feed._entry_ptr, ptr @tm6000_stop_feed._entry_ptr.89, ptr @tm6000_stop_feed._entry_ptr.92, ptr @tm6000_stop_stream._entry, ptr @tm6000_stop_stream._entry.95, ptr @tm6000_stop_stream._entry_ptr, ptr @tm6000_stop_stream._entry_ptr.97, ptr @tm6000_urb_received._entry, ptr @tm6000_urb_received._entry_ptr, ptr @debug, ptr @dvb_ops, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @register_dvb.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_dvb_attach_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_dvb_attach_frontend._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_start_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_start_stream._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_start_stream._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_start_stream._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_urb_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_stop_feed._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_stop_feed._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_stop_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_stop_stream._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_dvb_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tm6000_unregister_extension(ptr noundef nonnull @dvb_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_dvb_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tm6000_register_extension(ptr noundef nonnull @dvb_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_init(ptr noundef %dev) #2 align 64 {
entry:
  %config.i.i = alloca %struct.zl10353_config, align 4
  %cfg.i = alloca %struct.xc2028_config, align 4
  %cfg65.i = alloca %struct.xc5000_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %caps, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 8
  %speed = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1976) #12
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %dvb10 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 40
  %7 = ptrtoint ptr %dvb10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %dvb10, align 4
  %mutex.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @register_dvb.__key) #8
  %streams.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %streams.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %streams.i, align 4
  %9 = ptrtoint ptr %dvb10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvb10, align 4
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %caps, align 4
  %12 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %tm6000_dvb_attach_frontend.exit.thread.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i.i) #8
  %13 = call ptr @memset(ptr %config.i.i, i32 255, i32 24)
  %demod_addr.i.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 17
  %14 = ptrtoint ptr %demod_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %demod_addr.i.i, align 8
  %conv.i.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i.i, ptr %config.i.i, align 4
  %adc_clock.i.i = getelementptr inbounds %struct.zl10353_config, ptr %config.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %adc_clock.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %adc_clock.i.i, align 4
  %if2.i.i = getelementptr inbounds %struct.zl10353_config, ptr %config.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %if2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 45700, ptr %if2.i.i, align 4
  %no_tuner.i.i = getelementptr inbounds %struct.zl10353_config, ptr %config.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %no_tuner.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %no_tuner.i.i, align 4
  %parallel_ts.i.i = getelementptr inbounds %struct.zl10353_config, ptr %config.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %parallel_ts.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %parallel_ts.i.i, align 4
  %clock_ctl_1.i.i = getelementptr inbounds %struct.zl10353_config, ptr %config.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %clock_ctl_1.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %clock_ctl_1.i.i, align 1
  %pll_0.i.i = getelementptr inbounds %struct.zl10353_config, ptr %config.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %pll_0.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pll_0.i.i, align 2
  %call.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #8
  %tobool4.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i.i, label %cond.end.i.i, label %if.then.i.i.if.then8.i.i_crit_edge

if.then.i.i.if.then8.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i.i

cond.end.i.i:                                     ; preds = %if.then.i.i
  %call5.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.49) #8
  %call6.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.48) #8
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %do.end.i.i, label %cond.end.i.i.if.then8.i.i_crit_edge

cond.end.i.i.if.then8.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %cond.end.i.i.if.then8.i.i_crit_edge, %if.then.i.i.if.then8.i.i_crit_edge
  %cond33.i.i = phi ptr [ %call6.i.i, %cond.end.i.i.if.then8.i.i_crit_edge ], [ %call.i.i, %if.then.i.i.if.then8.i.i_crit_edge ]
  %i2c_adap.i.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 19
  %call9.i.i = call ptr %cond33.i.i(ptr noundef nonnull %config.i.i, ptr noundef %i2c_adap.i.i) #8
  %cmp.i.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.end.i

if.then11.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.48) #8
  br label %tm6000_dvb_attach_frontend.exit.thread241.i

do.end.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #11
  br label %tm6000_dvb_attach_frontend.exit.thread241.i

tm6000_dvb_attach_frontend.exit.thread.i:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #11
  br label %do.end4.i

tm6000_dvb_attach_frontend.exit.thread241.i:      ; preds = %do.end.i.i, %if.then11.i.i
  %frontend.i243.i = getelementptr inbounds %struct.tm6000_dvb, ptr %10, i32 0, i32 2
  %23 = ptrtoint ptr %frontend.i243.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %frontend.i243.i, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i.i) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %tm6000_dvb_attach_frontend.exit.thread241.i, %tm6000_dvb_attach_frontend.exit.thread.i
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %if.then13

if.end.i:                                         ; preds = %if.then8.i.i
  %frontend.i.i = getelementptr inbounds %struct.tm6000_dvb, ptr %10, i32 0, i32 2
  %24 = ptrtoint ptr %frontend.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %frontend.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i.i) #8
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev, align 8
  %dev6.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %call7.i = call i32 @dvb_register_adapter(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef %dev6.i, ptr noundef nonnull @adapter_nr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %if.then13

if.end15.i:                                       ; preds = %if.end.i
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %priv.i, align 8
  %frontend.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %frontend.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.end127.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  %tuner_type.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 12
  %30 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tuner_type.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.then17.i.if.end130.i_crit_edge [
    i32 71, label %sw.bb.i
    i32 76, label %sw.bb64.i
  ]

if.then17.i.if.end130.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130.i

sw.bb.i:                                          ; preds = %if.then17.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i) #8
  %33 = getelementptr inbounds i8, ptr %cfg.i, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %33, align 4
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %i2c_adap.i.i, ptr %cfg.i, align 4
  %tuner_addr.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 13
  %36 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tuner_addr.i, align 8
  %conv.i = trunc i32 %37 to i8
  store i8 %conv.i, ptr %33, align 4
  %ctrl.i = getelementptr inbounds %struct.xc2028_config, ptr %cfg.i, i32 0, i32 2
  %38 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %ctrl.i, align 4
  %callback.i = getelementptr inbounds %struct.dvb_frontend, ptr %29, i32 0, i32 9
  %39 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @tm6000_tuner_callback, ptr %callback.i, align 4
  %40 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %frontend.i, align 8
  %call22.i = call i32 @dvb_register_frontend(ptr noundef nonnull %call7.i.i, ptr noundef %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %cleanup.i, label %if.end31.i

if.end31.i:                                       ; preds = %sw.bb.i
  %call32.i = call ptr @__symbol_get(ptr noundef nonnull @.str.14) #8
  %tobool33.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool33.not.i, label %cond.end.i, label %if.end31.i.if.then37.i_crit_edge

if.end31.i.if.then37.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37.i

cond.end.i:                                       ; preds = %if.end31.i
  %call34.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.15) #8
  %call35.i = call ptr @__symbol_get(ptr noundef nonnull @.str.14) #8
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %do.end46.i, label %cond.end.i.if.then37.i_crit_edge

cond.end.i.if.then37.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37.i

if.then37.i:                                      ; preds = %cond.end.i.if.then37.i_crit_edge, %if.end31.i.if.then37.i_crit_edge
  %cond249.i = phi ptr [ %call35.i, %cond.end.i.if.then37.i_crit_edge ], [ %call32.i, %if.end31.i.if.then37.i_crit_edge ]
  %42 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %frontend.i, align 8
  %call39.i = call ptr %cond249.i(ptr noundef %43, ptr noundef nonnull %cfg.i) #8
  %cmp40.i = icmp eq ptr %call39.i, null
  br i1 %cmp40.i, label %if.then42.i, label %cleanup.thread.i

if.then42.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.14) #8
  br label %cleanup.thread254.i

do.end46.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %cleanup.thread254.i

cleanup.thread254.i:                              ; preds = %do.end46.i, %if.then42.i
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #8
  br label %frontend_err.i

cleanup.thread.i:                                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #8
  br label %if.end130.i

cleanup.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #8
  br label %adapter_err.i

sw.bb64.i:                                        ; preds = %if.then17.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg65.i) #8
  %44 = call ptr @memset(ptr %cfg65.i, i32 0, i32 20)
  %tuner_addr66.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 13
  %45 = ptrtoint ptr %tuner_addr66.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tuner_addr66.i, align 8
  %conv67.i = trunc i32 %46 to i8
  %47 = ptrtoint ptr %cfg65.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv67.i, ptr %cfg65.i, align 4
  %callback69.i = getelementptr inbounds %struct.dvb_frontend, ptr %29, i32 0, i32 9
  %48 = ptrtoint ptr %callback69.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @tm6000_xc5000_callback, ptr %callback69.i, align 4
  %49 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %frontend.i, align 8
  %call72.i = call i32 @dvb_register_frontend(ptr noundef nonnull %call7.i.i, ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.i = icmp slt i32 %call72.i, 0
  br i1 %cmp73.i, label %cleanup122.i, label %if.end81.i

if.end81.i:                                       ; preds = %sw.bb64.i
  %call84.i = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #8
  %tobool85.not.i = icmp eq ptr %call84.i, null
  br i1 %tobool85.not.i, label %cond.end90.i, label %if.end81.i.if.then93.i_crit_edge

if.end81.i.if.then93.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then93.i

cond.end90.i:                                     ; preds = %if.end81.i
  %call88.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.29) #8
  %call89.i = call ptr @__symbol_get(ptr noundef nonnull @.str.28) #8
  %tobool92.not.i = icmp eq ptr %call89.i, null
  br i1 %tobool92.not.i, label %do.end104.i, label %cond.end90.i.if.then93.i_crit_edge

cond.end90.i.if.then93.i_crit_edge:               ; preds = %cond.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then93.i

if.then93.i:                                      ; preds = %cond.end90.i.if.then93.i_crit_edge, %if.end81.i.if.then93.i_crit_edge
  %cond91259.i = phi ptr [ %call89.i, %cond.end90.i.if.then93.i_crit_edge ], [ %call84.i, %if.end81.i.if.then93.i_crit_edge ]
  %51 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %frontend.i, align 8
  %call96.i = call ptr %cond91259.i(ptr noundef %52, ptr noundef %i2c_adap.i.i, ptr noundef nonnull %cfg65.i) #8
  %cmp97.i = icmp eq ptr %call96.i, null
  br i1 %cmp97.i, label %if.then99.i, label %cleanup122.thread.i

if.then99.i:                                      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.28) #8
  br label %cleanup122.thread264.i

do.end104.i:                                      ; preds = %cond.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  %call106.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  br label %cleanup122.thread264.i

cleanup122.thread264.i:                           ; preds = %do.end104.i, %if.then99.i
  %call115.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg65.i) #8
  br label %frontend_err.i

cleanup122.thread.i:                              ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #10
  %call121.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg65.i) #8
  br label %if.end130.i

cleanup122.i:                                     ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #10
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg65.i) #8
  br label %adapter_err.i

do.end127.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  br label %if.end130.i

if.end130.i:                                      ; preds = %do.end127.i, %cleanup122.thread.i, %cleanup.thread.i, %if.then17.i.if.end130.i_crit_edge
  %demux.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 13, ptr %demux.i, align 8
  %priv132.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %priv132.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev, ptr %priv132.i, align 4
  %filternum.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %feednum.i, align 4
  %start_feed.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @tm6000_start_feed, ptr %start_feed.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @tm6000_stop_feed, ptr %stop_feed.i, align 4
  %write_to_decoder.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 1, i32 6
  %59 = ptrtoint ptr %write_to_decoder.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %write_to_decoder.i, align 8
  %call139.i = call i32 @dvb_dmx_init(ptr noundef %demux.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %cmp140.i = icmp slt i32 %call139.i, 0
  br i1 %cmp140.i, label %do.end145.i, label %if.end148.i

do.end145.i:                                      ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  %call147.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call139.i) #11
  br label %frontend_err.i

if.end148.i:                                      ; preds = %if.end130.i
  %60 = ptrtoint ptr %dvb10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dvb10, align 4
  %filternum151.i = getelementptr inbounds %struct.tm6000_dvb, ptr %61, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %filternum151.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %filternum151.i, align 8
  %dmxdev.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 3
  %filternum152.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 3, i32 4
  %64 = ptrtoint ptr %filternum152.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %filternum152.i, align 4
  %demux154.i = getelementptr inbounds %struct.tm6000_dvb, ptr %61, i32 0, i32 1
  %demux157.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %demux157.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %demux154.i, ptr %demux157.i, align 8
  %capabilities159.i = getelementptr inbounds %struct.tm6000_dvb, ptr %call7.i.i, i32 0, i32 3, i32 5
  %66 = ptrtoint ptr %capabilities159.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %capabilities159.i, align 8
  %call162.i = call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %cmp163.i = icmp slt i32 %call162.i, 0
  br i1 %cmp163.i, label %do.end168.i, label %if.end148.i.cleanup_crit_edge

if.end148.i.cleanup_crit_edge:                    ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end168.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  %call170.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %call162.i) #11
  call void @dvb_dmx_release(ptr noundef %demux.i) #8
  br label %frontend_err.i

frontend_err.i:                                   ; preds = %do.end168.i, %do.end145.i, %cleanup122.thread264.i, %cleanup.thread254.i
  %67 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %frontend.i, align 8
  %tobool174.not.i = icmp eq ptr %68, null
  br i1 %tobool174.not.i, label %frontend_err.i.adapter_err.i_crit_edge, label %if.then175.i

frontend_err.i.adapter_err.i_crit_edge:           ; preds = %frontend_err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adapter_err.i

if.then175.i:                                     ; preds = %frontend_err.i
  call void @__sanitizer_cov_trace_pc() #10
  %call177.i = call i32 @dvb_unregister_frontend(ptr noundef nonnull %68) #8
  %69 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %frontend.i, align 8
  call void @dvb_frontend_detach(ptr noundef %70) #8
  br label %adapter_err.i

adapter_err.i:                                    ; preds = %if.then175.i, %frontend_err.i.adapter_err.i_crit_edge, %cleanup122.i, %cleanup.i
  %call181.i = call i32 @dvb_unregister_adapter(ptr noundef nonnull %call7.i.i) #8
  br label %if.then13

if.then13:                                        ; preds = %adapter_err.i, %do.end12.i, %do.end4.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %71 = ptrtoint ptr %dvb10 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %dvb10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end148.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then13 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.end148.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_fini(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %caps, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  %dvb = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 40
  %2 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.return_crit_edge, label %if.then5

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then5:                                         ; preds = %if.end3
  %bulk_urb.i = getelementptr inbounds %struct.tm6000_dvb, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bulk_urb.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then5.if.end.i_crit_edge, label %if.then.i

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %transfer_buffer.i, align 4
  %call.i = tail call i32 @usb_unlink_urb(ptr noundef nonnull %5) #8
  tail call void @usb_free_urb(ptr noundef nonnull %5) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then5.if.end.i_crit_edge
  %frontend.i = getelementptr inbounds %struct.tm6000_dvb, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frontend.i, align 8
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %if.end.i.unregister_dvb.exit_crit_edge, label %if.then6.i

if.end.i.unregister_dvb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unregister_dvb.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %10) #8
  %11 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %frontend.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %12) #8
  br label %unregister_dvb.exit

unregister_dvb.exit:                              ; preds = %if.then6.i, %if.end.i.unregister_dvb.exit_crit_edge
  %dmxdev.i = getelementptr inbounds %struct.tm6000_dvb, ptr %3, i32 0, i32 3
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #8
  %demux.i = getelementptr inbounds %struct.tm6000_dvb, ptr %3, i32 0, i32 1
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #8
  %call11.i = tail call i32 @dvb_unregister_adapter(ptr noundef nonnull %3) #8
  %mutex.i = getelementptr inbounds %struct.tm6000_dvb, ptr %3, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %mutex.i) #8
  %13 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvb, align 4
  tail call void @kfree(ptr noundef %14) #8
  %15 = ptrtoint ptr %dvb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dvb, align 4
  br label %return

return:                                           ; preds = %unregister_dvb.exit, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_xc5000_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_start_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dvb2 = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %dvb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb2, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #11
  %mutex = getelementptr inbounds %struct.tm6000_dvb, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streams = getelementptr inbounds %struct.tm6000_dvb, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %streams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %streams to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %streams, align 4
  %9 = ptrtoint ptr %dvb2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvb2, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #11
  %mode.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 36
  %11 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 2
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @tm6000_init_digital_mode(ptr noundef %3) #8
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %call4.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %bulk_urb.i = getelementptr inbounds %struct.tm6000_dvb, ptr %10, i32 0, i32 5
  %14 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i, ptr %bulk_urb.i, align 8
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  %udev.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 47
  %15 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev.i, align 8
  %bulk_in.i = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 48
  %17 = ptrtoint ptr %bulk_in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bulk_in.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i, align 2
  %21 = and i8 %20, 15
  %and.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %23, 8
  %shl1.i.i = shl nuw nsw i32 %and.i, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or9.i = or i32 %or.i.i, -1073741696
  %24 = lshr i32 %or.i.i, 15
  %and.i.i = and i32 %24, 15
  %arrayidx57.i.i = getelementptr %struct.usb_device, ptr %16, i32 0, i32 21, i32 %and.i.i
  %25 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx57.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %26, null
  br i1 %tobool59.not.i.i, label %if.end7.i.if.end8.i.i.i_crit_edge, label %if.end61.i.i

if.end7.i.if.end8.i.i.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

if.end61.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %29 = and i16 %28, -249
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #8
  %narrow.i = mul nuw nsw i16 %30, 15
  %phi.bo.i = zext i16 %narrow.i to i32
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end61.i.i, %if.end7.i.if.end8.i.i.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.end61.i.i ], [ 0, %if.end7.i.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #13
  %31 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bulk_urb.i, align 8
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i.i, ptr %transfer_buffer.i, align 4
  %34 = load ptr, ptr %bulk_urb.i, align 8
  %transfer_buffer18.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %transfer_buffer18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_buffer18.i, align 4
  %tobool19.not.i = icmp eq ptr %36, null
  br i1 %tobool19.not.i, label %if.end8.i.i.i.cleanup.sink.split.i_crit_edge, label %if.end23.i

if.end8.i.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end23.i:                                       ; preds = %if.end8.i.i.i
  %37 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 8
  %39 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 10
  %40 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or9.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tm6000_urb_received, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %3, ptr %context4.i.i, align 4
  %44 = load ptr, ptr %udev.i, align 8
  %call29.i = tail call i32 @usb_clear_halt(ptr noundef %44, i32 noundef %or9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %do.end35.i, label %do.end44.i

do.end35.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call29.i, ptr noundef nonnull @.str.58) #11
  br label %cleanup.sink.split.sink.split.i

do.end44.i:                                       ; preds = %if.end23.i
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #11
  %45 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bulk_urb.i, align 8
  %call49.i = tail call i32 @usb_submit_urb(ptr noundef %46, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %do.end44.i.if.end_crit_edge, label %do.end54.i

do.end44.i.if.end_crit_edge:                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end54.i:                                       ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %call49.i) #11
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %do.end54.i, %do.end35.i
  %47 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bulk_urb.i, align 8
  %transfer_buffer39.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %transfer_buffer39.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %transfer_buffer39.i, align 4
  tail call void @kfree(ptr noundef %50) #8
  %51 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bulk_urb.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.end8.i.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %34, %if.end8.i.i.i.cleanup.sink.split.i_crit_edge ], [ %52, %cleanup.sink.split.sink.split.i ]
  tail call void @usb_free_urb(ptr noundef %.sink.i) #8
  %53 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %bulk_urb.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %7, 1
  %54 = ptrtoint ptr %streams to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %inc, ptr %streams, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cleanup.sink.split.i, %do.end44.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_stop_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dvb2 = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %dvb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb2, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #11
  %mutex = getelementptr inbounds %struct.tm6000_dvb, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streams = getelementptr inbounds %struct.tm6000_dvb, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %streams, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %7) #11
  %8 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %streams, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %streams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.end12, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end12:                                         ; preds = %entry
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #11
  %10 = ptrtoint ptr %dvb2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvb2, align 4
  %bulk_urb.i = getelementptr inbounds %struct.tm6000_dvb, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bulk_urb.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end12.if.end_crit_edge, label %do.end.i

do.end12.if.end_crit_edge:                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #11
  %14 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bulk_urb.i, align 8
  tail call void @usb_kill_urb(ptr noundef %15) #8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #11
  %16 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bulk_urb.i, align 8
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %19) #8
  %20 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bulk_urb.i, align 8
  tail call void @usb_free_urb(ptr noundef %21) #8
  %22 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %bulk_urb.i, align 8
  br label %if.end

if.end:                                           ; preds = %do.end.i, %do.end12.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_init_digital_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_urb_received(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %3, label %entry.do.body12.i_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -110, label %entry.sw.epilog_crit_edge26
    i32 -2, label %entry.cleanup_crit_edge
    i32 -104, label %entry.cleanup_crit_edge27
    i32 -108, label %entry.cleanup_crit_edge28
    i32 -84, label %sw.bb6.i
    i32 -62, label %sw.bb7.i
    i32 -63, label %sw.bb2.i
    i32 -32, label %sw.bb3.i
    i32 -75, label %sw.bb4.i
    i32 -71, label %sw.bb5.i
  ]

entry.cleanup_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.sw.epilog_crit_edge26:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i

do.body12.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %entry.do.body12.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.79, %sw.bb7.i ], [ @.str.78, %sw.bb6.i ], [ @.str.77, %sw.bb5.i ], [ @.str.76, %sw.bb4.i ], [ @.str.75, %sw.bb3.i ], [ @.str.74, %sw.bb2.i ], [ @.str.71, %entry.do.body12.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tm6000_debug to i32))
  %5 = load i32, ptr @tm6000_debug, align 4
  %and13.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.sw.epilog_crit_edge, label %do.end18.i

do.body12.i.sw.epilog_crit_edge:                  ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef %3, ptr noundef nonnull %errmsg.0.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end18.i, %do.body12.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge26
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dvb = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 40
  %9 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvb, align 4
  %demux = getelementptr inbounds %struct.tm6000_dvb, ptr %10, i32 0, i32 1
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %12, i32 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %dvb4 = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 40
  %13 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvb4, align 4
  %streams = getelementptr inbounds %struct.tm6000_dvb, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %streams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5.not = icmp eq i32 %16, 0
  br i1 %cmp5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %do.end, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  %transfer_buffer10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer10, align 4
  tail call void @kfree(ptr noundef %18) #8
  tail call void @usb_free_urb(ptr noundef %urb) #8
  %19 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dvb4, align 4
  %bulk_urb = getelementptr inbounds %struct.tm6000_dvb, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %bulk_urb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bulk_urb, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge27, %entry.cleanup_crit_edge28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__UNIQUE_ID_description303, !1, !"__UNIQUE_ID_description303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_author304, !3, !"__UNIQUE_ID_author304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 28, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype307, !8, !"__UNIQUE_ID_debugtype307", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug308, !11, !"__UNIQUE_ID_debug308", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 29, i32 1}
!12 = !{ptr @__param_adapter_nr, !13, !"__param_adapter_nr", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 246, i32 1}
!14 = !{ptr @__UNIQUE_ID_adapter_nrtype309, !13, !"__UNIQUE_ID_adapter_nrtype309", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_adapter_nr310, !13, !"__UNIQUE_ID_adapter_nr310", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_tm6000_dvb__311_453_tm6000_dvb_register6, !17, !"__initcall__kmod_tm6000_dvb__311_453_tm6000_dvb_register6", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 453, i32 1}
!18 = !{ptr @__exitcall_tm6000_dvb_unregister, !19, !"__exitcall_tm6000_dvb_unregister", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 454, i32 1}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 26, i32 12}
!22 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @__param_str_adapter_nr, !13, !"__param_str_adapter_nr", i1 false, i1 false}
!24 = !{ptr @__param_arr_adapter_nr, !13, !"__param_arr_adapter_nr", i1 false, i1 false}
!25 = !{ptr @adapter_nr, !13, !"adapter_nr", i1 false, i1 false}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 438, i32 10}
!28 = !{ptr @dvb_ops, !29, !"dvb_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 436, i32 26}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 399, i32 3}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dvb_init._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @dvb_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @register_dvb.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 253, i32 2}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 260, i32 3}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @register_dvb._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @register_dvb._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 264, i32 44}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 267, i32 3}
!48 = !{ptr @register_dvb._entry.8, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @register_dvb._entry_ptr.10, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 284, i32 5}
!52 = !{ptr @register_dvb._entry.11, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @register_dvb._entry_ptr.13, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 289, i32 9}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @register_dvb._entry.16, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @register_dvb._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 290, i32 5}
!62 = !{ptr @register_dvb._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @register_dvb._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 294, i32 4}
!66 = !{ptr @register_dvb._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @register_dvb._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @register_dvb._entry.26, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 305, i32 5}
!70 = !{ptr @register_dvb._entry_ptr.27, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 310, i32 9}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @register_dvb._entry.30, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @register_dvb._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 311, i32 5}
!79 = !{ptr @register_dvb._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @register_dvb._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 315, i32 4}
!83 = !{ptr @register_dvb._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @register_dvb._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 320, i32 3}
!87 = !{ptr @register_dvb._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @register_dvb._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 332, i32 3}
!91 = !{ptr @register_dvb._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @register_dvb._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 342, i32 3}
!95 = !{ptr @register_dvb._entry.45, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @register_dvb._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 236, i32 19}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @tm6000_dvb_attach_frontend._entry, !98, !"_entry", i1 false, i1 false}
!103 = !{ptr @tm6000_dvb_attach_frontend._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 239, i32 3}
!106 = !{ptr @tm6000_dvb_attach_frontend._entry.52, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tm6000_dvb_attach_frontend._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 186, i32 2}
!110 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @tm6000_start_feed._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @tm6000_start_feed._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 109, i32 2}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @tm6000_start_stream._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @tm6000_start_stream._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 140, i32 3}
!120 = !{ptr @tm6000_start_stream._entry.59, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @tm6000_start_stream._entry_ptr.61, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 148, i32 3}
!124 = !{ptr @tm6000_start_stream._entry.62, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @tm6000_start_stream._entry_ptr.64, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 155, i32 3}
!128 = !{ptr @tm6000_start_stream._entry.65, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @tm6000_start_stream._entry_ptr.67, !127, !"_entry_ptr", i1 false, i1 false}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 95, i32 4}
!134 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @tm6000_urb_received._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @tm6000_urb_received._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 34, i32 17}
!139 = distinct !{null, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 38, i32 12}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 41, i32 12}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 44, i32 12}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 47, i32 12}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 50, i32 12}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 53, i32 12}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 56, i32 12}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 59, i32 12}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 63, i32 3}
!157 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @print_err_status._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @print_err_status._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 66, i32 3}
!162 = !{ptr @print_err_status._entry.82, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @print_err_status._entry_ptr.84, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 206, i32 2}
!166 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @tm6000_stop_feed._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @tm6000_stop_feed._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 210, i32 2}
!171 = !{ptr @tm6000_stop_feed._entry.87, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @tm6000_stop_feed._entry_ptr.89, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 213, i32 3}
!175 = !{ptr @tm6000_stop_feed._entry.90, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @tm6000_stop_feed._entry_ptr.92, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 172, i32 3}
!179 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @tm6000_stop_stream._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @tm6000_stop_stream._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/tm6000/tm6000-dvb.c", i32 174, i32 3}
!184 = !{ptr @tm6000_stop_stream._entry.95, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @tm6000_stop_stream._entry_ptr.97, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
