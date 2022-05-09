; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-dvb.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cx231xx_ops = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s5h1432_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.lgdt3305_config = type { i8, i16, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32 }
%struct.lgdt3306a_config = type { i8, i16, i16, i8, i32, i32, i32, i32, ptr, ptr }
%struct.mb86a20s_config = type { i32, i8, i8 }
%struct.r820t_config = type { i8, i32, i32, i32, i8, i8 }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149 }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr, ptr }
%struct.anon.147 = type { ptr, ptr }
%struct.anon.148 = type { ptr, ptr }
%struct.anon.149 = type { ptr, ptr, ptr, ptr }
%struct.cx231xx_i2c = type { ptr, i32, %struct.i2c_adapter, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cx231xx_audio = type { [50 x i8], [5 x ptr], [5 x ptr], ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.125], %struct.media_entity_enum, i32 }
%struct.anon.125 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.150], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.150 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.151 }>
%union.anon.151 = type { i64 }
%struct.si2165_platform_data = type { ptr, i8, i32, i8 }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.mn88473_config = type { i16, i32, ptr }
%struct.cx231xx_dvb = type { [2 x ptr], %struct.mutex, i32, %struct.dvb_adapter, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, [2 x ptr], ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_demux_feed = type { %union.anon.152, %union.anon.153, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.152 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.153 = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID_description388 = internal constant [59 x i8] c"cx231xx_dvb.description=driver for cx231xx based DVB cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author389 = internal constant [66 x i8] c"cx231xx_dvb.author=Srinivasa Deevi <srinivasa.deevi@conexant.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [55 x i8] c"cx231xx_dvb.file=drivers/media/usb/cx231xx/cx231xx-dvb\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [24 x i8] c"cx231xx_dvb.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [18 x i8] c"cx231xx_dvb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype392 = internal constant [31 x i8] c"cx231xx_dvb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug393 = internal constant [51 x i8] c"cx231xx_dvb.parm=debug:enable debug messages [dvb]\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [23 x i8] c"cx231xx_dvb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype394 = internal constant [47 x i8] c"cx231xx_dvb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr395 = internal constant [48 x i8] c"cx231xx_dvb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx231xx_dvb\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cx231xx_reset_analog_tuner\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/cx231xx/cx231xx-dvb.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Reloading firmware for XC5000\0A\00", [33 x i8] zeroinitializer }, align 32
@cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"XC5000 firmware download completed\0A\00", [60 x i8] zeroinitializer }, align 32
@cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"XC5000 firmware download failed !!!\0A\00", [59 x i8] zeroinitializer }, align 32
@dvb_ops = internal global { %struct.cx231xx_ops, [40 x i8] } { %struct.cx231xx_ops { %struct.list_head zeroinitializer, ptr @.str.6, i32 32, ptr @dvb_init, ptr @dvb_fini }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_cx231xx_dvb__403_1174_cx231xx_dvb_register6 = internal global ptr @cx231xx_dvb_register, section ".initcall6.init", align 4
@__exitcall_cx231xx_dvb_unregister = internal global ptr @cx231xx_dvb_unregister, section ".exitcall.exit", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cx231xx dvb Extension\00", [42 x i8] zeroinitializer }, align 32
@dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 634, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cx231xx_dvb: memory allocation failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvb_init\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr = internal global ptr @dvb_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1432_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1432_attach\00", [42 x i8] zeroinitializer }, align 32
@dvico_s5h1432_config = internal global { %struct.s5h1432_config, [22 x i8] } { %struct.s5h1432_config { i8 1, i8 1, i16 1, i16 4000, i16 4000, i8 0, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1432_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.15 = internal global ptr @dvb_init._entry.13, section ".printk_index", align 4
@dvb_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.2, i32 657, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to attach s5h1432 front end\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.19 = internal global ptr @dvb_init._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@cnxt_rde250_tunerconfig = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 4000, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.24 = internal global ptr @dvb_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1411_attach\00", [42 x i8] zeroinitializer }, align 32
@xc5000_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 1, i8 0, i16 1, i16 3250, i16 3250, i8 0, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1411_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.29 = internal global ptr @dvb_init._entry.27, section ".printk_index", align 4
@dvb_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.2, i32 682, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to attach s5h1411 front end\0A\00", [60 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.32 = internal global ptr @dvb_init._entry.30, section ".printk_index", align 4
@cnxt_rdu250_tunerconfig = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 3250, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.34 = internal global ptr @dvb_init._entry.33, section ".printk_index", align 4
@dvb_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.36 = internal global ptr @dvb_init._entry.35, section ".printk_index", align 4
@dvb_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.2, i32 705, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.38 = internal global ptr @dvb_init._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@cnxt_rde253s_tunerconfig = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @cnxt_rde253s_tda18271_std_map, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.8, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.43 = internal global ptr @dvb_init._entry.41, section ".printk_index", align 4
@tda18271_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 1, i8 0, i16 1, i16 4000, i16 3250, i8 1, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.45 = internal global ptr @dvb_init._entry.44, section ".printk_index", align 4
@dvb_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.2, i32 729, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.47 = internal global ptr @dvb_init._entry.46, section ".printk_index", align 4
@dvb_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.8, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.49 = internal global ptr @dvb_init._entry.48, section ".printk_index", align 4
@dvb_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.8, ptr @.str.2, i32 748, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: looking for tuner / demod on i2c bus: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.52 = internal global ptr @dvb_init._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3305_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt3305_attach\00", [41 x i8] zeroinitializer }, align 32
@hcw_lgdt3305_config = internal global { %struct.lgdt3305_config, [60 x i8] } { %struct.lgdt3305_config { i8 14, i16 4000, i16 3250, i16 0, i16 0, i16 0, i8 -64, i32 1, i32 1, i32 0, i32 1, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dvb_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.8, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt3305_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.57 = internal global ptr @dvb_init._entry.55, section ".printk_index", align 4
@dvb_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.8, ptr @.str.2, i32 756, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to attach LG3305 front end\0A\00", [61 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.60 = internal global ptr @dvb_init._entry.58, section ".printk_index", align 4
@hcw_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_tda18271_std_map, i32 0, i32 2, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.8, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.62 = internal global ptr @dvb_init._entry.61, section ".printk_index", align 4
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2165\00", [25 x i8] zeroinitializer }, align 32
@dvb_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.8, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.65 = internal global ptr @dvb_init._entry.64, section ".printk_index", align 4
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@hauppauge_955q_lgdt3306a_config = internal constant { %struct.lgdt3306a_config, [32 x i8] } { %struct.lgdt3306a_config { i8 0, i16 4000, i16 3250, i8 64, i32 1, i32 0, i32 1, i32 25, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lgdt3306a\00", [22 x i8] zeroinitializer }, align 32
@dvb_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.8, ptr @.str.2, i32 896, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: looking for demod on i2c bus: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.70 = internal global ptr @dvb_init._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mb86a20s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mb86a20s_attach\00", [41 x i8] zeroinitializer }, align 32
@pv_mb86a20s_config = internal constant { %struct.mb86a20s_config, [24 x i8] } { %struct.mb86a20s_config { i32 0, i8 16, i8 1 }, [24 x i8] zeroinitializer }, align 32
@dvb_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.8, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mb86a20s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.75 = internal global ptr @dvb_init._entry.73, section ".printk_index", align 4
@dvb_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.8, ptr @.str.2, i32 904, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to attach mb86a20s demod\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.78 = internal global ptr @dvb_init._entry.76, section ".printk_index", align 4
@pv_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @mb86a20s_tda18271_config, i32 0, i32 2, i32 0, i32 3, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.8, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.80 = internal global ptr @dvb_init._entry.79, section ".printk_index", align 4
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mn88473\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r820t_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:r820t_attach\00", [44 x i8] zeroinitializer }, align 32
@astrometa_t2hybrid_r820t_config = internal global { %struct.r820t_config, [44 x i8] } { %struct.r820t_config { i8 58, i32 16000000, i32 2, i32 2, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.8, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol r820t_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.87 = internal global ptr @dvb_init._entry.85, section ".printk_index", align 4
@dvb_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.8, ptr @.str.2, i32 1103, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s/2: The frontend of your DVB/ATSC card isn't supported yet\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.90 = internal global ptr @dvb_init._entry.88, section ".printk_index", align 4
@dvb_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.8, ptr @.str.2, i32 1108, ptr @.str.18, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s/2: frontend initialization failed\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.93 = internal global ptr @dvb_init._entry.91, section ".printk_index", align 4
@dvb_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.8, ptr @.str.2, i32 1120, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Successfully loaded cx231xx-dvb\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr.96 = internal global ptr @dvb_init._entry.94, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cnxt_rde253s_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 4000, i8 -24, i8 -73 }, { i16, i8, i8 } { i16 4000, i8 -16, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@hauppauge_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3250, i8 -32, i8 -40 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -24, i8 -40 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@mb86a20s_tda18271_config = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -32, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@register_dvb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dvb->lock\00", [21 x i8] zeroinitializer }, align 32
@register_dvb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 469, ptr @.str.103, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: dvb_register_adapter failed (errno = %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"register_dvb\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr = internal global ptr @register_dvb._entry, section ".printk_index", align 4
@register_dvb._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.102, ptr @.str.2, i32 486, ptr @.str.103, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: dvb_register_frontend failed (errno = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.106 = internal global ptr @register_dvb._entry.104, section ".printk_index", align 4
@register_dvb._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.102, ptr @.str.2, i32 495, ptr @.str.103, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: 2nd dvb_register_frontend failed (errno = %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.109 = internal global ptr @register_dvb._entry.107, section ".printk_index", align 4
@register_dvb._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.102, ptr @.str.2, i32 517, ptr @.str.103, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: dvb_dmx_init failed (errno = %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.112 = internal global ptr @register_dvb._entry.110, section ".printk_index", align 4
@register_dvb._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.102, ptr @.str.2, i32 528, ptr @.str.103, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: dvb_dmxdev_init failed (errno = %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.115 = internal global ptr @register_dvb._entry.113, section ".printk_index", align 4
@register_dvb._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.102, ptr @.str.2, i32 537, ptr @.str.103, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: add_frontend failed (DMX_FRONTEND_0, errno = %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.118 = internal global ptr @register_dvb._entry.116, section ".printk_index", align 4
@register_dvb._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.102, ptr @.str.2, i32 546, ptr @.str.103, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: add_frontend failed (DMX_MEMORY_FE, errno = %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.121 = internal global ptr @register_dvb._entry.119, section ".printk_index", align 4
@register_dvb._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.102, ptr @.str.2, i32 554, ptr @.str.103, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: connect_frontend failed (errno = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.124 = internal global ptr @register_dvb._entry.122, section ".printk_index", align 4
@start_streaming.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_streaming\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DVB transfer mode is ISO.\0A\00", [37 x i8] zeroinitializer }, align 32
@start_streaming.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.127, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DVB transfer mode is BULK.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unlinked synchronously\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unlinked asynchronously\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@print_err_status.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.2, ptr @.str.138, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_err_status\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"URB status %d [%s].\0A\00", [43 x i8] zeroinitializer }, align 32
@print_err_status.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.2, ptr @.str.139, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"URB packet %d, status %d [%s].\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 10, i64 12, i64 18, i64 19, i64 20, i64 21, i64 23, i64 24, i64 26, i64 27]
@__sancov_gen_cov_switch_values.140 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.141 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.142 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 39, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 433, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 438, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 442, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant [8 x i8] c"dvb_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1157, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 43, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1159, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 633, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [21 x i8] c"dvico_s5h1432_config\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 68, i32 30 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 651, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 656, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [24 x i8] c"cnxt_rde250_tunerconfig\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 359, i32 29 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 665, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant [22 x i8] c"xc5000_s5h1411_config\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 106, i32 30 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 676, i32 27 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 681, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [24 x i8] c"cnxt_rdu250_tunerconfig\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 363, i32 29 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 690, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 699, i32 27 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 704, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [25 x i8] c"cnxt_rde253s_tunerconfig\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 92, i32 31 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 713, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant [24 x i8] c"tda18271_s5h1411_config\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 97, i32 30 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 723, i32 27 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 728, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 737, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 746, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c"hcw_lgdt3305_config\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 116, i32 31 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 750, i32 27 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 755, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c"hcw_tda18271_config\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 134, i32 31 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 764, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 779, i32 29 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 793, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 834, i32 29 }
@___asan_gen_.329 = private unnamed_addr constant [32 x i8] c"hauppauge_955q_lgdt3306a_config\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 150, i32 38 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 856, i32 29 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 894, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [19 x i8] c"pv_mb86a20s_config\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 139, i32 37 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 898, i32 27 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 903, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant [19 x i8] c"pv_tda18271_config\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 144, i32 31 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 912, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 929, i32 29 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 968, i32 29 }
@___asan_gen_.380 = private unnamed_addr constant [32 x i8] c"astrometa_t2hybrid_r820t_config\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 160, i32 28 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 981, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1101, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1107, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1120, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [30 x i8] c"cnxt_rde253s_tda18271_std_map\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 78, i32 32 }
@___asan_gen_.410 = private unnamed_addr constant [27 x i8] c"hauppauge_tda18271_std_map\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 127, i32 32 }
@___asan_gen_.413 = private unnamed_addr constant [25 x i8] c"mb86a20s_tda18271_config\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 87, i32 32 }
@___asan_gen_.416 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 460, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 467, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 484, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 493, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 515, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 526, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 535, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 544, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 552, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 268, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 279, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 169, i32 17 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 173, i32 12 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 176, i32 12 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 179, i32 12 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 182, i32 12 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 185, i32 12 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 188, i32 12 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 191, i32 12 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 194, i32 12 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 198, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.519 = private constant [43 x i8] c"../drivers/media/usb/cx231xx/cx231xx-dvb.c\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 201, i32 3 }
@llvm.compiler.used = appending global [173 x ptr] [ptr @__UNIQUE_ID_adapter_nr395, ptr @__UNIQUE_ID_adapter_nrtype394, ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_debug393, ptr @__UNIQUE_ID_debugtype392, ptr @__UNIQUE_ID_description388, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__exitcall_cx231xx_dvb_unregister, ptr @__initcall__kmod_cx231xx_dvb__403_1174_cx231xx_dvb_register6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @cx231xx_dvb_unregister, ptr @dvb_init._entry, ptr @dvb_init._entry.13, ptr @dvb_init._entry.16, ptr @dvb_init._entry.22, ptr @dvb_init._entry.27, ptr @dvb_init._entry.30, ptr @dvb_init._entry.33, ptr @dvb_init._entry.35, ptr @dvb_init._entry.37, ptr @dvb_init._entry.41, ptr @dvb_init._entry.44, ptr @dvb_init._entry.46, ptr @dvb_init._entry.48, ptr @dvb_init._entry.50, ptr @dvb_init._entry.55, ptr @dvb_init._entry.58, ptr @dvb_init._entry.61, ptr @dvb_init._entry.64, ptr @dvb_init._entry.68, ptr @dvb_init._entry.73, ptr @dvb_init._entry.76, ptr @dvb_init._entry.79, ptr @dvb_init._entry.85, ptr @dvb_init._entry.88, ptr @dvb_init._entry.91, ptr @dvb_init._entry.94, ptr @dvb_init._entry_ptr, ptr @dvb_init._entry_ptr.15, ptr @dvb_init._entry_ptr.19, ptr @dvb_init._entry_ptr.24, ptr @dvb_init._entry_ptr.29, ptr @dvb_init._entry_ptr.32, ptr @dvb_init._entry_ptr.34, ptr @dvb_init._entry_ptr.36, ptr @dvb_init._entry_ptr.38, ptr @dvb_init._entry_ptr.43, ptr @dvb_init._entry_ptr.45, ptr @dvb_init._entry_ptr.47, ptr @dvb_init._entry_ptr.49, ptr @dvb_init._entry_ptr.52, ptr @dvb_init._entry_ptr.57, ptr @dvb_init._entry_ptr.60, ptr @dvb_init._entry_ptr.62, ptr @dvb_init._entry_ptr.65, ptr @dvb_init._entry_ptr.70, ptr @dvb_init._entry_ptr.75, ptr @dvb_init._entry_ptr.78, ptr @dvb_init._entry_ptr.80, ptr @dvb_init._entry_ptr.87, ptr @dvb_init._entry_ptr.90, ptr @dvb_init._entry_ptr.93, ptr @dvb_init._entry_ptr.96, ptr @register_dvb._entry, ptr @register_dvb._entry.104, ptr @register_dvb._entry.107, ptr @register_dvb._entry.110, ptr @register_dvb._entry.113, ptr @register_dvb._entry.116, ptr @register_dvb._entry.119, ptr @register_dvb._entry.122, ptr @register_dvb._entry_ptr, ptr @register_dvb._entry_ptr.106, ptr @register_dvb._entry_ptr.109, ptr @register_dvb._entry_ptr.112, ptr @register_dvb._entry_ptr.115, ptr @register_dvb._entry_ptr.118, ptr @register_dvb._entry_ptr.121, ptr @register_dvb._entry_ptr.124, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dvb_ops, ptr @adapter_nr, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dvico_s5h1432_config, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @cnxt_rde250_tunerconfig, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @xc5000_s5h1411_config, ptr @.str.28, ptr @.str.31, ptr @cnxt_rdu250_tunerconfig, ptr @.str.39, ptr @.str.40, ptr @cnxt_rde253s_tunerconfig, ptr @.str.42, ptr @tda18271_s5h1411_config, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @hcw_lgdt3305_config, ptr @.str.56, ptr @.str.59, ptr @hcw_tda18271_config, ptr @.str.63, ptr @.str.66, ptr @hauppauge_955q_lgdt3306a_config, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @pv_mb86a20s_config, ptr @.str.74, ptr @.str.77, ptr @pv_tda18271_config, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @astrometa_t2hybrid_r820t_config, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @cnxt_rde253s_tda18271_std_map, ptr @hauppauge_tda18271_std_map, ptr @mb86a20s_tda18271_config, ptr @register_dvb.__key, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_s5h1432_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnxt_rde250_tunerconfig to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnxt_rdu250_tunerconfig to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnxt_rde253s_tunerconfig to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_lgdt3305_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_955q_lgdt3306a_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv_mb86a20s_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @astrometa_t2hybrid_r820t_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnxt_rde253s_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_tda18271_config to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_set_analog_freq(ptr nocapture noundef readonly %dev, i32 noundef %freq) #0 align 64 {
entry:
  %params = alloca %struct.analog_parameters, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 70
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %set_analog_params = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32, i32 7
  %4 = ptrtoint ptr %set_analog_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_analog_params, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.then.if.end11_crit_edge, label %if.then6

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #7
  %6 = getelementptr inbounds i8, ptr %params, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %6, align 8
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %params, align 8
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %9 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %norm, align 8
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %11 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %std, align 8
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call = call i32 %5(ptr noundef %14, ptr noundef nonnull %params) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_reset_analog_tuner(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 70
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end63_crit_edge, label %land.lhs.true

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end63_crit_edge, label %if.then

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then:                                          ; preds = %land.lhs.true
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32, i32 2
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.then.if.end63_crit_edge, label %land.lhs.true6

if.then.if.end63_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true6:                                   ; preds = %if.then
  %xc_fw_load_done = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 23
  %6 = ptrtoint ptr %xc_fw_load_done to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %xc_fw_load_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %do.body, label %land.lhs.true6.if.end63_crit_edge

land.lhs.true6.if.end63_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.body:                                          ; preds = %land.lhs.true6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_reset_analog_tuner, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !273

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug400, ptr noundef %8, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %9 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init, align 4
  %11 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dvb, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call18 = tail call i32 %10(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  %15 = ptrtoint ptr %xc_fw_load_done to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load22 = load i8, ptr %xc_fw_load_done, align 4
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set = or i8 %bf.load22, -128
  %16 = ptrtoint ptr %xc_fw_load_done to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set, ptr %xc_fw_load_done, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_reset_analog_tuner, %if.then35)) #7
          to label %if.end63 [label %if.then35], !srcloc !273

if.then35:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %17 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev36, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug401, ptr noundef %18, ptr noundef nonnull @.str.4) #7
  br label %if.end63

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear42 = and i8 %bf.load22, 127
  %19 = ptrtoint ptr %xc_fw_load_done to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.clear42, ptr %xc_fw_load_done, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_reset_analog_tuner, %if.then56)) #7
          to label %if.end63 [label %if.then56], !srcloc !273

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev57, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug402, ptr noundef %21, ptr noundef nonnull @.str.5) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %if.else, %if.then35, %if.then20, %land.lhs.true6.if.end63_crit_edge, %if.then.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %entry.if.end63_crit_edge
  %status.1 = phi i32 [ 0, %land.lhs.true.if.end63_crit_edge ], [ 0, %entry.if.end63_crit_edge ], [ 0, %land.lhs.true6.if.end63_crit_edge ], [ 0, %if.then35 ], [ %call18, %if.then56 ], [ 0, %if.then.if.end63_crit_edge ], [ 0, %if.then20 ], [ %call18, %if.else ]
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx231xx_dvb_unregister() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx231xx_unregister_extension(ptr noundef nonnull @dvb_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_unregister_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_dvb_register() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx231xx_register_extension(ptr noundef nonnull @dvb_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_init(ptr noundef %dev) #0 align 64 {
entry:
  %adapter = alloca ptr, align 4
  %si2165_pdata = alloca %struct.si2165_platform_data, align 4
  %si2165_pdata425 = alloca %struct.si2165_platform_data, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  %si2157_config468 = alloca %struct.si2157_config, align 4
  %lgdt3306a_config = alloca %struct.lgdt3306a_config, align 4
  %si2157_config593 = alloca %struct.si2157_config, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %mn88473_config = alloca %struct.mn88473_config, align 4
  %si2157_config683 = alloca %struct.si2157_config, align 4
  %si2168_config684 = alloca %struct.si2168_config, align 4
  %adapter2 = alloca ptr, align 4
  %si2157_config737 = alloca %struct.si2157_config, align 4
  %lgdt3306a_config738 = alloca %struct.lgdt3306a_config, align 4
  %si2168_config739 = alloca %struct.si2168_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #7
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !274
  %has_dvb = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 21
  %1 = ptrtoint ptr %has_dvb to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %has_dvb, align 8
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup855_crit_edge, label %if.end

entry.cleanup855_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup855

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2200) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.7) #11
  br label %cleanup855

if.end3:                                          ; preds = %if.end
  %dvb4 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 70
  %6 = ptrtoint ptr %dvb4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %dvb4, align 4
  %cx231xx_set_analog_freq = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 67
  %7 = ptrtoint ptr %cx231xx_set_analog_freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cx231xx_set_analog_freq, ptr %cx231xx_set_analog_freq, align 8
  %cx231xx_reset_analog_tuner = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 68
  %8 = ptrtoint ptr %cx231xx_reset_analog_tuner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cx231xx_reset_analog_tuner, ptr %cx231xx_reset_analog_tuner, align 4
  %tuner_i2c_master = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 17
  %9 = ptrtoint ptr %tuner_i2c_master to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tuner_i2c_master, align 8
  %conv = zext i8 %10 to i32
  %call6 = tail call ptr @cx231xx_get_i2c_adap(ptr noundef %dev, i32 noundef %conv) #7
  %demod_i2c_master = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 18
  %11 = ptrtoint ptr %demod_i2c_master to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %demod_i2c_master, align 1
  %conv8 = zext i8 %12 to i32
  %call9 = tail call ptr @cx231xx_get_i2c_adap(ptr noundef %dev, i32 noundef %conv8) #7
  %lock = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call10 = tail call i32 @cx231xx_set_mode(ptr noundef %dev, i32 noundef 2) #7
  %call11 = tail call i32 @cx231xx_demod_reset(ptr noundef %dev) #7
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %model, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.end819 [
    i32 1, label %if.end3.sw.bb_crit_edge
    i32 6, label %if.end3.sw.bb_crit_edge1150
    i32 2, label %if.end3.sw.bb73_crit_edge
    i32 7, label %if.end3.sw.bb73_crit_edge1151
    i32 3, label %sw.bb146
    i32 4, label %if.end3.sw.bb221_crit_edge
    i32 18, label %if.end3.sw.bb221_crit_edge1152
    i32 8, label %do.end300
    i32 19, label %sw.bb375
    i32 20, label %sw.bb424
    i32 21, label %sw.bb467
    i32 10, label %if.end3.do.end517_crit_edge
    i32 12, label %if.end3.do.end517_crit_edge1153
    i32 23, label %sw.bb592
    i32 24, label %sw.bb635
    i32 26, label %sw.bb682
    i32 27, label %sw.bb736
  ]

if.end3.do.end517_crit_edge1153:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end517

if.end3.do.end517_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end517

if.end3.sw.bb221_crit_edge1152:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb221

if.end3.sw.bb221_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb221

if.end3.sw.bb73_crit_edge1151:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb73

if.end3.sw.bb73_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb73

if.end3.sw.bb_crit_edge1150:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.sw.bb_crit_edge1150
  %call12 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %cond.end, label %sw.bb.if.then17_crit_edge

sw.bb.if.then17_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

cond.end:                                         ; preds = %sw.bb
  %call14 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #7
  %call15 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #7
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end25, label %cond.end.if.then17_crit_edge

cond.end.if.then17_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %cond.end.if.then17_crit_edge, %sw.bb.if.then17_crit_edge
  %cond1086 = phi ptr [ %call15, %cond.end.if.then17_crit_edge ], [ %call12, %sw.bb.if.then17_crit_edge ]
  %call18 = tail call ptr %cond1086(ptr noundef nonnull @dvico_s5h1432_config, ptr noundef %call9) #7
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then21, label %if.then17.if.end27_crit_edge

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.11) #7
  br label %if.end27

do.end25:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.then21, %if.then17.if.end27_crit_edge
  %__r.0 = phi ptr [ null, %if.then21 ], [ %call18, %if.then17.if.end27_crit_edge ], [ null, %do.end25 ]
  %16 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dvb4, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %__r.0, ptr %17, align 8
  %19 = load ptr, ptr %dvb4, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %dev38 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev38, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17) #11
  br label %out_free

if.end39:                                         ; preds = %if.end27
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cx231xx_tuner_callback, ptr %callback, align 4
  %call44 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.20) #7
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %cond.end50, label %if.end39.if.then53_crit_edge

if.end39.if.then53_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

cond.end50:                                       ; preds = %if.end39
  %call48 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.21) #7
  %call49 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.20) #7
  %tobool52.not = icmp eq ptr %call49, null
  br i1 %tobool52.not, label %do.end65, label %cond.end50.if.then53_crit_edge

cond.end50.if.then53_crit_edge:                   ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

if.then53:                                        ; preds = %cond.end50.if.then53_crit_edge, %if.end39.if.then53_crit_edge
  %cond511089 = phi ptr [ %call49, %cond.end50.if.then53_crit_edge ], [ %call44, %if.end39.if.then53_crit_edge ]
  %27 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dvb4, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %call57 = tail call ptr %cond511089(ptr noundef %30, ptr noundef %call6, ptr noundef nonnull @cnxt_rde250_tunerconfig) #7
  %cmp58 = icmp eq ptr %call57, null
  br i1 %cmp58, label %if.then60, label %if.then53.sw.epilog_crit_edge

if.then53.sw.epilog_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then60:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.20) #7
  br label %out_free

do.end65:                                         ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %out_free

sw.bb73:                                          ; preds = %if.end3.sw.bb73_crit_edge, %if.end3.sw.bb73_crit_edge1151
  %call76 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #7
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %cond.end82, label %sw.bb73.if.then85_crit_edge

sw.bb73.if.then85_crit_edge:                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

cond.end82:                                       ; preds = %sw.bb73
  %call80 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.26) #7
  %call81 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #7
  %tobool84.not = icmp eq ptr %call81, null
  br i1 %tobool84.not, label %do.end94, label %cond.end82.if.then85_crit_edge

cond.end82.if.then85_crit_edge:                   ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

if.then85:                                        ; preds = %cond.end82.if.then85_crit_edge, %sw.bb73.if.then85_crit_edge
  %cond831094 = phi ptr [ %call81, %cond.end82.if.then85_crit_edge ], [ %call76, %sw.bb73.if.then85_crit_edge ]
  %call86 = tail call ptr %cond831094(ptr noundef nonnull @xc5000_s5h1411_config, ptr noundef %call9) #7
  %cmp87 = icmp eq ptr %call86, null
  br i1 %cmp87, label %if.then89, label %if.then85.if.end97_crit_edge

if.then85.if.end97_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then89:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.25) #7
  br label %if.end97

do.end94:                                         ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %if.end97

if.end97:                                         ; preds = %do.end94, %if.then89, %if.then85.if.end97_crit_edge
  %__r74.0 = phi ptr [ null, %if.then89 ], [ %call86, %if.then85.if.end97_crit_edge ], [ null, %do.end94 ]
  %31 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dvb4, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %__r74.0, ptr %32, align 8
  %34 = load ptr, ptr %dvb4, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %tobool105.not = icmp eq ptr %36, null
  br i1 %tobool105.not, label %do.end109, label %if.end111

do.end109:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %dev110 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %37 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev110, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.31) #11
  br label %out_free

if.end111:                                        ; preds = %if.end97
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %callback114 = getelementptr inbounds %struct.dvb_frontend, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %callback114 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cx231xx_tuner_callback, ptr %callback114, align 4
  %call117 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.20) #7
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %cond.end123, label %if.end111.if.then126_crit_edge

if.end111.if.then126_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then126

cond.end123:                                      ; preds = %if.end111
  %call121 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.21) #7
  %call122 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.20) #7
  %tobool125.not = icmp eq ptr %call122, null
  br i1 %tobool125.not, label %do.end138, label %cond.end123.if.then126_crit_edge

cond.end123.if.then126_crit_edge:                 ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then126

if.then126:                                       ; preds = %cond.end123.if.then126_crit_edge, %if.end111.if.then126_crit_edge
  %cond1241097 = phi ptr [ %call122, %cond.end123.if.then126_crit_edge ], [ %call117, %if.end111.if.then126_crit_edge ]
  %42 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dvb4, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %call130 = tail call ptr %cond1241097(ptr noundef %45, ptr noundef %call6, ptr noundef nonnull @cnxt_rdu250_tunerconfig) #7
  %cmp131 = icmp eq ptr %call130, null
  br i1 %cmp131, label %if.then133, label %if.then126.sw.epilog_crit_edge

if.then126.sw.epilog_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then133:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.20) #7
  br label %out_free

do.end138:                                        ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #9
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %out_free

sw.bb146:                                         ; preds = %if.end3
  %call149 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #7
  %tobool150.not = icmp eq ptr %call149, null
  br i1 %tobool150.not, label %cond.end155, label %sw.bb146.if.then158_crit_edge

sw.bb146.if.then158_crit_edge:                    ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then158

cond.end155:                                      ; preds = %sw.bb146
  %call153 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #7
  %call154 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #7
  %tobool157.not = icmp eq ptr %call154, null
  br i1 %tobool157.not, label %do.end167, label %cond.end155.if.then158_crit_edge

cond.end155.if.then158_crit_edge:                 ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then158

if.then158:                                       ; preds = %cond.end155.if.then158_crit_edge, %sw.bb146.if.then158_crit_edge
  %cond1561102 = phi ptr [ %call154, %cond.end155.if.then158_crit_edge ], [ %call149, %sw.bb146.if.then158_crit_edge ]
  %call159 = tail call ptr %cond1561102(ptr noundef nonnull @dvico_s5h1432_config, ptr noundef %call9) #7
  %cmp160 = icmp eq ptr %call159, null
  br i1 %cmp160, label %if.then162, label %if.then158.if.end170_crit_edge

if.then158.if.end170_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

if.then162:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.11) #7
  br label %if.end170

do.end167:                                        ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #9
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %if.end170

if.end170:                                        ; preds = %do.end167, %if.then162, %if.then158.if.end170_crit_edge
  %__r147.0 = phi ptr [ null, %if.then162 ], [ %call159, %if.then158.if.end170_crit_edge ], [ null, %do.end167 ]
  %46 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dvb4, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %__r147.0, ptr %47, align 8
  %49 = load ptr, ptr %dvb4, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %tobool178.not = icmp eq ptr %51, null
  br i1 %tobool178.not, label %do.end182, label %if.end184

do.end182:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  %dev183 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %52 = ptrtoint ptr %dev183 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev183, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.17) #11
  br label %out_free

if.end184:                                        ; preds = %if.end170
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  %callback187 = getelementptr inbounds %struct.dvb_frontend, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %callback187 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @cx231xx_tuner_callback, ptr %callback187, align 4
  %call190 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool191.not = icmp eq ptr %call190, null
  br i1 %tobool191.not, label %cond.end196, label %if.end184.if.then199_crit_edge

if.end184.if.then199_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then199

cond.end196:                                      ; preds = %if.end184
  %call194 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #7
  %call195 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool198.not = icmp eq ptr %call195, null
  br i1 %tobool198.not, label %do.end213, label %cond.end196.if.then199_crit_edge

cond.end196.if.then199_crit_edge:                 ; preds = %cond.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then199

if.then199:                                       ; preds = %cond.end196.if.then199_crit_edge, %if.end184.if.then199_crit_edge
  %cond1971105 = phi ptr [ %call195, %cond.end196.if.then199_crit_edge ], [ %call190, %if.end184.if.then199_crit_edge ]
  %57 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dvb4, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %tuner_addr = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %61 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tuner_addr, align 4
  %conv204 = trunc i32 %62 to i8
  %call205 = tail call ptr %cond1971105(ptr noundef %60, i8 noundef zeroext %conv204, ptr noundef %call6, ptr noundef nonnull @cnxt_rde253s_tunerconfig) #7
  %cmp206 = icmp eq ptr %call205, null
  br i1 %cmp206, label %if.then208, label %if.then199.sw.epilog_crit_edge

if.then199.sw.epilog_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then208:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.39) #7
  br label %out_free

do.end213:                                        ; preds = %cond.end196
  call void @__sanitizer_cov_trace_pc() #9
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %out_free

sw.bb221:                                         ; preds = %if.end3.sw.bb221_crit_edge, %if.end3.sw.bb221_crit_edge1152
  %call224 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #7
  %tobool225.not = icmp eq ptr %call224, null
  br i1 %tobool225.not, label %cond.end230, label %sw.bb221.if.then233_crit_edge

sw.bb221.if.then233_crit_edge:                    ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then233

cond.end230:                                      ; preds = %sw.bb221
  %call228 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.26) #7
  %call229 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #7
  %tobool232.not = icmp eq ptr %call229, null
  br i1 %tobool232.not, label %do.end242, label %cond.end230.if.then233_crit_edge

cond.end230.if.then233_crit_edge:                 ; preds = %cond.end230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then233

if.then233:                                       ; preds = %cond.end230.if.then233_crit_edge, %sw.bb221.if.then233_crit_edge
  %cond2311110 = phi ptr [ %call229, %cond.end230.if.then233_crit_edge ], [ %call224, %sw.bb221.if.then233_crit_edge ]
  %call234 = tail call ptr %cond2311110(ptr noundef nonnull @tda18271_s5h1411_config, ptr noundef %call9) #7
  %cmp235 = icmp eq ptr %call234, null
  br i1 %cmp235, label %if.then237, label %if.then233.if.end245_crit_edge

if.then233.if.end245_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end245

if.then237:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.25) #7
  br label %if.end245

do.end242:                                        ; preds = %cond.end230
  call void @__sanitizer_cov_trace_pc() #9
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %if.end245

if.end245:                                        ; preds = %do.end242, %if.then237, %if.then233.if.end245_crit_edge
  %__r222.0 = phi ptr [ null, %if.then237 ], [ %call234, %if.then233.if.end245_crit_edge ], [ null, %do.end242 ]
  %63 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dvb4, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %__r222.0, ptr %64, align 8
  %66 = load ptr, ptr %dvb4, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %tobool253.not = icmp eq ptr %68, null
  br i1 %tobool253.not, label %do.end257, label %if.end259

do.end257:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #9
  %dev258 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %69 = ptrtoint ptr %dev258 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev258, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.31) #11
  br label %out_free

if.end259:                                        ; preds = %if.end245
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call7.i.i, align 8
  %callback262 = getelementptr inbounds %struct.dvb_frontend, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %callback262 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @cx231xx_tuner_callback, ptr %callback262, align 4
  %call265 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool266.not = icmp eq ptr %call265, null
  br i1 %tobool266.not, label %cond.end271, label %if.end259.if.then274_crit_edge

if.end259.if.then274_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274

cond.end271:                                      ; preds = %if.end259
  %call269 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #7
  %call270 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool273.not = icmp eq ptr %call270, null
  br i1 %tobool273.not, label %do.end289, label %cond.end271.if.then274_crit_edge

cond.end271.if.then274_crit_edge:                 ; preds = %cond.end271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274

if.then274:                                       ; preds = %cond.end271.if.then274_crit_edge, %if.end259.if.then274_crit_edge
  %cond2721113 = phi ptr [ %call270, %cond.end271.if.then274_crit_edge ], [ %call265, %if.end259.if.then274_crit_edge ]
  %74 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dvb4, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %tuner_addr279 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %78 = ptrtoint ptr %tuner_addr279 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tuner_addr279, align 4
  %conv280 = trunc i32 %79 to i8
  %call281 = tail call ptr %cond2721113(ptr noundef %77, i8 noundef zeroext %conv280, ptr noundef %call6, ptr noundef nonnull @cnxt_rde253s_tunerconfig) #7
  %cmp282 = icmp eq ptr %call281, null
  br i1 %cmp282, label %if.then284, label %if.then274.sw.epilog_crit_edge

if.then274.sw.epilog_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then284:                                       ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.39) #7
  br label %out_free

do.end289:                                        ; preds = %cond.end271
  call void @__sanitizer_cov_trace_pc() #9
  %call291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %out_free

do.end300:                                        ; preds = %if.end3
  %dev301 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %80 = ptrtoint ptr %dev301 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev301, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %call6, i32 0, i32 11
  %82 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.8, i32 noundef %83) #11
  %call305 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #7
  %tobool306.not = icmp eq ptr %call305, null
  br i1 %tobool306.not, label %cond.end311, label %do.end300.if.then314_crit_edge

do.end300.if.then314_crit_edge:                   ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then314

cond.end311:                                      ; preds = %do.end300
  %call309 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #7
  %call310 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #7
  %tobool313.not = icmp eq ptr %call310, null
  br i1 %tobool313.not, label %do.end323, label %cond.end311.if.then314_crit_edge

cond.end311.if.then314_crit_edge:                 ; preds = %cond.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then314

if.then314:                                       ; preds = %cond.end311.if.then314_crit_edge, %do.end300.if.then314_crit_edge
  %cond3121118 = phi ptr [ %call310, %cond.end311.if.then314_crit_edge ], [ %call305, %do.end300.if.then314_crit_edge ]
  %call315 = tail call ptr %cond3121118(ptr noundef nonnull @hcw_lgdt3305_config, ptr noundef %call9) #7
  %cmp316 = icmp eq ptr %call315, null
  br i1 %cmp316, label %if.then318, label %if.then314.if.end326_crit_edge

if.then314.if.end326_crit_edge:                   ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end326

if.then318:                                       ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #7
  br label %if.end326

do.end323:                                        ; preds = %cond.end311
  call void @__sanitizer_cov_trace_pc() #9
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #11
  br label %if.end326

if.end326:                                        ; preds = %do.end323, %if.then318, %if.then314.if.end326_crit_edge
  %__r303.0 = phi ptr [ null, %if.then318 ], [ %call315, %if.then314.if.end326_crit_edge ], [ null, %do.end323 ]
  %84 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dvb4, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %__r303.0, ptr %85, align 8
  %87 = load ptr, ptr %dvb4, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %tobool334.not = icmp eq ptr %89, null
  br i1 %tobool334.not, label %do.end338, label %if.end340

do.end338:                                        ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %dev301 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev301, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.59) #11
  br label %out_free

if.end340:                                        ; preds = %if.end326
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i, align 8
  %callback343 = getelementptr inbounds %struct.dvb_frontend, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %callback343 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @cx231xx_tuner_callback, ptr %callback343, align 4
  %call346 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool347.not = icmp eq ptr %call346, null
  br i1 %tobool347.not, label %cond.end352, label %if.end340.if.then355_crit_edge

if.end340.if.then355_crit_edge:                   ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

cond.end352:                                      ; preds = %if.end340
  %call350 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #7
  %call351 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool354.not = icmp eq ptr %call351, null
  br i1 %tobool354.not, label %do.end370, label %cond.end352.if.then355_crit_edge

cond.end352.if.then355_crit_edge:                 ; preds = %cond.end352
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then355

if.then355:                                       ; preds = %cond.end352.if.then355_crit_edge, %if.end340.if.then355_crit_edge
  %cond3531121 = phi ptr [ %call351, %cond.end352.if.then355_crit_edge ], [ %call346, %if.end340.if.then355_crit_edge ]
  %95 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dvb4, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  %tuner_addr360 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %99 = ptrtoint ptr %tuner_addr360 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tuner_addr360, align 4
  %conv361 = trunc i32 %100 to i8
  %call362 = tail call ptr %cond3531121(ptr noundef %98, i8 noundef zeroext %conv361, ptr noundef %call6, ptr noundef nonnull @hcw_tda18271_config) #7
  %cmp363 = icmp eq ptr %call362, null
  br i1 %cmp363, label %if.then365, label %if.then355.sw.epilog_crit_edge

if.then355.sw.epilog_crit_edge:                   ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then365:                                       ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.39) #7
  br label %sw.epilog

do.end370:                                        ; preds = %cond.end352
  call void @__sanitizer_cov_trace_pc() #9
  %call372 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %sw.epilog

sw.bb375:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %si2165_pdata) #7
  %101 = getelementptr inbounds i8, ptr %si2165_pdata, i32 4
  %102 = call ptr @memset(ptr %101, i32 0, i32 12)
  %103 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dvb4, align 4
  %105 = ptrtoint ptr %si2165_pdata to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %si2165_pdata, align 4
  %chip_mode = getelementptr inbounds %struct.si2165_platform_data, ptr %si2165_pdata, i32 0, i32 1
  %106 = ptrtoint ptr %chip_mode to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 33, ptr %chip_mode, align 4
  %ref_freq_hz = getelementptr inbounds %struct.si2165_platform_data, ptr %si2165_pdata, i32 0, i32 2
  %107 = ptrtoint ptr %ref_freq_hz to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 16000000, ptr %ref_freq_hz, align 4
  %demod_addr = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 5
  %108 = ptrtoint ptr %demod_addr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %demod_addr, align 8
  %conv380 = trunc i32 %109 to i8
  %call381 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef %call9, i8 noundef zeroext %conv380, ptr noundef nonnull %si2165_pdata) #7
  %tobool382.not = icmp eq ptr %call381, null
  br i1 %tobool382.not, label %cleanup, label %if.end384

if.end384:                                        ; preds = %sw.bb375
  %i2c_client_demod = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %110 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call381, ptr %i2c_client_demod, align 8
  %111 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dvb4, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %114, i32 0, i32 1, i32 28
  %115 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %i2c_gate_ctrl, align 4
  %116 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call7.i.i, align 8
  %callback391 = getelementptr inbounds %struct.dvb_frontend, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %callback391 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @cx231xx_tuner_callback, ptr %callback391, align 4
  %call394 = call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool395.not = icmp eq ptr %call394, null
  br i1 %tobool395.not, label %cond.end400, label %if.end384.if.then403_crit_edge

if.end384.if.then403_crit_edge:                   ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then403

cond.end400:                                      ; preds = %if.end384
  %call398 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #7
  %call399 = call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool402.not = icmp eq ptr %call399, null
  br i1 %tobool402.not, label %do.end418, label %cond.end400.if.then403_crit_edge

cond.end400.if.then403_crit_edge:                 ; preds = %cond.end400
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then403

if.then403:                                       ; preds = %cond.end400.if.then403_crit_edge, %if.end384.if.then403_crit_edge
  %cond4011124 = phi ptr [ %call399, %cond.end400.if.then403_crit_edge ], [ %call394, %if.end384.if.then403_crit_edge ]
  %119 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dvb4, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %tuner_addr408 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %123 = ptrtoint ptr %tuner_addr408 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tuner_addr408, align 4
  %conv409 = trunc i32 %124 to i8
  %call410 = call ptr %cond4011124(ptr noundef %122, i8 noundef zeroext %conv409, ptr noundef %call6, ptr noundef nonnull @hcw_tda18271_config) #7
  %cmp411 = icmp eq ptr %call410, null
  br i1 %cmp411, label %if.then413, label %if.then403.cleanup.thread_crit_edge

if.then403.cleanup.thread_crit_edge:              ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then413:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.39) #7
  br label %cleanup.thread

do.end418:                                        ; preds = %cond.end400
  call void @__sanitizer_cov_trace_pc() #9
  %call420 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end418, %if.then413, %if.then403.cleanup.thread_crit_edge
  %125 = ptrtoint ptr %cx231xx_reset_analog_tuner to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %cx231xx_reset_analog_tuner, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %si2165_pdata) #7
  br label %sw.epilog

cleanup:                                          ; preds = %sw.bb375
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %si2165_pdata) #7
  br label %out_free

sw.bb424:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %si2165_pdata425) #7
  %126 = getelementptr inbounds i8, ptr %si2165_pdata425, i32 4
  %127 = call ptr @memset(ptr %126, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #7
  %128 = call ptr @memset(ptr %si2157_config, i32 0, i32 12)
  %129 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dvb4, align 4
  %131 = ptrtoint ptr %si2165_pdata425 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %si2165_pdata425, align 4
  %chip_mode430 = getelementptr inbounds %struct.si2165_platform_data, ptr %si2165_pdata425, i32 0, i32 1
  %132 = ptrtoint ptr %chip_mode430 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 32, ptr %chip_mode430, align 4
  %ref_freq_hz431 = getelementptr inbounds %struct.si2165_platform_data, ptr %si2165_pdata425, i32 0, i32 2
  %133 = ptrtoint ptr %ref_freq_hz431 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 24000000, ptr %ref_freq_hz431, align 4
  %demod_addr433 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 5
  %134 = ptrtoint ptr %demod_addr433 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %demod_addr433, align 8
  %conv434 = trunc i32 %135 to i8
  %call435 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef %call9, i8 noundef zeroext %conv434, ptr noundef nonnull %si2165_pdata425) #7
  %tobool436.not = icmp eq ptr %call435, null
  br i1 %tobool436.not, label %sw.bb424.cleanup464.thread_crit_edge, label %if.end438

sw.bb424.cleanup464.thread_crit_edge:             ; preds = %sw.bb424
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup464.thread

if.end438:                                        ; preds = %sw.bb424
  %i2c_client_demod439 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %136 = ptrtoint ptr %i2c_client_demod439 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call435, ptr %i2c_client_demod439, align 8
  %137 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dvb4, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 8
  %i2c_gate_ctrl445 = getelementptr inbounds %struct.dvb_frontend, ptr %140, i32 0, i32 1, i32 28
  %141 = ptrtoint ptr %i2c_gate_ctrl445 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %i2c_gate_ctrl445, align 4
  %142 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %call7.i.i, align 8
  %callback448 = getelementptr inbounds %struct.dvb_frontend, ptr %143, i32 0, i32 9
  %144 = ptrtoint ptr %callback448 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @cx231xx_tuner_callback, ptr %callback448, align 4
  %145 = load ptr, ptr %dvb4, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 8
  %148 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %si2157_config, align 4
  %media_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  %149 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %media_dev, align 8
  %mdev = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 1
  %151 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %mdev, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %152 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %if_port, align 1
  %inversion = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 2
  %153 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %153)
  %bf.load453 = load i8, ptr %inversion, align 4
  %bf.set = or i8 %bf.load453, -128
  store i8 %bf.set, ptr %inversion, align 4
  %tuner_addr456 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %154 = ptrtoint ptr %tuner_addr456 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tuner_addr456, align 4
  %conv457 = trunc i32 %155 to i8
  %call458 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef %call6, i8 noundef zeroext %conv457, ptr noundef nonnull %si2157_config) #7
  %tobool459.not = icmp eq ptr %call458, null
  br i1 %tobool459.not, label %if.end438.cleanup464.thread_crit_edge, label %cleanup464

if.end438.cleanup464.thread_crit_edge:            ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup464.thread

cleanup464.thread:                                ; preds = %if.end438.cleanup464.thread_crit_edge, %sw.bb424.cleanup464.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %si2165_pdata425) #7
  br label %out_free

cleanup464:                                       ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %cx231xx_reset_analog_tuner to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %cx231xx_reset_analog_tuner, align 4
  %157 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dvb4, align 4
  %i2c_client_tuner = getelementptr inbounds %struct.cx231xx_dvb, ptr %158, i32 0, i32 10
  %159 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call458, ptr %i2c_client_tuner, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %si2165_pdata425) #7
  br label %sw.epilog

sw.bb467:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config468) #7
  %160 = call ptr @memset(ptr %si2157_config468, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lgdt3306a_config) #7
  %161 = call ptr @memcpy(ptr %lgdt3306a_config, ptr @hauppauge_955q_lgdt3306a_config, i32 24)
  %162 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dvb4, align 4
  %fe472 = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 8
  %164 = ptrtoint ptr %fe472 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %fe472, align 4
  %i2c_adapter = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 9
  %165 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %demod_addr474 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 5
  %166 = ptrtoint ptr %demod_addr474 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %demod_addr474, align 8
  %conv475 = trunc i32 %167 to i8
  %call476 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef %call9, i8 noundef zeroext %conv475, ptr noundef nonnull %lgdt3306a_config) #7
  %tobool477.not = icmp eq ptr %call476, null
  br i1 %tobool477.not, label %sw.bb467.cleanup511.thread_crit_edge, label %if.end479

sw.bb467.cleanup511.thread_crit_edge:             ; preds = %sw.bb467
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup511.thread

if.end479:                                        ; preds = %sw.bb467
  %i2c_client_demod480 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %168 = ptrtoint ptr %i2c_client_demod480 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call476, ptr %i2c_client_demod480, align 8
  %169 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dvb4, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 8
  %i2c_gate_ctrl486 = getelementptr inbounds %struct.dvb_frontend, ptr %172, i32 0, i32 1, i32 28
  %173 = ptrtoint ptr %i2c_gate_ctrl486 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %i2c_gate_ctrl486, align 4
  %174 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %call7.i.i, align 8
  %callback489 = getelementptr inbounds %struct.dvb_frontend, ptr %175, i32 0, i32 9
  %176 = ptrtoint ptr %callback489 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @cx231xx_tuner_callback, ptr %callback489, align 4
  %177 = load ptr, ptr %dvb4, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 8
  %180 = ptrtoint ptr %si2157_config468 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %179, ptr %si2157_config468, align 4
  %media_dev494 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  %181 = ptrtoint ptr %media_dev494 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %media_dev494, align 8
  %mdev495 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config468, i32 0, i32 1
  %183 = ptrtoint ptr %mdev495 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %182, ptr %mdev495, align 4
  %if_port496 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config468, i32 0, i32 3
  %184 = ptrtoint ptr %if_port496 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %if_port496, align 1
  %inversion497 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config468, i32 0, i32 2
  %185 = ptrtoint ptr %inversion497 to i32
  call void @__asan_load1_noabort(i32 %185)
  %bf.load498 = load i8, ptr %inversion497, align 4
  %bf.set500 = or i8 %bf.load498, -128
  store i8 %bf.set500, ptr %inversion497, align 4
  %tuner_addr502 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %186 = ptrtoint ptr %tuner_addr502 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tuner_addr502, align 4
  %conv503 = trunc i32 %187 to i8
  %call504 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef %call6, i8 noundef zeroext %conv503, ptr noundef nonnull %si2157_config468) #7
  %tobool505.not = icmp eq ptr %call504, null
  br i1 %tobool505.not, label %if.end479.cleanup511.thread_crit_edge, label %cleanup511

if.end479.cleanup511.thread_crit_edge:            ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup511.thread

cleanup511.thread:                                ; preds = %if.end479.cleanup511.thread_crit_edge, %sw.bb467.cleanup511.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lgdt3306a_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config468) #7
  br label %out_free

cleanup511:                                       ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %cx231xx_reset_analog_tuner to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %cx231xx_reset_analog_tuner, align 4
  %189 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dvb4, align 4
  %i2c_client_tuner510 = getelementptr inbounds %struct.cx231xx_dvb, ptr %190, i32 0, i32 10
  %191 = ptrtoint ptr %i2c_client_tuner510 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call504, ptr %i2c_client_tuner510, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lgdt3306a_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config468) #7
  br label %sw.epilog

do.end517:                                        ; preds = %if.end3.do.end517_crit_edge, %if.end3.do.end517_crit_edge1153
  %dev518 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %192 = ptrtoint ptr %dev518 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev518, align 8
  %nr.i1083 = getelementptr inbounds %struct.i2c_adapter, ptr %call6, i32 0, i32 11
  %194 = ptrtoint ptr %nr.i1083 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %nr.i1083, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %193, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.8, i32 noundef %195) #11
  %call522 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.71) #7
  %tobool523.not = icmp eq ptr %call522, null
  br i1 %tobool523.not, label %cond.end528, label %do.end517.if.then531_crit_edge

do.end517.if.then531_crit_edge:                   ; preds = %do.end517
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then531

cond.end528:                                      ; preds = %do.end517
  %call526 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.72) #7
  %call527 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.71) #7
  %tobool530.not = icmp eq ptr %call527, null
  br i1 %tobool530.not, label %do.end540, label %cond.end528.if.then531_crit_edge

cond.end528.if.then531_crit_edge:                 ; preds = %cond.end528
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then531

if.then531:                                       ; preds = %cond.end528.if.then531_crit_edge, %do.end517.if.then531_crit_edge
  %cond5291133 = phi ptr [ %call527, %cond.end528.if.then531_crit_edge ], [ %call522, %do.end517.if.then531_crit_edge ]
  %call532 = tail call ptr %cond5291133(ptr noundef nonnull @pv_mb86a20s_config, ptr noundef %call9) #7
  %cmp533 = icmp eq ptr %call532, null
  br i1 %cmp533, label %if.then535, label %if.then531.if.end543_crit_edge

if.then531.if.end543_crit_edge:                   ; preds = %if.then531
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end543

if.then535:                                       ; preds = %if.then531
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.71) #7
  br label %if.end543

do.end540:                                        ; preds = %cond.end528
  call void @__sanitizer_cov_trace_pc() #9
  %call542 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #11
  br label %if.end543

if.end543:                                        ; preds = %do.end540, %if.then535, %if.then531.if.end543_crit_edge
  %__r520.0 = phi ptr [ null, %if.then535 ], [ %call532, %if.then531.if.end543_crit_edge ], [ null, %do.end540 ]
  %196 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dvb4, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %__r520.0, ptr %197, align 8
  %199 = load ptr, ptr %dvb4, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 8
  %tobool551.not = icmp eq ptr %201, null
  br i1 %tobool551.not, label %do.end555, label %if.end557

do.end555:                                        ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #9
  %202 = ptrtoint ptr %dev518 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev518, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %203, ptr noundef nonnull @.str.77) #11
  br label %out_free

if.end557:                                        ; preds = %if.end543
  %204 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %call7.i.i, align 8
  %callback560 = getelementptr inbounds %struct.dvb_frontend, ptr %205, i32 0, i32 9
  %206 = ptrtoint ptr %callback560 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @cx231xx_tuner_callback, ptr %callback560, align 4
  %call563 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool564.not = icmp eq ptr %call563, null
  br i1 %tobool564.not, label %cond.end569, label %if.end557.if.then572_crit_edge

if.end557.if.then572_crit_edge:                   ; preds = %if.end557
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then572

cond.end569:                                      ; preds = %if.end557
  %call567 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #7
  %call568 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #7
  %tobool571.not = icmp eq ptr %call568, null
  br i1 %tobool571.not, label %do.end587, label %cond.end569.if.then572_crit_edge

cond.end569.if.then572_crit_edge:                 ; preds = %cond.end569
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then572

if.then572:                                       ; preds = %cond.end569.if.then572_crit_edge, %if.end557.if.then572_crit_edge
  %cond5701136 = phi ptr [ %call568, %cond.end569.if.then572_crit_edge ], [ %call563, %if.end557.if.then572_crit_edge ]
  %207 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dvb4, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 8
  %tuner_addr577 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %211 = ptrtoint ptr %tuner_addr577 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %tuner_addr577, align 4
  %conv578 = trunc i32 %212 to i8
  %call579 = tail call ptr %cond5701136(ptr noundef %210, i8 noundef zeroext %conv578, ptr noundef %call6, ptr noundef nonnull @pv_tda18271_config) #7
  %cmp580 = icmp eq ptr %call579, null
  br i1 %cmp580, label %if.then582, label %if.then572.sw.epilog_crit_edge

if.then572.sw.epilog_crit_edge:                   ; preds = %if.then572
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then582:                                       ; preds = %if.then572
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.39) #7
  br label %sw.epilog

do.end587:                                        ; preds = %cond.end569
  call void @__sanitizer_cov_trace_pc() #9
  %call589 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %sw.epilog

sw.bb592:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config593) #7
  %213 = call ptr @memset(ptr %si2157_config593, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #7
  %214 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %214, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %216 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 3, ptr %ts_mode, align 4
  %217 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dvb4, align 4
  %219 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %218, ptr %si2168_config, align 4
  %i2c_adapter598 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %220 = ptrtoint ptr %i2c_adapter598 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %adapter, ptr %i2c_adapter598, align 4
  %ts_clock_inv = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 3
  %221 = ptrtoint ptr %ts_clock_inv to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 -128, ptr %ts_clock_inv, align 1
  %demod_addr603 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 5
  %222 = ptrtoint ptr %demod_addr603 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %demod_addr603, align 8
  %conv604 = trunc i32 %223 to i8
  %call605 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef %call9, i8 noundef zeroext %conv604, ptr noundef nonnull %si2168_config) #7
  %tobool606.not = icmp eq ptr %call605, null
  br i1 %tobool606.not, label %sw.bb592.cleanup632.thread_crit_edge, label %if.end608

sw.bb592.cleanup632.thread_crit_edge:             ; preds = %sw.bb592
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup632.thread

if.end608:                                        ; preds = %sw.bb592
  %i2c_client_demod609 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %224 = ptrtoint ptr %i2c_client_demod609 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call605, ptr %i2c_client_demod609, align 8
  %225 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dvb4, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 8
  %229 = ptrtoint ptr %si2157_config593 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %228, ptr %si2157_config593, align 4
  %media_dev615 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  %230 = ptrtoint ptr %media_dev615 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %media_dev615, align 8
  %mdev616 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config593, i32 0, i32 1
  %232 = ptrtoint ptr %mdev616 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %231, ptr %mdev616, align 4
  %if_port617 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config593, i32 0, i32 3
  %233 = ptrtoint ptr %if_port617 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 1, ptr %if_port617, align 1
  %inversion618 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config593, i32 0, i32 2
  %234 = ptrtoint ptr %inversion618 to i32
  call void @__asan_load1_noabort(i32 %234)
  %bf.load619 = load i8, ptr %inversion618, align 4
  %bf.clear620 = and i8 %bf.load619, 127
  store i8 %bf.clear620, ptr %inversion618, align 4
  %tuner_addr623 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %235 = ptrtoint ptr %tuner_addr623 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %tuner_addr623, align 4
  %conv624 = trunc i32 %236 to i8
  %call625 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef %call6, i8 noundef zeroext %conv624, ptr noundef nonnull %si2157_config593) #7
  %tobool626.not = icmp eq ptr %call625, null
  br i1 %tobool626.not, label %if.end608.cleanup632.thread_crit_edge, label %cleanup632

if.end608.cleanup632.thread_crit_edge:            ; preds = %if.end608
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup632.thread

cleanup632.thread:                                ; preds = %if.end608.cleanup632.thread_crit_edge, %sw.bb592.cleanup632.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config593) #7
  br label %out_free

cleanup632:                                       ; preds = %if.end608
  call void @__sanitizer_cov_trace_pc() #9
  %237 = ptrtoint ptr %cx231xx_reset_analog_tuner to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %cx231xx_reset_analog_tuner, align 4
  %238 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dvb4, align 4
  %i2c_client_tuner631 = getelementptr inbounds %struct.cx231xx_dvb, ptr %239, i32 0, i32 10
  %240 = ptrtoint ptr %i2c_client_tuner631 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call625, ptr %i2c_client_tuner631, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config593) #7
  br label %sw.epilog

sw.bb635:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mn88473_config) #7
  %241 = ptrtoint ptr %mn88473_config to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %mn88473_config, align 4
  store i16 16, ptr %mn88473_config, align 4
  %xtal = getelementptr inbounds %struct.mn88473_config, ptr %mn88473_config, i32 0, i32 1
  %242 = ptrtoint ptr %xtal to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 25000000, ptr %xtal, align 4
  %243 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dvb4, align 4
  %fe639 = getelementptr inbounds %struct.mn88473_config, ptr %mn88473_config, i32 0, i32 2
  %245 = ptrtoint ptr %fe639 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %244, ptr %fe639, align 4
  %demod_addr641 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 5
  %246 = ptrtoint ptr %demod_addr641 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %demod_addr641, align 8
  %conv642 = trunc i32 %247 to i8
  %call643 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef %call9, i8 noundef zeroext %conv642, ptr noundef nonnull %mn88473_config) #7
  %tobool644.not = icmp eq ptr %call643, null
  br i1 %tobool644.not, label %cleanup680, label %if.end646

if.end646:                                        ; preds = %sw.bb635
  %i2c_client_demod647 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %248 = ptrtoint ptr %i2c_client_demod647 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %call643, ptr %i2c_client_demod647, align 8
  %249 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %call7.i.i, align 8
  %callback651 = getelementptr inbounds %struct.dvb_frontend, ptr %250, i32 0, i32 9
  %251 = ptrtoint ptr %callback651 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr @cx231xx_tuner_callback, ptr %callback651, align 4
  %call654 = call ptr @__symbol_get(ptr noundef nonnull @.str.83) #7
  %tobool655.not = icmp eq ptr %call654, null
  br i1 %tobool655.not, label %cond.end660, label %if.end646.if.then663_crit_edge

if.end646.if.then663_crit_edge:                   ; preds = %if.end646
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then663

cond.end660:                                      ; preds = %if.end646
  %call658 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.84) #7
  %call659 = call ptr @__symbol_get(ptr noundef nonnull @.str.83) #7
  %tobool662.not = icmp eq ptr %call659, null
  br i1 %tobool662.not, label %do.end675, label %cond.end660.if.then663_crit_edge

cond.end660.if.then663_crit_edge:                 ; preds = %cond.end660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then663

if.then663:                                       ; preds = %cond.end660.if.then663_crit_edge, %if.end646.if.then663_crit_edge
  %cond6611141 = phi ptr [ %call659, %cond.end660.if.then663_crit_edge ], [ %call654, %if.end646.if.then663_crit_edge ]
  %252 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dvb4, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 8
  %call667 = call ptr %cond6611141(ptr noundef %255, ptr noundef %call6, ptr noundef nonnull @astrometa_t2hybrid_r820t_config) #7
  %cmp668 = icmp eq ptr %call667, null
  br i1 %cmp668, label %if.then670, label %if.then663.cleanup680.thread_crit_edge

if.then663.cleanup680.thread_crit_edge:           ; preds = %if.then663
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup680.thread

if.then670:                                       ; preds = %if.then663
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.83) #7
  br label %cleanup680.thread

do.end675:                                        ; preds = %cond.end660
  call void @__sanitizer_cov_trace_pc() #9
  %call677 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #11
  br label %cleanup680.thread

cleanup680.thread:                                ; preds = %do.end675, %if.then670, %if.then663.cleanup680.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mn88473_config) #7
  br label %sw.epilog

cleanup680:                                       ; preds = %sw.bb635
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mn88473_config) #7
  br label %out_free

sw.bb682:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config683) #7
  %256 = call ptr @memset(ptr %si2157_config683, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config684) #7
  %257 = getelementptr inbounds i8, ptr %si2168_config684, i32 8
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %257, align 4
  %ts_mode685 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config684, i32 0, i32 2
  %259 = ptrtoint ptr %ts_mode685 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 3, ptr %ts_mode685, align 4
  %260 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dvb4, align 4
  %262 = ptrtoint ptr %si2168_config684 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %261, ptr %si2168_config684, align 4
  %i2c_adapter690 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config684, i32 0, i32 1
  %263 = ptrtoint ptr %i2c_adapter690 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %adapter, ptr %i2c_adapter690, align 4
  %ts_clock_inv691 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config684, i32 0, i32 3
  %264 = ptrtoint ptr %ts_clock_inv691 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 -128, ptr %ts_clock_inv691, align 1
  %demod_addr696 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 5
  %265 = ptrtoint ptr %demod_addr696 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %demod_addr696, align 8
  %conv697 = trunc i32 %266 to i8
  %call698 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef %call9, i8 noundef zeroext %conv697, ptr noundef nonnull %si2168_config684) #7
  %tobool699.not = icmp eq ptr %call698, null
  br i1 %tobool699.not, label %sw.bb682.cleanup733.thread_crit_edge, label %if.end701

sw.bb682.cleanup733.thread_crit_edge:             ; preds = %sw.bb682
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup733.thread

if.end701:                                        ; preds = %sw.bb682
  %i2c_client_demod702 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %267 = ptrtoint ptr %i2c_client_demod702 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %call698, ptr %i2c_client_demod702, align 8
  %268 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dvb4, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 8
  %i2c_gate_ctrl708 = getelementptr inbounds %struct.dvb_frontend, ptr %271, i32 0, i32 1, i32 28
  %272 = ptrtoint ptr %i2c_gate_ctrl708 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr null, ptr %i2c_gate_ctrl708, align 4
  %273 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %call7.i.i, align 8
  %callback711 = getelementptr inbounds %struct.dvb_frontend, ptr %274, i32 0, i32 9
  %275 = ptrtoint ptr %callback711 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr @cx231xx_tuner_callback, ptr %callback711, align 4
  %276 = load ptr, ptr %dvb4, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 8
  %279 = ptrtoint ptr %si2157_config683 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %278, ptr %si2157_config683, align 4
  %media_dev716 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  %280 = ptrtoint ptr %media_dev716 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %media_dev716, align 8
  %mdev717 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config683, i32 0, i32 1
  %282 = ptrtoint ptr %mdev717 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %281, ptr %mdev717, align 4
  %if_port718 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config683, i32 0, i32 3
  %283 = ptrtoint ptr %if_port718 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 1, ptr %if_port718, align 1
  %inversion719 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config683, i32 0, i32 2
  %284 = ptrtoint ptr %inversion719 to i32
  call void @__asan_load1_noabort(i32 %284)
  %bf.load720 = load i8, ptr %inversion719, align 4
  %bf.set722 = or i8 %bf.load720, -128
  store i8 %bf.set722, ptr %inversion719, align 4
  %tuner_addr724 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %285 = ptrtoint ptr %tuner_addr724 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %tuner_addr724, align 4
  %conv725 = trunc i32 %286 to i8
  %call726 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef %call6, i8 noundef zeroext %conv725, ptr noundef nonnull %si2157_config683) #7
  %tobool727.not = icmp eq ptr %call726, null
  br i1 %tobool727.not, label %if.end701.cleanup733.thread_crit_edge, label %cleanup733

if.end701.cleanup733.thread_crit_edge:            ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup733.thread

cleanup733.thread:                                ; preds = %if.end701.cleanup733.thread_crit_edge, %sw.bb682.cleanup733.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config684) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config683) #7
  br label %out_free

cleanup733:                                       ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #9
  %287 = ptrtoint ptr %cx231xx_reset_analog_tuner to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr null, ptr %cx231xx_reset_analog_tuner, align 4
  %288 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dvb4, align 4
  %i2c_client_tuner732 = getelementptr inbounds %struct.cx231xx_dvb, ptr %289, i32 0, i32 10
  %290 = ptrtoint ptr %i2c_client_tuner732 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %call726, ptr %i2c_client_tuner732, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config684) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config683) #7
  br label %sw.epilog

sw.bb736:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter2) #7
  %291 = ptrtoint ptr %adapter2 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter2, align 4, !annotation !274
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config737) #7
  %292 = call ptr @memset(ptr %si2157_config737, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lgdt3306a_config738) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config739) #7
  %293 = call ptr @memset(ptr %si2168_config739, i32 0, i32 12)
  %294 = call ptr @memcpy(ptr %lgdt3306a_config738, ptr @hauppauge_955q_lgdt3306a_config, i32 24)
  %295 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dvb4, align 4
  %fe743 = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config738, i32 0, i32 8
  %297 = ptrtoint ptr %fe743 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %296, ptr %fe743, align 4
  %i2c_adapter744 = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config738, i32 0, i32 9
  %298 = ptrtoint ptr %i2c_adapter744 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %adapter, ptr %i2c_adapter744, align 4
  %demod_addr746 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 5
  %299 = ptrtoint ptr %demod_addr746 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %demod_addr746, align 8
  %conv747 = trunc i32 %300 to i8
  %call748 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef %call9, i8 noundef zeroext %conv747, ptr noundef nonnull %lgdt3306a_config738) #7
  %tobool749.not = icmp eq ptr %call748, null
  br i1 %tobool749.not, label %sw.bb736.cleanup812.thread_crit_edge, label %if.end751

sw.bb736.cleanup812.thread_crit_edge:             ; preds = %sw.bb736
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812.thread

if.end751:                                        ; preds = %sw.bb736
  %i2c_client_demod752 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %301 = ptrtoint ptr %i2c_client_demod752 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call748, ptr %i2c_client_demod752, align 8
  %ts_mode754 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config739, i32 0, i32 2
  %302 = ptrtoint ptr %ts_mode754 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 3, ptr %ts_mode754, align 4
  %303 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dvb4, align 4
  %arrayidx757 = getelementptr [2 x ptr], ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %si2168_config739 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %arrayidx757, ptr %si2168_config739, align 4
  %i2c_adapter759 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config739, i32 0, i32 1
  %306 = ptrtoint ptr %i2c_adapter759 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %adapter2, ptr %i2c_adapter759, align 4
  %ts_clock_inv760 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config739, i32 0, i32 3
  %307 = ptrtoint ptr %ts_clock_inv760 to i32
  call void @__asan_load1_noabort(i32 %307)
  %bf.load761 = load i8, ptr %ts_clock_inv760, align 1
  %bf.set763 = or i8 %bf.load761, -128
  store i8 %bf.set763, ptr %ts_clock_inv760, align 1
  %308 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %adapter, align 4
  %demod_addr2 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 6
  %310 = ptrtoint ptr %demod_addr2 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %demod_addr2, align 4
  %conv765 = trunc i32 %311 to i8
  %call766 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef %309, i8 noundef zeroext %conv765, ptr noundef nonnull %si2168_config739) #7
  %tobool767.not = icmp eq ptr %call766, null
  br i1 %tobool767.not, label %if.end751.cleanup812.thread_crit_edge, label %if.end769

if.end751.cleanup812.thread_crit_edge:            ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812.thread

if.end769:                                        ; preds = %if.end751
  %arrayidx771 = getelementptr %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9, i32 1
  %312 = ptrtoint ptr %arrayidx771 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %call766, ptr %arrayidx771, align 4
  %arrayidx773 = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 1
  %313 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %arrayidx773, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %314, i32 0, i32 10
  %315 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 1, ptr %id, align 4
  %316 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %call7.i.i, align 8
  %callback776 = getelementptr inbounds %struct.dvb_frontend, ptr %317, i32 0, i32 9
  %318 = ptrtoint ptr %callback776 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr @cx231xx_tuner_callback, ptr %callback776, align 4
  %319 = load ptr, ptr %arrayidx773, align 4
  %callback779 = getelementptr inbounds %struct.dvb_frontend, ptr %319, i32 0, i32 9
  %320 = ptrtoint ptr %callback779 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr @cx231xx_tuner_callback, ptr %callback779, align 4
  %321 = ptrtoint ptr %dvb4 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %dvb4, align 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %322, align 8
  %325 = ptrtoint ptr %si2157_config737 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %324, ptr %si2157_config737, align 4
  %media_dev784 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  %326 = ptrtoint ptr %media_dev784 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %media_dev784, align 8
  %mdev785 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config737, i32 0, i32 1
  %328 = ptrtoint ptr %mdev785 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %327, ptr %mdev785, align 4
  %if_port786 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config737, i32 0, i32 3
  %329 = ptrtoint ptr %if_port786 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 1, ptr %if_port786, align 1
  %inversion787 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config737, i32 0, i32 2
  %330 = ptrtoint ptr %inversion787 to i32
  call void @__asan_load1_noabort(i32 %330)
  %bf.load788 = load i8, ptr %inversion787, align 4
  %bf.set790 = or i8 %bf.load788, -128
  store i8 %bf.set790, ptr %inversion787, align 4
  %331 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %adapter, align 4
  %tuner_addr792 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 3
  %333 = ptrtoint ptr %tuner_addr792 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %tuner_addr792, align 4
  %conv793 = trunc i32 %334 to i8
  %call794 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef %332, i8 noundef zeroext %conv793, ptr noundef nonnull %si2157_config737) #7
  %tobool795.not = icmp eq ptr %call794, null
  br i1 %tobool795.not, label %if.end769.cleanup812.thread_crit_edge, label %cleanup812

if.end769.cleanup812.thread_crit_edge:            ; preds = %if.end769
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812.thread

cleanup812.thread:                                ; preds = %if.end769.cleanup812.thread_crit_edge, %if.end751.cleanup812.thread_crit_edge, %sw.bb736.cleanup812.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config739) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lgdt3306a_config738) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config737) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter2) #7
  br label %out_free

cleanup812:                                       ; preds = %if.end769
  call void @__sanitizer_cov_trace_pc() #9
  %335 = ptrtoint ptr %cx231xx_reset_analog_tuner to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr null, ptr %cx231xx_reset_analog_tuner, align 4
  %i2c_client_tuner799 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 10
  %336 = ptrtoint ptr %i2c_client_tuner799 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %call794, ptr %i2c_client_tuner799, align 8
  %337 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %call7.i.i, align 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %338, i32 0, i32 4
  %339 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %tuner_priv, align 4
  %341 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %arrayidx773, align 4
  %tuner_priv804 = getelementptr inbounds %struct.dvb_frontend, ptr %342, i32 0, i32 4
  %343 = ptrtoint ptr %tuner_priv804 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %340, ptr %tuner_priv804, align 4
  %344 = load ptr, ptr %arrayidx773, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %344, i32 0, i32 1, i32 32
  %345 = load ptr, ptr %call7.i.i, align 8
  %tuner_ops811 = getelementptr inbounds %struct.dvb_frontend, ptr %345, i32 0, i32 1, i32 32
  %346 = call ptr @memcpy(ptr %tuner_ops, ptr %tuner_ops811, i32 220)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config739) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lgdt3306a_config738) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config737) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter2) #7
  br label %sw.epilog

do.end819:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %dev820 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %347 = ptrtoint ptr %dev820 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dev820, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %348, ptr noundef nonnull @.str.89, ptr noundef %dev) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end819, %cleanup812, %cleanup733, %cleanup680.thread, %cleanup632, %do.end587, %if.then582, %if.then572.sw.epilog_crit_edge, %cleanup511, %cleanup464, %cleanup.thread, %do.end370, %if.then365, %if.then355.sw.epilog_crit_edge, %if.then274.sw.epilog_crit_edge, %if.then199.sw.epilog_crit_edge, %if.then126.sw.epilog_crit_edge, %if.then53.sw.epilog_crit_edge
  %349 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %call7.i.i, align 8
  %tobool823.not = icmp eq ptr %350, null
  %dev828 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %351 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %dev828, align 8
  br i1 %tobool823.not, label %do.end827, label %if.end831

do.end827:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull @.str.92, ptr noundef %dev) #11
  br label %out_free

if.end831:                                        ; preds = %sw.epilog
  %lock.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @register_dvb.__key) #7
  %adapter.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 3
  %call.i = call i32 @dvb_register_adapter(ptr noundef %adapter.i, ptr noundef %dev, ptr noundef null, ptr noundef %352, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end3.i, label %if.end.i

do.end3.i:                                        ; preds = %if.end831
  call void @__sanitizer_cov_trace_pc() #9
  %353 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %354, ptr noundef nonnull @.str.101, ptr noundef %dev, i32 noundef %call.i) #11
  br label %out_free

if.end.i:                                         ; preds = %if.end831
  %media_dev.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  %355 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %media_dev.i, align 8
  %mdev1.i.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 3, i32 12
  %357 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %356, ptr %mdev1.i.i, align 4
  %358 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %call7.i.i, align 8
  %ts_bus_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %359, i32 0, i32 1, i32 29
  %360 = ptrtoint ptr %ts_bus_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr @cx231xx_dvb_bus_ctrl, ptr %ts_bus_ctrl.i, align 4
  %arrayidx9.i = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 1
  %361 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %arrayidx9.i, align 4
  %tobool.not.i = icmp eq ptr %362, null
  br i1 %tobool.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then10.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ts_bus_ctrl14.i = getelementptr inbounds %struct.dvb_frontend, ptr %362, i32 0, i32 1, i32 29
  %363 = ptrtoint ptr %ts_bus_ctrl14.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr @cx231xx_dvb_bus_ctrl, ptr %ts_bus_ctrl14.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.end.i.if.end15.i_crit_edge
  %priv.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 3, i32 5
  %364 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %dev, ptr %priv.i, align 8
  %365 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %call7.i.i, align 8
  %call20.i = call i32 @dvb_register_frontend(ptr noundef %adapter.i, ptr noundef %366) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %do.end25.i, label %if.end29.i

do.end25.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %367 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %368, ptr noundef nonnull @.str.105, ptr noundef %dev, i32 noundef %call20.i) #11
  br label %fail_frontend0.i

if.end29.i:                                       ; preds = %if.end15.i
  %369 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %arrayidx9.i, align 4
  %tobool32.not.i = icmp eq ptr %370, null
  br i1 %tobool32.not.i, label %if.end29.i.if.end48.i_crit_edge, label %if.then33.i

if.end29.i.if.end48.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then33.i:                                      ; preds = %if.end29.i
  %call37.i = call i32 @dvb_register_frontend(ptr noundef %adapter.i, ptr noundef nonnull %370) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.end42.i, label %if.end46.i

do.end42.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  %371 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %372, ptr noundef nonnull @.str.108, ptr noundef %dev, i32 noundef %call37.i) #11
  br label %fail_frontend1.i

if.end46.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  %mfe_shared.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 3, i32 8
  %373 = ptrtoint ptr %mfe_shared.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 1, ptr %mfe_shared.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end46.i, %if.end29.i.if.end48.i_crit_edge
  %demux.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4
  %374 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 13, ptr %demux.i, align 8
  %priv50.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 1
  %375 = ptrtoint ptr %priv50.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %call7.i.i, ptr %priv50.i, align 4
  %filternum.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 2
  %376 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 256, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 3
  %377 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 256, ptr %feednum.i, align 4
  %start_feed.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 4
  %378 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr @start_feed, ptr %start_feed.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 5
  %379 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr @stop_feed, ptr %stop_feed.i, align 4
  %call56.i = call i32 @dvb_dmx_init(ptr noundef %demux.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %do.end61.i, label %if.end65.i

do.end61.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %380 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %381, ptr noundef nonnull @.str.111, ptr noundef %dev, i32 noundef %call56.i) #11
  br label %fail_dmx.i

if.end65.i:                                       ; preds = %if.end48.i
  %dmxdev.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 5
  %filternum66.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 5, i32 4
  %382 = ptrtoint ptr %filternum66.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 256, ptr %filternum66.i, align 8
  %demux70.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 5, i32 3
  %383 = ptrtoint ptr %demux70.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %demux.i, ptr %demux70.i, align 4
  %capabilities72.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 5, i32 5
  %384 = ptrtoint ptr %capabilities72.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 0, ptr %capabilities72.i, align 4
  %call75.i = call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef %adapter.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 0
  br i1 %cmp76.i, label %do.end80.i, label %if.end84.i

do.end80.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %385 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %386, ptr noundef nonnull @.str.114, ptr noundef %dev, i32 noundef %call75.i) #11
  br label %fail_dmxdev.i

if.end84.i:                                       ; preds = %if.end65.i
  %fe_hw.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 6
  %source.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 6, i32 1
  %387 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 1, ptr %source.i, align 8
  %add_frontend.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 10
  %388 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %add_frontend.i, align 8
  %call90.i = call i32 %389(ptr noundef %demux.i, ptr noundef %fe_hw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp slt i32 %call90.i, 0
  br i1 %cmp91.i, label %do.end95.i, label %if.end99.i

do.end95.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  %390 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %391, ptr noundef nonnull @.str.117, ptr noundef %dev, i32 noundef %call90.i) #11
  br label %fail_fe_hw.i

if.end99.i:                                       ; preds = %if.end84.i
  %fe_mem.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 7
  %source100.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 7, i32 1
  %392 = ptrtoint ptr %source100.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 0, ptr %source100.i, align 4
  %393 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %add_frontend.i, align 8
  %call107.i = call i32 %394(ptr noundef %demux.i, ptr noundef %fe_mem.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %cmp108.i = icmp slt i32 %call107.i, 0
  br i1 %cmp108.i, label %do.end112.i, label %if.end116.i

do.end112.i:                                      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  %395 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %396, ptr noundef nonnull @.str.120, ptr noundef %dev, i32 noundef %call107.i) #11
  br label %fail_fe_mem.i

if.end116.i:                                      ; preds = %if.end99.i
  %connect_frontend.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 13
  %397 = ptrtoint ptr %connect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %connect_frontend.i, align 4
  %call122.i = call i32 %398(ptr noundef %demux.i, ptr noundef %fe_hw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %cmp123.i = icmp slt i32 %call122.i, 0
  br i1 %cmp123.i, label %do.end127.i, label %if.end131.i

do.end127.i:                                      ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  %399 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %400, ptr noundef nonnull @.str.123, ptr noundef %dev, i32 noundef %call122.i) #11
  br label %fail_fe_conn.i

if.end131.i:                                      ; preds = %if.end116.i
  %net.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 8
  %call135.i = call i32 @dvb_net_init(ptr noundef %adapter.i, ptr noundef %net.i, ptr noundef %demux.i) #7
  %tuner_type.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %401 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %tuner_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %402)
  %cmp137.i = icmp eq i32 %402, 4
  %call138.i = call i32 @dvb_create_media_graph(ptr noundef %adapter.i, i1 noundef zeroext %cmp137.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %cmp139.i = icmp slt i32 %call138.i, 0
  br i1 %cmp139.i, label %fail_create_graph.i, label %do.end840

fail_create_graph.i:                              ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dvb_net_release(ptr noundef %net.i) #7
  br label %fail_fe_conn.i

fail_fe_conn.i:                                   ; preds = %fail_create_graph.i, %do.end127.i
  %result.0.i = phi i32 [ %call122.i, %do.end127.i ], [ %call138.i, %fail_create_graph.i ]
  %remove_frontend.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 11
  %403 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %remove_frontend.i, align 4
  %call148.i = call i32 %404(ptr noundef %demux.i, ptr noundef %fe_mem.i) #7
  br label %fail_fe_mem.i

fail_fe_mem.i:                                    ; preds = %fail_fe_conn.i, %do.end112.i
  %result.1.i = phi i32 [ %call107.i, %do.end112.i ], [ %result.0.i, %fail_fe_conn.i ]
  %remove_frontend151.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 11
  %405 = ptrtoint ptr %remove_frontend151.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %remove_frontend151.i, align 4
  %call155.i = call i32 %406(ptr noundef %demux.i, ptr noundef %fe_hw.i) #7
  br label %fail_fe_hw.i

fail_fe_hw.i:                                     ; preds = %fail_fe_mem.i, %do.end95.i
  %result.2.i = phi i32 [ %call90.i, %do.end95.i ], [ %result.1.i, %fail_fe_mem.i ]
  call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #7
  br label %fail_dmxdev.i

fail_dmxdev.i:                                    ; preds = %fail_fe_hw.i, %do.end80.i
  %result.3.i = phi i32 [ %call75.i, %do.end80.i ], [ %result.2.i, %fail_fe_hw.i ]
  call void @dvb_dmx_release(ptr noundef %demux.i) #7
  br label %fail_dmx.i

fail_dmx.i:                                       ; preds = %fail_dmxdev.i, %do.end61.i
  %result.4.i = phi i32 [ %call56.i, %do.end61.i ], [ %result.3.i, %fail_dmxdev.i ]
  %407 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %arrayidx9.i, align 4
  %tobool160.not.i = icmp eq ptr %408, null
  br i1 %tobool160.not.i, label %fail_dmx.i.if.end165.i_crit_edge, label %if.then161.i

fail_dmx.i.if.end165.i_crit_edge:                 ; preds = %fail_dmx.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.then161.i:                                     ; preds = %fail_dmx.i
  call void @__sanitizer_cov_trace_pc() #9
  %call164.i = call i32 @dvb_unregister_frontend(ptr noundef nonnull %408) #7
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then161.i, %fail_dmx.i.if.end165.i_crit_edge
  %409 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %call7.i.i, align 8
  %call168.i = call i32 @dvb_unregister_frontend(ptr noundef %410) #7
  br label %fail_frontend1.i

fail_frontend1.i:                                 ; preds = %if.end165.i, %do.end42.i
  %result.5.i = phi i32 [ %call37.i, %do.end42.i ], [ %result.4.i, %if.end165.i ]
  %411 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %arrayidx9.i, align 4
  %tobool171.not.i = icmp eq ptr %412, null
  br i1 %tobool171.not.i, label %fail_frontend1.i.fail_frontend0.i_crit_edge, label %if.then172.i

fail_frontend1.i.fail_frontend0.i_crit_edge:      ; preds = %fail_frontend1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_frontend0.i

if.then172.i:                                     ; preds = %fail_frontend1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dvb_frontend_detach(ptr noundef nonnull %412) #7
  br label %fail_frontend0.i

fail_frontend0.i:                                 ; preds = %if.then172.i, %fail_frontend1.i.fail_frontend0.i_crit_edge, %do.end25.i
  %result.6.i = phi i32 [ %call20.i, %do.end25.i ], [ %result.5.i, %if.then172.i ], [ %result.5.i, %fail_frontend1.i.fail_frontend0.i_crit_edge ]
  %413 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %call7.i.i, align 8
  call void @dvb_frontend_detach(ptr noundef %414) #7
  %call179.i = call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #7
  br label %out_free

do.end840:                                        ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #9
  %415 = ptrtoint ptr %dev828 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %dev828, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %416, ptr noundef nonnull @.str.95) #11
  br label %ret

ret:                                              ; preds = %out_free, %do.end840
  %result.7 = phi i32 [ %result.8, %out_free ], [ 0, %do.end840 ]
  %call842 = call i32 @cx231xx_set_mode(ptr noundef %dev, i32 noundef 0) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup855

out_free:                                         ; preds = %fail_frontend0.i, %do.end3.i, %do.end827, %cleanup812.thread, %cleanup733.thread, %cleanup680, %cleanup632.thread, %do.end555, %cleanup511.thread, %cleanup464.thread, %cleanup, %do.end338, %do.end289, %if.then284, %do.end257, %do.end213, %if.then208, %do.end182, %do.end138, %if.then133, %do.end109, %do.end65, %if.then60, %do.end37
  %result.8 = phi i32 [ -22, %do.end827 ], [ -19, %cleanup680 ], [ -22, %do.end555 ], [ -19, %cleanup ], [ -22, %do.end338 ], [ -22, %do.end257 ], [ -22, %do.end182 ], [ -22, %do.end109 ], [ -22, %do.end37 ], [ -19, %cleanup464.thread ], [ -19, %cleanup511.thread ], [ -19, %cleanup632.thread ], [ -19, %cleanup733.thread ], [ -19, %cleanup812.thread ], [ -22, %if.then60 ], [ -22, %do.end65 ], [ -22, %if.then133 ], [ -22, %do.end138 ], [ -22, %if.then208 ], [ -22, %do.end213 ], [ -22, %if.then284 ], [ -22, %do.end289 ], [ %result.6.i, %fail_frontend0.i ], [ %call.i, %do.end3.i ]
  %i2c_client_tuner844 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 10
  %417 = ptrtoint ptr %i2c_client_tuner844 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %i2c_client_tuner844, align 8
  call void @dvb_module_release(ptr noundef %418) #7
  %419 = ptrtoint ptr %i2c_client_tuner844 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr null, ptr %i2c_client_tuner844, align 8
  %i2c_client_demod846 = getelementptr inbounds %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9
  %arrayidx847 = getelementptr %struct.cx231xx_dvb, ptr %call7.i.i, i32 0, i32 9, i32 1
  %420 = ptrtoint ptr %arrayidx847 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx847, align 4
  call void @dvb_module_release(ptr noundef %421) #7
  %422 = ptrtoint ptr %arrayidx847 to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr null, ptr %arrayidx847, align 4
  %423 = ptrtoint ptr %i2c_client_demod846 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %i2c_client_demod846, align 8
  call void @dvb_module_release(ptr noundef %424) #7
  %425 = ptrtoint ptr %i2c_client_demod846 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr null, ptr %i2c_client_demod846, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %426 = ptrtoint ptr %dvb4 to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr null, ptr %dvb4, align 4
  br label %ret

cleanup855:                                       ; preds = %ret, %do.end, %entry.cleanup855_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %result.7, %ret ], [ 0, %entry.cleanup855_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_fini(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_dvb = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 21
  %0 = ptrtoint ptr %has_dvb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %has_dvb, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %dvb = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 70
  %2 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.then2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then2:                                         ; preds = %if.end
  %net.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 8
  tail call void @dvb_net_release(ptr noundef %net.i) #7
  %demux.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 4
  %remove_frontend.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 4, i32 0, i32 11
  %4 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove_frontend.i, align 4
  %fe_mem.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 7
  %call.i = tail call i32 %5(ptr noundef %demux.i, ptr noundef %fe_mem.i) #7
  %6 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remove_frontend.i, align 4
  %fe_hw.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 6
  %call8.i = tail call i32 %7(ptr noundef %demux.i, ptr noundef %fe_hw.i) #7
  %dmxdev.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 5
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #7
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #7
  %arrayidx.i = getelementptr [2 x ptr], ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then2.if.end.i_crit_edge, label %if.then.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %9) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then2.if.end.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call15.i = tail call i32 @dvb_unregister_frontend(ptr noundef %11) #7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool18.not.i = icmp eq ptr %13, null
  br i1 %tobool18.not.i, label %if.end.i.unregister_dvb.exit_crit_edge, label %if.then19.i

if.end.i.unregister_dvb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_dvb.exit

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dvb_frontend_detach(ptr noundef nonnull %13) #7
  br label %unregister_dvb.exit

unregister_dvb.exit:                              ; preds = %if.then19.i, %if.end.i.unregister_dvb.exit_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  tail call void @dvb_frontend_detach(ptr noundef %15) #7
  %adapter.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 3
  %call25.i = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #7
  %i2c_client_tuner.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %i2c_client_tuner.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client_tuner.i, align 8
  tail call void @dvb_module_release(ptr noundef %17) #7
  %18 = ptrtoint ptr %i2c_client_tuner.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %i2c_client_tuner.i, align 8
  %i2c_client_demod.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 9
  %arrayidx27.i = getelementptr %struct.cx231xx_dvb, ptr %3, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx27.i, align 4
  tail call void @dvb_module_release(ptr noundef %20) #7
  %21 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx27.i, align 4
  %22 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client_demod.i, align 8
  tail call void @dvb_module_release(ptr noundef %23) #7
  %24 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %i2c_client_demod.i, align 8
  %25 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dvb, align 4
  tail call void @kfree(ptr noundef %26) #7
  %27 = ptrtoint ptr %dvb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %dvb, align 4
  br label %return

return:                                           ; preds = %unregister_dvb.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx231xx_get_i2c_adap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_demod_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_dvb_bus_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %acquire) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool.not = icmp eq i32 %acquire, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  %call1 = tail call i32 @cx231xx_set_mode(ptr noundef %3, i32 noundef %.) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %nfeeds = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfeeds, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %nfeeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @start_streaming(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp5, i32 %call, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %rc.0 = phi i32 [ %inc, %if.end.if.end8_crit_edge ], [ %spec.select, %if.then4 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stop_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %nfeeds = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfeeds, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %nfeeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.cx231xx_dvb, ptr %3, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %USE_ISO.i = getelementptr inbounds %struct.cx231xx, ptr %7, i32 0, i32 85
  %8 = ptrtoint ptr %USE_ISO.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %USE_ISO.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx231xx_uninit_isoc(ptr noundef %7) #7
  br label %stop_streaming.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx231xx_uninit_bulk(ptr noundef %7) #7
  br label %stop_streaming.exit

stop_streaming.exit:                              ; preds = %if.else.i, %if.then.i
  %call.i = tail call i32 @cx231xx_set_mode(ptr noundef %7, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %stop_streaming.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_streaming(ptr nocapture noundef readonly %dvb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cx231xx_dvb, ptr %dvb, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 85
  %2 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body11, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_streaming.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_streaming, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !273

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_streaming.__UNIQUE_ID_ddebug398, ptr noundef %5, ptr noundef nonnull @.str.126) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %call6 = tail call i32 @cx231xx_set_alt_setting(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 5) #7
  %call7 = tail call i32 @cx231xx_set_mode(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %mode_tv = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 84
  %6 = ptrtoint ptr %mode_tv to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mode_tv, align 4
  %max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 58, i32 5
  %7 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_pkt_size, align 4
  %call10 = tail call i32 @cx231xx_init_isoc(ptr noundef %1, i32 noundef 64, i32 noundef 5, i32 noundef %8, ptr noundef nonnull @dvb_isoc_copy) #7
  br label %cleanup

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_streaming.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_streaming, %if.then23)) #7
          to label %do.end27 [label %if.then23], !srcloc !273

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev24, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_streaming.__UNIQUE_ID_ddebug399, ptr noundef %10, ptr noundef nonnull @.str.127) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body11
  %call28 = tail call i32 @cx231xx_set_alt_setting(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %call29 = tail call i32 @cx231xx_set_mode(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end27.cleanup_crit_edge, label %if.end32

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  %mode_tv33 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 84
  %11 = ptrtoint ptr %mode_tv33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %mode_tv33, align 4
  %max_pkt_size35 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 58, i32 5
  %12 = ptrtoint ptr %max_pkt_size35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_pkt_size35, align 4
  %call36 = tail call i32 @cx231xx_init_bulk(ptr noundef %1, i32 noundef 64, i32 noundef 5, i32 noundef %13, ptr noundef nonnull @dvb_bulk_copy) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end27.cleanup_crit_edge, %if.end9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call36, %if.end32 ], [ %call7, %do.end.cleanup_crit_edge ], [ %call29, %do.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_alt_setting(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_init_isoc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_isoc_copy(ptr noundef readonly %dev, ptr nocapture noundef readonly %urb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup27_crit_edge

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then4, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %if.end3
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %3, label %if.then4.sw.epilog.i_crit_edge [
    i32 -2, label %sw.bb.i
    i32 -104, label %sw.bb1.i
    i32 -63, label %sw.bb2.i
    i32 -32, label %sw.bb3.i
    i32 -75, label %sw.bb4.i
    i32 -71, label %sw.bb5.i
    i32 -84, label %sw.bb6.i
    i32 -62, label %sw.bb7.i
  ]

if.then4.sw.epilog.i_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then4.sw.epilog.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.128, %if.then4.sw.epilog.i_crit_edge ], [ @.str.136, %sw.bb7.i ], [ @.str.135, %sw.bb6.i ], [ @.str.134, %sw.bb5.i ], [ @.str.133, %sw.bb4.i ], [ @.str.132, %sw.bb3.i ], [ @.str.131, %sw.bb2.i ], [ @.str.130, %sw.bb1.i ], [ @.str.129, %sw.bb.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_err_status.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_isoc_copy, %if.then10.i)) #7
          to label %print_err_status.exit [label %if.then10.i], !srcloc !273

if.then10.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev11.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev11.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_err_status.__UNIQUE_ID_ddebug396, ptr noundef %6, ptr noundef nonnull @.str.138, i32 noundef %3, ptr noundef nonnull %errmsg.0.i) #7
  br label %print_err_status.exit

print_err_status.exit:                            ; preds = %if.then10.i, %sw.epilog.i
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %8)
  %cmp7 = icmp eq i32 %8, -2
  br i1 %cmp7, label %print_err_status.exit.cleanup27_crit_edge, label %print_err_status.exit.if.end10_crit_edge

print_err_status.exit.if.end10_crit_edge:         ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

print_err_status.exit.cleanup27_crit_edge:        ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

if.end10:                                         ; preds = %print_err_status.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %9 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1161 = icmp sgt i32 %10, 0
  br i1 %cmp1161, label %for.body.lr.ph, label %if.end10.cleanup27_crit_edge

if.end10.cleanup27_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

for.body.lr.ph:                                   ; preds = %if.end10
  %dev25.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %dvb = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 70
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.062
  %status13 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.062, i32 3
  %11 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14 = icmp slt i32 %12, 0
  br i1 %cmp14, label %if.then15, label %for.body.if.end22_crit_edge

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then15:                                        ; preds = %for.body
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %12, label %if.then15.do.body12.i_crit_edge [
    i32 -2, label %sw.bb.i48
    i32 -104, label %sw.bb1.i49
    i32 -63, label %sw.bb2.i50
    i32 -32, label %sw.bb3.i51
    i32 -75, label %sw.bb4.i52
    i32 -71, label %sw.bb5.i53
    i32 -84, label %sw.bb6.i54
    i32 -62, label %sw.bb7.i55
  ]

if.then15.do.body12.i_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

sw.bb.i48:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

sw.bb1.i49:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

sw.bb2.i50:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

sw.bb3.i51:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

sw.bb4.i52:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

sw.bb5.i53:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

sw.bb6.i54:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

sw.bb7.i55:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

do.body12.i:                                      ; preds = %sw.bb7.i55, %sw.bb6.i54, %sw.bb5.i53, %sw.bb4.i52, %sw.bb3.i51, %sw.bb2.i50, %sw.bb1.i49, %sw.bb.i48, %if.then15.do.body12.i_crit_edge
  %errmsg.0.i56 = phi ptr [ @.str.128, %if.then15.do.body12.i_crit_edge ], [ @.str.136, %sw.bb7.i55 ], [ @.str.135, %sw.bb6.i54 ], [ @.str.134, %sw.bb5.i53 ], [ @.str.133, %sw.bb4.i52 ], [ @.str.132, %sw.bb3.i51 ], [ @.str.131, %sw.bb2.i50 ], [ @.str.130, %sw.bb1.i49 ], [ @.str.129, %sw.bb.i48 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_err_status.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_isoc_copy, %if.then24.i)) #7
          to label %print_err_status.exit60 [label %if.then24.i], !srcloc !273

if.then24.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_err_status.__UNIQUE_ID_ddebug397, ptr noundef %15, ptr noundef nonnull @.str.139, i32 noundef %i.062, i32 noundef %12, ptr noundef nonnull %errmsg.0.i56) #7
  br label %print_err_status.exit60

print_err_status.exit60:                          ; preds = %if.then24.i, %do.body12.i
  %16 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %17)
  %cmp19.not = icmp eq i32 %17, -71
  br i1 %cmp19.not, label %print_err_status.exit60.if.end22_crit_edge, label %print_err_status.exit60.cleanup_crit_edge

print_err_status.exit60.cleanup_crit_edge:        ; preds = %print_err_status.exit60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

print_err_status.exit60.if.end22_crit_edge:       ; preds = %print_err_status.exit60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %print_err_status.exit60.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %18 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dvb, align 4
  %demux = getelementptr inbounds %struct.cx231xx_dvb, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %23
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.062, i32 2
  %24 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_length, align 4
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %add.ptr, i32 noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %print_err_status.exit60.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %26 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number_of_packets, align 4
  %cmp11 = icmp slt i32 %inc, %27
  br i1 %cmp11, label %cleanup.for.body_crit_edge, label %cleanup.cleanup27_crit_edge

cleanup.cleanup27_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup27:                                        ; preds = %cleanup.cleanup27_crit_edge, %if.end10.cleanup27_crit_edge, %print_err_status.exit.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_init_bulk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_bulk_copy(ptr noundef readonly %dev, ptr nocapture noundef readonly %urb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then4, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %if.end3
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %3, label %if.then4.sw.epilog.i_crit_edge [
    i32 -2, label %sw.bb.i
    i32 -104, label %sw.bb1.i
    i32 -63, label %sw.bb2.i
    i32 -32, label %sw.bb3.i
    i32 -75, label %sw.bb4.i
    i32 -71, label %sw.bb5.i
    i32 -84, label %sw.bb6.i
    i32 -62, label %sw.bb7.i
  ]

if.then4.sw.epilog.i_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then4.sw.epilog.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.128, %if.then4.sw.epilog.i_crit_edge ], [ @.str.136, %sw.bb7.i ], [ @.str.135, %sw.bb6.i ], [ @.str.134, %sw.bb5.i ], [ @.str.133, %sw.bb4.i ], [ @.str.132, %sw.bb3.i ], [ @.str.131, %sw.bb2.i ], [ @.str.130, %sw.bb1.i ], [ @.str.129, %sw.bb.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_err_status.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_bulk_copy, %if.then10.i)) #7
          to label %print_err_status.exit [label %if.then10.i], !srcloc !273

if.then10.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev11.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev11.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_err_status.__UNIQUE_ID_ddebug396, ptr noundef %6, ptr noundef nonnull @.str.138, i32 noundef %3, ptr noundef nonnull %errmsg.0.i) #7
  br label %print_err_status.exit

print_err_status.exit:                            ; preds = %if.then10.i, %sw.epilog.i
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %8)
  %cmp7 = icmp eq i32 %8, -2
  br i1 %cmp7, label %print_err_status.exit.return_crit_edge, label %print_err_status.exit.if.end10_crit_edge

print_err_status.exit.if.end10_crit_edge:         ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

print_err_status.exit.return_crit_edge:           ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end10:                                         ; preds = %print_err_status.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %dvb = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 70
  %9 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvb, align 4
  %demux = getelementptr inbounds %struct.cx231xx_dvb, ptr %10, i32 0, i32 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %12, i32 noundef %14) #7
  br label %return

return:                                           ; preds = %if.end10, %print_err_status.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_isoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_bulk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_register_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !114, !116, !117, !119, !121, !122, !124, !126, !128, !129, !130, !132, !133, !134, !135, !136, !138, !139, !140, !142, !143, !145, !147, !149, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !200, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !260, !261, !263}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @__UNIQUE_ID_description388, !1, !"__UNIQUE_ID_description388", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_author389, !3, !"__UNIQUE_ID_author389", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_file390, !5, !"__UNIQUE_ID_file390", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 37, i32 1}
!6 = !{ptr @__UNIQUE_ID_license391, !5, !"__UNIQUE_ID_license391", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 40, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype392, !8, !"__UNIQUE_ID_debugtype392", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug393, !11, !"__UNIQUE_ID_debug393", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 41, i32 1}
!12 = !{ptr @__param_adapter_nr, !13, !"__param_adapter_nr", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 43, i32 1}
!14 = !{ptr @__UNIQUE_ID_adapter_nrtype394, !13, !"__UNIQUE_ID_adapter_nrtype394", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_adapter_nr395, !13, !"__UNIQUE_ID_adapter_nr395", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 433, i32 4}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug400, !17, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 438, i32 5}
!24 = !{ptr @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug401, !23, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 442, i32 5}
!27 = !{ptr @cx231xx_reset_analog_tuner.__UNIQUE_ID_ddebug402, !26, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_cx231xx_dvb__403_1174_cx231xx_dvb_register6, !29, !"__initcall__kmod_cx231xx_dvb__403_1174_cx231xx_dvb_register6", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 1174, i32 1}
!30 = !{ptr @__exitcall_cx231xx_dvb_unregister, !31, !"__exitcall_cx231xx_dvb_unregister", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 1175, i32 1}
!32 = !{ptr @debug, !33, !"debug", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 39, i32 21}
!34 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!35 = !{ptr @__param_str_adapter_nr, !13, !"__param_str_adapter_nr", i1 false, i1 false}
!36 = !{ptr @__param_arr_adapter_nr, !13, !"__param_arr_adapter_nr", i1 false, i1 false}
!37 = !{ptr @adapter_nr, !13, !"adapter_nr", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 1159, i32 10}
!40 = !{ptr @dvb_ops, !41, !"dvb_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 1157, i32 27}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 633, i32 3}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dvb_init._entry, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @dvb_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 651, i32 27}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dvb_init._entry.13, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @dvb_init._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 656, i32 4}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dvb_init._entry.16, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @dvb_init._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 665, i32 8}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dvb_init._entry.22, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @dvb_init._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 676, i32 27}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dvb_init._entry.27, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @dvb_init._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 681, i32 4}
!74 = !{ptr @dvb_init._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dvb_init._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @dvb_init._entry.33, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 690, i32 8}
!78 = !{ptr @dvb_init._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @dvb_init._entry.35, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 699, i32 27}
!81 = !{ptr @dvb_init._entry_ptr.36, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @dvb_init._entry.37, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 704, i32 4}
!84 = !{ptr @dvb_init._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 713, i32 8}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @dvb_init._entry.41, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @dvb_init._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @dvb_init._entry.44, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 723, i32 27}
!93 = !{ptr @dvb_init._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @dvb_init._entry.46, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 728, i32 4}
!96 = !{ptr @dvb_init._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @dvb_init._entry.48, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 737, i32 8}
!99 = !{ptr @dvb_init._entry_ptr.49, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 746, i32 3}
!102 = !{ptr @dvb_init._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @dvb_init._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 750, i32 27}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @dvb_init._entry.55, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @dvb_init._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 755, i32 4}
!112 = !{ptr @dvb_init._entry.58, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @dvb_init._entry_ptr.60, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @dvb_init._entry.61, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 764, i32 3}
!116 = !{ptr @dvb_init._entry_ptr.62, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 779, i32 29}
!119 = !{ptr @dvb_init._entry.64, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 793, i32 3}
!121 = !{ptr @dvb_init._entry_ptr.65, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 834, i32 29}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 856, i32 29}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 894, i32 3}
!128 = !{ptr @dvb_init._entry.68, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @dvb_init._entry_ptr.70, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 898, i32 27}
!132 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.74, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dvb_init._entry.73, !131, !"_entry", i1 false, i1 false}
!135 = !{ptr @dvb_init._entry_ptr.75, !131, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 903, i32 4}
!138 = !{ptr @dvb_init._entry.76, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @dvb_init._entry_ptr.78, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @dvb_init._entry.79, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 912, i32 3}
!142 = !{ptr @dvb_init._entry_ptr.80, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.81, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 929, i32 29}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 968, i32 29}
!147 = !{ptr @.str.83, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 981, i32 3}
!149 = !{ptr @.str.84, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.86, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @dvb_init._entry.85, !148, !"_entry", i1 false, i1 false}
!152 = !{ptr @dvb_init._entry_ptr.87, !148, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.89, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 1101, i32 3}
!155 = !{ptr @dvb_init._entry.88, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @dvb_init._entry_ptr.90, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.92, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 1107, i32 3}
!159 = !{ptr @dvb_init._entry.91, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @dvb_init._entry_ptr.93, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.95, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 1120, i32 2}
!163 = !{ptr @dvb_init._entry.94, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @dvb_init._entry_ptr.96, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @dvico_s5h1432_config, !166, !"dvico_s5h1432_config", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 68, i32 30}
!167 = !{ptr @cnxt_rde250_tunerconfig, !168, !"cnxt_rde250_tunerconfig", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 359, i32 29}
!169 = !{ptr @xc5000_s5h1411_config, !170, !"xc5000_s5h1411_config", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 106, i32 30}
!171 = !{ptr @cnxt_rdu250_tunerconfig, !172, !"cnxt_rdu250_tunerconfig", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 363, i32 29}
!173 = !{ptr @cnxt_rde253s_tunerconfig, !174, !"cnxt_rde253s_tunerconfig", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 92, i32 31}
!175 = !{ptr @cnxt_rde253s_tda18271_std_map, !176, !"cnxt_rde253s_tda18271_std_map", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 78, i32 32}
!177 = !{ptr @tda18271_s5h1411_config, !178, !"tda18271_s5h1411_config", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 97, i32 30}
!179 = !{ptr @hcw_lgdt3305_config, !180, !"hcw_lgdt3305_config", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 116, i32 31}
!181 = !{ptr @hcw_tda18271_config, !182, !"hcw_tda18271_config", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 134, i32 31}
!183 = !{ptr @hauppauge_tda18271_std_map, !184, !"hauppauge_tda18271_std_map", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 127, i32 32}
!185 = !{ptr @hauppauge_955q_lgdt3306a_config, !186, !"hauppauge_955q_lgdt3306a_config", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 150, i32 38}
!187 = !{ptr @pv_mb86a20s_config, !188, !"pv_mb86a20s_config", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 139, i32 37}
!189 = !{ptr @pv_tda18271_config, !190, !"pv_tda18271_config", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 144, i32 31}
!191 = !{ptr @mb86a20s_tda18271_config, !192, !"mb86a20s_tda18271_config", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 87, i32 32}
!193 = !{ptr @astrometa_t2hybrid_r820t_config, !194, !"astrometa_t2hybrid_r820t_config", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 160, i32 28}
!195 = !{ptr @register_dvb.__key, !196, !"__key", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 460, i32 2}
!197 = !{ptr @.str.100, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 467, i32 3}
!200 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @register_dvb._entry, !199, !"_entry", i1 false, i1 false}
!203 = !{ptr @register_dvb._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 484, i32 3}
!206 = !{ptr @register_dvb._entry.104, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @register_dvb._entry_ptr.106, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 493, i32 4}
!210 = !{ptr @register_dvb._entry.107, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @register_dvb._entry_ptr.109, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.111, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 515, i32 3}
!214 = !{ptr @register_dvb._entry.110, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @register_dvb._entry_ptr.112, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.114, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 526, i32 3}
!218 = !{ptr @register_dvb._entry.113, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @register_dvb._entry_ptr.115, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.117, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 535, i32 3}
!222 = !{ptr @register_dvb._entry.116, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @register_dvb._entry_ptr.118, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 544, i32 3}
!226 = !{ptr @register_dvb._entry.119, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @register_dvb._entry_ptr.121, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.123, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 552, i32 3}
!230 = !{ptr @register_dvb._entry.122, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @register_dvb._entry_ptr.124, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.125, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 268, i32 3}
!234 = !{ptr @.str.126, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @start_streaming.__UNIQUE_ID_ddebug398, !233, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!236 = !{ptr @.str.127, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 279, i32 3}
!238 = !{ptr @start_streaming.__UNIQUE_ID_ddebug399, !237, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!239 = !{ptr @.str.128, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 169, i32 17}
!241 = !{ptr @.str.129, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 173, i32 12}
!243 = !{ptr @.str.130, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 176, i32 12}
!245 = !{ptr @.str.131, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 179, i32 12}
!247 = !{ptr @.str.132, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 182, i32 12}
!249 = !{ptr @.str.133, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 185, i32 12}
!251 = !{ptr @.str.134, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 188, i32 12}
!253 = !{ptr @.str.135, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 191, i32 12}
!255 = !{ptr @.str.136, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 194, i32 12}
!257 = !{ptr @.str.137, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 198, i32 3}
!259 = !{ptr @.str.138, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @print_err_status.__UNIQUE_ID_ddebug396, !258, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!261 = !{ptr @.str.139, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/cx231xx/cx231xx-dvb.c", i32 201, i32 3}
!263 = !{ptr @print_err_status.__UNIQUE_ID_ddebug397, !262, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{i64 2148814352, i64 2148814357, i64 2148814370, i64 2148814414, i64 2148814448, i64 2148814469}
!274 = !{!"auto-init"}
