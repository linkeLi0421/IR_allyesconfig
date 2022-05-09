; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/av7110.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/av7110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7146_extension = type { [32 x i8], i32, ptr, %struct.pci_driver, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_pci_extension_data = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ves1820_config = type { i8, i32, i8 }
%struct.ves1x93_config = type { i8, i32, i8 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.tda8083_config = type { i8 }
%struct.sp8870_config = type { i8, ptr }
%struct.l64781_config = type { i8 }
%struct.stv0297_config = type { i8, ptr, i8 }
%struct.av7110 = type { %struct.dvb_device, %struct.dvb_net, %struct.video_device, %struct.video_device, ptr, %struct.i2c_adapter, ptr, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, i32, ptr, %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, ptr, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, [8 x i16], %struct.mutex, [2 x %struct.ca_slot_info], i32, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.spinlock, i32, i32, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, i8, i32, %struct.mutex, i32, %struct.video_status, i16, i32, i32, %struct.audio_status, [32 x ptr], [32 x %struct.av7110_p2t], [2 x %struct.dvb_filter_pes2ts], [2 x %struct.ipack], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, i16, ptr, i32, [20 x i16], %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, %struct.audio_mixer, %struct.dvb_adapter, ptr, ptr, ptr, ptr, %struct.dvb_video_events, %struct.video_size_t, i16, i16, %struct.infrared, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %struct.dvb_diseqc_master_cmd, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ca_slot_info = type { i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.161, i32 }
%union.anon.161 = type { ptr }
%struct.video_status = type { i32, i32, i32, i32, i32 }
%struct.audio_status = type { i32, i32, i32, i32, i32, i32, %struct.audio_mixer }
%struct.av7110_p2t = type { [188 x i8], i8, i32, i32, ptr }
%struct.dvb_filter_pes2ts = type { [188 x i8], i8, ptr, ptr }
%struct.ipack = type { i32, i32, ptr, i8, i32, [2 x i8], i8, i8, i8, [5 x i8], ptr, i32, i8, i32, i32, ptr, ptr, i32, i32 }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.audio_mixer = type { i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_video_events = type { [8 x %struct.video_event], i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.video_event = type { i32, i32, %union.anon.167 }
%union.anon.167 = type { %struct.video_size_t }
%struct.video_size_t = type { i32, i32, i32 }
%struct.infrared = type { ptr, [32 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.saa7146_dma = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_demux_filter = type { %struct.dmx_section_filter, [18 x i8], [18 x i8], i8, ptr, ptr, i32, i32, i32, i16 }
%struct.dmx_section_filter = type { [18 x i8], [18 x i8], [18 x i8], ptr, ptr }
%struct.dvb_demux_feed = type { %union.anon.165, %union.anon.166, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.165 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.166 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.168], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.168 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.169 }>
%union.anon.169 = type { i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_debug = internal constant [16 x i8] c"dvb_ttpci.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@av7110_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @av7110_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype385 = internal constant [29 x i8] c"dvb_ttpci.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug386 = internal constant [54 x i8] c"dvb_ttpci.parm=debug:debug level (bitmask, default 0)\00", section ".modinfo", align 1
@__param_str_vidmode = internal constant [18 x i8] c"dvb_ttpci.vidmode\00", align 1
@vidmode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_vidmode = internal constant %struct.kernel_param { ptr @__param_str_vidmode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @vidmode } }, section "__param", align 4
@__UNIQUE_ID_vidmodetype387 = internal constant [31 x i8] c"dvb_ttpci.parmtype=vidmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vidmode388 = internal constant [86 x i8] c"dvb_ttpci.parm=vidmode:analog video out: 0 off, 1 CVBS+RGB (default), 2 CVBS+YC, 3 YC\00", section ".modinfo", align 1
@__param_str_pids_off = internal constant [19 x i8] c"dvb_ttpci.pids_off\00", align 1
@pids_off = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pids_off = internal constant %struct.kernel_param { ptr @__param_str_pids_off, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @pids_off } }, section "__param", align 4
@__UNIQUE_ID_pids_offtype389 = internal constant [32 x i8] c"dvb_ttpci.parmtype=pids_off:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pids_off390 = internal constant [79 x i8] c"dvb_ttpci.parm=pids_off:clear video/audio/PCR PID filters when demux is closed\00", section ".modinfo", align 1
@__param_str_adac = internal constant [15 x i8] c"dvb_ttpci.adac\00", align 1
@adac = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_adac = internal constant %struct.kernel_param { ptr @__param_str_adac, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @adac } }, section "__param", align 4
@__UNIQUE_ID_adactype391 = internal constant [28 x i8] c"dvb_ttpci.parmtype=adac:int\00", section ".modinfo", align 1
@__UNIQUE_ID_adac392 = internal constant [88 x i8] c"dvb_ttpci.parm=adac:audio DAC type: 0 TI, 1 CRYSTAL, 2 MSP (use if autodetection fails)\00", section ".modinfo", align 1
@__param_str_hw_sections = internal constant [22 x i8] c"dvb_ttpci.hw_sections\00", align 1
@hw_sections = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_hw_sections = internal constant %struct.kernel_param { ptr @__param_str_hw_sections, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @hw_sections } }, section "__param", align 4
@__UNIQUE_ID_hw_sectionstype393 = internal constant [35 x i8] c"dvb_ttpci.parmtype=hw_sections:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hw_sections394 = internal constant [73 x i8] c"dvb_ttpci.parm=hw_sections:0 use software section filter, 1 use hardware\00", section ".modinfo", align 1
@__param_str_rgb_on = internal constant [17 x i8] c"dvb_ttpci.rgb_on\00", align 1
@rgb_on = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rgb_on = internal constant %struct.kernel_param { ptr @__param_str_rgb_on, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @rgb_on } }, section "__param", align 4
@__UNIQUE_ID_rgb_ontype395 = internal constant [30 x i8] c"dvb_ttpci.parmtype=rgb_on:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rgb_on396 = internal constant [138 x i8] c"dvb_ttpci.parm=rgb_on:For Siemens DVB-C cards only: Enable RGB control signal on SCART pin 16 to switch SCART video mode from CVBS to RGB\00", section ".modinfo", align 1
@__param_str_volume = internal constant [17 x i8] c"dvb_ttpci.volume\00", align 1
@volume = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@__param_volume = internal constant %struct.kernel_param { ptr @__param_str_volume, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @volume } }, section "__param", align 4
@__UNIQUE_ID_volumetype397 = internal constant [30 x i8] c"dvb_ttpci.parmtype=volume:int\00", section ".modinfo", align 1
@__UNIQUE_ID_volume398 = internal constant [64 x i8] c"dvb_ttpci.parm=volume:initial volume: default 255 (range 0-255)\00", section ".modinfo", align 1
@__param_str_budgetpatch = internal constant [22 x i8] c"dvb_ttpci.budgetpatch\00", align 1
@budgetpatch = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_budgetpatch = internal constant %struct.kernel_param { ptr @__param_str_budgetpatch, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @budgetpatch } }, section "__param", align 4
@__UNIQUE_ID_budgetpatchtype399 = internal constant [35 x i8] c"dvb_ttpci.parmtype=budgetpatch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_budgetpatch400 = internal constant [108 x i8] c"dvb_ttpci.parm=budgetpatch:use budget-patch hardware modification: default 0 (0 no, 1 autodetect, 2 always)\00", section ".modinfo", align 1
@__param_str_full_ts = internal constant [18 x i8] c"dvb_ttpci.full_ts\00", align 1
@full_ts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_full_ts = internal constant %struct.kernel_param { ptr @__param_str_full_ts, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @full_ts } }, section "__param", align 4
@__UNIQUE_ID_full_tstype401 = internal constant [31 x i8] c"dvb_ttpci.parmtype=full_ts:int\00", section ".modinfo", align 1
@__UNIQUE_ID_full_ts402 = internal constant [100 x i8] c"dvb_ttpci.parm=full_ts:enable code for full-ts hardware modification: 0 disable (default), 1 enable\00", section ".modinfo", align 1
@__param_str_wss_cfg_4_3 = internal constant [22 x i8] c"dvb_ttpci.wss_cfg_4_3\00", align 1
@wss_cfg_4_3 = internal global { i32, [28 x i8] } { i32 16392, [28 x i8] zeroinitializer }, align 32
@__param_wss_cfg_4_3 = internal constant %struct.kernel_param { ptr @__param_str_wss_cfg_4_3, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @wss_cfg_4_3 } }, section "__param", align 4
@__UNIQUE_ID_wss_cfg_4_3type403 = internal constant [35 x i8] c"dvb_ttpci.parmtype=wss_cfg_4_3:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wss_cfg_4_3404 = internal constant [103 x i8] c"dvb_ttpci.parm=wss_cfg_4_3:WSS 4:3 - default 0x4008 - bit 15: disable, 14: burst mode, 13..0: wss data\00", section ".modinfo", align 1
@__param_str_wss_cfg_16_9 = internal constant [23 x i8] c"dvb_ttpci.wss_cfg_16_9\00", align 1
@wss_cfg_16_9 = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@__param_wss_cfg_16_9 = internal constant %struct.kernel_param { ptr @__param_str_wss_cfg_16_9, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @wss_cfg_16_9 } }, section "__param", align 4
@__UNIQUE_ID_wss_cfg_16_9type405 = internal constant [36 x i8] c"dvb_ttpci.parmtype=wss_cfg_16_9:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wss_cfg_16_9406 = internal constant [105 x i8] c"dvb_ttpci.parm=wss_cfg_16_9:WSS 16:9 - default 0x0007 - bit 15: disable, 14: burst mode, 13..0: wss data\00", section ".modinfo", align 1
@__param_str_tv_standard = internal constant [22 x i8] c"dvb_ttpci.tv_standard\00", align 1
@tv_standard = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tv_standard = internal constant %struct.kernel_param { ptr @__param_str_tv_standard, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @tv_standard } }, section "__param", align 4
@__UNIQUE_ID_tv_standardtype407 = internal constant [35 x i8] c"dvb_ttpci.parmtype=tv_standard:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tv_standard408 = internal constant [64 x i8] c"dvb_ttpci.parm=tv_standard:TV standard: 0 PAL (default), 1 NTSC\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [21 x i8] c"dvb_ttpci.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype409 = internal constant [45 x i8] c"dvb_ttpci.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr410 = internal constant [46 x i8] c"dvb_ttpci.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@ChangePIDs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017dvb_ttpci: %s(): %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ChangePIDs\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/av7110/av7110.c\00", [58 x i8] zeroinitializer }, align 32
@ChangePIDs._entry_ptr = internal global ptr @ChangePIDs._entry, section ".printk_index", align 4
@av7110_extension_driver = internal global { %struct.saa7146_extension, [36 x i8] } { %struct.saa7146_extension { [32 x i8] c"av7110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr null, %struct.pci_driver zeroinitializer, ptr @pci_tbl, ptr null, ptr @av7110_attach, ptr @av7110_detach, i32 525320, ptr @av7110_irq }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_dvb_ttpci__411_2914_av7110_init6 = internal global ptr @av7110_init, section ".initcall6.init", align 4
@__exitcall_av7110_exit = internal global ptr @av7110_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description412 = internal constant [106 x i8] c"dvb_ttpci.description=driver for the SAA7146 based AV110 PCI DVB cards by Siemens, Technotrend, Hauppauge\00", section ".modinfo", align 1
@__UNIQUE_ID_author413 = internal constant [55 x i8] c"dvb_ttpci.author=Ralph Metzler, Marcus Metzler, others\00", section ".modinfo", align 1
@__UNIQUE_ID_file414 = internal constant [54 x i8] c"dvb_ttpci.file=drivers/staging/media/av7110/dvb-ttpci\00", section ".modinfo", align 1
@__UNIQUE_ID_license415 = internal constant [22 x i8] c"dvb_ttpci.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@SetPIDs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SetPIDs\00", [24 x i8] zeroinitializer }, align 32
@SetPIDs._entry_ptr = internal global ptr @SetPIDs._entry, section ".printk_index", align 4
@pci_tbl = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 4362, i32 0, i32 0, i32 0, i32 ptrtoint (ptr @fsc to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 0, i32 0, i32 0, i32 ptrtoint (ptr @tts_1_X_fsc to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 1, i32 0, i32 0, i32 ptrtoint (ptr @ttt_1_X to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 2, i32 0, i32 0, i32 ptrtoint (ptr @ttc_2_X to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 3, i32 0, i32 0, i32 ptrtoint (ptr @tts_2_X to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4, i32 0, i32 0, i32 ptrtoint (ptr @gxs_1_3 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 6, i32 0, i32 0, i32 ptrtoint (ptr @fss to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 8, i32 0, i32 0, i32 ptrtoint (ptr @ttt to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 10, i32 0, i32 0, i32 ptrtoint (ptr @ttc_1_X to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 14, i32 0, i32 0, i32 ptrtoint (ptr @tts_2_3 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4098, i32 0, i32 0, i32 ptrtoint (ptr @tts_1_3se to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@fsc = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.4 }, [24 x i8] zeroinitializer }, align 32
@tts_1_X_fsc = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.5 }, [24 x i8] zeroinitializer }, align 32
@ttt_1_X = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.6 }, [24 x i8] zeroinitializer }, align 32
@ttc_2_X = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.7 }, [24 x i8] zeroinitializer }, align 32
@tts_2_X = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.8 }, [24 x i8] zeroinitializer }, align 32
@gxs_1_3 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.9 }, [24 x i8] zeroinitializer }, align 32
@fss = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.10 }, [24 x i8] zeroinitializer }, align 32
@ttt = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.11 }, [24 x i8] zeroinitializer }, align 32
@ttc_1_X = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.12 }, [24 x i8] zeroinitializer }, align 32
@tts_2_3 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.13 }, [24 x i8] zeroinitializer }, align 32
@tts_1_3se = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @av7110_extension_driver, ptr @.str.14 }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fujitsu Siemens DVB-C\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Technotrend/Hauppauge WinTV DVB-S rev1.X or Fujitsu Siemens DVB-C\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Technotrend/Hauppauge WinTV DVB-T rev1.X\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Technotrend/Hauppauge WinTV DVB-C rev2.X\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Technotrend/Hauppauge WinTV Nexus-S rev2.X\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Galaxis DVB-S rev1.3\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fujitsu Siemens DVB-S rev1.6\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Technotrend/Hauppauge DVB-T\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Technotrend/Hauppauge WinTV Nexus-CA rev1.X\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Technotrend/Hauppauge WinTV Nexus-S rev2.3\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Technotrend/Hauppauge WinTV DVB-S rev1.3 SE\00", [52 x i8] zeroinitializer }, align 32
@av7110_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 2356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017dvb_ttpci: %s(): dev: %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"av7110_attach\00", [18 x i8] zeroinitializer }, align 32
@av7110_attach._entry_ptr = internal global ptr @av7110_attach._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@av7110_attach._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 2438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dvb-ttpci: BUDGET-PATCH DETECTED.\0A\00", [61 x i8] zeroinitializer }, align 32
@av7110_attach._entry_ptr.19 = internal global ptr @av7110_attach._entry.17, section ".printk_index", align 4
@av7110_attach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 2450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017dvb_ttpci: %s(): out of memory\0A\00", [62 x i8] zeroinitializer }, align 32
@av7110_attach._entry_ptr.22 = internal global ptr @av7110_attach._entry.20, section ".printk_index", align 4
@av7110_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 2496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016dvb-ttpci: full-ts mode enabled for saa7146 port B\0A\00", [42 x i8] zeroinitializer }, align 32
@av7110_attach._entry_ptr.25 = internal global ptr @av7110_attach._entry.23, section ".printk_index", align 4
@av7110_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&av7110->feedlock1\00", [45 x i8] zeroinitializer }, align 32
@av7110_attach.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@av7110_attach.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&av7110->pid_mutex\00", [45 x i8] zeroinitializer }, align 32
@av7110_attach.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&av7110->debilock\00", [46 x i8] zeroinitializer }, align 32
@av7110_attach.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&av7110->dcomlock\00", [46 x i8] zeroinitializer }, align 32
@av7110_attach.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&av7110->osd_mutex\00", [45 x i8] zeroinitializer }, align 32
@av7110_attach.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&av7110->arm_wait\00", [46 x i8] zeroinitializer }, align 32
@av7110_attach.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&av7110->bmpq\00", [18 x i8] zeroinitializer }, align 32
@av7110_attach._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.16, ptr @.str.2, i32 2675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014dvb-ttpci: Warning, firmware version 0x%04x is too old. System might be unstable!\0A\00", [43 x i8] zeroinitializer }, align 32
@av7110_attach._entry_ptr.42 = internal global ptr @av7110_attach._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_mon\00", [24 x i8] zeroinitializer }, align 32
@av7110_attach.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&av7110->ioctl_mutex\00", [43 x i8] zeroinitializer }, align 32
@av7110_attach._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.16, ptr @.str.2, i32 2711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016dvb-ttpci: found av7110-%d.\0A\00", [33 x i8] zeroinitializer }, align 32
@av7110_attach._entry_ptr.48 = internal global ptr @av7110_attach._entry.46, section ".printk_index", align 4
@av7110_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb-ttpci-01.fw\00", [16 x i8] zeroinitializer }, align 32
@get_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013dvb-ttpci: could not load firmware, file not found: dvb-ttpci-01.fw\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_firmware\00", [19 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr = internal global ptr @get_firmware._entry, section ".printk_index", align 4
@get_firmware._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013dvb-ttpci: usually this should be in /usr/lib/hotplug/firmware or /lib/firmware\0A\00", [45 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr.54 = internal global ptr @get_firmware._entry.52, section ".printk_index", align 4
@get_firmware._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 1508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013dvb-ttpci: and can be downloaded from https://linuxtv.org/download/dvb/firmware/\0A\00", [44 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr.57 = internal global ptr @get_firmware._entry.55, section ".printk_index", align 4
@get_firmware._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dvb-ttpci: cannot request firmware (error %i)\0A\00", [47 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr.60 = internal global ptr @get_firmware._entry.58, section ".printk_index", align 4
@get_firmware._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 1516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"dvb-ttpci: this firmware is way too small.\0A\00", [52 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr.63 = internal global ptr @get_firmware._entry.61, section ".printk_index", align 4
@get_firmware._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.51, ptr @.str.2, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr.65 = internal global ptr @get_firmware._entry.64, section ".printk_index", align 4
@check_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dvb-ttpci: this is not an av7110 firmware\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_firmware\00", [17 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr = internal global ptr @check_firmware._entry, section ".printk_index", align 4
@check_firmware._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dvb-ttpci: dpram file is way too big.\0A\00", [57 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.70 = internal global ptr @check_firmware._entry.68, section ".printk_index", align 4
@check_firmware._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dvb-ttpci: crc32 of dpram file does not match.\0A\00", [48 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.73 = internal global ptr @check_firmware._entry.71, section ".printk_index", align 4
@check_firmware._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dvb-ttpci: root file has strange size (%d). aborting.\0A\00", [41 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.76 = internal global ptr @check_firmware._entry.74, section ".printk_index", align 4
@check_firmware._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dvb-ttpci: crc32 of root file does not match.\0A\00", [49 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.79 = internal global ptr @check_firmware._entry.77, section ".printk_index", align 4
@debiirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017dvb_ttpci: %s(): type 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"debiirq\00", [24 x i8] zeroinitializer }, align 32
@debiirq._entry_ptr = internal global ptr @debiirq._entry, section ".printk_index", align 4
@debiirq._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DEBI irq oops @ %ld, psr:0x%08x, ssr:0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@debiirq._entry_ptr.85 = internal global ptr @debiirq._entry.83, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@debiirq._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@debiirq._entry_ptr.88 = internal global ptr @debiirq._entry.86, section ".printk_index", align 4
@debiirq._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dvb_ttpci: %s(): debi DATA_CI_PUT\0A\00", [59 x i8] zeroinitializer }, align 32
@debiirq._entry_ptr.91 = internal global ptr @debiirq._entry.89, section ".printk_index", align 4
@debiirq._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.82, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dvb_ttpci: %s(): debi DATA_MPEG_PLAY\0A\00", [56 x i8] zeroinitializer }, align 32
@debiirq._entry_ptr.94 = internal global ptr @debiirq._entry.92, section ".printk_index", align 4
@debiirq._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.82, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_ttpci: %s(): debi DATA_BMP_LOAD\0A\00", [57 x i8] zeroinitializer }, align 32
@debiirq._entry_ptr.97 = internal global ptr @debiirq._entry.95, section ".printk_index", align 4
@gpioirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"dvb-ttpci: GPIO0 irq oops @ %ld, psr:0x%08x, ssr:0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpioirq\00", [24 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr = internal global ptr @gpioirq._entry, section ".printk_index", align 4
@gpioirq._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: saa7146_wait_for_debi_done timed out\0A\00", [52 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.102 = internal global ptr @gpioirq._entry.100, section ".printk_index", align 4
@gpioirq._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.99, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dvb_ttpci: %s(): GPIO0 irq 0x%04x %d\0A\00", [56 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.106 = internal global ptr @gpioirq._entry.104, section ".printk_index", align 4
@gpioirq._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.99, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017dvb_ttpci: %s(): GPIO0 irq: DATA_MPEG_VIDEO_EVENT: w/h/ar = %u/%u/%u\0A\00", [56 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.109 = internal global ptr @gpioirq._entry.107, section ".printk_index", align 4
@gpioirq._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.99, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017dvb_ttpci: %s(): DMA: CI\0A\00", [36 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.112 = internal global ptr @gpioirq._entry.110, section ".printk_index", align 4
@gpioirq._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.99, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dvb_ttpci: %s(): GPIO0 PES_PLAY len=%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.115 = internal global ptr @gpioirq._entry.113, section ".printk_index", align 4
@gpioirq._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.99, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dvb_ttpci: %s(): DMA: MPEG_PLAY\0A\00", [61 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.118 = internal global ptr @gpioirq._entry.116, section ".printk_index", align 4
@gpioirq._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.99, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017dvb_ttpci: %s(): gpio DATA_BMP_LOAD len %d\0A\00", [50 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.121 = internal global ptr @gpioirq._entry.119, section ".printk_index", align 4
@gpioirq._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.99, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dvb_ttpci: %s(): gpio DATA_BMP_LOAD done\0A\00", [52 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.124 = internal global ptr @gpioirq._entry.122, section ".printk_index", align 4
@gpioirq._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.99, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dvb_ttpci: %s(): gpio DATA_BMP_LOAD DMA len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.127 = internal global ptr @gpioirq._entry.125, section ".printk_index", align 4
@gpioirq._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.99, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dvb_ttpci: %s(): DMA: TS_REC etc.\0A\00", [59 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.130 = internal global ptr @gpioirq._entry.128, section ".printk_index", align 4
@gpioirq._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.99, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dvb-ttpci: gpioirq unknown type=%d len=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@gpioirq._entry_ptr.133 = internal global ptr @gpioirq._entry.131, section ".printk_index", align 4
@start_debi_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017dvb_ttpci: %s(): %c %08lx %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start_debi_dma\00", [17 x i8] zeroinitializer }, align 32
@start_debi_dma._entry_ptr = internal global ptr @start_debi_dma._entry, section ".printk_index", align 4
@start_debi_dma._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.135, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@start_debi_dma._entry_ptr.137 = internal global ptr @start_debi_dma._entry.136, section ".printk_index", align 4
@arm_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.138, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arm_thread\00", [21 x i8] zeroinitializer }, align 32
@arm_thread._entry_ptr = internal global ptr @arm_thread._entry, section ".printk_index", align 4
@arm_thread._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013dvb-ttpci: ARM crashed @ card %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arm_thread._entry_ptr.141 = internal global ptr @arm_thread._entry.139, section ".printk_index", align 4
@recover_arm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.142, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"recover_arm\00", [20 x i8] zeroinitializer }, align 32
@recover_arm._entry_ptr = internal global ptr @recover_arm._entry, section ".printk_index", align 4
@restart_feeds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.143, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"restart_feeds\00", [18 x i8] zeroinitializer }, align 32
@restart_feeds._entry_ptr = internal global ptr @restart_feeds._entry, section ".printk_index", align 4
@av7110_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.144, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"av7110_start_feed\00", [46 x i8] zeroinitializer }, align 32
@av7110_start_feed._entry_ptr = internal global ptr @av7110_start_feed._entry, section ".printk_index", align 4
@dvb_feed_start_pid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.145, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_feed_start_pid\00", [45 x i8] zeroinitializer }, align 32
@dvb_feed_start_pid._entry_ptr = internal global ptr @dvb_feed_start_pid._entry, section ".printk_index", align 4
@StartHWFilter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.146, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"StartHWFilter\00", [18 x i8] zeroinitializer }, align 32
@StartHWFilter._entry_ptr = internal global ptr @StartHWFilter._entry, section ".printk_index", align 4
@StartHWFilter._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013dvb-ttpci: %s error  buf %04x %04x %04x %04x  ret %d  handle %04x\0A\00", [59 x i8] zeroinitializer }, align 32
@StartHWFilter._entry_ptr.149 = internal global ptr @StartHWFilter._entry.147, section ".printk_index", align 4
@budget_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017dvb_ttpci: %s(): av7110: %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"budget_start_feed\00", [46 x i8] zeroinitializer }, align 32
@budget_start_feed._entry_ptr = internal global ptr @budget_start_feed._entry, section ".printk_index", align 4
@start_ts_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017dvb_ttpci: %s(): budget: %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start_ts_capture\00", [47 x i8] zeroinitializer }, align 32
@start_ts_capture._entry_ptr = internal global ptr @start_ts_capture._entry, section ".printk_index", align 4
@av7110_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.154, ptr @.str.2, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"av7110_register\00", [16 x i8] zeroinitializer }, align 32
@av7110_register._entry_ptr = internal global ptr @av7110_register._entry, section ".printk_index", align 4
@dvbdev_osd = internal global { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_osd_fops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr @dvb_osd_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@av7110_register._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"dvb-ttpci: additional demux1 for budget-patch registered\0A\00", [38 x i8] zeroinitializer }, align 32
@av7110_register._entry_ptr.157 = internal global ptr @av7110_register._entry.155, section ".printk_index", align 4
@av7110_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.158, ptr @.str.2, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"av7110_stop_feed\00", [47 x i8] zeroinitializer }, align 32
@av7110_stop_feed._entry_ptr = internal global ptr @av7110_stop_feed._entry, section ".printk_index", align 4
@dvb_feed_stop_pid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.159, ptr @.str.2, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_feed_stop_pid\00", [46 x i8] zeroinitializer }, align 32
@dvb_feed_stop_pid._entry_ptr = internal global ptr @dvb_feed_stop_pid._entry, section ".printk_index", align 4
@StopHWFilter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.160, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"StopHWFilter\00", [19 x i8] zeroinitializer }, align 32
@StopHWFilter._entry_ptr = internal global ptr @StopHWFilter._entry, section ".printk_index", align 4
@StopHWFilter._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s tried to stop invalid filter %04x, filter type = %x\0A\00", [40 x i8] zeroinitializer }, align 32
@StopHWFilter._entry_ptr.163 = internal global ptr @StopHWFilter._entry.161, section ".printk_index", align 4
@StopHWFilter._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013dvb-ttpci: %s error  cmd %04x %04x %04x  ret %x  resp %04x %04x  pid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@StopHWFilter._entry_ptr.166 = internal global ptr @StopHWFilter._entry.164, section ".printk_index", align 4
@dvb_get_stc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.167, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dvb_get_stc\00", [20 x i8] zeroinitializer }, align 32
@dvb_get_stc._entry_ptr = internal global ptr @dvb_get_stc._entry, section ".printk_index", align 4
@dvb_get_stc._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: av7110_fw_request error\0A\00", [33 x i8] zeroinitializer }, align 32
@dvb_get_stc._entry_ptr.170 = internal global ptr @dvb_get_stc._entry.168, section ".printk_index", align 4
@dvb_get_stc._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.167, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017dvb_ttpci: %s(): fwstc = %04hx %04hx %04hx %04hx\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_get_stc._entry_ptr.173 = internal global ptr @dvb_get_stc._entry.171, section ".printk_index", align 4
@dvb_get_stc._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.167, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017dvb_ttpci: %s(): stc = %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_get_stc._entry_ptr.176 = internal global ptr @dvb_get_stc._entry.174, section ".printk_index", align 4
@dvb_osd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_generic_ioctl, ptr null, ptr null, i32 0, ptr @dvb_generic_open, ptr null, ptr @dvb_generic_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_osd_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.177, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvb_osd_ioctl\00", [18 x i8] zeroinitializer }, align 32
@dvb_osd_ioctl._entry_ptr = internal global ptr @dvb_osd_ioctl._entry, section ".printk_index", align 4
@budget_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.178, ptr @.str.2, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"budget_stop_feed\00", [47 x i8] zeroinitializer }, align 32
@budget_stop_feed._entry_ptr = internal global ptr @budget_stop_feed._entry, section ".printk_index", align 4
@stop_ts_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.179, ptr @.str.2, i32 1177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stop_ts_capture\00", [16 x i8] zeroinitializer }, align 32
@stop_ts_capture._entry_ptr = internal global ptr @stop_ts_capture._entry, section ".printk_index", align 4
@init_av7110_av._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dvb-ttpci:cannot set internal volume to maximum:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_av7110_av\00", [17 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr = internal global ptr @init_av7110_av._entry, section ".printk_index", align 4
@init_av7110_av._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dvb-ttpci: unable to set aspect ratio\0A\00", [57 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.184 = internal global ptr @init_av7110_av._entry.182, section ".printk_index", align 4
@init_av7110_av._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.181, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dvb-ttpci: unable to set pan scan\0A\00", [61 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.187 = internal global ptr @init_av7110_av._entry.185, section ".printk_index", align 4
@init_av7110_av._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.181, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dvb-ttpci: unable to configure 4:3 wss\0A\00", [56 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.190 = internal global ptr @init_av7110_av._entry.188, section ".printk_index", align 4
@init_av7110_av._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.181, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dvb-ttpci: unable to configure 16:9 wss\0A\00", [55 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.193 = internal global ptr @init_av7110_av._entry.191, section ".printk_index", align 4
@init_av7110_av._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.181, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dvb-ttpci:cannot set video mode:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.196 = internal global ptr @init_av7110_av._entry.194, section ".printk_index", align 4
@init_av7110_av._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.181, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dvb-ttpci: Crystal audio DAC @ card %d detected\0A\00", [47 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.199 = internal global ptr @init_av7110_av._entry.197, section ".printk_index", align 4
@init_av7110_av._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.181, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dvb-ttpci: DVB-C w/o analog module @ card %d detected\0A\00", [41 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.202 = internal global ptr @init_av7110_av._entry.200, section ".printk_index", align 4
@init_av7110_av._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.181, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dvb-ttpci: adac type set to %d @ card %d\0A\00", [54 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.205 = internal global ptr @init_av7110_av._entry.203, section ".printk_index", align 4
@init_av7110_av._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.181, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dvb-ttpci:cannot switch on SCART(Main):%d\0A\00", [53 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.208 = internal global ptr @init_av7110_av._entry.206, section ".printk_index", align 4
@init_av7110_av._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.181, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dvb-ttpci:cannot switch on SCART(AD):%d\0A\00", [55 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.211 = internal global ptr @init_av7110_av._entry.209, section ".printk_index", align 4
@init_av7110_av._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.181, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dvb-ttpci:cannot set volume :%d\0A\00", [63 x i8] zeroinitializer }, align 32
@init_av7110_av._entry_ptr.214 = internal global ptr @init_av7110_av._entry.212, section ".printk_index", align 4
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ves1820_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:ves1820_attach\00", [42 x i8] zeroinitializer }, align 32
@philips_cd1516_config = internal global { %struct.ves1820_config, [20 x i8] } { %struct.ves1820_config { i8 9, i32 57840000, i8 -64 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol ves1820_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ves1x93_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:ves1x93_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_bsrv2_config = internal global { %struct.ves1x93_config, [20 x i8] } { %struct.ves1x93_config { i8 8, i32 90100000, i8 0 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.218, ptr @.str.2, i32 2113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol ves1x93_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.223 = internal global ptr @frontend_init._entry.221, section ".printk_index", align 4
@.str.224 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_bsru6_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsru6_inittab, i32 88000000, i8 -104, i32 100, ptr @alps_bsru6_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.218, ptr @.str.2, i32 2124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.228 = internal global ptr @frontend_init._entry.226, section ".printk_index", align 4
@.str.229 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda8083_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda8083_attach\00", [42 x i8] zeroinitializer }, align 32
@grundig_29504_451_config = internal global { %struct.tda8083_config, [31 x i8] } { %struct.tda8083_config { i8 104 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.218, ptr @.str.2, i32 2137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda8083_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.233 = internal global ptr @frontend_init._entry.231, section ".printk_index", align 4
@frontend_init._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 2152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.235 = internal global ptr @frontend_init._entry.234, section ".printk_index", align 4
@alps_tdbe2_config = internal global { %struct.ves1820_config, [20 x i8] } { %struct.ves1820_config { i8 9, i32 57840000, i8 -64 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 2160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.237 = internal global ptr @frontend_init._entry.236, section ".printk_index", align 4
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sp8870_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:sp8870_attach\00", [43 x i8] zeroinitializer }, align 32
@alps_tdlb7_config = internal constant { %struct.sp8870_config, [24 x i8] } { %struct.sp8870_config { i8 113, ptr @alps_tdlb7_request_firmware }, [24 x i8] zeroinitializer }, align 32
@frontend_init._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.218, ptr @.str.2, i32 2173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol sp8870_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.242 = internal global ptr @frontend_init._entry.240, section ".printk_index", align 4
@.str.243 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l64781_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:l64781_attach\00", [43 x i8] zeroinitializer }, align 32
@grundig_29504_401_config = internal global { %struct.l64781_config, [31 x i8] } { %struct.l64781_config { i8 85 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.218, ptr @.str.2, i32 2184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol l64781_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.247 = internal global ptr @frontend_init._entry.245, section ".printk_index", align 4
@frontend_init._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 2191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.249 = internal global ptr @frontend_init._entry.248, section ".printk_index", align 4
@frontend_init._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.218, ptr @.str.2, i32 2199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.251 = internal global ptr @frontend_init._entry.250, section ".printk_index", align 4
@frontend_init._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.218, ptr @.str.2, i32 2211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.253 = internal global ptr @frontend_init._entry.252, section ".printk_index", align 4
@.str.254 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0297_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0297_attach\00", [42 x i8] zeroinitializer }, align 32
@nexusca_stv0297_config = internal global { %struct.stv0297_config, [20 x i8] } { %struct.stv0297_config { i8 28, ptr @nexusca_stv0297_inittab, i8 -64 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.218, ptr @.str.2, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0297_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.258 = internal global ptr @frontend_init._entry.256, section ".printk_index", align 4
@alps_bsbe1_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsbe1_inittab, i32 88000000, i8 -128, i32 100, ptr @alps_bsbe1_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.218, ptr @.str.2, i32 2239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.260 = internal global ptr @frontend_init._entry.259, section ".printk_index", align 4
@.str.261 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbp21_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbp21_attach\00", [43 x i8] zeroinitializer }, align 32
@frontend_init._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.218, ptr @.str.2, i32 2244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbp21_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.265 = internal global ptr @frontend_init._entry.263, section ".printk_index", align 4
@frontend_init._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.218, ptr @.str.2, i32 2245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dvb-ttpci: LNBP21 not found!\0A\00", [34 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.268 = internal global ptr @frontend_init._entry.266, section ".printk_index", align 4
@frontend_init._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.218, ptr @.str.2, i32 2265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"dvb-ttpci: A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", [39 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.271 = internal global ptr @frontend_init._entry.269, section ".printk_index", align 4
@frontend_init._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.218, ptr @.str.2, i32 2279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"av7110: Frontend registration failed!\0A\00", [57 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.274 = internal global ptr @frontend_init._entry.272, section ".printk_index", align 4
@alps_bsru6_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@nexusca_stv0297_inittab = internal global { [180 x i8], [44 x i8] } { [180 x i8] c"\80\01\80\00\81\01\81\00\00\09\01i\03\00\04\00\07\00\08\00 \00!@\22\00#\00$@%\880\FF1\002\FF3\004P5\7F6\007 8\00@\1CA\FFB)C\00D\FFE\00F\00I\04J\00K{R0U\AEVGW\E1X:Z\1E[4`\00c\00d\00e\00f\00g\00h\00i\00j\02k\00p\FFq\00r\00s\00t\0C\80\00\81\00\82\00\83\00\84\04\85\80\86$\87x\88\10\89\00\90\01\91\01\A0\04\A1\00\A2\00\B0\91\B1\0B\C0S\C1p\C2\12\D0\00\D1\00\D2\00\D3\00\D4\00\D5\00\DE\00\DF\00aIb\0BS\08Y\08\FF\FF", [44 x i8] zeroinitializer }, align 32
@nexusca_stv0297_tuner_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.276, ptr @.str.2, i32 1840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nexusca: pll transfer failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nexusca_stv0297_tuner_set_params\00", [63 x i8] zeroinitializer }, align 32
@nexusca_stv0297_tuner_set_params._entry_ptr = internal global ptr @nexusca_stv0297_tuner_set_params._entry, section ".printk_index", align 4
@alps_bsbe1_inittab = internal global { [38 x i8], [58 x i8] } { [38 x i8] c"\01\15\020\03\00\04}\05\05\06\00\08@\09\00\0CQ\0D\82\0F\92\104\11\84\12\B9\15\C9(\003\FC4\93\FF\FF", [58 x i8] zeroinitializer }, align 32
@dvb_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.277, ptr @.str.2, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_unregister\00", [17 x i8] zeroinitializer }, align 32
@dvb_unregister._entry_ptr = internal global ptr @dvb_unregister._entry, section ".printk_index", align 4
@av7110_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.278, ptr @.str.2, i32 2750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"av7110_detach\00", [18 x i8] zeroinitializer }, align 32
@av7110_detach._entry_ptr = internal global ptr @av7110_detach._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.279 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 9, i64 11, i64 12, i64 16, i64 18]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.281 = internal global [17 x i64] [i64 15, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 16, i64 4362, i64 5058]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 16, i64 4362, i64 5058]
@__sancov_gen_cov_switch_values.285 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 8, i64 10, i64 14, i64 4098]
@__sancov_gen_cov_switch_values.286 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.287 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.288 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.289 = internal global [4 x i64] [i64 2, i64 32, i64 1075605408, i64 2148036513]
@__sancov_gen_cov_switch_values.290 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.291 = private unnamed_addr constant [13 x i8] c"av7110_debug\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 61, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant [8 x i8] c"vidmode\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 63, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant [9 x i8] c"pids_off\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 64, i32 12 }
@___asan_gen_.300 = private unnamed_addr constant [5 x i8] c"adac\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 65, i32 12 }
@___asan_gen_.303 = private unnamed_addr constant [12 x i8] c"hw_sections\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 66, i32 12 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"rgb_on\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 67, i32 12 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 68, i32 12 }
@___asan_gen_.312 = private unnamed_addr constant [12 x i8] c"budgetpatch\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 69, i32 12 }
@___asan_gen_.315 = private unnamed_addr constant [8 x i8] c"full_ts\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 73, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant [12 x i8] c"wss_cfg_4_3\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 70, i32 12 }
@___asan_gen_.321 = private unnamed_addr constant [13 x i8] c"wss_cfg_16_9\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 71, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant [12 x i8] c"tv_standard\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 72, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 741, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [24 x i8] c"av7110_extension_driver\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2889, i32 33 }
@___asan_gen_.342 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 100, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 719, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [8 x i8] c"pci_tbl\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2865, i32 35 }
@___asan_gen_.354 = private unnamed_addr constant [4 x i8] c"fsc\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [12 x i8] c"tts_1_X_fsc\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [8 x i8] c"ttt_1_X\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [8 x i8] c"ttc_2_X\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [8 x i8] c"tts_2_X\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [8 x i8] c"gxs_1_3\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [4 x i8] c"fss\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [4 x i8] c"ttt\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [8 x i8] c"ttc_1_X\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [8 x i8] c"tts_2_3\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [10 x i8] c"tts_1_3se\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2861, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2853, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2854, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2856, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2857, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2863, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2862, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2860, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2855, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2858, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2859, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2356, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2438, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2450, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2496, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2497, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2525, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2621, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2624, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2625, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2630, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2637, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2657, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2673, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2677, i32 11 }
@___asan_gen_.501 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2706, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2711, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [11 x i8] c"av7110_num\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 106, i32 12 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1503, i32 30 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1506, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1507, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1508, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1510, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1516, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1524, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1450, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1461, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1465, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1480, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1484, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 368, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 371, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 433, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 438, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 442, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 446, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 469, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 474, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 489, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 531, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 565, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 597, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 600, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 607, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 614, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 626, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 644, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 668, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 344, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 346, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 239, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 259, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 207, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1068, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 950, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 868, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 781, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 808, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1210, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1191, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1279, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant [11 x i8] c"dvbdev_osd\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 704, i32 26 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1361, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1017, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 912, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 831, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 838, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 850, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1114, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1121, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1124, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1131, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant [13 x i8] c"dvb_osd_fops\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 696, i32 37 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 685, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1225, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1177, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 126, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 131, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 135, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 139, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 142, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 146, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 155, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 170, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 176, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 184, i32 4 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 187, i32 4 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 202, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant [22 x i8] c"philips_cd1516_config\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1663, i32 30 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2098, i32 17 }
@___asan_gen_.969 = private unnamed_addr constant [18 x i8] c"alps_bsrv2_config\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1575, i32 30 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2113, i32 17 }
@___asan_gen_.984 = private unnamed_addr constant [18 x i8] c"alps_bsru6_config\00", align 1
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1108, i32 114, i32 30 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2124, i32 17 }
@___asan_gen_.999 = private unnamed_addr constant [25 x i8] c"grundig_29504_451_config\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1634, i32 30 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2137, i32 17 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2151, i32 18 }
@___asan_gen_.1011 = private unnamed_addr constant [18 x i8] c"alps_tdbe2_config\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1603, i32 30 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2159, i32 18 }
@___asan_gen_.1023 = private unnamed_addr constant [18 x i8] c"alps_tdlb7_config\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1710, i32 35 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2173, i32 9 }
@___asan_gen_.1038 = private unnamed_addr constant [25 x i8] c"grundig_29504_401_config\00", align 1
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1908, i32 29 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2184, i32 17 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2191, i32 17 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2199, i32 17 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2211, i32 17 }
@___asan_gen_.1062 = private unnamed_addr constant [23 x i8] c"nexusca_stv0297_config\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1856, i32 30 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2223, i32 17 }
@___asan_gen_.1071 = private unnamed_addr constant [18 x i8] c"alps_bsbe1_config\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1123, i32 79, i32 30 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2239, i32 17 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2244, i32 9 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2245, i32 6 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2261, i32 3 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2279, i32 4 }
@___asan_gen_.1107 = private unnamed_addr constant [19 x i8] c"alps_bsru6_inittab\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant [39 x i8] c"../drivers/media/dvb-frontends/bsru6.h\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1108, i32 11, i32 11 }
@___asan_gen_.1110 = private unnamed_addr constant [24 x i8] c"nexusca_stv0297_inittab\00", align 1
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1717, i32 11 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1840, i32 3 }
@___asan_gen_.1122 = private unnamed_addr constant [19 x i8] c"alps_bsbe1_inittab\00", align 1
@___asan_gen_.1123 = private unnamed_addr constant [39 x i8] c"../drivers/media/dvb-frontends/bsbe1.h\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1123, i32 11, i32 11 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 1372, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1135 = private constant [41 x i8] c"../drivers/staging/media/av7110/av7110.c\00", align 1
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1135, i32 2750, i32 2 }
@llvm.compiler.used = appending global [423 x ptr] [ptr @ChangePIDs._entry, ptr @ChangePIDs._entry_ptr, ptr @SetPIDs._entry, ptr @SetPIDs._entry_ptr, ptr @StartHWFilter._entry, ptr @StartHWFilter._entry.147, ptr @StartHWFilter._entry_ptr, ptr @StartHWFilter._entry_ptr.149, ptr @StopHWFilter._entry, ptr @StopHWFilter._entry.161, ptr @StopHWFilter._entry.164, ptr @StopHWFilter._entry_ptr, ptr @StopHWFilter._entry_ptr.163, ptr @StopHWFilter._entry_ptr.166, ptr @__UNIQUE_ID_adac392, ptr @__UNIQUE_ID_adactype391, ptr @__UNIQUE_ID_adapter_nr410, ptr @__UNIQUE_ID_adapter_nrtype409, ptr @__UNIQUE_ID_author413, ptr @__UNIQUE_ID_budgetpatch400, ptr @__UNIQUE_ID_budgetpatchtype399, ptr @__UNIQUE_ID_debug386, ptr @__UNIQUE_ID_debugtype385, ptr @__UNIQUE_ID_description412, ptr @__UNIQUE_ID_file414, ptr @__UNIQUE_ID_full_ts402, ptr @__UNIQUE_ID_full_tstype401, ptr @__UNIQUE_ID_hw_sections394, ptr @__UNIQUE_ID_hw_sectionstype393, ptr @__UNIQUE_ID_license415, ptr @__UNIQUE_ID_pids_off390, ptr @__UNIQUE_ID_pids_offtype389, ptr @__UNIQUE_ID_rgb_on396, ptr @__UNIQUE_ID_rgb_ontype395, ptr @__UNIQUE_ID_tv_standard408, ptr @__UNIQUE_ID_tv_standardtype407, ptr @__UNIQUE_ID_vidmode388, ptr @__UNIQUE_ID_vidmodetype387, ptr @__UNIQUE_ID_volume398, ptr @__UNIQUE_ID_volumetype397, ptr @__UNIQUE_ID_wss_cfg_16_9406, ptr @__UNIQUE_ID_wss_cfg_16_9type405, ptr @__UNIQUE_ID_wss_cfg_4_3404, ptr @__UNIQUE_ID_wss_cfg_4_3type403, ptr @__exitcall_av7110_exit, ptr @__initcall__kmod_dvb_ttpci__411_2914_av7110_init6, ptr @__param_adac, ptr @__param_adapter_nr, ptr @__param_budgetpatch, ptr @__param_debug, ptr @__param_full_ts, ptr @__param_hw_sections, ptr @__param_pids_off, ptr @__param_rgb_on, ptr @__param_tv_standard, ptr @__param_vidmode, ptr @__param_volume, ptr @__param_wss_cfg_16_9, ptr @__param_wss_cfg_4_3, ptr @arm_thread._entry, ptr @arm_thread._entry.139, ptr @arm_thread._entry_ptr, ptr @arm_thread._entry_ptr.141, ptr @av7110_attach._entry, ptr @av7110_attach._entry.17, ptr @av7110_attach._entry.20, ptr @av7110_attach._entry.23, ptr @av7110_attach._entry.40, ptr @av7110_attach._entry.46, ptr @av7110_attach._entry_ptr, ptr @av7110_attach._entry_ptr.19, ptr @av7110_attach._entry_ptr.22, ptr @av7110_attach._entry_ptr.25, ptr @av7110_attach._entry_ptr.42, ptr @av7110_attach._entry_ptr.48, ptr @av7110_detach._entry, ptr @av7110_detach._entry_ptr, ptr @av7110_exit, ptr @av7110_register._entry, ptr @av7110_register._entry.155, ptr @av7110_register._entry_ptr, ptr @av7110_register._entry_ptr.157, ptr @av7110_start_feed._entry, ptr @av7110_start_feed._entry_ptr, ptr @av7110_stop_feed._entry, ptr @av7110_stop_feed._entry_ptr, ptr @budget_start_feed._entry, ptr @budget_start_feed._entry_ptr, ptr @budget_stop_feed._entry, ptr @budget_stop_feed._entry_ptr, ptr @check_firmware._entry, ptr @check_firmware._entry.68, ptr @check_firmware._entry.71, ptr @check_firmware._entry.74, ptr @check_firmware._entry.77, ptr @check_firmware._entry_ptr, ptr @check_firmware._entry_ptr.70, ptr @check_firmware._entry_ptr.73, ptr @check_firmware._entry_ptr.76, ptr @check_firmware._entry_ptr.79, ptr @debiirq._entry, ptr @debiirq._entry.83, ptr @debiirq._entry.86, ptr @debiirq._entry.89, ptr @debiirq._entry.92, ptr @debiirq._entry.95, ptr @debiirq._entry_ptr, ptr @debiirq._entry_ptr.85, ptr @debiirq._entry_ptr.88, ptr @debiirq._entry_ptr.91, ptr @debiirq._entry_ptr.94, ptr @debiirq._entry_ptr.97, ptr @dvb_feed_start_pid._entry, ptr @dvb_feed_start_pid._entry_ptr, ptr @dvb_feed_stop_pid._entry, ptr @dvb_feed_stop_pid._entry_ptr, ptr @dvb_get_stc._entry, ptr @dvb_get_stc._entry.168, ptr @dvb_get_stc._entry.171, ptr @dvb_get_stc._entry.174, ptr @dvb_get_stc._entry_ptr, ptr @dvb_get_stc._entry_ptr.170, ptr @dvb_get_stc._entry_ptr.173, ptr @dvb_get_stc._entry_ptr.176, ptr @dvb_osd_ioctl._entry, ptr @dvb_osd_ioctl._entry_ptr, ptr @dvb_unregister._entry, ptr @dvb_unregister._entry_ptr, ptr @frontend_init._entry, ptr @frontend_init._entry.221, ptr @frontend_init._entry.226, ptr @frontend_init._entry.231, ptr @frontend_init._entry.234, ptr @frontend_init._entry.236, ptr @frontend_init._entry.240, ptr @frontend_init._entry.245, ptr @frontend_init._entry.248, ptr @frontend_init._entry.250, ptr @frontend_init._entry.252, ptr @frontend_init._entry.256, ptr @frontend_init._entry.259, ptr @frontend_init._entry.263, ptr @frontend_init._entry.266, ptr @frontend_init._entry.269, ptr @frontend_init._entry.272, ptr @frontend_init._entry_ptr, ptr @frontend_init._entry_ptr.223, ptr @frontend_init._entry_ptr.228, ptr @frontend_init._entry_ptr.233, ptr @frontend_init._entry_ptr.235, ptr @frontend_init._entry_ptr.237, ptr @frontend_init._entry_ptr.242, ptr @frontend_init._entry_ptr.247, ptr @frontend_init._entry_ptr.249, ptr @frontend_init._entry_ptr.251, ptr @frontend_init._entry_ptr.253, ptr @frontend_init._entry_ptr.258, ptr @frontend_init._entry_ptr.260, ptr @frontend_init._entry_ptr.265, ptr @frontend_init._entry_ptr.268, ptr @frontend_init._entry_ptr.271, ptr @frontend_init._entry_ptr.274, ptr @get_firmware._entry, ptr @get_firmware._entry.52, ptr @get_firmware._entry.55, ptr @get_firmware._entry.58, ptr @get_firmware._entry.61, ptr @get_firmware._entry.64, ptr @get_firmware._entry_ptr, ptr @get_firmware._entry_ptr.54, ptr @get_firmware._entry_ptr.57, ptr @get_firmware._entry_ptr.60, ptr @get_firmware._entry_ptr.63, ptr @get_firmware._entry_ptr.65, ptr @gpioirq._entry, ptr @gpioirq._entry.100, ptr @gpioirq._entry.104, ptr @gpioirq._entry.107, ptr @gpioirq._entry.110, ptr @gpioirq._entry.113, ptr @gpioirq._entry.116, ptr @gpioirq._entry.119, ptr @gpioirq._entry.122, ptr @gpioirq._entry.125, ptr @gpioirq._entry.128, ptr @gpioirq._entry.131, ptr @gpioirq._entry_ptr, ptr @gpioirq._entry_ptr.102, ptr @gpioirq._entry_ptr.106, ptr @gpioirq._entry_ptr.109, ptr @gpioirq._entry_ptr.112, ptr @gpioirq._entry_ptr.115, ptr @gpioirq._entry_ptr.118, ptr @gpioirq._entry_ptr.121, ptr @gpioirq._entry_ptr.124, ptr @gpioirq._entry_ptr.127, ptr @gpioirq._entry_ptr.130, ptr @gpioirq._entry_ptr.133, ptr @init_av7110_av._entry, ptr @init_av7110_av._entry.182, ptr @init_av7110_av._entry.185, ptr @init_av7110_av._entry.188, ptr @init_av7110_av._entry.191, ptr @init_av7110_av._entry.194, ptr @init_av7110_av._entry.197, ptr @init_av7110_av._entry.200, ptr @init_av7110_av._entry.203, ptr @init_av7110_av._entry.206, ptr @init_av7110_av._entry.209, ptr @init_av7110_av._entry.212, ptr @init_av7110_av._entry_ptr, ptr @init_av7110_av._entry_ptr.184, ptr @init_av7110_av._entry_ptr.187, ptr @init_av7110_av._entry_ptr.190, ptr @init_av7110_av._entry_ptr.193, ptr @init_av7110_av._entry_ptr.196, ptr @init_av7110_av._entry_ptr.199, ptr @init_av7110_av._entry_ptr.202, ptr @init_av7110_av._entry_ptr.205, ptr @init_av7110_av._entry_ptr.208, ptr @init_av7110_av._entry_ptr.211, ptr @init_av7110_av._entry_ptr.214, ptr @nexusca_stv0297_tuner_set_params._entry, ptr @nexusca_stv0297_tuner_set_params._entry_ptr, ptr @recover_arm._entry, ptr @recover_arm._entry_ptr, ptr @restart_feeds._entry, ptr @restart_feeds._entry_ptr, ptr @start_debi_dma._entry, ptr @start_debi_dma._entry.136, ptr @start_debi_dma._entry_ptr, ptr @start_debi_dma._entry_ptr.137, ptr @start_ts_capture._entry, ptr @start_ts_capture._entry_ptr, ptr @stop_ts_capture._entry, ptr @stop_ts_capture._entry_ptr, ptr @av7110_debug, ptr @vidmode, ptr @pids_off, ptr @adac, ptr @hw_sections, ptr @rgb_on, ptr @volume, ptr @budgetpatch, ptr @full_ts, ptr @wss_cfg_4_3, ptr @wss_cfg_16_9, ptr @tv_standard, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @av7110_extension_driver, ptr @adapter_nr, ptr @.str.3, ptr @pci_tbl, ptr @fsc, ptr @tts_1_X_fsc, ptr @ttt_1_X, ptr @ttc_2_X, ptr @tts_2_X, ptr @gxs_1_3, ptr @fss, ptr @ttt, ptr @ttc_1_X, ptr @tts_2_3, ptr @tts_1_3se, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @av7110_attach.__key, ptr @.str.26, ptr @av7110_attach.__key.27, ptr @av7110_attach.__key.28, ptr @.str.29, ptr @av7110_attach.__key.30, ptr @.str.31, ptr @av7110_attach.__key.32, ptr @.str.33, ptr @av7110_attach.__key.34, ptr @.str.35, ptr @av7110_attach.__key.36, ptr @.str.37, ptr @av7110_attach.__key.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @av7110_attach.__key.44, ptr @.str.45, ptr @.str.47, ptr @av7110_num, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @dvbdev_osd, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @dvb_osd_fops, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @philips_cd1516_config, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @alps_bsrv2_config, ptr @.str.222, ptr @.str.224, ptr @.str.225, ptr @alps_bsru6_config, ptr @.str.227, ptr @.str.229, ptr @.str.230, ptr @grundig_29504_451_config, ptr @.str.232, ptr @alps_tdbe2_config, ptr @.str.238, ptr @.str.239, ptr @alps_tdlb7_config, ptr @.str.241, ptr @.str.243, ptr @.str.244, ptr @grundig_29504_401_config, ptr @.str.246, ptr @.str.254, ptr @.str.255, ptr @nexusca_stv0297_config, ptr @.str.257, ptr @alps_bsbe1_config, ptr @.str.261, ptr @.str.262, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @.str.273, ptr @alps_bsru6_inittab, ptr @nexusca_stv0297_inittab, ptr @.str.275, ptr @.str.276, ptr @alps_bsbe1_inittab, ptr @.str.277, ptr @.str.278], section "llvm.metadata"
@0 = internal global [282 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pids_off to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adac to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sections to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb_on to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volume to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budgetpatch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_ts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wss_cfg_4_3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wss_cfg_16_9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_standard to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ChangePIDs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_extension_driver to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetPIDs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_tbl to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tts_1_X_fsc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttt_1_X to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_2_X to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tts_2_X to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxs_1_3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fss to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_1_X to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tts_2_3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tts_1_3se to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_attach._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debiirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debiirq._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debiirq._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debiirq._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debiirq._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debiirq._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioirq._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_debi_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_debi_dma._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_thread._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_arm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_feeds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_feed_start_pid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @StartHWFilter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @StartHWFilter._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_ts_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbdev_osd to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_register._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_feed_stop_pid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @StopHWFilter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @StopHWFilter._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @StopHWFilter._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_get_stc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_get_stc._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_get_stc._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_get_stc._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_osd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_osd_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_ts_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_av7110_av._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_cd1516_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsrv2_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grundig_29504_451_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_tdbe2_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_tdlb7_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grundig_29504_401_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nexusca_stv0297_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsbe1_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nexusca_stv0297_inittab to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nexusca_stv0297_tuner_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsbe1_inittab to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ChangePIDs(ptr noundef %av7110, i16 noundef zeroext %vpid, i16 noundef zeroext %apid, i16 noundef zeroext %ttpid, i16 noundef zeroext %subpid, i16 noundef zeroext %pcrpid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %pid_mutex = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 47
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %pid_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vpid)
  %tobool9.not = icmp sgt i16 %vpid, -1
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %vpid, ptr %arrayidx, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %apid)
  %tobool14.not = icmp sgt i16 %apid, -1
  br i1 %tobool14.not, label %if.then15, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %pids16 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 74
  %2 = ptrtoint ptr %pids16 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %apid, ptr %pids16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %ttpid)
  %tobool21.not = icmp sgt i16 %ttpid, -1
  br i1 %tobool21.not, label %if.then22, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 2
  %3 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %ttpid, ptr %arrayidx24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %pcrpid)
  %tobool28.not = icmp sgt i16 %pcrpid, -1
  br i1 %tobool28.not, label %if.then29, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx31 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 4
  %4 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %pcrpid, ptr %arrayidx31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %arrayidx34 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 3
  %5 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %arrayidx34, align 2
  %fe_synced = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 46
  %6 = ptrtoint ptr %fe_synced to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fe_synced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool35.not = icmp eq i32 %7, 0
  br i1 %tobool35.not, label %if.end32.if.end40_crit_edge, label %if.then36

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %if.end32
  %arrayidx38 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 4
  %8 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx38, align 4
  %10 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then36.do.end3.i_crit_edge, label %do.end.i

if.then36.do.end3.i_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef %av7110) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then36.do.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %vpid)
  %cmp.i = icmp eq i16 %vpid, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %apid)
  %cmp6.i = icmp eq i16 %apid, 8191
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %ttpid)
  %cmp10.i = icmp eq i16 %ttpid, 8191
  %or.cond52.i = or i1 %or.cond.i, %cmp10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %subpid)
  %cmp14.i = icmp eq i16 %subpid, 8191
  %or.cond53.i = or i1 %or.cond52.i, %cmp14.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %9)
  %cmp18.i = icmp eq i16 %9, 8191
  %or.cond54.i = or i1 %or.cond53.i, %cmp18.i
  br i1 %or.cond54.i, label %if.then20.i, label %do.end3.i.SetPIDs.exit_crit_edge

do.end3.i.SetPIDs.exit_crit_edge:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %SetPIDs.exit

if.then20.i:                                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %pids.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 74
  %arrayidx.i = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %arrayidx.i, align 2
  %12 = ptrtoint ptr %pids.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %pids.i, align 4
  %arrayidx24.i = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 2
  %13 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx24.i, align 4
  %14 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %arrayidx38, align 4
  br label %SetPIDs.exit

SetPIDs.exit:                                     ; preds = %if.then20.i, %do.end3.i.SetPIDs.exit_crit_edge
  %apid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %apid, %do.end3.i.SetPIDs.exit_crit_edge ]
  %ttpid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %ttpid, %do.end3.i.SetPIDs.exit_crit_edge ]
  %subpid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %subpid, %do.end3.i.SetPIDs.exit_crit_edge ]
  %pcrpid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %9, %do.end3.i.SetPIDs.exit_crit_edge ]
  %vpid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %vpid, %do.end3.i.SetPIDs.exit_crit_edge ]
  %bypass_mode.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 53, i32 5
  %15 = ptrtoint ptr %bypass_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bypass_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not.i = icmp eq i32 %16, 0
  %spec.select.i = select i1 %tobool28.not.i, i32 0, i32 32768
  %conv33.i = zext i16 %pcrpid.addr.0.i to i32
  %conv34.i = zext i16 %vpid.addr.0.i to i32
  %conv35.i = zext i16 %apid.addr.0.i to i32
  %conv36.i = zext i16 %ttpid.addr.0.i to i32
  %conv37.i = zext i16 %subpid.addr.0.i to i32
  %call39.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 1, i32 noundef 0, i32 noundef 6, i32 noundef %conv33.i, i32 noundef %conv34.i, i32 noundef %conv35.i, i32 noundef %conv36.i, i32 noundef %conv37.i, i32 noundef %spec.select.i) #9
  br label %if.end40

if.end40:                                         ; preds = %SetPIDs.exit, %if.end32.if.end40_crit_edge
  %ret.0 = phi i32 [ %call39.i, %SetPIDs.exit ], [ 0, %if.end32.if.end40_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pid_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end40 ], [ -512, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext %id, i8 noundef zeroext %reg, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca [2 x i8], align 1
  %msgs = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg) #9
  %0 = getelementptr inbounds [2 x i8], ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %msg, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #9
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %6 = lshr i8 %id, 1
  %conv1 = zext i8 %6 to i16
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1, ptr %msgs, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg, ptr %buf, align 4
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @i2c_readreg(ptr noundef %av7110, i8 noundef zeroext %id, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  %mm1 = alloca [1 x i8], align 1
  %mm2 = alloca [1 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm1) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm2) #9
  %0 = ptrtoint ptr %mm2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mm2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %arrayidx1 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %flags2 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %flags2, align 2
  %5 = lshr i8 %id, 1
  %conv3 = zext i8 %5 to i16
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv3, ptr %arrayidx1, align 4
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3, ptr %msgs, align 4
  %8 = ptrtoint ptr %mm1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %reg, ptr %mm1, align 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len, align 4
  %len10 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %len10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len10, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mm1, ptr %buf, align 4
  %buf14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mm2, ptr %buf14, align 4
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs, i32 noundef 2) #9
  %13 = ptrtoint ptr %mm2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mm2, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm1) #9
  ret i8 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @av7110_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @saa7146_unregister_extension(ptr noundef nonnull @av7110_extension_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_extension(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7146_register_extension(ptr noundef nonnull @av7110_extension_driver) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_fw_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_attach(ptr noundef %dev, ptr nocapture noundef readonly %pci_ext) #0 align 64 {
entry:
  %mm1.i841 = alloca [1 x i8], align 1
  %mm2.i842 = alloca [1 x i8], align 1
  %msgs.i843 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i829 = alloca [1 x i8], align 1
  %mm2.i830 = alloca [1 x i8], align 1
  %msgs.i831 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [1 x i8], align 1
  %mm2.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %2 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %dev) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = load i32, ptr @budgetpatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then4, label %do.end3.if.end122_crit_edge

do.end3.if.end122_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then4:                                         ; preds = %do.end3
  store i32 0, ptr @budgetpatch, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !625
  tail call void @arm_heavy_mb() #9
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #9, !srcloc !626
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 3, i32 noundef 64) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !627
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #9, !srcloc !626
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !628
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 131072) #9, !srcloc !626
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !629
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #9, !srcloc !626
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !630
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem, align 4
  %add.ptr27 = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 327685) #9, !srcloc !626
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !631
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem, align 4
  %add.ptr32 = getelementptr i8, ptr %15, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 32) #9, !srcloc !626
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !632
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem, align 4
  %add.ptr37 = getelementptr i8, ptr %17, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #9, !srcloc !626
  %d_rps1 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22
  %cpu_addr = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22, i32 1
  %18 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpu_addr, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 131104, ptr %19, align 4
  %21 = load ptr, ptr %cpu_addr, align 4
  %arrayidx45 = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 939524288, ptr %arrayidx45, align 4
  %23 = load ptr, ptr %cpu_addr, align 4
  %arrayidx52 = getelementptr i32, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 255, ptr %arrayidx52, align 4
  %25 = load ptr, ptr %cpu_addr, align 4
  %arrayidx59 = getelementptr i32, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 64, ptr %arrayidx59, align 4
  %27 = load ptr, ptr %cpu_addr, align 4
  %arrayidx66 = getelementptr i32, ptr %27, i32 4
  %28 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 80, ptr %arrayidx66, align 4
  %29 = load ptr, ptr %cpu_addr, align 4
  %arrayidx73 = getelementptr i32, ptr %29, i32 5
  %30 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %arrayidx73, align 4
  %31 = ptrtoint ptr %d_rps1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %d_rps1, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpu_addr, align 4
  %arrayidx81 = getelementptr i32, ptr %35, i32 6
  %36 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %arrayidx81, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !633
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %d_rps1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %d_rps1, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mem, align 4
  %add.ptr90 = getelementptr i8, ptr %41, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %39) #9, !srcloc !626
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !634
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mem, align 4
  %add.ptr95 = getelementptr i8, ptr %43, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 2097184) #9, !srcloc !626
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #9
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 3, i32 noundef 80) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #9
  %64 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mem, align 4
  %add.ptr104 = getelementptr i8, ptr %65, i32 224
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #9, !srcloc !635
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !636
  %67 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp109 = icmp eq i32 %67, 0
  br i1 %cmp109, label %if.then110, label %if.then4.do.body117_crit_edge

if.then4.do.body117_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body117

if.then110:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  store i32 1, ptr @budgetpatch, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %do.body117

do.body117:                                       ; preds = %if.then110, %if.then4.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !637
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem, align 4
  %add.ptr121 = getelementptr i8, ptr %69, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 32) #9, !srcloc !626
  br label %if.end122

if.end122:                                        ; preds = %do.body117, %do.end3.if.end122_crit_edge
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 17136, i32 noundef 3520, i32 noundef 3) #13
  %tobool124.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool124.not, label %do.body126, label %if.end138

do.body126:                                       ; preds = %if.end122
  %70 = load i32, ptr @av7110_debug, align 4
  %and127 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body126.cleanup_crit_edge, label %do.end132

do.body126.cleanup_crit_edge:                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end132:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end138:                                        ; preds = %if.end122
  %ext_priv = getelementptr inbounds %struct.saa7146_pci_extension_data, ptr %pci_ext, i32 0, i32 1
  %71 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ext_priv, align 4
  %card_name = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %card_name to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %card_name, align 32
  %dev139 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %dev139 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %dev, ptr %dev139, align 8
  %ext_priv140 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %75 = ptrtoint ptr %ext_priv140 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call1.i.i.i, ptr %ext_priv140, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #9
  %76 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !638
  %77 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.49, ptr noundef %dev1.i) #9
  %79 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.end16.i [
    i32 0, label %if.end19.i
    i32 -2, label %do.end.i
  ]

do.end.i:                                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %get_firmware.exit.thread

do.end16.i:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %call.i) #12
  br label %get_firmware.exit.thread

if.end19.i:                                       ; preds = %if.end138
  %80 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fw.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200001, i32 %83)
  %cmp20.i = icmp ult i32 %83, 200001
  br i1 %cmp20.i, label %do.end24.i, label %if.end27.i

do.end24.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  %84 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %85) #9
  br label %get_firmware.exit.thread

if.end27.i:                                       ; preds = %if.end19.i
  %call29.i = call noalias ptr @vmalloc(i32 noundef %83) #13
  %bin_fw.i = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 88
  %86 = ptrtoint ptr %bin_fw.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call29.i, ptr %bin_fw.i, align 8
  %cmp31.i = icmp eq ptr %call29.i, null
  br i1 %cmp31.i, label %do.body33.i, label %if.end44.i

do.body33.i:                                      ; preds = %if.end27.i
  %87 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool34.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.end43.i_crit_edge, label %do.end38.i

do.body33.i.do.end43.i_crit_edge:                 ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i

do.end38.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #11
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.51) #12
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end38.i, %do.body33.i.do.end43.i_crit_edge
  %88 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %89) #9
  br label %get_firmware.exit.thread

if.end44.i:                                       ; preds = %if.end27.i
  %90 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %91, align 4
  %96 = call ptr @memcpy(ptr %call29.i, ptr %93, i32 %95)
  %97 = load i32, ptr %91, align 4
  %size_fw.i = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 89
  %98 = ptrtoint ptr %size_fw.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %size_fw.i, align 4
  %99 = ptrtoint ptr %call29.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %call29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %100)
  %cmp.not.i.i = icmp eq i8 %100, 65
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end44.i.do.end.i.i_crit_edge

if.end44.i.do.end.i.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end44.i
  %arrayidx2.i.i = getelementptr i8, ptr %call29.i, i32 1
  %101 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %102)
  %cmp4.not.i.i = icmp eq i8 %102, 86
  br i1 %cmp4.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %call29.i, i32 2
  %103 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %104)
  %cmp9.not.i.i = icmp eq i8 %104, 70
  br i1 %cmp9.not.i.i, label %lor.lhs.false11.i.i, label %lor.lhs.false6.i.i.do.end.i.i_crit_edge

lor.lhs.false6.i.i.do.end.i.i_crit_edge:          ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

lor.lhs.false11.i.i:                              ; preds = %lor.lhs.false6.i.i
  %arrayidx12.i.i = getelementptr i8, ptr %call29.i, i32 3
  %105 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %106)
  %cmp14.not.i.i = icmp eq i8 %106, 87
  br i1 %cmp14.not.i.i, label %if.end.i.i, label %lor.lhs.false11.i.i.do.end.i.i_crit_edge

lor.lhs.false11.i.i.do.end.i.i_crit_edge:         ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false11.i.i.do.end.i.i_crit_edge, %lor.lhs.false6.i.i.do.end.i.i_crit_edge, %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end44.i.do.end.i.i_crit_edge
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %get_firmware.exit.thread859

if.end.i.i:                                       ; preds = %lor.lhs.false11.i.i
  %add.ptr17.i.i = getelementptr i8, ptr %call29.i, i32 8
  %107 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %add.ptr17.i.i, align 1
  %add.ptr19.i.i = getelementptr i8, ptr %call29.i, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %108)
  %cmp20.i.i = icmp ugt i32 %108, 511
  br i1 %cmp20.i.i, label %do.end25.i.i, label %if.end28.i.i

do.end25.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #12
  br label %get_firmware.exit.thread859

if.end28.i.i:                                     ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call29.i, i32 4
  %109 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %add.ptr.i.i, align 1
  %call29.i.i = call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr19.i.i, i32 noundef %108) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %call29.i.i)
  %cmp30.not.i.i = icmp eq i32 %110, %call29.i.i
  br i1 %cmp30.not.i.i, label %if.end38.i.i, label %do.end35.i.i

do.end35.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call37.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  br label %get_firmware.exit.thread859

if.end38.i.i:                                     ; preds = %if.end28.i.i
  %bin_dpram.i.i = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 90
  %111 = ptrtoint ptr %bin_dpram.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr19.i.i, ptr %bin_dpram.i.i, align 64
  %size_dpram.i.i = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 91
  %112 = ptrtoint ptr %size_dpram.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %108, ptr %size_dpram.i.i, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 %108
  %add.ptr41.i.i = getelementptr i8, ptr %add.ptr39.i.i, i32 4
  %113 = ptrtoint ptr %add.ptr41.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %add.ptr41.i.i, align 1
  %add.ptr43.i.i = getelementptr i8, ptr %add.ptr41.i.i, i32 4
  %115 = add i32 %114, -300000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99999, i32 %115)
  %116 = icmp ult i32 %115, -99999
  %add.ptr51.i.i = getelementptr i8, ptr %call29.i, i32 %97
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr51.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr43.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %sub.ptr.sub.i.i)
  %cmp52.i.i = icmp ugt i32 %114, %sub.ptr.sub.i.i
  %or.cond.i = select i1 %116, i1 true, i1 %cmp52.i.i
  br i1 %or.cond.i, label %do.end57.i.i, label %if.end60.i.i

do.end57.i.i:                                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call59.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %114) #12
  br label %get_firmware.exit.thread859

if.end60.i.i:                                     ; preds = %if.end38.i.i
  %117 = ptrtoint ptr %add.ptr39.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %add.ptr39.i.i, align 1
  %call61.i.i = call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr43.i.i, i32 noundef %114) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %call61.i.i)
  %cmp62.not.i.i = icmp eq i32 %118, %call61.i.i
  br i1 %cmp62.not.i.i, label %if.end144, label %do.end67.i.i

do.end67.i.i:                                     ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call69.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  br label %get_firmware.exit.thread859

get_firmware.exit.thread859:                      ; preds = %do.end67.i.i, %do.end57.i.i, %do.end35.i.i, %do.end25.i.i, %do.end.i.i
  %119 = ptrtoint ptr %bin_fw.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bin_fw.i, align 8
  call void @vfree(ptr noundef %120) #9
  %121 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %122) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %err_kfree_0

get_firmware.exit.thread:                         ; preds = %do.end43.i, %do.end24.i, %do.end16.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -22, %do.end16.i ], [ -12, %do.end43.i ], [ -22, %do.end24.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %err_kfree_0

if.end144:                                        ; preds = %if.end60.i.i
  %bin_root.i.i = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 92
  %123 = ptrtoint ptr %bin_root.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr43.i.i, ptr %bin_root.i.i, align 8
  %size_root.i.i = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 93
  %124 = ptrtoint ptr %size_root.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %114, ptr %size_root.i.i, align 4
  %125 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %126) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 78
  %127 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %card_name, align 32
  %129 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pci, align 4
  %dev147 = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  %call148 = call i32 @dvb_register_adapter(ptr noundef %dvb_adapter, ptr noundef %128, ptr noundef null, ptr noundef %dev147, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %if.end144.err_put_firmware_1_crit_edge, label %do.body152

if.end144.err_put_firmware_1_crit_edge:           ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_firmware_1

do.body152:                                       ; preds = %if.end144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !639
  call void @arm_heavy_mb() #9
  %mem155 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %131 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mem155, align 4
  %add.ptr156 = getelementptr i8, ptr %132, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 20480) #9, !srcloc !626
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 5
  %name = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 5, i32 12
  %133 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ext_priv, align 4
  %call158 = call i32 @strscpy(ptr noundef %name, ptr noundef %134, i32 noundef 48) #9
  %call160 = call i32 @saa7146_i2c_adapter_prepare(ptr noundef %dev, ptr noundef %i2c_adap, i32 noundef 0) #9
  %call162 = call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %cmp163 = icmp slt i32 %call162, 0
  br i1 %cmp163, label %do.body152.err_dvb_unregister_adapter_2_crit_edge, label %if.end165

do.body152.err_dvb_unregister_adapter_2_crit_edge: ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_unregister_adapter_2

if.end165:                                        ; preds = %do.body152
  %proposed_mac = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 78, i32 4
  %call169 = call i32 @ttpci_eeprom_parse_mac(ptr noundef %i2c_adap, ptr noundef %proposed_mac) #9
  %135 = load i32, ptr @full_ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool170.not = icmp eq i32 %135, 0
  br i1 %tobool170.not, label %if.end165.if.end172_crit_edge, label %if.then171

if.end165.if.end172_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then171:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  %full_ts = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 45
  %136 = ptrtoint ptr %full_ts to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %full_ts, align 32
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %if.end165.if.end172_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm1.i) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm2.i) #9
  %137 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %mm2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #9
  %138 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %139 = call ptr @memset(ptr %138, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i, align 2
  %arrayidx1.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %flags2.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %flags2.i, align 2
  %142 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 85, ptr %arrayidx1.i, align 4
  %143 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 85, ptr %msgs.i, align 4
  %144 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %mm1.i, align 1
  %145 = ptrtoint ptr %138 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %138, align 4
  %len10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %146 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 1, ptr %len10.i, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %147 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %mm1.i, ptr %buf.i, align 4
  %buf14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %148 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %mm2.i, ptr %buf14.i, align 4
  %call.i828 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs.i, i32 noundef 2) #9
  %149 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %mm2.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm2.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm1.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %150)
  %cmp174 = icmp eq i8 %150, 79
  br i1 %cmp174, label %land.lhs.true, label %if.end172.if.end192_crit_edge

if.end172.if.end192_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

land.lhs.true:                                    ; preds = %if.end172
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm1.i829) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm2.i830) #9
  %151 = ptrtoint ptr %mm2.i830 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %mm2.i830, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i831) #9
  %152 = getelementptr inbounds i8, ptr %msgs.i831, i32 4
  %153 = call ptr @memset(ptr %152, i32 255, i32 16)
  %flags.i832 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i831, i32 0, i32 1
  %154 = ptrtoint ptr %flags.i832 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags.i832, align 2
  %arrayidx1.i833 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i831, i32 0, i32 1
  %flags2.i834 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i831, i32 0, i32 1, i32 1
  %155 = ptrtoint ptr %flags2.i834 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 1, ptr %flags2.i834, align 2
  %156 = ptrtoint ptr %arrayidx1.i833 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 85, ptr %arrayidx1.i833, align 4
  %157 = ptrtoint ptr %msgs.i831 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 85, ptr %msgs.i831, align 4
  %158 = ptrtoint ptr %mm1.i829 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %mm1.i829, align 1
  %159 = ptrtoint ptr %152 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 1, ptr %152, align 4
  %len10.i836 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i831, i32 0, i32 1, i32 2
  %160 = ptrtoint ptr %len10.i836 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 1, ptr %len10.i836, align 4
  %buf.i837 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i831, i32 0, i32 3
  %161 = ptrtoint ptr %buf.i837 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %mm1.i829, ptr %buf.i837, align 4
  %buf14.i838 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i831, i32 0, i32 1, i32 3
  %162 = ptrtoint ptr %buf14.i838 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %mm2.i830, ptr %buf14.i838, align 4
  %call.i840 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs.i831, i32 noundef 2) #9
  %163 = ptrtoint ptr %mm2.i830 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %mm2.i830, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i831) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm2.i830) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm1.i829) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %164)
  %cmp178 = icmp eq i8 %164, 69
  br i1 %cmp178, label %if.then180, label %land.lhs.true.if.end192_crit_edge

land.lhs.true.if.end192_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then180:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm1.i841) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm2.i842) #9
  %165 = ptrtoint ptr %mm2.i842 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %mm2.i842, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i843) #9
  %166 = getelementptr inbounds i8, ptr %msgs.i843, i32 4
  %167 = call ptr @memset(ptr %166, i32 255, i32 16)
  %flags.i844 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i843, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i844 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i844, align 2
  %arrayidx1.i845 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i843, i32 0, i32 1
  %flags2.i846 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i843, i32 0, i32 1, i32 1
  %169 = ptrtoint ptr %flags2.i846 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 1, ptr %flags2.i846, align 2
  %170 = ptrtoint ptr %arrayidx1.i845 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 85, ptr %arrayidx1.i845, align 4
  %171 = ptrtoint ptr %msgs.i843 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 85, ptr %msgs.i843, align 4
  %172 = ptrtoint ptr %mm1.i841 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 2, ptr %mm1.i841, align 1
  %173 = ptrtoint ptr %166 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 1, ptr %166, align 4
  %len10.i848 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i843, i32 0, i32 1, i32 2
  %174 = ptrtoint ptr %len10.i848 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 1, ptr %len10.i848, align 4
  %buf.i849 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i843, i32 0, i32 3
  %175 = ptrtoint ptr %buf.i849 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %mm1.i841, ptr %buf.i849, align 4
  %buf14.i850 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i843, i32 0, i32 1, i32 3
  %176 = ptrtoint ptr %buf14.i850 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %mm2.i842, ptr %buf14.i850, align 4
  %call.i852 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs.i843, i32 noundef 2) #9
  %177 = ptrtoint ptr %mm2.i842 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %mm2.i842, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i843) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm2.i842) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm1.i841) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %178)
  %cmp183.not = icmp eq i8 %178, -1
  %179 = and i8 %178, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool188.not = icmp eq i8 %179, 0
  %or.cond = or i1 %cmp183.not, %tobool188.not
  br i1 %or.cond, label %if.then180.if.end192_crit_edge, label %if.then189

if.then180.if.end192_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then189:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #11
  %full_ts190 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 45
  %180 = ptrtoint ptr %full_ts190 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %full_ts190, align 32
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %if.then180.if.end192_crit_edge, %land.lhs.true.if.end192_crit_edge, %if.end172.if.end192_crit_edge
  %full_ts193 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 45
  %181 = ptrtoint ptr %full_ts193 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %full_ts193, align 32, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool194.not = icmp eq i8 %182, 0
  br i1 %tobool194.not, label %if.else, label %do.end198

do.end198:                                        ; preds = %if.end192
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  %feedlock1 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 39
  call void @__raw_spin_lock_init(ptr noundef %feedlock1, ptr noundef nonnull @.str.26, ptr noundef nonnull @av7110_attach.__key, i16 noundef signext 3) #9
  %pt = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 43
  %call205 = call ptr @saa7146_vmalloc_build_pgtable(ptr noundef %1, i32 noundef 192512, ptr noundef %pt) #9
  %grabbing = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 42
  %183 = ptrtoint ptr %grabbing to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call205, ptr %grabbing, align 4
  %tobool207.not = icmp eq ptr %call205, null
  br i1 %tobool207.not, label %do.end198.err_i2c_del_3_crit_edge, label %do.body210

do.end198.err_i2c_del_3_crit_edge:                ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_del_3

do.body210:                                       ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !641
  call void @arm_heavy_mb() #9
  %184 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mem155, align 4
  %add.ptr214 = getelementptr i8, ptr %185, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 0) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !642
  call void @arm_heavy_mb() #9
  %186 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mem155, align 4
  %add.ptr219 = getelementptr i8, ptr %187, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 262148) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !643
  call void @arm_heavy_mb() #9
  %188 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mem155, align 4
  %add.ptr224 = getelementptr i8, ptr %189, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 393216) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !644
  call void @arm_heavy_mb() #9
  %190 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mem155, align 4
  %add.ptr229 = getelementptr i8, ptr %191, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229, i32 393222) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !645
  call void @arm_heavy_mb() #9
  %192 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mem155, align 4
  %add.ptr234 = getelementptr i8, ptr %193, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 96) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !646
  call void @arm_heavy_mb() #9
  %194 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mem155, align 4
  %add.ptr239 = getelementptr i8, ptr %195, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239, i32 65537) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !647
  call void @arm_heavy_mb() #9
  %196 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mem155, align 4
  %add.ptr246 = getelementptr i8, ptr %197, i32 72
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr246) #9, !srcloc !635
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !648
  %199 = and i32 %198, -7937
  %200 = or i32 %199, 7168
  %201 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mem155, align 4
  %add.ptr252 = getelementptr i8, ptr %202, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252, i32 %200) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !649
  call void @arm_heavy_mb() #9
  %203 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mem155, align 4
  %add.ptr257 = getelementptr i8, ptr %204, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257, i32 0) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !650
  call void @arm_heavy_mb() #9
  %205 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mem155, align 4
  %add.ptr262 = getelementptr i8, ptr %206, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262, i32 0) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !651
  call void @arm_heavy_mb() #9
  %207 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mem155, align 4
  %add.ptr267 = getelementptr i8, ptr %208, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr267, i32 15729152) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !652
  call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mem155, align 4
  %add.ptr272 = getelementptr i8, ptr %210, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr272, i32 2013331456) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !653
  call void @arm_heavy_mb() #9
  %dma = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 43, i32 2
  %211 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dma, align 8
  %or278 = or i32 %212, 2192
  %213 = call i32 @llvm.bswap.i32(i32 %or278)
  %214 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mem155, align 4
  %add.ptr280 = getelementptr i8, ptr %215, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 %213) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !654
  call void @arm_heavy_mb() #9
  %216 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mem155, align 4
  %add.ptr285 = getelementptr i8, ptr %217, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285, i32 2013331458) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !655
  call void @arm_heavy_mb() #9
  %218 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mem155, align 4
  %add.ptr290 = getelementptr i8, ptr %219, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 268439552) #9, !srcloc !626
  %vpe_tasklet = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 44
  call void @tasklet_setup(ptr noundef %vpe_tasklet, ptr noundef nonnull @vpeirq) #9
  br label %if.end506

if.else:                                          ; preds = %if.end192
  %220 = load i32, ptr @budgetpatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool291.not = icmp eq i32 %220, 0
  br i1 %tobool291.not, label %do.body470, label %do.body293

do.body293:                                       ; preds = %if.else
  %feedlock1294 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 39
  call void @__raw_spin_lock_init(ptr noundef %feedlock1294, ptr noundef nonnull @.str.26, ptr noundef nonnull @av7110_attach.__key.27, i16 noundef signext 3) #9
  %pt298 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 43
  %call299 = call ptr @saa7146_vmalloc_build_pgtable(ptr noundef %1, i32 noundef 192512, ptr noundef %pt298) #9
  %grabbing300 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 42
  %221 = ptrtoint ptr %grabbing300 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call299, ptr %grabbing300, align 4
  %tobool302.not = icmp eq ptr %call299, null
  br i1 %tobool302.not, label %do.body293.err_i2c_del_3_crit_edge, label %do.body305

do.body293.err_i2c_del_3_crit_edge:               ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_del_3

do.body305:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !656
  call void @arm_heavy_mb() #9
  %222 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mem155, align 4
  %add.ptr309 = getelementptr i8, ptr %223, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr309, i32 521150236) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !657
  call void @arm_heavy_mb() #9
  %224 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mem155, align 4
  %add.ptr314 = getelementptr i8, ptr %225, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr314, i32 1073758336) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !658
  call void @arm_heavy_mb() #9
  %226 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mem155, align 4
  %add.ptr319 = getelementptr i8, ptr %227, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 0) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !659
  call void @arm_heavy_mb() #9
  %228 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mem155, align 4
  %add.ptr324 = getelementptr i8, ptr %229, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr324, i32 131075) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !660
  call void @arm_heavy_mb() #9
  %230 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mem155, align 4
  %add.ptr329 = getelementptr i8, ptr %231, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr329, i32 393222) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !661
  call void @arm_heavy_mb() #9
  %232 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mem155, align 4
  %add.ptr334 = getelementptr i8, ptr %233, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr334, i32 96) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !662
  call void @arm_heavy_mb() #9
  %234 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mem155, align 4
  %add.ptr339 = getelementptr i8, ptr %235, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr339, i32 0) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !663
  call void @arm_heavy_mb() #9
  %236 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mem155, align 4
  %add.ptr344 = getelementptr i8, ptr %237, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr344, i32 0) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !664
  call void @arm_heavy_mb() #9
  %238 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mem155, align 4
  %add.ptr349 = getelementptr i8, ptr %239, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr349, i32 15729152) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !665
  call void @arm_heavy_mb() #9
  %dma354 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 43, i32 2
  %240 = ptrtoint ptr %dma354 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %dma354, align 8
  %or356 = or i32 %241, 2192
  %242 = call i32 @llvm.bswap.i32(i32 %or356)
  %243 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mem155, align 4
  %add.ptr358 = getelementptr i8, ptr %244, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr358, i32 %242) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !666
  call void @arm_heavy_mb() #9
  %245 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %mem155, align 4
  %add.ptr363 = getelementptr i8, ptr %246, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr363, i32 2013331456) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !667
  call void @arm_heavy_mb() #9
  %247 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mem155, align 4
  %add.ptr368 = getelementptr i8, ptr %248, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr368, i32 2013331458) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !668
  call void @arm_heavy_mb() #9
  %249 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mem155, align 4
  %add.ptr373 = getelementptr i8, ptr %250, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr373, i32 2080865287) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !669
  call void @arm_heavy_mb() #9
  %251 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mem155, align 4
  %add.ptr378 = getelementptr i8, ptr %252, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr378, i32 0) #9, !srcloc !626
  %d_rps1380 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22
  %cpu_addr381 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22, i32 1
  %253 = ptrtoint ptr %cpu_addr381 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cpu_addr381, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 8388640, ptr %254, align 4
  %256 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx390 = getelementptr i32, ptr %256, i32 1
  %257 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 939524288, ptr %arrayidx390, align 4
  %258 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx397 = getelementptr i32, ptr %258, i32 2
  %259 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 255, ptr %arrayidx397, align 4
  %260 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx404 = getelementptr i32, ptr %260, i32 3
  %261 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 80, ptr %arrayidx404, align 4
  %262 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx411 = getelementptr i32, ptr %262, i32 4
  %263 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 8388644, ptr %arrayidx411, align 4
  %264 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx418 = getelementptr i32, ptr %264, i32 5
  %265 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 939524288, ptr %arrayidx418, align 4
  %266 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx425 = getelementptr i32, ptr %266, i32 6
  %267 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 255, ptr %arrayidx425, align 4
  %268 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx432 = getelementptr i32, ptr %268, i32 7
  %269 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 64, ptr %arrayidx432, align 4
  %270 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx439 = getelementptr i32, ptr %270, i32 8
  %271 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 128, ptr %arrayidx439, align 4
  %272 = ptrtoint ptr %d_rps1380 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %d_rps1380, align 4
  %274 = call i32 @llvm.bswap.i32(i32 %273)
  %275 = ptrtoint ptr %cpu_addr381 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cpu_addr381, align 4
  %arrayidx448 = getelementptr i32, ptr %276, i32 9
  %277 = ptrtoint ptr %arrayidx448 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %274, ptr %arrayidx448, align 4
  call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 3, i32 noundef 64) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !670
  call void @arm_heavy_mb() #9
  %278 = ptrtoint ptr %d_rps1380 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %d_rps1380, align 4
  %280 = call i32 @llvm.bswap.i32(i32 %279)
  %281 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mem155, align 4
  %add.ptr457 = getelementptr i8, ptr %282, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr457, i32 %280) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !671
  call void @arm_heavy_mb() #9
  %283 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mem155, align 4
  %add.ptr462 = getelementptr i8, ptr %284, i32 208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr462, i32 1179648) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !672
  call void @arm_heavy_mb() #9
  %285 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mem155, align 4
  %add.ptr467 = getelementptr i8, ptr %286, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr467, i32 2097184) #9, !srcloc !626
  %vpe_tasklet468 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 44
  call void @tasklet_setup(ptr noundef %vpe_tasklet468, ptr noundef nonnull @vpeirq) #9
  br label %if.end506

do.body470:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !673
  call void @arm_heavy_mb() #9
  %287 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %mem155, align 4
  %add.ptr474 = getelementptr i8, ptr %288, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr474, i32 521142300) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !674
  call void @arm_heavy_mb() #9
  %289 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %mem155, align 4
  %add.ptr479 = getelementptr i8, ptr %290, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr479, i32 1073758336) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !675
  call void @arm_heavy_mb() #9
  %291 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mem155, align 4
  %add.ptr484 = getelementptr i8, ptr %292, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr484, i32 0) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !676
  call void @arm_heavy_mb() #9
  %293 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %mem155, align 4
  %add.ptr489 = getelementptr i8, ptr %294, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr489, i32 3) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !677
  call void @arm_heavy_mb() #9
  %295 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mem155, align 4
  %add.ptr494 = getelementptr i8, ptr %296, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr494, i32 393222) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !678
  call void @arm_heavy_mb() #9
  %297 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %mem155, align 4
  %add.ptr499 = getelementptr i8, ptr %298, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr499, i32 2080865287) #9, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !679
  call void @arm_heavy_mb() #9
  %299 = ptrtoint ptr %mem155 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mem155, align 4
  %add.ptr504 = getelementptr i8, ptr %300, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr504, i32 0) #9, !srcloc !626
  br label %if.end506

if.end506:                                        ; preds = %do.body470, %do.body305, %do.body210
  %debi_tasklet = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 10
  call void @tasklet_setup(ptr noundef %debi_tasklet, ptr noundef nonnull @debiirq) #9
  %gpio_tasklet = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 11
  call void @tasklet_setup(ptr noundef %gpio_tasklet, ptr noundef nonnull @gpioirq) #9
  %pid_mutex = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 47
  call void @__mutex_init(ptr noundef %pid_mutex, ptr noundef nonnull @.str.29, ptr noundef nonnull @av7110_attach.__key.28) #9
  %debilock = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 21
  call void @__raw_spin_lock_init(ptr noundef %debilock, ptr noundef nonnull @.str.31, ptr noundef nonnull @av7110_attach.__key.30, i16 noundef signext 3) #9
  %dcomlock = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 22
  call void @__mutex_init(ptr noundef %dcomlock, ptr noundef nonnull @.str.33, ptr noundef nonnull @av7110_attach.__key.32) #9
  %debitype = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 23
  %301 = ptrtoint ptr %debitype to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile i32 -1, ptr %debitype, align 4
  %osdwin = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 27
  %302 = ptrtoint ptr %osdwin to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 1, ptr %osdwin, align 4
  %osd_mutex = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 29
  call void @__mutex_init(ptr noundef %osd_mutex, ptr noundef nonnull @.str.35, ptr noundef nonnull @av7110_attach.__key.34) #9
  %303 = load i32, ptr @tv_standard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %303)
  %cmp520 = icmp eq i32 %303, 1
  %cond = zext i1 %cmp520 to i32
  %vidmode = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 31
  %304 = ptrtoint ptr %vidmode to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %cond, ptr %vidmode, align 4
  %arm_wait = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 70
  call void @__init_waitqueue_head(ptr noundef %arm_wait, ptr noundef nonnull @.str.37, ptr noundef nonnull @av7110_attach.__key.36) #9
  %arm_thread = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 69
  %305 = ptrtoint ptr %arm_thread to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr null, ptr %arm_thread, align 16
  %dev525 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %debi_bus = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 73
  %call.i853 = call ptr @dma_alloc_attrs(ptr noundef %dev525, i32 noundef 8192, ptr noundef %debi_bus, i32 noundef 3264, i32 noundef 0) #9
  %debi_virt = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 72
  %306 = ptrtoint ptr %debi_virt to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %call.i853, ptr %debi_virt, align 4
  %tobool528.not = icmp eq ptr %call.i853, null
  br i1 %tobool528.not, label %if.end506.err_saa71466_vfree_4_crit_edge, label %if.end530

if.end506.err_saa71466_vfree_4_crit_edge:         ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_saa71466_vfree_4

if.end530:                                        ; preds = %if.end506
  %call531 = call noalias ptr @vmalloc(i32 noundef 467968) #13
  %iobuf = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 13
  %307 = ptrtoint ptr %iobuf to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call531, ptr %iobuf, align 4
  %tobool533.not = icmp eq ptr %call531, null
  br i1 %tobool533.not, label %if.end530.err_pci_free_5_crit_edge, label %if.end535

if.end530.err_pci_free_5_crit_edge:               ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci_free_5

if.end535:                                        ; preds = %if.end530
  %call536 = call i32 @av7110_av_init(ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call536)
  %cmp537 = icmp slt i32 %call536, 0
  br i1 %cmp537, label %if.end535.err_iobuf_vfree_6_crit_edge, label %if.end540

if.end535.err_iobuf_vfree_6_crit_edge:            ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_iobuf_vfree_6

if.end540:                                        ; preds = %if.end535
  %308 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %iobuf, align 4
  %add.ptr543 = getelementptr i8, ptr %309, i32 196608
  %bmpbuf = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 16
  %310 = ptrtoint ptr %bmpbuf to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %add.ptr543, ptr %bmpbuf, align 16
  %bmpq = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 20
  call void @__init_waitqueue_head(ptr noundef %bmpq, ptr noundef nonnull @.str.39, ptr noundef nonnull @av7110_attach.__key.38) #9
  %call547 = call i32 @av7110_ca_init(ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call547)
  %cmp548 = icmp slt i32 %call547, 0
  br i1 %cmp548, label %if.end540.err_av7110_av_exit_7_crit_edge, label %if.end551

if.end540.err_av7110_av_exit_7_crit_edge:         ; preds = %if.end540
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_av7110_av_exit_7

if.end551:                                        ; preds = %if.end540
  %call552 = call i32 @av7110_bootarm(ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call552)
  %cmp553 = icmp slt i32 %call552, 0
  br i1 %cmp553, label %if.end551.err_av7110_ca_exit_8_crit_edge, label %if.end556

if.end551.err_av7110_ca_exit_8_crit_edge:         ; preds = %if.end551
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_av7110_ca_exit_8

if.end556:                                        ; preds = %if.end551
  %call557 = call i32 @av7110_firmversion(ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %cmp558 = icmp slt i32 %call557, 0
  br i1 %cmp558, label %if.end556.err_av7110_ca_exit_8_crit_edge, label %if.end561

if.end556.err_av7110_ca_exit_8_crit_edge:         ; preds = %if.end556
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_av7110_ca_exit_8

if.end561:                                        ; preds = %if.end556
  %arm_app = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 66
  %311 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arm_app, align 4
  %and562 = and i32 %312, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9473, i32 %and562)
  %cmp563 = icmp ult i32 %and562, 9473
  br i1 %cmp563, label %do.end568, label %if.end561.if.end573_crit_edge

if.end561.if.end573_crit_edge:                    ; preds = %if.end561
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end573

do.end568:                                        ; preds = %if.end561
  call void @__sanitizer_cov_trace_pc() #11
  %call572 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %and562) #12
  br label %if.end573

if.end573:                                        ; preds = %do.end568, %if.end561.if.end573_crit_edge
  %call574 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @arm_thread, ptr noundef nonnull %call1.i.i.i, i32 noundef -1, ptr noundef nonnull @.str.43) #9
  %cmp.i = icmp ugt ptr %call574, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then581, label %if.end583

if.then581:                                       ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #11
  %313 = ptrtoint ptr %call574 to i32
  br label %err_av7110_ca_exit_8

if.end583:                                        ; preds = %if.end573
  %call577 = call i32 @wake_up_process(ptr noundef %call574) #9
  %314 = ptrtoint ptr %arm_thread to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %call574, ptr %arm_thread, align 16
  %315 = load i32, ptr @volume, align 4
  %mixer = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 77
  %316 = ptrtoint ptr %mixer to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %mixer, align 4
  %volume_right = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 77, i32 1
  %317 = ptrtoint ptr %volume_right to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %315, ptr %volume_right, align 8
  %call586 = call fastcc i32 @av7110_register(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call586)
  %cmp587 = icmp slt i32 %call586, 0
  br i1 %cmp587, label %if.end583.err_arm_thread_stop_10_crit_edge, label %if.end590

if.end583.err_arm_thread_stop_10_crit_edge:       ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_arm_thread_stop_10

if.end590:                                        ; preds = %if.end583
  call fastcc void @init_av7110_av(ptr noundef nonnull %call1.i.i.i)
  %call591 = call i32 @av7110_init_v4l(ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call591)
  %cmp592 = icmp slt i32 %call591, 0
  br i1 %cmp592, label %if.end590.err_av7110_unregister_11_crit_edge, label %if.end595

if.end590.err_av7110_unregister_11_crit_edge:     ; preds = %if.end590
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_av7110_unregister_11

if.end595:                                        ; preds = %if.end590
  %priv = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 78, i32 5
  %318 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %call1.i.i.i, ptr %priv, align 4
  %call597 = call fastcc i32 @frontend_init(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call597)
  %cmp598 = icmp slt i32 %call597, 0
  br i1 %cmp598, label %err_av7110_exit_v4l_12, label %do.body602

do.body602:                                       ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #11
  %ioctl_mutex = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 96
  call void @__mutex_init(ptr noundef %ioctl_mutex, ptr noundef nonnull @.str.45, ptr noundef nonnull @av7110_attach.__key.44) #9
  %call605 = call i32 @av7110_ir_init(ptr noundef nonnull %call1.i.i.i) #9
  %319 = load i32, ptr @av7110_num, align 4
  %call610 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %319) #12
  %320 = load i32, ptr @av7110_num, align 4
  %inc611 = add i32 %320, 1
  store i32 %inc611, ptr @av7110_num, align 4
  br label %cleanup

err_av7110_exit_v4l_12:                           ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #11
  %call612 = call i32 @av7110_exit_v4l(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_av7110_unregister_11

err_av7110_unregister_11:                         ; preds = %err_av7110_exit_v4l_12, %if.end590.err_av7110_unregister_11_crit_edge
  %ret.1 = phi i32 [ %call591, %if.end590.err_av7110_unregister_11_crit_edge ], [ %call597, %err_av7110_exit_v4l_12 ]
  call fastcc void @dvb_unregister(ptr noundef nonnull %call1.i.i.i)
  br label %err_arm_thread_stop_10

err_arm_thread_stop_10:                           ; preds = %err_av7110_unregister_11, %if.end583.err_arm_thread_stop_10_crit_edge
  %ret.2 = phi i32 [ %call586, %if.end583.err_arm_thread_stop_10_crit_edge ], [ %ret.1, %err_av7110_unregister_11 ]
  %321 = ptrtoint ptr %arm_thread to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %arm_thread, align 16
  %tobool.not.i = icmp eq ptr %322, null
  br i1 %tobool.not.i, label %err_arm_thread_stop_10.av7110_arm_sync.exit_crit_edge, label %if.then.i

err_arm_thread_stop_10.av7110_arm_sync.exit_crit_edge: ; preds = %err_arm_thread_stop_10
  call void @__sanitizer_cov_trace_pc() #11
  br label %av7110_arm_sync.exit

if.then.i:                                        ; preds = %err_arm_thread_stop_10
  call void @__sanitizer_cov_trace_pc() #11
  %call.i855 = call i32 @kthread_stop(ptr noundef nonnull %322) #9
  br label %av7110_arm_sync.exit

av7110_arm_sync.exit:                             ; preds = %if.then.i, %err_arm_thread_stop_10.av7110_arm_sync.exit_crit_edge
  %323 = ptrtoint ptr %arm_thread to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr null, ptr %arm_thread, align 16
  br label %err_av7110_ca_exit_8

err_av7110_ca_exit_8:                             ; preds = %av7110_arm_sync.exit, %if.then581, %if.end556.err_av7110_ca_exit_8_crit_edge, %if.end551.err_av7110_ca_exit_8_crit_edge
  %ret.3 = phi i32 [ %call552, %if.end551.err_av7110_ca_exit_8_crit_edge ], [ %call557, %if.end556.err_av7110_ca_exit_8_crit_edge ], [ %313, %if.then581 ], [ %ret.2, %av7110_arm_sync.exit ]
  call void @av7110_ca_exit(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_av7110_av_exit_7

err_av7110_av_exit_7:                             ; preds = %err_av7110_ca_exit_8, %if.end540.err_av7110_av_exit_7_crit_edge
  %ret.4 = phi i32 [ %call547, %if.end540.err_av7110_av_exit_7_crit_edge ], [ %ret.3, %err_av7110_ca_exit_8 ]
  call void @av7110_av_exit(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_iobuf_vfree_6

err_iobuf_vfree_6:                                ; preds = %err_av7110_av_exit_7, %if.end535.err_iobuf_vfree_6_crit_edge
  %ret.5 = phi i32 [ %call536, %if.end535.err_iobuf_vfree_6_crit_edge ], [ %ret.4, %err_av7110_av_exit_7 ]
  %324 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %iobuf, align 4
  call void @vfree(ptr noundef %325) #9
  br label %err_pci_free_5

err_pci_free_5:                                   ; preds = %err_iobuf_vfree_6, %if.end530.err_pci_free_5_crit_edge
  %ret.6 = phi i32 [ %ret.5, %err_iobuf_vfree_6 ], [ -12, %if.end530.err_pci_free_5_crit_edge ]
  %326 = ptrtoint ptr %debi_virt to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %debi_virt, align 4
  %328 = ptrtoint ptr %debi_bus to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %debi_bus, align 16
  call void @dma_free_attrs(ptr noundef %dev525, i32 noundef 8192, ptr noundef %327, i32 noundef %329, i32 noundef 0) #9
  br label %err_saa71466_vfree_4

err_saa71466_vfree_4:                             ; preds = %err_pci_free_5, %if.end506.err_saa71466_vfree_4_crit_edge
  %ret.7 = phi i32 [ %ret.6, %err_pci_free_5 ], [ -12, %if.end506.err_saa71466_vfree_4_crit_edge ]
  %grabbing617 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 42
  %330 = ptrtoint ptr %grabbing617 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %grabbing617, align 4
  %tobool618.not = icmp eq ptr %331, null
  br i1 %tobool618.not, label %err_saa71466_vfree_4.err_i2c_del_3_crit_edge, label %if.then619

err_saa71466_vfree_4.err_i2c_del_3_crit_edge:     ; preds = %err_saa71466_vfree_4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_del_3

if.then619:                                       ; preds = %err_saa71466_vfree_4
  call void @__sanitizer_cov_trace_pc() #11
  %pt621 = getelementptr inbounds %struct.av7110, ptr %call1.i.i.i, i32 0, i32 43
  call void @saa7146_vfree_destroy_pgtable(ptr noundef %1, ptr noundef nonnull %331, ptr noundef %pt621) #9
  br label %err_i2c_del_3

err_i2c_del_3:                                    ; preds = %if.then619, %err_saa71466_vfree_4.err_i2c_del_3_crit_edge, %do.body293.err_i2c_del_3_crit_edge, %do.end198.err_i2c_del_3_crit_edge
  %ret.8 = phi i32 [ %ret.7, %if.then619 ], [ %ret.7, %err_saa71466_vfree_4.err_i2c_del_3_crit_edge ], [ -12, %do.end198.err_i2c_del_3_crit_edge ], [ -12, %do.body293.err_i2c_del_3_crit_edge ]
  call void @i2c_del_adapter(ptr noundef %i2c_adap) #9
  br label %err_dvb_unregister_adapter_2

err_dvb_unregister_adapter_2:                     ; preds = %err_i2c_del_3, %do.body152.err_dvb_unregister_adapter_2_crit_edge
  %ret.9 = phi i32 [ %call162, %do.body152.err_dvb_unregister_adapter_2_crit_edge ], [ %ret.8, %err_i2c_del_3 ]
  %call625 = call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter) #9
  br label %err_put_firmware_1

err_put_firmware_1:                               ; preds = %err_dvb_unregister_adapter_2, %if.end144.err_put_firmware_1_crit_edge
  %ret.10 = phi i32 [ %call148, %if.end144.err_put_firmware_1_crit_edge ], [ %ret.9, %err_dvb_unregister_adapter_2 ]
  %332 = ptrtoint ptr %bin_fw.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %bin_fw.i, align 8
  call void @vfree(ptr noundef %333) #9
  br label %err_kfree_0

err_kfree_0:                                      ; preds = %err_put_firmware_1, %get_firmware.exit.thread, %get_firmware.exit.thread859
  %ret.11 = phi i32 [ %ret.10, %err_put_firmware_1 ], [ %retval.0.i.ph, %get_firmware.exit.thread ], [ -22, %get_firmware.exit.thread859 ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_kfree_0, %do.body602, %do.end132, %do.body126.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end132 ], [ -12, %do.body126.cleanup_crit_edge ], [ %ret.11, %err_kfree_0 ], [ %call597, %do.body602 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_detach(ptr noundef %saa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %saa, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %2 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.278, ptr noundef %1) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @av7110_ir_exit(ptr noundef %1) #9
  %3 = load i32, ptr @budgetpatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.body9

lor.lhs.false:                                    ; preds = %do.end3
  %full_ts = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.do.body13_crit_edge

lor.lhs.false.do.body13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body9:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !680
  tail call void @arm_heavy_mb() #9
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %saa, i32 0, i32 5
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 32) #9, !srcloc !626
  tail call void @saa7146_setgpio(ptr noundef %saa, i32 noundef 3, i32 noundef 64) #9
  br label %do.body13

do.body13:                                        ; preds = %do.body9, %lor.lhs.false.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !681
  tail call void @arm_heavy_mb() #9
  %mem16 = getelementptr inbounds %struct.saa7146_dev, ptr %saa, i32 0, i32 5
  %8 = ptrtoint ptr %mem16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem16, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 4096) #9, !srcloc !626
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %saa, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !682
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %mem16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem16, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 220
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !635
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !683
  %13 = and i32 %12, -262145
  %14 = ptrtoint ptr %mem16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem16, align 4
  %add.ptr12.i = getelementptr i8, ptr %15, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %13) #9, !srcloc !626
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !684
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %mem16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem16, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 262144) #9, !srcloc !626
  tail call void @msleep(i32 noundef 50) #9
  %vpe_tasklet = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 44
  tail call void @tasklet_kill(ptr noundef %vpe_tasklet) #9
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %saa, i32 0, i32 8
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 4
  %grabbing = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 42
  %20 = ptrtoint ptr %grabbing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grabbing, align 4
  %pt = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 43
  tail call void @saa7146_vfree_destroy_pgtable(ptr noundef %19, ptr noundef %21, ptr noundef %pt) #9
  br label %if.end23

if.end23:                                         ; preds = %do.body13, %lor.lhs.false.if.end23_crit_edge
  %call24 = tail call i32 @av7110_exit_v4l(ptr noundef %1) #9
  %arm_thread.i = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 69
  %22 = ptrtoint ptr %arm_thread.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arm_thread.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end23.av7110_arm_sync.exit_crit_edge, label %if.then.i

if.end23.av7110_arm_sync.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %av7110_arm_sync.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %23) #9
  br label %av7110_arm_sync.exit

av7110_arm_sync.exit:                             ; preds = %if.then.i, %if.end23.av7110_arm_sync.exit_crit_edge
  %24 = ptrtoint ptr %arm_thread.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arm_thread.i, align 8
  %debi_tasklet = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %debi_tasklet) #9
  %gpio_tasklet = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 11
  tail call void @tasklet_kill(ptr noundef %gpio_tasklet) #9
  tail call fastcc void @dvb_unregister(ptr noundef %1)
  %int_slock.i62 = getelementptr inbounds %struct.saa7146_dev, ptr %saa, i32 0, i32 10
  %call2.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i62) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !682
  tail call void @arm_heavy_mb() #9
  %mem.i64 = getelementptr inbounds %struct.saa7146_dev, ptr %saa, i32 0, i32 5
  %25 = ptrtoint ptr %mem.i64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem.i64, align 4
  %add.ptr.i65 = getelementptr i8, ptr %26, i32 220
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #9, !srcloc !635
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !683
  %28 = and i32 %27, -134219777
  %29 = ptrtoint ptr %mem.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mem.i64, align 4
  %add.ptr12.i67 = getelementptr i8, ptr %30, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i67, i32 %28) #9, !srcloc !626
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i62, i32 noundef %call2.i63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !685
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %mem.i64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem.i64, align 4
  %add.ptr29 = getelementptr i8, ptr %32, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 134219776) #9, !srcloc !626
  tail call void @av7110_ca_exit(ptr noundef %1) #9
  tail call void @av7110_av_exit(ptr noundef %1) #9
  %iobuf = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 13
  %33 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobuf, align 4
  tail call void @vfree(ptr noundef %34) #9
  %pci30 = getelementptr inbounds %struct.saa7146_dev, ptr %saa, i32 0, i32 8
  %35 = ptrtoint ptr %pci30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci30, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %debi_virt = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 72
  %37 = ptrtoint ptr %debi_virt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debi_virt, align 4
  %debi_bus = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 73
  %39 = ptrtoint ptr %debi_bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debi_bus, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %38, i32 noundef %40, i32 noundef 0) #9
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #9
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 78
  %call31 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter) #9
  %41 = load i32, ptr @av7110_num, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr @av7110_num, align 4
  %bin_fw.i = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 88
  %42 = ptrtoint ptr %bin_fw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bin_fw.i, align 8
  tail call void @vfree(ptr noundef %43) #9
  tail call void @kfree(ptr noundef %1) #9
  %44 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %ext_priv, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @av7110_irq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %isr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %2 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isr, align 4
  %and = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %dev1 = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !682
  tail call void @arm_heavy_mb() #9
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 220
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !635
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !683
  %9 = and i32 %8, -2049
  %10 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %11, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %9) #9, !srcloc !626
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !686
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 8
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2048) #9, !srcloc !626
  %state.i = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %debi_tasklet = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %debi_tasklet) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %isr, align 4
  %and3 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %state.i17 = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 11, i32 1
  %call.i18 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.then.i20, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i20:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %gpio_tasklet = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %gpio_tasklet) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then.i20, %if.then5.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %18 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %isr, align 4
  %and7 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  %state.i22 = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 44, i32 1
  %call.i23 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %if.then.i25, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then.i25:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %vpe_tasklet = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 44
  tail call void @__tasklet_schedule(ptr noundef %vpe_tasklet) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then.i25, %if.then9.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_i2c_adapter_prepare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_eeprom_parse_mac(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @saa7146_vmalloc_build_pgtable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpeirq(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %grabbing = getelementptr i8, ptr %t, i32 -28
  %0 = ptrtoint ptr %grabbing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grabbing, align 4
  %ttbp = getelementptr i8, ptr %t, i32 -32
  %2 = ptrtoint ptr %ttbp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ttbp, align 8
  %dev = getelementptr i8, ptr %t, i32 -5568
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %mem1 = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem1, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 296
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !635
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !687
  %full_ts = getelementptr i8, ptr %t, i32 24
  %10 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond.v = select i1 %tobool.not, i32 -888, i32 -2536
  %cond = getelementptr i8, ptr %t, i32 %cond.v
  %rem = urem i32 %9, 188
  %sub = sub i32 %9, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 192511, i32 %sub)
  %cmp = icmp ugt i32 %sub, 192511
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %ttbp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %ttbp, align 8
  %feeding1 = getelementptr i8, ptr %t, i32 -36
  %13 = ptrtoint ptr %feeding1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %feeding1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp8 = icmp eq i32 %sub, %3
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %slist = getelementptr i8, ptr %t, i32 -8
  %19 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slist, align 8
  %nents = getelementptr i8, ptr %t, i32 -4
  %21 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nents, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %dev12, ptr noundef %20, i32 noundef %22, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp14 = icmp ugt i32 %sub, %3
  %add.ptr16 = getelementptr i8, ptr %1, i32 %3
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %sub17 = sub i32 %sub, %3
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %sub19 = sub i32 192512, %3
  %div20 = udiv i32 %sub19, 188
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %cond, ptr noundef %add.ptr16, i32 noundef %div20) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then15
  %sub17.sink = phi i32 [ %sub17, %if.then15 ], [ %9, %if.else ]
  %add.ptr16.sink = phi ptr [ %add.ptr16, %if.then15 ], [ %1, %if.else ]
  %div = udiv i32 %sub17.sink, 188
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %cond, ptr noundef %add.ptr16.sink, i32 noundef %div) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @debiirq(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4400
  %debitype = getelementptr i8, ptr %t, i32 492
  %0 = ptrtoint ptr %debitype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %debitype, align 4
  %2 = lshr i32 %1, 8
  %and = and i32 %2, 31
  %3 = load i32, ptr @av7110_debug, align 4
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %1) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %do.end9, label %if.end24

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %dev = getelementptr i8, ptr %t, i32 -1384
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 272
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !635
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !688
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %mem18 = getelementptr inbounds %struct.saa7146_dev, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %mem18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem18, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 276
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !635
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !689
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %4, i32 noundef %10, i32 noundef %16) #12
  br label %debi_done

if.end24:                                         ; preds = %do.end5
  %17 = ptrtoint ptr %debitype to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 -1, ptr %debitype, align 4
  %trunc = trunc i32 %1 to i8
  %18 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %trunc, label %if.end24.debi_done_crit_edge [
    i8 18, label %sw.bb
    i8 16, label %sw.bb27
    i8 2, label %if.end24.sw.bb35_crit_edge
    i8 1, label %if.end24.sw.bb35_crit_edge177
    i8 9, label %if.end24.sw.bb35_crit_edge178
    i8 11, label %sw.bb45
    i8 5, label %sw.bb73
    i8 4, label %sw.bb77
    i8 12, label %do.body87
    i8 6, label %do.body100
    i8 7, label %do.body113
  ]

if.end24.sw.bb35_crit_edge178:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

if.end24.sw.bb35_crit_edge177:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

if.end24.sw.bb35_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35

if.end24.debi_done_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %debi_done

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %demux = getelementptr i8, ptr %t, i32 1648
  %debi_virt = getelementptr i8, ptr %t, i32 11676
  %19 = ptrtoint ptr %debi_virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %debi_virt, align 4
  %debilen = getelementptr i8, ptr %t, i32 496
  %21 = ptrtoint ptr %debilen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %debilen, align 8
  %div = sdiv i32 %22, 188
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux, ptr noundef %20, i32 noundef %div) #9
  br label %if.then126

sw.bb27:                                          ; preds = %if.end24
  %recording = getelementptr i8, ptr %t, i32 2264
  %23 = ptrtoint ptr %recording to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %recording, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %sw.bb27.if.then126_crit_edge, label %if.then30

sw.bb27.if.then126_crit_edge:                     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.then30:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %p2t = getelementptr i8, ptr %t, i32 11032
  %arrayidx = getelementptr [2 x %struct.dvb_filter_pes2ts], ptr %p2t, i32 0, i32 %and
  %debi_virt31 = getelementptr i8, ptr %t, i32 11676
  %25 = ptrtoint ptr %debi_virt31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %debi_virt31, align 4
  %debilen32 = getelementptr i8, ptr %t, i32 496
  %27 = ptrtoint ptr %debilen32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %debilen32, align 8
  %call33 = tail call i32 @av7110_record_cb(ptr noundef %arrayidx, ptr noundef %26, i32 noundef %28) #9
  br label %if.then126

sw.bb35:                                          ; preds = %if.end24.sw.bb35_crit_edge, %if.end24.sw.bb35_crit_edge177, %if.end24.sw.bb35_crit_edge178
  %handle2filter = getelementptr i8, ptr %t, i32 4376
  %arrayidx36 = getelementptr [32 x ptr], ptr %handle2filter, i32 0, i32 %and
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %sw.bb35.if.then126_crit_edge, label %if.then38

sw.bb35.if.then126_crit_edge:                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.then38:                                        ; preds = %sw.bb35
  %debi_virt39 = getelementptr i8, ptr %t, i32 11676
  %31 = ptrtoint ptr %debi_virt39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debi_virt39, align 4
  %debilen40 = getelementptr i8, ptr %t, i32 496
  %33 = ptrtoint ptr %debilen40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %debilen40, align 8
  %feed.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %30, i32 0, i32 5
  %35 = ptrtoint ptr %feed.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %feed.i, align 4
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %demux.i, align 4
  %frontend.i = getelementptr inbounds %struct.dmx_demux, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.then38.if.then126_crit_edge, label %if.end.i

if.then38.if.then126_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.end.i:                                         ; preds = %if.then38
  %source.i = getelementptr inbounds %struct.dmx_frontend, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %source.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i = icmp eq i32 %42, 0
  br i1 %cmp.i, label %if.end.i.if.then126_crit_edge, label %if.end6.i

if.end.i.if.then126_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.end6.i:                                        ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %30, i32 0, i32 8
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %44, label %if.end6.i.if.then126_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb40.i
  ]

if.end6.i.if.then126_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

sw.bb.i:                                          ; preds = %if.end6.i
  %arrayidx.i = getelementptr i8, ptr %32, i32 1
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %47 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx7.i = getelementptr i8, ptr %32, i32 2
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %49 to i32
  %shl.masked.i = and i32 %shl.i, 3840
  %and.i = add nuw nsw i32 %conv8.i, 3
  %add.i = add nuw nsw i32 %and.i, %shl.masked.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %34)
  %cmp9.not.i = icmp eq i32 %add.i, %34
  br i1 %cmp9.not.i, label %if.end12.i, label %sw.bb.i.if.then126_crit_edge

sw.bb.i.if.then126_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.end12.i:                                       ; preds = %sw.bb.i
  %doneq.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %30, i32 0, i32 3
  %50 = ptrtoint ptr %doneq.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %doneq.i, align 4, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool13.not.i = icmp eq i8 %51, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end37.i_crit_edge, label %for.body.preheader.i

if.end12.i.if.end37.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

for.body.preheader.i:                             ; preds = %if.end12.i
  %52 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %30, align 1
  %54 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %32, align 1
  %xor221.i = xor i8 %55, %53
  %arrayidx24.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 0
  %56 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx24.i, align 1
  %and272.i = and i8 %57, %xor221.i
  %arrayidx18.1.i = getelementptr [18 x i8], ptr %30, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx18.1.i, align 1
  %xor221.1.i = xor i8 %59, %47
  %arrayidx24.1.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx24.1.i, align 1
  %and272.1.i = and i8 %61, %xor221.1.i
  %or293.1.i = or i8 %and272.1.i, %and272.i
  %arrayidx18.2.i = getelementptr [18 x i8], ptr %30, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx18.2.i, align 1
  %xor221.2.i = xor i8 %63, %49
  %arrayidx24.2.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx24.2.i, align 1
  %and272.2.i = and i8 %65, %xor221.2.i
  %or293.2.i = or i8 %or293.1.i, %and272.2.i
  %arrayidx18.3.i = getelementptr [18 x i8], ptr %30, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx18.3.i, align 1
  %arrayidx20.3.i = getelementptr i8, ptr %32, i32 3
  %68 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx20.3.i, align 1
  %xor221.3.i = xor i8 %69, %67
  %arrayidx24.3.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 3
  %70 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx24.3.i, align 1
  %and272.3.i = and i8 %71, %xor221.3.i
  %or293.3.i = or i8 %or293.2.i, %and272.3.i
  %arrayidx18.4.i = getelementptr [18 x i8], ptr %30, i32 0, i32 4
  %72 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx18.4.i, align 1
  %arrayidx20.4.i = getelementptr i8, ptr %32, i32 4
  %74 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx20.4.i, align 1
  %xor221.4.i = xor i8 %75, %73
  %arrayidx24.4.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 4
  %76 = ptrtoint ptr %arrayidx24.4.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx24.4.i, align 1
  %and272.4.i = and i8 %77, %xor221.4.i
  %or293.4.i = or i8 %or293.3.i, %and272.4.i
  %arrayidx18.5.i = getelementptr [18 x i8], ptr %30, i32 0, i32 5
  %78 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx18.5.i, align 1
  %arrayidx20.5.i = getelementptr i8, ptr %32, i32 5
  %80 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx20.5.i, align 1
  %xor221.5.i = xor i8 %81, %79
  %arrayidx24.5.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 5
  %82 = ptrtoint ptr %arrayidx24.5.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx24.5.i, align 1
  %and272.5.i = and i8 %83, %xor221.5.i
  %or293.5.i = or i8 %or293.4.i, %and272.5.i
  %arrayidx18.6.i = getelementptr [18 x i8], ptr %30, i32 0, i32 6
  %84 = ptrtoint ptr %arrayidx18.6.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx18.6.i, align 1
  %arrayidx20.6.i = getelementptr i8, ptr %32, i32 6
  %86 = ptrtoint ptr %arrayidx20.6.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx20.6.i, align 1
  %xor221.6.i = xor i8 %87, %85
  %arrayidx24.6.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 6
  %88 = ptrtoint ptr %arrayidx24.6.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx24.6.i, align 1
  %and272.6.i = and i8 %89, %xor221.6.i
  %or293.6.i = or i8 %or293.5.i, %and272.6.i
  %arrayidx18.7.i = getelementptr [18 x i8], ptr %30, i32 0, i32 7
  %90 = ptrtoint ptr %arrayidx18.7.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx18.7.i, align 1
  %arrayidx20.7.i = getelementptr i8, ptr %32, i32 7
  %92 = ptrtoint ptr %arrayidx20.7.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx20.7.i, align 1
  %xor221.7.i = xor i8 %93, %91
  %arrayidx24.7.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 7
  %94 = ptrtoint ptr %arrayidx24.7.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx24.7.i, align 1
  %and272.7.i = and i8 %95, %xor221.7.i
  %or293.7.i = or i8 %or293.6.i, %and272.7.i
  %arrayidx18.8.i = getelementptr [18 x i8], ptr %30, i32 0, i32 8
  %96 = ptrtoint ptr %arrayidx18.8.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx18.8.i, align 1
  %arrayidx20.8.i = getelementptr i8, ptr %32, i32 8
  %98 = ptrtoint ptr %arrayidx20.8.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx20.8.i, align 1
  %xor221.8.i = xor i8 %99, %97
  %arrayidx24.8.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 8
  %100 = ptrtoint ptr %arrayidx24.8.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx24.8.i, align 1
  %and272.8.i = and i8 %101, %xor221.8.i
  %or293.8.i = or i8 %or293.7.i, %and272.8.i
  %arrayidx18.9.i = getelementptr [18 x i8], ptr %30, i32 0, i32 9
  %102 = ptrtoint ptr %arrayidx18.9.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx18.9.i, align 1
  %arrayidx20.9.i = getelementptr i8, ptr %32, i32 9
  %104 = ptrtoint ptr %arrayidx20.9.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx20.9.i, align 1
  %xor221.9.i = xor i8 %105, %103
  %arrayidx24.9.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 9
  %106 = ptrtoint ptr %arrayidx24.9.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx24.9.i, align 1
  %and272.9.i = and i8 %107, %xor221.9.i
  %or293.9.i = or i8 %or293.8.i, %and272.9.i
  %arrayidx18.10.i = getelementptr [18 x i8], ptr %30, i32 0, i32 10
  %108 = ptrtoint ptr %arrayidx18.10.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx18.10.i, align 1
  %arrayidx20.10.i = getelementptr i8, ptr %32, i32 10
  %110 = ptrtoint ptr %arrayidx20.10.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx20.10.i, align 1
  %xor221.10.i = xor i8 %111, %109
  %arrayidx24.10.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 10
  %112 = ptrtoint ptr %arrayidx24.10.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx24.10.i, align 1
  %and272.10.i = and i8 %113, %xor221.10.i
  %or293.10.i = or i8 %or293.9.i, %and272.10.i
  %arrayidx18.11.i = getelementptr [18 x i8], ptr %30, i32 0, i32 11
  %114 = ptrtoint ptr %arrayidx18.11.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx18.11.i, align 1
  %arrayidx20.11.i = getelementptr i8, ptr %32, i32 11
  %116 = ptrtoint ptr %arrayidx20.11.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx20.11.i, align 1
  %xor221.11.i = xor i8 %117, %115
  %arrayidx24.11.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 11
  %118 = ptrtoint ptr %arrayidx24.11.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx24.11.i, align 1
  %and272.11.i = and i8 %119, %xor221.11.i
  %or293.11.i = or i8 %or293.10.i, %and272.11.i
  %arrayidx18.12.i = getelementptr [18 x i8], ptr %30, i32 0, i32 12
  %120 = ptrtoint ptr %arrayidx18.12.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx18.12.i, align 1
  %arrayidx20.12.i = getelementptr i8, ptr %32, i32 12
  %122 = ptrtoint ptr %arrayidx20.12.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx20.12.i, align 1
  %xor221.12.i = xor i8 %123, %121
  %arrayidx24.12.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 12
  %124 = ptrtoint ptr %arrayidx24.12.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx24.12.i, align 1
  %and272.12.i = and i8 %125, %xor221.12.i
  %or293.12.i = or i8 %or293.11.i, %and272.12.i
  %arrayidx18.13.i = getelementptr [18 x i8], ptr %30, i32 0, i32 13
  %126 = ptrtoint ptr %arrayidx18.13.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx18.13.i, align 1
  %arrayidx20.13.i = getelementptr i8, ptr %32, i32 13
  %128 = ptrtoint ptr %arrayidx20.13.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx20.13.i, align 1
  %xor221.13.i = xor i8 %129, %127
  %arrayidx24.13.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 13
  %130 = ptrtoint ptr %arrayidx24.13.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx24.13.i, align 1
  %and272.13.i = and i8 %131, %xor221.13.i
  %or293.13.i = or i8 %or293.12.i, %and272.13.i
  %arrayidx18.14.i = getelementptr [18 x i8], ptr %30, i32 0, i32 14
  %132 = ptrtoint ptr %arrayidx18.14.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx18.14.i, align 1
  %arrayidx20.14.i = getelementptr i8, ptr %32, i32 14
  %134 = ptrtoint ptr %arrayidx20.14.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx20.14.i, align 1
  %xor221.14.i = xor i8 %135, %133
  %arrayidx24.14.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 14
  %136 = ptrtoint ptr %arrayidx24.14.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx24.14.i, align 1
  %and272.14.i = and i8 %137, %xor221.14.i
  %or293.14.i = or i8 %or293.13.i, %and272.14.i
  %arrayidx18.15.i = getelementptr [18 x i8], ptr %30, i32 0, i32 15
  %138 = ptrtoint ptr %arrayidx18.15.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx18.15.i, align 1
  %arrayidx20.15.i = getelementptr i8, ptr %32, i32 15
  %140 = ptrtoint ptr %arrayidx20.15.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx20.15.i, align 1
  %xor221.15.i = xor i8 %141, %139
  %arrayidx24.15.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 15
  %142 = ptrtoint ptr %arrayidx24.15.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx24.15.i, align 1
  %and272.15.i = and i8 %143, %xor221.15.i
  %or293.15.i = or i8 %or293.14.i, %and272.15.i
  %arrayidx18.16.i = getelementptr [18 x i8], ptr %30, i32 0, i32 16
  %144 = ptrtoint ptr %arrayidx18.16.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx18.16.i, align 1
  %arrayidx20.16.i = getelementptr i8, ptr %32, i32 16
  %146 = ptrtoint ptr %arrayidx20.16.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx20.16.i, align 1
  %xor221.16.i = xor i8 %147, %145
  %arrayidx24.16.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 16
  %148 = ptrtoint ptr %arrayidx24.16.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx24.16.i, align 1
  %and272.16.i = and i8 %149, %xor221.16.i
  %or293.16.i = or i8 %or293.15.i, %and272.16.i
  %arrayidx18.17.i = getelementptr [18 x i8], ptr %30, i32 0, i32 17
  %150 = ptrtoint ptr %arrayidx18.17.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx18.17.i, align 1
  %arrayidx20.17.i = getelementptr i8, ptr %32, i32 17
  %152 = ptrtoint ptr %arrayidx20.17.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx20.17.i, align 1
  %xor221.17.i = xor i8 %153, %151
  %arrayidx24.17.i = getelementptr %struct.dvb_demux_filter, ptr %30, i32 0, i32 2, i32 17
  %154 = ptrtoint ptr %arrayidx24.17.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx24.17.i, align 1
  %and272.17.i = and i8 %155, %xor221.17.i
  %or293.17.i = or i8 %or293.16.i, %and272.17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or293.17.i)
  %tobool31.not.not.i = icmp eq i8 %or293.17.i, 0
  br i1 %tobool31.not.not.i, label %for.body.preheader.i.if.then126_crit_edge, label %for.body.preheader.i.if.end37.i_crit_edge

for.body.preheader.i.if.end37.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

for.body.preheader.i.if.then126_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.end37.i:                                       ; preds = %for.body.preheader.i.if.end37.i_crit_edge, %if.end12.i.if.end37.i_crit_edge
  %cb.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %36, i32 0, i32 1
  %156 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cb.i, align 8
  %call.i = tail call i32 %157(ptr noundef %32, i32 noundef %34, ptr noundef null, i32 noundef 0, ptr noundef nonnull %30, ptr noundef null) #9
  br label %if.then126

sw.bb40.i:                                        ; preds = %if.end6.i
  %ts_type.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %36, i32 0, i32 10
  %158 = ptrtoint ptr %ts_type.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ts_type.i, align 8
  %and42.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %sw.bb40.i.if.then126_crit_edge, label %if.end45.i

sw.bb40.i.if.then126_crit_edge:                   ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.end45.i:                                       ; preds = %sw.bb40.i
  %and48.i = and i32 %159, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.else.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %cb52.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %36, i32 0, i32 1
  %160 = ptrtoint ptr %cb52.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cb52.i, align 8
  %call55.i = tail call i32 %161(ptr noundef %32, i32 noundef %34, ptr noundef null, i32 noundef 0, ptr noundef %36, ptr noundef null) #9
  br label %if.then126

if.else.i:                                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %pid.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %36, i32 0, i32 6
  %162 = ptrtoint ptr %pid.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %pid.i, align 4
  %index.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %30, i32 0, i32 6
  %164 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %index.i, align 4
  %arrayidx57.i = getelementptr %struct.av7110, ptr %add.ptr, i32 0, i32 55, i32 %165
  tail call void @av7110_p2t_write(ptr noundef %32, i32 noundef %34, i16 noundef zeroext %163, ptr noundef %arrayidx57.i) #9
  br label %if.then126

sw.bb45:                                          ; preds = %if.end24
  %debi_virt46 = getelementptr i8, ptr %t, i32 11676
  %166 = ptrtoint ptr %debi_virt46 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %debi_virt46, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %167, align 1
  %conv = zext i8 %169 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %169)
  %cmp48 = icmp ult i8 %169, 2
  br i1 %cmp48, label %land.lhs.true, label %sw.bb45.if.else_crit_edge

sw.bb45.if.else_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb45
  %arrayidx50 = getelementptr i8, ptr %167, i32 2
  %170 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %171)
  %cmp52 = icmp eq i8 %171, -1
  br i1 %cmp52, label %if.then54, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx55 = getelementptr i8, ptr %167, i32 5
  %172 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %cmp57.not = icmp ne i8 %173, 0
  %spec.select = zext i1 %cmp57.not to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %173)
  %cmp63 = icmp ugt i8 %173, 5
  %or66 = or i32 %spec.select, 2
  %flags.1 = select i1 %cmp63, i32 %or66, i32 %spec.select
  %ci_slot = getelementptr i8, ptr %t, i32 620
  %arrayidx68 = getelementptr [2 x %struct.ca_slot_info], ptr %ci_slot, i32 0, i32 %conv
  %flags69 = getelementptr inbounds %struct.ca_slot_info, ptr %arrayidx68, i32 0, i32 2
  %174 = ptrtoint ptr %flags69 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %flags.1, ptr %flags69, align 4
  br label %if.then126

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb45.if.else_crit_edge
  %ci_rbuffer = getelementptr i8, ptr %t, i32 11724
  %debilen71 = getelementptr i8, ptr %t, i32 496
  %175 = ptrtoint ptr %debilen71 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %debilen71, align 8
  tail call void @ci_get_data(ptr noundef %ci_rbuffer, ptr noundef %167, i32 noundef %176) #9
  br label %if.then126

sw.bb73:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %debi_virt74 = getelementptr i8, ptr %t, i32 11676
  %177 = ptrtoint ptr %debi_virt74 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %debi_virt74, align 4
  %debilen75 = getelementptr i8, ptr %t, i32 496
  %179 = ptrtoint ptr %debilen75 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %debilen75, align 8
  %conv76 = trunc i32 %180 to i16
  tail call void @CI_handle(ptr noundef %add.ptr, ptr noundef %178, i16 noundef zeroext %conv76) #9
  br label %if.then126

sw.bb77:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %debi_virt78 = getelementptr i8, ptr %t, i32 11676
  %181 = ptrtoint ptr %debi_virt78 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %debi_virt78, align 4
  %arrayidx79 = getelementptr i8, ptr %182, i32 447
  %183 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %arrayidx79, align 1
  %184 = load ptr, ptr %debi_virt78, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %184) #12
  br label %if.then126

do.body87:                                        ; preds = %if.end24
  %185 = load i32, ptr @av7110_debug, align 4
  %and88 = and i32 %185, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.if.then126_crit_edge, label %do.end93

do.body87.if.then126_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.82) #12
  br label %if.then126

do.body100:                                       ; preds = %if.end24
  %186 = load i32, ptr @av7110_debug, align 4
  %and101 = and i32 %186, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.if.then126_crit_edge, label %do.end106

do.body100.if.then126_crit_edge:                  ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.82) #12
  br label %if.then126

do.body113:                                       ; preds = %if.end24
  %187 = load i32, ptr @av7110_debug, align 4
  %and114 = and i32 %187, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body113.if.then126_crit_edge, label %do.end119

do.body113.if.then126_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.82) #12
  br label %if.then126

debi_done:                                        ; preds = %if.end24.debi_done_crit_edge, %do.end9
  %debilock = getelementptr i8, ptr %t, i32 356
  tail call void @_raw_spin_lock(ptr noundef %debilock) #9
  br label %if.end127

if.then126:                                       ; preds = %do.end119, %do.body113.if.then126_crit_edge, %do.end106, %do.body100.if.then126_crit_edge, %do.end93, %do.body87.if.then126_crit_edge, %sw.bb77, %sw.bb73, %if.else, %if.then54, %if.else.i, %if.then50.i, %sw.bb40.i.if.then126_crit_edge, %if.end37.i, %for.body.preheader.i.if.then126_crit_edge, %sw.bb.i.if.then126_crit_edge, %if.end6.i.if.then126_crit_edge, %if.end.i.if.then126_crit_edge, %if.then38.if.then126_crit_edge, %sw.bb35.if.then126_crit_edge, %if.then30, %sw.bb27.if.then126_crit_edge, %sw.bb
  %xfer.0.ph = phi i32 [ 24564, %if.else.i ], [ 24564, %if.then50.i ], [ 24564, %sw.bb40.i.if.then126_crit_edge ], [ 24564, %if.end37.i ], [ 24564, %for.body.preheader.i.if.then126_crit_edge ], [ 24564, %sw.bb.i.if.then126_crit_edge ], [ 24564, %if.end6.i.if.then126_crit_edge ], [ 24564, %if.end.i.if.then126_crit_edge ], [ 24564, %if.then38.if.then126_crit_edge ], [ 24566, %do.body113.if.then126_crit_edge ], [ 24566, %do.end119 ], [ 24566, %do.body100.if.then126_crit_edge ], [ 24566, %do.end106 ], [ 24566, %do.body87.if.then126_crit_edge ], [ 24566, %do.end93 ], [ 24564, %if.then54 ], [ 24564, %if.else ], [ 24564, %sw.bb35.if.then126_crit_edge ], [ 24564, %sw.bb27.if.then126_crit_edge ], [ 24564, %if.then30 ], [ 24564, %sw.bb77 ], [ 24564, %sw.bb73 ], [ 24564, %sw.bb ]
  %debilock173 = getelementptr i8, ptr %t, i32 356
  tail call void @_raw_spin_lock(ptr noundef %debilock173) #9
  %call.i170 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef %xfer.0.ph, i32 noundef 0, i32 noundef 2) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %debi_done
  %debilock176 = phi ptr [ %debilock173, %if.then126 ], [ %debilock, %debi_done ]
  %call.i.i = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24572, i32 noundef 0, i32 noundef 2) #9
  tail call void @_raw_spin_unlock(ptr noundef %debilock176) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpioirq(ptr noundef %t) #0 align 64 {
entry:
  %event = alloca %struct.video_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4424
  %debitype = getelementptr i8, ptr %t, i32 468
  %0 = ptrtoint ptr %debitype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %debitype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %dev = getelementptr i8, ptr %t, i32 -1408
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 272
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !635
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !690
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %mem8 = getelementptr inbounds %struct.saa7146_dev, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %mem8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem8, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 276
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !635
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !691
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %2, i32 noundef %8, i32 noundef %14) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dev14 = getelementptr i8, ptr %t, i32 -1408
  %15 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev14, align 8
  %call15 = tail call i32 @saa7146_wait_for_debi_done(ptr noundef %16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end28, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/media/av7110/av7110.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 475, 0\0A.popsection", ""() #9, !srcloc !692
  unreachable

if.end28:                                         ; preds = %if.end
  %debilock = getelementptr i8, ptr %t, i32 332
  tail call void @_raw_spin_lock(ptr noundef %debilock) #9
  %call.i.i = tail call i32 @av7110_debiread(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24572, i32 noundef 2) #9
  %debi_virt.i.i = getelementptr i8, ptr %t, i32 11652
  %17 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debi_virt.i.i, align 4
  %res.i.0.extract.shift.i = lshr i32 %call.i.i, 16
  %res.i.0.extract.trunc.i = trunc i32 %res.i.0.extract.shift.i to i16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %res.i.0.extract.trunc.i, ptr %18, align 1
  %call.i = tail call i32 @av7110_debiread(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16628, i32 noundef 2) #9
  %20 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debi_virt.i.i, align 4
  %res.i.0.extract.shift = lshr i32 %call.i, 16
  %res.i.0.extract.trunc = trunc i32 %res.i.0.extract.shift to i16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %res.i.0.extract.trunc, ptr %21, align 1
  %23 = ptrtoint ptr %debitype to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %call.i, ptr %debitype, align 4
  %call.i447 = tail call i32 @av7110_debiread(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef 2) #9
  %24 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debi_virt.i.i, align 4
  %res.i446.0.extract.shift = lshr i32 %call.i447, 16
  %res.i446.0.extract.trunc = trunc i32 %res.i446.0.extract.shift to i16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %res.i446.0.extract.trunc, ptr %25, align 1
  %debilen = getelementptr i8, ptr %t, i32 472
  %27 = ptrtoint ptr %debilen to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %call.i447, ptr %debilen, align 8
  %call.i450 = tail call i32 @av7110_debiread(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24564, i32 noundef 2) #9
  %28 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %debi_virt.i.i, align 4
  %res.i449.0.extract.shift = lshr i32 %call.i450, 16
  %res.i449.0.extract.trunc = trunc i32 %res.i449.0.extract.shift to i16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %res.i449.0.extract.trunc, ptr %29, align 1
  %call.i453 = tail call i32 @av7110_debiread(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24566, i32 noundef 2) #9
  %31 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debi_virt.i.i, align 4
  %res.i452.0.extract.shift = lshr i32 %call.i453, 16
  %res.i452.0.extract.trunc = trunc i32 %res.i452.0.extract.shift to i16
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %res.i452.0.extract.trunc, ptr %32, align 1
  %34 = ptrtoint ptr %debilen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %debilen, align 8
  %add = add i32 %35, 3
  %and = and i32 %add, -4
  %36 = load i32, ptr @av7110_debug, align 4
  %and36 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end28.do.end48_crit_edge, label %do.end41

if.end28.do.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

do.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %debitype to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %debitype, align 4
  %39 = ptrtoint ptr %debilen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %debilen, align 8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.99, i32 noundef %38, i32 noundef %40) #12
  br label %do.end48

do.end48:                                         ; preds = %do.end41, %if.end28.do.end48_crit_edge
  %41 = ptrtoint ptr %debitype to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %debitype, align 4
  %trunc = trunc i32 %42 to i8
  %43 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.281)
  switch i8 %trunc, label %do.end290 [
    i8 19, label %do.end48.sw.epilog295_crit_edge
    i8 17, label %do.end48.sw.epilog295_crit_edge504
    i8 13, label %sw.bb51
    i8 12, label %sw.bb99
    i8 6, label %sw.bb137
    i8 7, label %sw.bb198
    i8 11, label %do.end48.sw.bb255_crit_edge
    i8 5, label %do.end48.sw.bb255_crit_edge505
    i8 1, label %do.end48.sw.bb255_crit_edge506
    i8 2, label %do.end48.sw.bb255_crit_edge507
    i8 9, label %do.end48.sw.bb255_crit_edge508
    i8 18, label %do.end48.do.body262_crit_edge
    i8 16, label %do.end48.do.body262_crit_edge509
    i8 4, label %sw.bb276
    i8 8, label %sw.bb284
  ]

do.end48.do.body262_crit_edge509:                 ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body262

do.end48.do.body262_crit_edge:                    ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body262

do.end48.sw.bb255_crit_edge508:                   ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

do.end48.sw.bb255_crit_edge507:                   ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

do.end48.sw.bb255_crit_edge506:                   ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

do.end48.sw.bb255_crit_edge505:                   ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

do.end48.sw.bb255_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb255

do.end48.sw.epilog295_crit_edge504:               ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog295

do.end48.sw.epilog295_crit_edge:                  ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog295

sw.bb51:                                          ; preds = %do.end48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %event) #9
  %44 = getelementptr inbounds %struct.video_event, ptr %event, i32 0, i32 2
  %45 = getelementptr inbounds %struct.video_event, ptr %event, i32 0, i32 2, i32 0, i32 1
  %46 = getelementptr inbounds %struct.video_event, ptr %event, i32 0, i32 2, i32 0, i32 2
  %47 = getelementptr inbounds i8, ptr %event, i32 4
  %48 = call ptr @memset(ptr %47, i32 255, i32 16)
  %call.i456 = tail call i32 @av7110_debiread(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24524, i32 noundef 2) #9
  %49 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %debi_virt.i.i, align 4
  %res.i455.0.extract.shift = lshr i32 %call.i456, 16
  %res.i455.0.extract.trunc = trunc i32 %res.i455.0.extract.shift to i16
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %res.i455.0.extract.trunc, ptr %50, align 1
  %video_size = getelementptr i8, ptr %t, i32 12472
  %52 = ptrtoint ptr %video_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i456, ptr %video_size, align 8
  %call.i459 = tail call i32 @av7110_debiread(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24526, i32 noundef 2) #9
  %53 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %debi_virt.i.i, align 4
  %res.i458.0.extract.shift = lshr i32 %call.i459, 16
  %res.i458.0.extract.trunc = trunc i32 %res.i458.0.extract.shift to i16
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %res.i458.0.extract.trunc, ptr %54, align 1
  %call.i461 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef 0, i32 noundef 2) #9
  %call.i462 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24564, i32 noundef 0, i32 noundef 2) #9
  %and54 = and i32 %call.i459, 4095
  %h = getelementptr i8, ptr %t, i32 12476
  %56 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and54, ptr %h, align 4
  %57 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %event, align 4
  %58 = ptrtoint ptr %video_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %video_size, align 8
  %60 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %44, align 4
  %61 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and54, ptr %45, align 4
  %shr = lshr i32 %call.i459, 12
  %and63 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and63)
  %switch.selectcmp = icmp eq i32 %and63, 4
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and63)
  %switch.selectcmp502 = icmp eq i32 %and63, 3
  %switch.select503 = select i1 %switch.selectcmp502, i32 1, i32 %switch.select
  %aspect_ratio = getelementptr i8, ptr %t, i32 12480
  %62 = ptrtoint ptr %aspect_ratio to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %switch.select503, ptr %aspect_ratio, align 8
  %63 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %switch.select503, ptr %46, align 4
  %video_format = getelementptr i8, ptr %t, i32 4300
  %64 = ptrtoint ptr %video_format to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %switch.select503, ptr %video_format, align 4
  %65 = load i32, ptr @av7110_debug, align 4
  %and82 = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %sw.bb51.do.end98_crit_edge, label %do.end87

sw.bb51.do.end98_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

do.end87:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  %aspect_ratio94 = getelementptr i8, ptr %t, i32 12480
  %66 = ptrtoint ptr %aspect_ratio94 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %aspect_ratio94, align 8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.99, i32 noundef %59, i32 noundef %and54, i32 noundef %67) #12
  br label %do.end98

do.end98:                                         ; preds = %do.end87, %sw.bb51.do.end98_crit_edge
  call void @dvb_video_add_event(ptr noundef %add.ptr, ptr noundef nonnull %event) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %event) #9
  br label %sw.epilog295

sw.bb99:                                          ; preds = %do.end48
  %ci_wbuffer = getelementptr i8, ptr %t, i32 11816
  %call100 = tail call i32 @dvb_ringbuffer_avail(ptr noundef %ci_wbuffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 3
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  %call.i463 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef 0, i32 noundef 2) #9
  %call.i464 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24558, i32 noundef 0, i32 noundef 2) #9
  %call.i465 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24566, i32 noundef 0, i32 noundef 2) #9
  br label %sw.epilog295

if.end103:                                        ; preds = %sw.bb99
  %68 = ptrtoint ptr %ci_wbuffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ci_wbuffer, align 4
  %pread = getelementptr i8, ptr %t, i32 11824
  %70 = ptrtoint ptr %pread to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pread, align 4
  %size = getelementptr i8, ptr %t, i32 11820
  %72 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size, align 4
  %rem = srem i32 %71, %73
  %arrayidx = getelementptr i8, ptr %69, i32 %rem
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %75 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %add107 = add i32 %71, 1
  %rem109 = srem i32 %add107, %73
  %arrayidx110 = getelementptr i8, ptr %69, i32 %rem109
  %76 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %77 to i32
  %or = or i32 %shl, %conv111
  %add112 = add nuw nsw i32 %or, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call100, i32 %add112)
  %cmp113 = icmp slt i32 %call100, %add112
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %call.i466 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef 0, i32 noundef 2) #9
  %call.i467 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24558, i32 noundef 0, i32 noundef 2) #9
  %call.i468 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24566, i32 noundef 0, i32 noundef 2) #9
  br label %sw.epilog295

if.end116:                                        ; preds = %if.end103
  %add118 = add i32 %71, 2
  %rem120 = srem i32 %add118, %73
  %78 = ptrtoint ptr %pread to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %rem120, ptr %pread, align 4
  %79 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %debi_virt.i.i, align 4
  tail call void @dvb_ringbuffer_read(ptr noundef %ci_wbuffer, ptr noundef %80, i32 noundef %or) #9
  %call.i469 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24558, i32 noundef %or, i32 noundef 2) #9
  %call.i470 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef %or, i32 noundef 2) #9
  %81 = load i32, ptr @av7110_debug, align 4
  %and123 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end116.do.end133_crit_edge, label %do.end128

if.end116.do.end133_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end133

do.end128:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.99) #12
  br label %do.end133

do.end133:                                        ; preds = %do.end128, %if.end116.do.end133_crit_edge
  %add134 = add i32 %call.i453, 16384
  tail call fastcc void @start_debi_dma(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %add134, i32 noundef %or)
  tail call void @_raw_spin_unlock(ptr noundef %debilock) #9
  %queue = getelementptr i8, ptr %t, i32 11836
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup298

sw.bb137:                                         ; preds = %do.end48
  %playing = getelementptr i8, ptr %t, i32 480
  %82 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool138.not = icmp eq i32 %83, 0
  br i1 %tobool138.not, label %if.then139, label %if.end140

if.then139:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #11
  %call.i471 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef 0, i32 noundef 2) #9
  %call.i472 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24558, i32 noundef 0, i32 noundef 2) #9
  %call.i473 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24566, i32 noundef 0, i32 noundef 2) #9
  br label %sw.epilog295

if.end140:                                        ; preds = %sw.bb137
  %84 = ptrtoint ptr %debitype to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %debitype, align 4
  %and142 = and i32 %85, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end140.land.lhs.true_crit_edge, label %if.end150

if.end140.land.lhs.true_crit_edge:                ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end150:                                        ; preds = %if.end140
  %aout = getelementptr i8, ptr %t, i32 148
  %lock = getelementptr i8, ptr %t, i32 220
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %86 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %debi_virt.i.i, align 4
  %call147 = tail call i32 @av7110_pes_play(ptr noundef %87, ptr noundef %aout, i32 noundef 2048) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call147)
  %cmp151 = icmp slt i32 %call147, 1
  br i1 %cmp151, label %if.end150.land.lhs.true_crit_edge, label %if.end150.do.body172_crit_edge

if.end150.do.body172_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body172

if.end150.land.lhs.true_crit_edge:                ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end150.land.lhs.true_crit_edge, %if.end140.land.lhs.true_crit_edge
  %88 = ptrtoint ptr %debitype to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %debitype, align 4
  %and154 = and i32 %89, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %land.lhs.true.if.then170_crit_edge, label %land.lhs.true156

land.lhs.true.if.then170_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then170

land.lhs.true156:                                 ; preds = %land.lhs.true
  %play_state = getelementptr i8, ptr %t, i32 4292
  %90 = ptrtoint ptr %play_state to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %play_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp158.not = icmp eq i32 %91, 2
  br i1 %cmp158.not, label %land.lhs.true156.if.then170_crit_edge, label %if.end167

land.lhs.true156.if.then170_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then170

if.end167:                                        ; preds = %land.lhs.true156
  %avout = getelementptr i8, ptr %t, i32 32
  %lock161 = getelementptr i8, ptr %t, i32 104
  tail call void @_raw_spin_lock(ptr noundef %lock161) #9
  %92 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %debi_virt.i.i, align 4
  %call164 = tail call i32 @av7110_pes_play(ptr noundef %93, ptr noundef %avout, i32 noundef 2048) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock161) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call164)
  %cmp168 = icmp slt i32 %call164, 1
  br i1 %cmp168, label %if.end167.if.then170_crit_edge, label %if.end167.do.body172_crit_edge

if.end167.do.body172_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body172

if.end167.if.then170_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then170

if.then170:                                       ; preds = %if.end167.if.then170_crit_edge, %land.lhs.true156.if.then170_crit_edge, %land.lhs.true.if.then170_crit_edge
  %call.i474 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef 0, i32 noundef 2) #9
  %call.i475 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24558, i32 noundef 0, i32 noundef 2) #9
  %call.i476 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24566, i32 noundef 0, i32 noundef 2) #9
  br label %sw.epilog295

do.body172:                                       ; preds = %if.end167.do.body172_crit_edge, %if.end150.do.body172_crit_edge
  %len.1499 = phi i32 [ %call164, %if.end167.do.body172_crit_edge ], [ %call147, %if.end150.do.body172_crit_edge ]
  %94 = load i32, ptr @av7110_debug, align 4
  %and173 = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %do.body172.do.end183_crit_edge, label %do.end178

do.body172.do.end183_crit_edge:                   ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end183

do.end178:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #11
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.99, i32 noundef %len.1499) #12
  br label %do.end183

do.end183:                                        ; preds = %do.end178, %do.body172.do.end183_crit_edge
  %call.i477 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24558, i32 noundef %len.1499, i32 noundef 2) #9
  %call.i478 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef %len.1499, i32 noundef 2) #9
  %95 = load i32, ptr @av7110_debug, align 4
  %and185 = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %do.end183.do.end195_crit_edge, label %do.end190

do.end183.do.end195_crit_edge:                    ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end195

do.end190:                                        ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #11
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.99) #12
  br label %do.end195

do.end195:                                        ; preds = %do.end190, %do.end183.do.end195_crit_edge
  %add196 = add i32 %call.i453, 16384
  tail call fastcc void @start_debi_dma(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %add196, i32 noundef %len.1499)
  tail call void @_raw_spin_unlock(ptr noundef %debilock) #9
  br label %cleanup298

sw.bb198:                                         ; preds = %do.end48
  %96 = ptrtoint ptr %debilen to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %debilen, align 8
  %98 = load i32, ptr @av7110_debug, align 4
  %and201 = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %sw.bb198.do.end211_crit_edge, label %do.end206

sw.bb198.do.end211_crit_edge:                     ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end211

do.end206:                                        ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #11
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.99, i32 noundef %97) #12
  br label %do.end211

do.end211:                                        ; preds = %do.end206, %sw.bb198.do.end211_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool212.not = icmp eq i32 %97, 0
  br i1 %tobool212.not, label %if.then213, label %if.end226

if.then213:                                       ; preds = %do.end211
  %bmp_state = getelementptr i8, ptr %t, i32 276
  %99 = ptrtoint ptr %bmp_state to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 2, ptr %bmp_state, align 4
  %call.i479 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef 0, i32 noundef 2) #9
  %call.i480 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24558, i32 noundef 0, i32 noundef 2) #9
  %call.i481 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24566, i32 noundef 0, i32 noundef 2) #9
  %bmpq = getelementptr i8, ptr %t, i32 280
  tail call void @__wake_up(ptr noundef %bmpq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %100 = load i32, ptr @av7110_debug, align 4
  %and215 = and i32 %100, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.then213.sw.epilog295_crit_edge, label %do.end220

if.then213.sw.epilog295_crit_edge:                ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog295

do.end220:                                        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #11
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.99) #12
  br label %sw.epilog295

if.end226:                                        ; preds = %do.end211
  %bmplen = getelementptr i8, ptr %t, i32 272
  %101 = ptrtoint ptr %bmplen to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bmplen, align 8
  %103 = tail call i32 @llvm.smin.i32(i32 %97, i32 %102)
  %104 = tail call i32 @llvm.smin.i32(i32 %103, i32 2048)
  %call.i482 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24558, i32 noundef %104, i32 noundef 2) #9
  %call.i483 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 16630, i32 noundef %104, i32 noundef 2) #9
  %105 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %debi_virt.i.i, align 4
  %bmpbuf = getelementptr i8, ptr %t, i32 264
  %107 = ptrtoint ptr %bmpbuf to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bmpbuf, align 8
  %bmpp = getelementptr i8, ptr %t, i32 268
  %109 = ptrtoint ptr %bmpp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bmpp, align 4
  %add.ptr237 = getelementptr i8, ptr %108, i32 %110
  %111 = call ptr @memcpy(ptr %106, ptr %add.ptr237, i32 %104)
  %112 = load i32, ptr %bmpp, align 4
  %add239 = add i32 %112, %104
  store i32 %add239, ptr %bmpp, align 4
  %113 = ptrtoint ptr %bmplen to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bmplen, align 8
  %sub = sub i32 %114, %104
  store i32 %sub, ptr %bmplen, align 8
  %115 = load i32, ptr @av7110_debug, align 4
  %and242 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %if.end226.do.end252_crit_edge, label %do.end247

if.end226.do.end252_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end252

do.end247:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.99, i32 noundef %104) #12
  br label %do.end252

do.end252:                                        ; preds = %do.end247, %if.end226.do.end252_crit_edge
  %add253 = add i32 %call.i453, 16384
  tail call fastcc void @start_debi_dma(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %add253, i32 noundef %104)
  tail call void @_raw_spin_unlock(ptr noundef %debilock) #9
  br label %cleanup298

sw.bb255:                                         ; preds = %do.end48.sw.bb255_crit_edge, %do.end48.sw.bb255_crit_edge505, %do.end48.sw.bb255_crit_edge506, %do.end48.sw.bb255_crit_edge507, %do.end48.sw.bb255_crit_edge508
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool256.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp257 = icmp sgt i32 %and, 4096
  %or.cond = or i1 %tobool256.not, %cmp257
  br i1 %or.cond, label %if.then259, label %sw.bb255.do.body262_crit_edge

sw.bb255.do.body262_crit_edge:                    ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body262

if.then259:                                       ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #11
  %call.i484 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24564, i32 noundef 0, i32 noundef 2) #9
  br label %sw.epilog295

do.body262:                                       ; preds = %sw.bb255.do.body262_crit_edge, %do.end48.do.body262_crit_edge, %do.end48.do.body262_crit_edge509
  %116 = load i32, ptr @av7110_debug, align 4
  %and263 = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %do.body262.do.end273_crit_edge, label %do.end268

do.body262.do.end273_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end273

do.end268:                                        ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #11
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.99) #12
  br label %do.end273

do.end273:                                        ; preds = %do.end268, %do.body262.do.end273_crit_edge
  %add274 = add i32 %call.i450, 16384
  tail call fastcc void @start_debi_dma(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %add274, i32 noundef %and)
  tail call void @_raw_spin_unlock(ptr noundef %debilock) #9
  br label %cleanup298

sw.bb276:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool277.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp279 = icmp sgt i32 %and, 255
  %or.cond445 = or i1 %tobool277.not, %cmp279
  br i1 %or.cond445, label %if.then281, label %if.end282

if.then281:                                       ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #11
  %call.i485 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24564, i32 noundef 0, i32 noundef 2) #9
  br label %sw.epilog295

if.end282:                                        ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @start_debi_dma(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 24064, i32 noundef %and)
  tail call void @_raw_spin_unlock(ptr noundef %debilock) #9
  br label %cleanup298

sw.bb284:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call.i487 = tail call i32 @av7110_debiread(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24064, i32 noundef 4) #9
  %117 = ptrtoint ptr %debi_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %debi_virt.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %call.i487, ptr %118, align 1
  %or.i = tail call i32 @llvm.fshl.i32(i32 %call.i487, i32 %call.i487, i32 16) #9
  tail call void @av7110_ir_handler(ptr noundef %add.ptr, i32 noundef %or.i) #9
  %call.i489 = tail call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24564, i32 noundef 0, i32 noundef 2) #9
  br label %sw.epilog295

do.end290:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %debitype to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %debitype, align 4
  %122 = ptrtoint ptr %debilen to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %debilen, align 8
  %call294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %121, i32 noundef %123) #12
  br label %sw.epilog295

sw.epilog295:                                     ; preds = %do.end290, %sw.bb284, %if.then281, %if.then259, %do.end220, %if.then213.sw.epilog295_crit_edge, %if.then170, %if.then139, %if.then115, %if.then102, %do.end98, %do.end48.sw.epilog295_crit_edge, %do.end48.sw.epilog295_crit_edge504
  %124 = ptrtoint ptr %debitype to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile i32 -1, ptr %debitype, align 4
  %call.i.i490 = call i32 @av7110_debiwrite(ptr noundef %add.ptr, i32 noundef 917504, i32 noundef 24572, i32 noundef 0, i32 noundef 2) #9
  call void @_raw_spin_unlock(ptr noundef %debilock) #9
  br label %cleanup298

cleanup298:                                       ; preds = %sw.epilog295, %if.end282, %do.end273, %do.end252, %do.end195, %do.end133
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_av_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_ca_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_bootarm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_firmversion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_thread(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.138, ptr noundef %data) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dcomlock = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 22
  %arm_wait = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 70
  %arm_ready = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 68
  %debilock.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 21
  %arm_loops = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 71
  %arm_errors = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 61
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 78
  %recover.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 97
  %playing.i.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 26
  %rec_mode.i.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 25
  %feeding1.i.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 40
  %feednum.i.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 33, i32 3
  %feed5.i.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 33, i32 11
  %filternum.i.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 33, i32 2
  %filter.i.i = getelementptr inbounds %struct.av7110, ptr %data, i32 0, i32 33, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.end3
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 243) #9
  %call10 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call10, label %for.cond.lor.lhs.false_crit_edge, label %if.then19

for.cond.lor.lhs.false_crit_edge:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.then19:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %1 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call22129 = call i32 @prepare_to_wait_event(ptr noundef %arm_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call24130 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call24130, label %if.then19.for.end_crit_edge, label %if.then19.if.end40_crit_edge

if.then19.if.end40_crit_edge:                     ; preds = %if.then19
  br label %if.end40

if.then19.for.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end40:                                         ; preds = %cleanup.if.end40_crit_edge, %if.then19.if.end40_crit_edge
  %__ret20.1132 = phi i32 [ %__ret20.1, %cleanup.if.end40_crit_edge ], [ 500, %if.then19.if.end40_crit_edge ]
  %call22131 = phi i32 [ %call22, %cleanup.if.end40_crit_edge ], [ %call22129, %if.then19.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22131)
  %tobool41.not = icmp eq i32 %call22131, 0
  br i1 %tobool41.not, label %cleanup, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

cleanup:                                          ; preds = %if.end40
  %call44 = call i32 @schedule_timeout(i32 noundef %__ret20.1132) #9
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %arm_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call24 = call zeroext i1 @kthread_should_stop() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool28.not = icmp eq i32 %call44, 0
  %2 = select i1 %call24, i1 %tobool28.not, i1 false
  %__ret20.1 = select i1 %2, i32 1, i32 %call44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret20.1)
  %tobool34.not = icmp eq i32 %__ret20.1, 0
  %3 = select i1 %call24, i1 true, i1 %tobool34.not
  br i1 %3, label %cleanup.for.end_crit_edge, label %cleanup.if.end40_crit_edge

cleanup.if.end40_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then19.for.end_crit_edge
  %__ret20.1.lcssa = phi i32 [ 500, %if.then19.for.end_crit_edge ], [ %__ret20.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %arm_wait, ptr noundef nonnull %__wq_entry) #9
  br label %if.end47

if.end47:                                         ; preds = %for.end, %if.end40.if.end47_crit_edge
  %__ret20.2119 = phi i32 [ %__ret20.1.lcssa, %for.end ], [ %call22131, %if.end40.if.end47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret20.2119)
  %cmp = icmp eq i32 %__ret20.2119, -512
  br i1 %cmp, label %if.end47.for.end85_crit_edge, label %if.end47.lor.lhs.false_crit_edge

if.end47.lor.lhs.false_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end47.for.end85_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end85

lor.lhs.false:                                    ; preds = %if.end47.lor.lhs.false_crit_edge, %for.cond.lor.lhs.false_crit_edge
  %call49 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call49, label %lor.lhs.false.for.end85_crit_edge, label %if.end51

lor.lhs.false.for.end85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end85

if.end51:                                         ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %arm_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arm_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool52.not = icmp eq i32 %5, 0
  br i1 %tobool52.not, label %if.end51.for.cond.backedge_crit_edge, label %if.end54

if.end51.for.cond.backedge_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end54:                                         ; preds = %if.end51
  %call55 = call i32 @mutex_lock_interruptible_nested(ptr noundef %dcomlock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.for.end85_crit_edge

if.end54.for.end85_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end85

if.end58:                                         ; preds = %if.end54
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #9
  %call5.i = call i32 @av7110_debiread(ptr noundef %data, i32 noundef 917504, i32 noundef 24520, i32 noundef 2) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i) #9
  call void @mutex_unlock(ptr noundef %dcomlock) #9
  %6 = ptrtoint ptr %arm_loops to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arm_loops, align 8
  %8 = trunc i32 %call5.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp63 = icmp eq i16 %7, %8
  br i1 %cmp63, label %if.end58.do.end71_crit_edge, label %lor.lhs.false65

if.end58.do.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

lor.lhs.false65:                                  ; preds = %if.end58
  %9 = ptrtoint ptr %arm_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arm_errors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp66 = icmp sgt i32 %10, 3
  br i1 %cmp66, label %lor.lhs.false65.do.end71_crit_edge, label %lor.lhs.false65.if.end82_crit_edge

lor.lhs.false65.if.end82_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

lor.lhs.false65.do.end71_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

do.end71:                                         ; preds = %lor.lhs.false65.do.end71_crit_edge, %if.end58.do.end71_crit_edge
  %11 = ptrtoint ptr %dvb_adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dvb_adapter, align 4
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %12) #12
  %13 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end71.do.end2.i_crit_edge, label %do.end.i

do.end71.do.end2.i_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.142, ptr noundef %data) #12
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end71.do.end2.i_crit_edge
  %call3.i = call i32 @av7110_bootarm(ptr noundef %data) #9
  call void @msleep(i32 noundef 100) #9
  call fastcc void @init_av7110_av(ptr noundef %data) #9
  %14 = ptrtoint ptr %recover.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %recover.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %do.end2.i.if.end7.i_crit_edge, label %if.then5.i

do.end2.i.if.end7.i_crit_edge:                    ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i:                                       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %15(ptr noundef %data) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %do.end2.i.if.end7.i_crit_edge
  %16 = load i32, ptr @av7110_debug, align 4
  %and.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.do.end3.i.i_crit_edge, label %do.end.i.i

if.end7.i.do.end3.i.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.143, ptr noundef %data) #12
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.end7.i.do.end3.i.i_crit_edge
  %17 = ptrtoint ptr %playing.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %playing.i.i, align 8
  store i32 0, ptr %playing.i.i, align 8
  %19 = ptrtoint ptr %rec_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rec_mode.i.i, align 4
  %20 = ptrtoint ptr %feeding1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %feeding1.i.i, align 4
  %22 = ptrtoint ptr %feednum.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %feednum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp72.i.i = icmp sgt i32 %23, 0
  br i1 %cmp72.i.i, label %do.end3.i.i.for.body.i.i_crit_edge, label %do.end3.i.i.for.end39.i.i_crit_edge

do.end3.i.i.for.end39.i.i_crit_edge:              ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end39.i.i

do.end3.i.i.for.body.i.i_crit_edge:               ; preds = %do.end3.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc37.i.i.for.body.i.i_crit_edge, %do.end3.i.i.for.body.i.i_crit_edge
  %i.073.i.i = phi i32 [ %inc38.i.i, %for.inc37.i.i.for.body.i.i_crit_edge ], [ 0, %do.end3.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %feed5.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %feed5.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.dvb_demux_feed, ptr %25, i32 %i.073.i.i
  %state.i.i = getelementptr %struct.dvb_demux_feed, ptr %25, i32 %i.073.i.i, i32 5
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp6.i.i = icmp eq i32 %27, 3
  br i1 %cmp6.i.i, label %if.then7.i.i, label %for.body.i.i.for.inc37.i.i_crit_edge

for.body.i.i.for.inc37.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  %type.i.i = getelementptr %struct.dvb_demux_feed, ptr %25, i32 %i.073.i.i, i32 4
  %28 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp8.i.i = icmp eq i32 %29, 1
  br i1 %cmp8.i.i, label %for.cond10.preheader.i.i, label %if.then7.i.i.if.end34.i.i_crit_edge

if.then7.i.i.if.end34.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

for.cond10.preheader.i.i:                         ; preds = %if.then7.i.i
  %30 = ptrtoint ptr %filternum.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %filternum.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1169.i.i = icmp sgt i32 %31, 0
  br i1 %cmp1169.i.i, label %for.cond10.preheader.i.i.for.body12.i.i_crit_edge, label %for.cond10.preheader.i.i.if.end34.i.i_crit_edge

for.cond10.preheader.i.i.if.end34.i.i_crit_edge:  ; preds = %for.cond10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

for.cond10.preheader.i.i.for.body12.i.i_crit_edge: ; preds = %for.cond10.preheader.i.i
  br label %for.body12.i.i

for.body12.i.i:                                   ; preds = %for.inc.i.i.for.body12.i.i_crit_edge, %for.cond10.preheader.i.i.for.body12.i.i_crit_edge
  %j.070.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body12.i.i_crit_edge ], [ 0, %for.cond10.preheader.i.i.for.body12.i.i_crit_edge ]
  %32 = ptrtoint ptr %filter.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %filter.i.i, align 8
  %type14.i.i = getelementptr %struct.dvb_demux_filter, ptr %33, i32 %j.070.i.i, i32 8
  %34 = ptrtoint ptr %type14.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp15.not.i.i = icmp eq i32 %35, 1
  br i1 %cmp15.not.i.i, label %if.end17.i.i, label %for.body12.i.i.for.inc.i.i_crit_edge

for.body12.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end17.i.i:                                     ; preds = %for.body12.i.i
  %parent.i.i = getelementptr %struct.dvb_demux_filter, ptr %33, i32 %j.070.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i.i, align 4
  %cmp22.not.i.i = icmp eq ptr %37, %arrayidx.i.i
  br i1 %cmp22.not.i.i, label %if.end24.i.i, label %if.end17.i.i.for.inc.i.i_crit_edge

if.end17.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end24.i.i:                                     ; preds = %if.end17.i.i
  %state27.i.i = getelementptr %struct.dvb_demux_filter, ptr %33, i32 %j.070.i.i, i32 7
  %38 = ptrtoint ptr %state27.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state27.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp28.i.i = icmp eq i32 %39, 3
  br i1 %cmp28.i.i, label %if.then29.i.i, label %if.end24.i.i.for.inc.i.i_crit_edge

if.end24.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then29.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %state27.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %state27.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then29.i.i, %if.end24.i.i.for.inc.i.i_crit_edge, %if.end17.i.i.for.inc.i.i_crit_edge, %for.body12.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %j.070.i.i, 1
  %41 = ptrtoint ptr %filternum.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %filternum.i.i, align 8
  %cmp11.i.i = icmp slt i32 %inc.i.i, %42
  br i1 %cmp11.i.i, label %for.inc.i.i.for.body12.i.i_crit_edge, label %for.inc.i.i.if.end34.i.i_crit_edge

for.inc.i.i.if.end34.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

for.inc.i.i.for.body12.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i.i

if.end34.i.i:                                     ; preds = %for.inc.i.i.if.end34.i.i_crit_edge, %for.cond10.preheader.i.i.if.end34.i.i_crit_edge, %if.then7.i.i.if.end34.i.i_crit_edge
  %call35.i.i = call i32 @av7110_start_feed(ptr noundef %arrayidx.i.i) #9
  br label %for.inc37.i.i

for.inc37.i.i:                                    ; preds = %if.end34.i.i, %for.body.i.i.for.inc37.i.i_crit_edge
  %inc38.i.i = add nuw nsw i32 %i.073.i.i, 1
  %43 = ptrtoint ptr %feednum.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %feednum.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc38.i.i, %44
  br i1 %cmp.i.i, label %for.inc37.i.i.for.body.i.i_crit_edge, label %for.inc37.i.i.for.end39.i.i_crit_edge

for.inc37.i.i.for.end39.i.i_crit_edge:            ; preds = %for.inc37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end39.i.i

for.inc37.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end39.i.i:                                    ; preds = %for.inc37.i.i.for.end39.i.i_crit_edge, %do.end3.i.i.for.end39.i.i_crit_edge
  %45 = ptrtoint ptr %feeding1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %21, ptr %feeding1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool41.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool41.not.i.i, label %for.end39.i.i.recover_arm.exit_crit_edge, label %if.then42.i.i

for.end39.i.i.recover_arm.exit_crit_edge:         ; preds = %for.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recover_arm.exit

if.then42.i.i:                                    ; preds = %for.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i.i = call i32 @av7110_av_start_play(ptr noundef %data, i32 noundef %18) #9
  br label %recover_arm.exit

recover_arm.exit:                                 ; preds = %if.then42.i.i, %for.end39.i.i.recover_arm.exit_crit_edge
  %call8.i = call i32 @av7110_set_ir_config(ptr noundef %data) #9
  %call75 = call i32 @mutex_lock_interruptible_nested(ptr noundef %dcomlock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %recover_arm.exit.for.end85_crit_edge

recover_arm.exit.for.end85_crit_edge:             ; preds = %recover_arm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end85

if.end78:                                         ; preds = %recover_arm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i115 = call i32 @_raw_spin_lock_irqsave(ptr noundef %debilock.i) #9
  %call5.i116 = call i32 @av7110_debiread(ptr noundef %data, i32 noundef 917504, i32 noundef 24520, i32 noundef 2) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %debilock.i, i32 noundef %call2.i115) #9
  call void @mutex_unlock(ptr noundef %dcomlock) #9
  %46 = trunc i32 %call5.i116 to i16
  %.pre = add i16 %46, -1
  br label %if.end82

if.end82:                                         ; preds = %if.end78, %lor.lhs.false65.if.end82_crit_edge
  %newloops.0.pre-phi = phi i16 [ %.pre, %if.end78 ], [ %8, %lor.lhs.false65.if.end82_crit_edge ]
  %47 = ptrtoint ptr %arm_loops to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %newloops.0.pre-phi, ptr %arm_loops, align 8
  %48 = ptrtoint ptr %arm_errors to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arm_errors, align 8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end82, %if.end51.for.cond.backedge_crit_edge
  br label %for.cond

for.end85:                                        ; preds = %recover_arm.exit.for.end85_crit_edge, %if.end54.for.end85_crit_edge, %lor.lhs.false.for.end85_crit_edge, %if.end47.for.end85_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @av7110_register(ptr noundef %av7110) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33
  %demux1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 37
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.154, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %registered = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 62
  %1 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %3 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %registered, align 4
  %priv = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %av7110, ptr %priv, align 4
  %uglygep = getelementptr i8, ptr %av7110, i32 8776
  %5 = call ptr @memset(ptr %uglygep, i32 0, i32 128)
  %full_ts = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 45
  %6 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool8.not, i32 32, i32 256
  %filternum = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 2
  %8 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 3
  %9 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 4
  %10 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @av7110_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 5
  %11 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @av7110_stop_feed, ptr %stop_feed, align 4
  %write_to_decoder = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 6
  %12 = ptrtoint ptr %write_to_decoder to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @av7110_write_to_decoder, ptr %write_to_decoder, align 8
  %13 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 13, ptr %demux, align 8
  %call13 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #9
  %get_stc = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 0, i32 16
  %14 = ptrtoint ptr %get_stc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dvb_get_stc, ptr %get_stc, align 8
  %15 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  %cond18 = select i1 %tobool17.not, i32 32, i32 256
  %dmxdev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 32
  %filternum19 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 32, i32 4
  %17 = ptrtoint ptr %filternum19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond18, ptr %filternum19, align 8
  %demux22 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 32, i32 3
  %18 = ptrtoint ptr %demux22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %demux, ptr %demux22, align 4
  %capabilities24 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 32, i32 5
  %19 = ptrtoint ptr %capabilities24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %capabilities24, align 4
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %call26 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adapter) #9
  %hw_frontend = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 34
  %source = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 34, i32 1
  %20 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %source, align 8
  %add_frontend = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 0, i32 10
  %21 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add_frontend, align 8
  %call30 = tail call i32 %22(ptr noundef %demux, ptr noundef %hw_frontend) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end6.cleanup_crit_edge, label %if.end33

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end6
  %mem_frontend = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 35
  %source34 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 35, i32 1
  %23 = ptrtoint ptr %source34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %source34, align 4
  %24 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add_frontend, align 8
  %call39 = tail call i32 %25(ptr noundef %demux, ptr noundef %mem_frontend) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end33.cleanup_crit_edge, label %if.end42

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %connect_frontend = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 0, i32 13
  %26 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %connect_frontend, align 4
  %call46 = tail call i32 %27(ptr noundef %demux, ptr noundef %hw_frontend) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end42.cleanup_crit_edge, label %if.end49

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %call50 = tail call i32 @av7110_av_register(ptr noundef %av7110) #9
  %call51 = tail call i32 @av7110_ca_register(ptr noundef %av7110) #9
  %osd_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 82
  %call53 = tail call i32 @dvb_register_device(ptr noundef %dvb_adapter, ptr noundef %osd_dev, ptr noundef nonnull @dvbdev_osd, ptr noundef %av7110, i32 noundef 8, i32 noundef 0) #9
  %dvb_net = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 1
  %call56 = tail call i32 @dvb_net_init(ptr noundef %dvb_adapter, ptr noundef %dvb_net, ptr noundef %demux) #9
  %28 = load i32, ptr @budgetpatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool57.not = icmp eq i32 %28, 0
  br i1 %tobool57.not, label %if.end49.cleanup_crit_edge, label %if.then58

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %priv59 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 37, i32 1
  %29 = ptrtoint ptr %priv59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %av7110, ptr %priv59, align 4
  %filternum60 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 37, i32 2
  %30 = ptrtoint ptr %filternum60 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 256, ptr %filternum60, align 8
  %feednum61 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 37, i32 3
  %31 = ptrtoint ptr %feednum61 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 256, ptr %feednum61, align 4
  %start_feed62 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 37, i32 4
  %32 = ptrtoint ptr %start_feed62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @budget_start_feed, ptr %start_feed62, align 8
  %stop_feed63 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 37, i32 5
  %33 = ptrtoint ptr %stop_feed63 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @budget_stop_feed, ptr %stop_feed63, align 4
  %write_to_decoder64 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 37, i32 6
  %34 = ptrtoint ptr %write_to_decoder64 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %write_to_decoder64, align 8
  %35 = ptrtoint ptr %demux1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 13, ptr %demux1, align 8
  %call68 = tail call i32 @dvb_dmx_init(ptr noundef %demux1) #9
  %dmxdev1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 36
  %filternum69 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 36, i32 4
  %36 = ptrtoint ptr %filternum69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %filternum69, align 8
  %demux72 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 36, i32 3
  %37 = ptrtoint ptr %demux72 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %demux1, ptr %demux72, align 4
  %capabilities74 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 36, i32 5
  %38 = ptrtoint ptr %capabilities74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %capabilities74, align 4
  %call77 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev1, ptr noundef %dvb_adapter) #9
  %dvb_net1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 38
  %call80 = tail call i32 @dvb_net_init(ptr noundef %dvb_adapter, ptr noundef %dvb_net1, ptr noundef %demux1) #9
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end49.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end3.cleanup_crit_edge ], [ %call30, %if.end6.cleanup_crit_edge ], [ %call39, %if.end33.cleanup_crit_edge ], [ %call46, %if.end42.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_av7110_av(ptr noundef %av7110) unnamed_addr #0 align 64 {
entry:
  %msg.i269 = alloca [2 x i8], align 1
  %msgs.i270 = alloca %struct.i2c_msg, align 4
  %msg.i262 = alloca [2 x i8], align 1
  %msgs.i263 = alloca %struct.i2c_msg, align 4
  %msg.i255 = alloca [2 x i8], align 1
  %msgs.i256 = alloca %struct.i2c_msg, align 4
  %msg.i248 = alloca [2 x i8], align 1
  %msgs.i249 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [2 x i8], align 1
  %msgs.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %adac_type = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 12
  %2 = ptrtoint ptr %adac_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %adac_type, align 8
  %mixer = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 77
  %3 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mixer, align 4
  %volume_right = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 77, i32 1
  %5 = ptrtoint ptr %volume_right to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %volume_right, align 4
  %call = tail call i32 @av7110_set_volume(ptr noundef %av7110, i32 noundef %4, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %display_ar = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 51
  %7 = ptrtoint ptr %display_ar to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %display_ar, align 8
  %conv4 = and i32 %8, 65535
  %call5 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 5, i32 noundef 3, i32 noundef 1, i32 noundef %conv4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end11, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.end.if.end14_crit_edge
  %display_panscan = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 50
  %9 = ptrtoint ptr %display_panscan to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %display_panscan, align 4
  %conv15 = zext i16 %10 to i32
  %call16 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 5, i32 noundef 4, i32 noundef 1, i32 noundef %conv15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end22, label %if.end14.if.end25_crit_edge

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.end14.if.end25_crit_edge
  %11 = load i32, ptr @wss_cfg_4_3, align 4
  %call26 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 5, i32 noundef 6, i32 noundef 2, i32 noundef 2, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end32, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %if.end25.if.end35_crit_edge
  %12 = load i32, ptr @wss_cfg_16_9, align 4
  %call36 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 5, i32 noundef 6, i32 noundef 2, i32 noundef 3, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end42, label %if.end35.if.end45_crit_edge

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.end35.if.end45_crit_edge
  %13 = load i32, ptr @vidmode, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 5, i32 noundef 0, i32 noundef 1, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp47 = icmp slt i32 %call.i, 0
  br i1 %cmp47, label %do.end52, label %if.end45.if.end55_crit_edge

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %call.i) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.end45.if.end55_crit_edge
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 7
  %14 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %analog_tuner_flags, align 4
  %current_input = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 8
  %15 = ptrtoint ptr %current_input to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %current_input, align 8
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5058, i16 %19)
  %cmp57 = icmp eq i16 %19, 5058
  br i1 %cmp57, label %land.lhs.true, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end55
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 10
  %20 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %21)
  %cmp61 = icmp eq i16 %21, 10
  br i1 %cmp61, label %if.then63, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 6, i32 noundef 5, i32 noundef 1, i32 noundef 0) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %land.lhs.true.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #9
  %22 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %msg.i, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #9
  %25 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i, align 2
  %28 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 16, ptr %msgs.i, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i247 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i247)
  %cmp67 = icmp eq i32 %call.i247, 1
  br i1 %cmp67, label %do.end72, label %if.else

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %30 = ptrtoint ptr %dvb_adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dvb_adapter, align 4
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef %31) #12
  %32 = ptrtoint ptr %adac_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %adac_type, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i248) #9
  %33 = getelementptr inbounds [2 x i8], ptr %msg.i248, i32 0, i32 1
  %34 = ptrtoint ptr %msg.i248 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %msg.i248, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -46, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i249) #9
  %36 = getelementptr inbounds i8, ptr %msgs.i249, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %flags.i250 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i249, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i250 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i250, align 2
  %39 = ptrtoint ptr %msgs.i249 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 16, ptr %msgs.i249, align 4
  %buf.i252 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i249, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i252 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i248, ptr %buf.i252, align 4
  %call.i254 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i249, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i249) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i248) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i255) #9
  %41 = getelementptr inbounds [2 x i8], ptr %msg.i255, i32 0, i32 1
  %42 = ptrtoint ptr %msg.i255 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %msg.i255, align 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 73, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i256) #9
  %44 = getelementptr inbounds i8, ptr %msgs.i256, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 196607, ptr %44, align 4
  %flags.i257 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i256, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i257 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i257, align 2
  %47 = ptrtoint ptr %msgs.i256 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 16, ptr %msgs.i256, align 4
  %buf.i259 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i256, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i259 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i255, ptr %buf.i259, align 4
  %call.i261 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i256, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i256) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i255) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i262) #9
  %49 = getelementptr inbounds [2 x i8], ptr %msg.i262, i32 0, i32 1
  %50 = ptrtoint ptr %msg.i262 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %msg.i262, align 1
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i263) #9
  %52 = getelementptr inbounds i8, ptr %msgs.i263, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 196607, ptr %52, align 4
  %flags.i264 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i263, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i264 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i264, align 2
  %55 = ptrtoint ptr %msgs.i263 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 16, ptr %msgs.i263, align 4
  %buf.i266 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i263, i32 0, i32 3
  %56 = ptrtoint ptr %buf.i266 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i262, ptr %buf.i266, align 4
  %call.i268 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i263, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i263) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i262) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i269) #9
  %57 = getelementptr inbounds [2 x i8], ptr %msg.i269, i32 0, i32 1
  %58 = ptrtoint ptr %msg.i269 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %msg.i269, align 1
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i270) #9
  %60 = getelementptr inbounds i8, ptr %msgs.i270, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 196607, ptr %60, align 4
  %flags.i271 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i270, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i271 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i271, align 2
  %63 = ptrtoint ptr %msgs.i270 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 16, ptr %msgs.i270, align 4
  %buf.i273 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i270, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i273 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i269, ptr %buf.i273, align 4
  %call.i275 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i270, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i270) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i269) #9
  br label %if.end111

if.else:                                          ; preds = %if.end65
  %call80 = call i32 @av7110_init_analog_module(ptr noundef %av7110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.else.if.end111_crit_edge, label %if.else84

if.else.if.end111_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.else84:                                        ; preds = %if.else
  %65 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci, align 4
  %subsystem_vendor86 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %subsystem_vendor86 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %subsystem_vendor86, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4362, i16 %68)
  %cmp88 = icmp eq i16 %68, 4362
  br i1 %cmp88, label %if.end111.thread, label %if.else99

if.end111.thread:                                 ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_adapter95 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %69 = ptrtoint ptr %dvb_adapter95 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dvb_adapter95, align 4
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %70) #12
  %71 = ptrtoint ptr %adac_type to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %adac_type, align 8
  br label %if.then118

if.else99:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  %72 = load i32, ptr @adac, align 4
  %73 = ptrtoint ptr %adac_type to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %adac_type, align 8
  %dvb_adapter106 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %74 = ptrtoint ptr %dvb_adapter106 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dvb_adapter106, align 4
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %72, i32 noundef %75) #12
  br label %if.end111

if.end111:                                        ; preds = %if.else99, %if.else.if.end111_crit_edge, %do.end72
  %76 = ptrtoint ptr %adac_type to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load i32, ptr %adac_type, align 8
  %77 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %.pr, label %if.end111.if.end162_crit_edge [
    i32 -1, label %if.end111.if.then118_crit_edge
    i32 2, label %if.end111.if.then118_crit_edge276
  ]

if.end111.if.then118_crit_edge276:                ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then118

if.end111.if.then118_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then118

if.end111.if.end162_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then118:                                       ; preds = %if.end111.if.then118_crit_edge, %if.end111.if.then118_crit_edge276, %if.end111.thread
  %call119 = call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 6, i32 noundef 4, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %do.end125, label %if.then118.if.end128_crit_edge

if.then118.if.end128_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

do.end125:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %call119) #12
  br label %if.end128

if.end128:                                        ; preds = %do.end125, %if.then118.if.end128_crit_edge
  %call129 = call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 6, i32 noundef 5, i32 noundef 1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.end135, label %if.end128.if.end138_crit_edge

if.end128.if.end138_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

do.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %call129) #12
  br label %if.end138

if.end138:                                        ; preds = %do.end135, %if.end128.if.end138_crit_edge
  %78 = load i32, ptr @rgb_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not = icmp eq i32 %78, 0
  br i1 %tobool.not, label %if.end138.if.end162_crit_edge, label %land.lhs.true139

if.end138.if.end162_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

land.lhs.true139:                                 ; preds = %if.end138
  %79 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev1, align 8
  %pci141 = getelementptr inbounds %struct.saa7146_dev, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %pci141 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci141, align 4
  %subsystem_vendor142 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %subsystem_vendor142 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %subsystem_vendor142, align 4
  %85 = zext i16 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.283)
  switch i16 %84, label %land.lhs.true139.if.end162_crit_edge [
    i16 4362, label %land.lhs.true139.land.lhs.true153_crit_edge
    i16 5058, label %land.lhs.true139.land.lhs.true153_crit_edge277
  ]

land.lhs.true139.land.lhs.true153_crit_edge277:   ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true153

land.lhs.true139.land.lhs.true153_crit_edge:      ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true153

land.lhs.true139.if.end162_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

land.lhs.true153:                                 ; preds = %land.lhs.true139.land.lhs.true153_crit_edge, %land.lhs.true139.land.lhs.true153_crit_edge277
  %subsystem_device156 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 10
  %86 = ptrtoint ptr %subsystem_device156 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %subsystem_device156, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp158 = icmp eq i16 %87, 0
  br i1 %cmp158, label %if.then160, label %land.lhs.true153.if.end162_crit_edge

land.lhs.true153.if.end162_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then160:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #11
  call void @saa7146_setgpio(ptr noundef %1, i32 noundef 1, i32 noundef 80) #9
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %land.lhs.true153.if.end162_crit_edge, %land.lhs.true139.if.end162_crit_edge, %if.end138.if.end162_crit_edge, %if.end111.if.end162_crit_edge
  %88 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci, align 4
  %subsystem_vendor164 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 9
  %90 = ptrtoint ptr %subsystem_vendor164 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %subsystem_vendor164, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5058, i16 %91)
  %cmp166 = icmp eq i16 %91, 5058
  br i1 %cmp166, label %land.lhs.true168, label %if.end162.if.end176_crit_edge

if.end162.if.end176_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

land.lhs.true168:                                 ; preds = %if.end162
  %subsystem_device170 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 10
  %92 = ptrtoint ptr %subsystem_device170 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %subsystem_device170, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %93)
  %cmp172 = icmp eq i16 %93, 14
  br i1 %cmp172, label %if.then174, label %land.lhs.true168.if.end176_crit_edge

land.lhs.true168.if.end176_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

if.then174:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #11
  %call175 = call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 6, i32 noundef 8, i32 noundef 1, i32 noundef 0) #9
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %land.lhs.true168.if.end176_crit_edge, %if.end162.if.end176_crit_edge
  %94 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mixer, align 4
  %96 = ptrtoint ptr %volume_right to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %volume_right, align 4
  %call181 = call i32 @av7110_set_volume(ptr noundef %av7110, i32 noundef %95, i32 noundef %97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %do.end187, label %if.end176.if.end190_crit_edge

if.end176.if.end190_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

do.end187:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %call181) #12
  br label %if.end190

if.end190:                                        ; preds = %do.end187, %if.end176.if.end190_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_init_v4l(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @frontend_init(ptr noundef %av7110) unnamed_addr #0 align 64 {
entry:
  %b.i908 = alloca i8, align 1
  %pwm.i909 = alloca i8, align 1
  %msg.i910 = alloca [2 x %struct.i2c_msg], align 4
  %b.i = alloca i8, align 1
  %pwm.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_vendor, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.284)
  switch i16 %5, label %entry.if.end577_crit_edge [
    i16 4362, label %if.then
    i16 5058, label %if.then29
  ]

entry.if.end577_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end577

if.then:                                          ; preds = %entry
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cond728 = icmp eq i16 %8, 0
  br i1 %cond728, label %sw.bb, label %if.then.if.end577_crit_edge

if.then.if.end577_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end577

sw.bb:                                            ; preds = %if.then
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.215) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %sw.bb.if.then8_crit_edge

sw.bb.if.then8_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

cond.end:                                         ; preds = %sw.bb
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.216) #9
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.215) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %sw.bb.if.then8_crit_edge
  %cond927 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call, %sw.bb.if.then8_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #9
  %9 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i) #9
  %10 = ptrtoint ptr %pwm.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %pwm.i, align 1, !annotation !638
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #9
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 80, ptr %arrayinit.element.i, align 4
  %flags2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags2.i, align 2
  %len3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len3.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pwm.i, ptr %buf4.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then8.if.then.i_crit_edge

if.then8.if.then.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then8
  %21 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pwm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp5.i = icmp eq i8 %22, -1
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.read_pwm.exit_crit_edge

lor.lhs.false.i.read_pwm.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_pwm.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then8.if.then.i_crit_edge
  %23 = ptrtoint ptr %pwm.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 72, ptr %pwm.i, align 1
  br label %read_pwm.exit

read_pwm.exit:                                    ; preds = %if.then.i, %lor.lhs.false.i.read_pwm.exit_crit_edge
  %24 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pwm.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #9
  %call10 = call ptr %cond927(ptr noundef nonnull @philips_cd1516_config, ptr noundef %i2c_adap, i8 noundef zeroext %25) #9
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then13, label %if.then19

if.then13:                                        ; preds = %read_pwm.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.215) #9
  br label %if.end15.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217) #12
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %do.end, %if.then13
  %fe929 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %26 = ptrtoint ptr %fe929 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %fe929, align 8
  br label %if.end577

if.then19:                                        ; preds = %read_pwm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %fe = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %27 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call10, ptr %fe, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %call10, i32 0, i32 1, i32 32, i32 6
  %28 = ptrtoint ptr %set_params to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @philips_cd1516_tuner_set_params, ptr %set_params, align 4
  br label %if.end577

if.then29:                                        ; preds = %entry
  %subsystem_device32 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 10
  %29 = ptrtoint ptr %subsystem_device32 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %subsystem_device32, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.285)
  switch i16 %30, label %if.then29.if.end577_crit_edge [
    i16 0, label %if.then29.sw.bb34_crit_edge
    i16 3, label %if.then29.sw.bb34_crit_edge1009
    i16 4098, label %if.then29.sw.bb34_crit_edge1010
    i16 1, label %sw.bb247
    i16 8, label %if.then29.sw.bb282_crit_edge
    i16 2, label %sw.bb318
    i16 4, label %sw.bb355
    i16 6, label %sw.bb401
    i16 10, label %sw.bb447
    i16 14, label %sw.bb486
  ]

if.then29.sw.bb282_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb282

if.then29.sw.bb34_crit_edge1010:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34

if.then29.sw.bb34_crit_edge1009:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34

if.then29.sw.bb34_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34

if.then29.if.end577_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end577

sw.bb34:                                          ; preds = %if.then29.sw.bb34_crit_edge, %if.then29.sw.bb34_crit_edge1009, %if.then29.sw.bb34_crit_edge1010
  %call37 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.219) #9
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %cond.end43, label %sw.bb34.if.then46_crit_edge

sw.bb34.if.then46_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

cond.end43:                                       ; preds = %sw.bb34
  %call41 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.220) #9
  %call42 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.219) #9
  %tobool45.not = icmp eq ptr %call42, null
  br i1 %tobool45.not, label %do.end56, label %cond.end43.if.then46_crit_edge

cond.end43.if.then46_crit_edge:                   ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.then46:                                        ; preds = %cond.end43.if.then46_crit_edge, %sw.bb34.if.then46_crit_edge
  %cond44933 = phi ptr [ %call42, %cond.end43.if.then46_crit_edge ], [ %call37, %sw.bb34.if.then46_crit_edge ]
  %i2c_adap47 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call48 = tail call ptr %cond44933(ptr noundef nonnull @alps_bsrv2_config, ptr noundef %i2c_adap47) #9
  %cmp49 = icmp eq ptr %call48, null
  br i1 %cmp49, label %if.then51, label %if.then64

if.then51:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.219) #9
  br label %if.end75

do.end56:                                         ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222) #12
  br label %if.end75

if.then64:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %fe61 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %32 = ptrtoint ptr %fe61 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call48, ptr %fe61, align 8
  %set_params68 = getelementptr inbounds %struct.dvb_frontend, ptr %call48, i32 0, i32 1, i32 32, i32 6
  %33 = ptrtoint ptr %set_params68 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @alps_bsrv2_tuner_set_params, ptr %set_params68, align 4
  %34 = load ptr, ptr %fe61, align 8
  %diseqc_send_master_cmd = getelementptr inbounds %struct.dvb_frontend, ptr %34, i32 0, i32 1, i32 21
  %35 = ptrtoint ptr %diseqc_send_master_cmd to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @av7110_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd, align 4
  %36 = load ptr, ptr %fe61, align 8
  %diseqc_send_burst = getelementptr inbounds %struct.dvb_frontend, ptr %36, i32 0, i32 1, i32 23
  %37 = ptrtoint ptr %diseqc_send_burst to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @av7110_diseqc_send_burst, ptr %diseqc_send_burst, align 4
  %38 = load ptr, ptr %fe61, align 8
  %set_tone = getelementptr inbounds %struct.dvb_frontend, ptr %38, i32 0, i32 1, i32 24
  %39 = ptrtoint ptr %set_tone to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @av7110_set_tone, ptr %set_tone, align 4
  %recover = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 97
  %40 = ptrtoint ptr %recover to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dvb_s_recover, ptr %recover, align 4
  br label %if.end577

if.end75:                                         ; preds = %do.end56, %if.then51
  %fe61935 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %41 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %fe61935, align 8
  %call78 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.224) #9
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %cond.end84, label %if.end75.if.then87_crit_edge

if.end75.if.then87_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

cond.end84:                                       ; preds = %if.end75
  %call82 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.225) #9
  %call83 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.224) #9
  %tobool86.not = icmp eq ptr %call83, null
  br i1 %tobool86.not, label %do.end97, label %cond.end84.if.then87_crit_edge

cond.end84.if.then87_crit_edge:                   ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

if.then87:                                        ; preds = %cond.end84.if.then87_crit_edge, %if.end75.if.then87_crit_edge
  %cond85940 = phi ptr [ %call83, %cond.end84.if.then87_crit_edge ], [ %call78, %if.end75.if.then87_crit_edge ]
  %i2c_adap88 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call89 = tail call ptr %cond85940(ptr noundef nonnull @alps_bsru6_config, ptr noundef %i2c_adap88) #9
  %cmp90 = icmp eq ptr %call89, null
  br i1 %cmp90, label %if.then92, label %if.then105

if.then92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.224) #9
  br label %if.end122

do.end97:                                         ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #11
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227) #12
  br label %if.end122

if.then105:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call89, ptr %fe61935, align 8
  %set_params109 = getelementptr inbounds %struct.dvb_frontend, ptr %call89, i32 0, i32 1, i32 32, i32 6
  %43 = ptrtoint ptr %set_params109 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @alps_bsru6_tuner_set_params, ptr %set_params109, align 4
  %44 = load ptr, ptr %fe61935, align 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %i2c_adap88, ptr %tuner_priv, align 4
  %46 = load ptr, ptr %fe61935, align 8
  %diseqc_send_master_cmd114 = getelementptr inbounds %struct.dvb_frontend, ptr %46, i32 0, i32 1, i32 21
  %47 = ptrtoint ptr %diseqc_send_master_cmd114 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @av7110_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd114, align 4
  %48 = load ptr, ptr %fe61935, align 8
  %diseqc_send_burst117 = getelementptr inbounds %struct.dvb_frontend, ptr %48, i32 0, i32 1, i32 23
  %49 = ptrtoint ptr %diseqc_send_burst117 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @av7110_diseqc_send_burst, ptr %diseqc_send_burst117, align 4
  %50 = load ptr, ptr %fe61935, align 8
  %set_tone120 = getelementptr inbounds %struct.dvb_frontend, ptr %50, i32 0, i32 1, i32 24
  %51 = ptrtoint ptr %set_tone120 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @av7110_set_tone, ptr %set_tone120, align 4
  %recover121 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 97
  %52 = ptrtoint ptr %recover121 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @dvb_s_recover, ptr %recover121, align 4
  br label %if.end577

if.end122:                                        ; preds = %do.end97, %if.then92
  %53 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %fe61935, align 8
  %call125 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.229) #9
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %cond.end131, label %if.end122.if.then134_crit_edge

if.end122.if.then134_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then134

cond.end131:                                      ; preds = %if.end122
  %call129 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.230) #9
  %call130 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.229) #9
  %tobool133.not = icmp eq ptr %call130, null
  br i1 %tobool133.not, label %do.end144, label %cond.end131.if.then134_crit_edge

cond.end131.if.then134_crit_edge:                 ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then134

if.then134:                                       ; preds = %cond.end131.if.then134_crit_edge, %if.end122.if.then134_crit_edge
  %cond132945 = phi ptr [ %call130, %cond.end131.if.then134_crit_edge ], [ %call125, %if.end122.if.then134_crit_edge ]
  %i2c_adap135 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call136 = tail call ptr %cond132945(ptr noundef nonnull @grundig_29504_451_config, ptr noundef %i2c_adap135) #9
  %cmp137 = icmp eq ptr %call136, null
  br i1 %cmp137, label %if.then139, label %if.then152

if.then139:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.229) #9
  br label %if.end167

do.end144:                                        ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #11
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232) #12
  br label %if.end167

if.then152:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call136, ptr %fe61935, align 8
  %set_params156 = getelementptr inbounds %struct.dvb_frontend, ptr %call136, i32 0, i32 1, i32 32, i32 6
  %55 = ptrtoint ptr %set_params156 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @grundig_29504_451_tuner_set_params, ptr %set_params156, align 4
  %56 = load ptr, ptr %fe61935, align 8
  %diseqc_send_master_cmd159 = getelementptr inbounds %struct.dvb_frontend, ptr %56, i32 0, i32 1, i32 21
  %57 = ptrtoint ptr %diseqc_send_master_cmd159 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @av7110_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd159, align 4
  %58 = load ptr, ptr %fe61935, align 8
  %diseqc_send_burst162 = getelementptr inbounds %struct.dvb_frontend, ptr %58, i32 0, i32 1, i32 23
  %59 = ptrtoint ptr %diseqc_send_burst162 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @av7110_diseqc_send_burst, ptr %diseqc_send_burst162, align 4
  %60 = load ptr, ptr %fe61935, align 8
  %set_tone165 = getelementptr inbounds %struct.dvb_frontend, ptr %60, i32 0, i32 1, i32 24
  %61 = ptrtoint ptr %set_tone165 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @av7110_set_tone, ptr %set_tone165, align 4
  %recover166 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 97
  %62 = ptrtoint ptr %recover166 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @dvb_s_recover, ptr %recover166, align 4
  br label %if.end577

if.end167:                                        ; preds = %do.end144, %if.then139
  %63 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %fe61935, align 8
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 8
  %pci169 = getelementptr inbounds %struct.saa7146_dev, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %pci169 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci169, align 4
  %subsystem_device170 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %subsystem_device170 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %subsystem_device170, align 2
  %70 = zext i16 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.286)
  switch i16 %69, label %if.end167.if.end577_crit_edge [
    i16 0, label %sw.bb172
    i16 3, label %sw.bb209
  ]

if.end167.if.end577_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end577

sw.bb172:                                         ; preds = %if.end167
  %call175 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.215) #9
  %tobool176.not = icmp eq ptr %call175, null
  br i1 %tobool176.not, label %cond.end181, label %sw.bb172.if.then184_crit_edge

sw.bb172.if.then184_crit_edge:                    ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then184

cond.end181:                                      ; preds = %sw.bb172
  %call179 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.216) #9
  %call180 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.215) #9
  %tobool183.not = icmp eq ptr %call180, null
  br i1 %tobool183.not, label %do.end195, label %cond.end181.if.then184_crit_edge

cond.end181.if.then184_crit_edge:                 ; preds = %cond.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then184

if.then184:                                       ; preds = %cond.end181.if.then184_crit_edge, %sw.bb172.if.then184_crit_edge
  %cond182950 = phi ptr [ %call180, %cond.end181.if.then184_crit_edge ], [ %call175, %sw.bb172.if.then184_crit_edge ]
  %i2c_adap185 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call186 = tail call fastcc zeroext i8 @read_pwm(ptr noundef %av7110)
  %call187 = tail call ptr %cond182950(ptr noundef nonnull @philips_cd1516_config, ptr noundef %i2c_adap185, i8 noundef zeroext %call186) #9
  %cmp188 = icmp eq ptr %call187, null
  br i1 %cmp188, label %if.then190, label %if.then203

if.then190:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.215) #9
  br label %if.end198.thread

do.end195:                                        ; preds = %cond.end181
  call void @__sanitizer_cov_trace_pc() #11
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217) #12
  br label %if.end198.thread

if.end198.thread:                                 ; preds = %do.end195, %if.then190
  %71 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %fe61935, align 8
  br label %if.end577

if.then203:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call187, ptr %fe61935, align 8
  %set_params207 = getelementptr inbounds %struct.dvb_frontend, ptr %call187, i32 0, i32 1, i32 32, i32 6
  %73 = ptrtoint ptr %set_params207 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @philips_cd1516_tuner_set_params, ptr %set_params207, align 4
  br label %if.end577

sw.bb209:                                         ; preds = %if.end167
  %call212 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.215) #9
  %tobool213.not = icmp eq ptr %call212, null
  br i1 %tobool213.not, label %cond.end218, label %sw.bb209.if.then221_crit_edge

sw.bb209.if.then221_crit_edge:                    ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then221

cond.end218:                                      ; preds = %sw.bb209
  %call216 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.216) #9
  %call217 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.215) #9
  %tobool220.not = icmp eq ptr %call217, null
  br i1 %tobool220.not, label %do.end232, label %cond.end218.if.then221_crit_edge

cond.end218.if.then221_crit_edge:                 ; preds = %cond.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then221

if.then221:                                       ; preds = %cond.end218.if.then221_crit_edge, %sw.bb209.if.then221_crit_edge
  %cond219955 = phi ptr [ %call217, %cond.end218.if.then221_crit_edge ], [ %call212, %sw.bb209.if.then221_crit_edge ]
  %i2c_adap222 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call223 = tail call fastcc zeroext i8 @read_pwm(ptr noundef %av7110)
  %call224 = tail call ptr %cond219955(ptr noundef nonnull @alps_tdbe2_config, ptr noundef %i2c_adap222, i8 noundef zeroext %call223) #9
  %cmp225 = icmp eq ptr %call224, null
  br i1 %cmp225, label %if.then227, label %if.then240

if.then227:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.215) #9
  br label %if.end235.thread

do.end232:                                        ; preds = %cond.end218
  call void @__sanitizer_cov_trace_pc() #11
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217) #12
  br label %if.end235.thread

if.end235.thread:                                 ; preds = %do.end232, %if.then227
  %74 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %fe61935, align 8
  br label %if.end577

if.then240:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %fe61935 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call224, ptr %fe61935, align 8
  %set_params244 = getelementptr inbounds %struct.dvb_frontend, ptr %call224, i32 0, i32 1, i32 32, i32 6
  %76 = ptrtoint ptr %set_params244 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @alps_tdbe2_tuner_set_params, ptr %set_params244, align 4
  br label %if.end577

sw.bb247:                                         ; preds = %if.then29
  %call251 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.238) #9
  %tobool252.not = icmp eq ptr %call251, null
  br i1 %tobool252.not, label %cond.end257, label %sw.bb247.if.then260_crit_edge

sw.bb247.if.then260_crit_edge:                    ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then260

cond.end257:                                      ; preds = %sw.bb247
  %call255 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.239) #9
  %call256 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.238) #9
  %tobool259.not = icmp eq ptr %call256, null
  br i1 %tobool259.not, label %do.end270, label %cond.end257.if.then260_crit_edge

cond.end257.if.then260_crit_edge:                 ; preds = %cond.end257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then260

if.then260:                                       ; preds = %cond.end257.if.then260_crit_edge, %sw.bb247.if.then260_crit_edge
  %cond258960 = phi ptr [ %call256, %cond.end257.if.then260_crit_edge ], [ %call251, %sw.bb247.if.then260_crit_edge ]
  %i2c_adap261 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call262 = tail call ptr %cond258960(ptr noundef nonnull @alps_tdlb7_config, ptr noundef %i2c_adap261) #9
  %cmp263 = icmp eq ptr %call262, null
  br i1 %cmp263, label %if.then265, label %cleanup

if.then265:                                       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.238) #9
  br label %sw.bb282

do.end270:                                        ; preds = %cond.end257
  call void @__sanitizer_cov_trace_pc() #11
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241) #12
  br label %sw.bb282

cleanup:                                          ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #11
  %set_params279 = getelementptr inbounds %struct.dvb_frontend, ptr %call262, i32 0, i32 1, i32 32, i32 6
  %77 = ptrtoint ptr %set_params279 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @alps_tdlb7_tuner_set_params, ptr %set_params279, align 4
  %fe280 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %78 = ptrtoint ptr %fe280 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call262, ptr %fe280, align 8
  br label %if.end577

sw.bb282:                                         ; preds = %do.end270, %if.then265, %if.then29.sw.bb282_crit_edge
  %call285 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.243) #9
  %tobool286.not = icmp eq ptr %call285, null
  br i1 %tobool286.not, label %cond.end291, label %sw.bb282.if.then294_crit_edge

sw.bb282.if.then294_crit_edge:                    ; preds = %sw.bb282
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then294

cond.end291:                                      ; preds = %sw.bb282
  %call289 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.244) #9
  %call290 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.243) #9
  %tobool293.not = icmp eq ptr %call290, null
  br i1 %tobool293.not, label %do.end304, label %cond.end291.if.then294_crit_edge

cond.end291.if.then294_crit_edge:                 ; preds = %cond.end291
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then294

if.then294:                                       ; preds = %cond.end291.if.then294_crit_edge, %sw.bb282.if.then294_crit_edge
  %cond292967 = phi ptr [ %call290, %cond.end291.if.then294_crit_edge ], [ %call285, %sw.bb282.if.then294_crit_edge ]
  %i2c_adap295 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call296 = tail call ptr %cond292967(ptr noundef nonnull @grundig_29504_401_config, ptr noundef %i2c_adap295) #9
  %cmp297 = icmp eq ptr %call296, null
  br i1 %cmp297, label %if.then299, label %if.then312

if.then299:                                       ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.243) #9
  br label %if.end307.thread

do.end304:                                        ; preds = %cond.end291
  call void @__sanitizer_cov_trace_pc() #11
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246) #12
  br label %if.end307.thread

if.end307.thread:                                 ; preds = %do.end304, %if.then299
  %fe309969 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %79 = ptrtoint ptr %fe309969 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %fe309969, align 8
  br label %if.end577

if.then312:                                       ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #11
  %fe309 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %80 = ptrtoint ptr %fe309 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call296, ptr %fe309, align 8
  %set_params316 = getelementptr inbounds %struct.dvb_frontend, ptr %call296, i32 0, i32 1, i32 32, i32 6
  %81 = ptrtoint ptr %set_params316 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @grundig_29504_401_tuner_set_params, ptr %set_params316, align 4
  br label %if.end577

sw.bb318:                                         ; preds = %if.then29
  %call321 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.215) #9
  %tobool322.not = icmp eq ptr %call321, null
  br i1 %tobool322.not, label %cond.end327, label %sw.bb318.if.then330_crit_edge

sw.bb318.if.then330_crit_edge:                    ; preds = %sw.bb318
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then330

cond.end327:                                      ; preds = %sw.bb318
  %call325 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.216) #9
  %call326 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.215) #9
  %tobool329.not = icmp eq ptr %call326, null
  br i1 %tobool329.not, label %do.end341, label %cond.end327.if.then330_crit_edge

cond.end327.if.then330_crit_edge:                 ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then330

if.then330:                                       ; preds = %cond.end327.if.then330_crit_edge, %sw.bb318.if.then330_crit_edge
  %cond328973 = phi ptr [ %call326, %cond.end327.if.then330_crit_edge ], [ %call321, %sw.bb318.if.then330_crit_edge ]
  %i2c_adap331 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i908) #9
  %82 = ptrtoint ptr %b.i908 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -1, ptr %b.i908, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i909) #9
  %83 = ptrtoint ptr %pwm.i909 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %pwm.i909, align 1, !annotation !638
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i910) #9
  %84 = getelementptr inbounds i8, ptr %msg.i910, i32 4
  %85 = call ptr @memset(ptr %84, i32 255, i32 16)
  %86 = ptrtoint ptr %msg.i910 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 80, ptr %msg.i910, align 4
  %flags.i911 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i910, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i911 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i911, align 2
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %84, align 4
  %buf.i913 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i910, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i913 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %b.i908, ptr %buf.i913, align 4
  %arrayinit.element.i914 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i910, i32 1
  %90 = ptrtoint ptr %arrayinit.element.i914 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 80, ptr %arrayinit.element.i914, align 4
  %flags2.i915 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i910, i32 1, i32 1
  %91 = ptrtoint ptr %flags2.i915 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags2.i915, align 2
  %len3.i916 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i910, i32 1, i32 2
  %92 = ptrtoint ptr %len3.i916 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %len3.i916, align 4
  %buf4.i917 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i910, i32 1, i32 3
  %93 = ptrtoint ptr %buf4.i917 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %pwm.i909, ptr %buf4.i917, align 4
  %call.i919 = call i32 @i2c_transfer(ptr noundef %i2c_adap331, ptr noundef nonnull %msg.i910, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i919)
  %cmp.not.i920 = icmp eq i32 %call.i919, 2
  br i1 %cmp.not.i920, label %lor.lhs.false.i922, label %if.then330.if.then.i923_crit_edge

if.then330.if.then.i923_crit_edge:                ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i923

lor.lhs.false.i922:                               ; preds = %if.then330
  %94 = ptrtoint ptr %pwm.i909 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pwm.i909, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %cmp5.i921 = icmp eq i8 %95, -1
  br i1 %cmp5.i921, label %lor.lhs.false.i922.if.then.i923_crit_edge, label %lor.lhs.false.i922.read_pwm.exit924_crit_edge

lor.lhs.false.i922.read_pwm.exit924_crit_edge:    ; preds = %lor.lhs.false.i922
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_pwm.exit924

lor.lhs.false.i922.if.then.i923_crit_edge:        ; preds = %lor.lhs.false.i922
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i923

if.then.i923:                                     ; preds = %lor.lhs.false.i922.if.then.i923_crit_edge, %if.then330.if.then.i923_crit_edge
  %96 = ptrtoint ptr %pwm.i909 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 72, ptr %pwm.i909, align 1
  br label %read_pwm.exit924

read_pwm.exit924:                                 ; preds = %if.then.i923, %lor.lhs.false.i922.read_pwm.exit924_crit_edge
  %97 = ptrtoint ptr %pwm.i909 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pwm.i909, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i910) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i909) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i908) #9
  %call333 = call ptr %cond328973(ptr noundef nonnull @alps_tdbe2_config, ptr noundef %i2c_adap331, i8 noundef zeroext %98) #9
  %cmp334 = icmp eq ptr %call333, null
  br i1 %cmp334, label %if.then336, label %if.then349

if.then336:                                       ; preds = %read_pwm.exit924
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.215) #9
  br label %if.end344.thread

do.end341:                                        ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #11
  %call343 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217) #12
  br label %if.end344.thread

if.end344.thread:                                 ; preds = %do.end341, %if.then336
  %fe346975 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %99 = ptrtoint ptr %fe346975 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %fe346975, align 8
  br label %if.end577

if.then349:                                       ; preds = %read_pwm.exit924
  call void @__sanitizer_cov_trace_pc() #11
  %fe346 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %100 = ptrtoint ptr %fe346 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call333, ptr %fe346, align 8
  %set_params353 = getelementptr inbounds %struct.dvb_frontend, ptr %call333, i32 0, i32 1, i32 32, i32 6
  %101 = ptrtoint ptr %set_params353 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @alps_tdbe2_tuner_set_params, ptr %set_params353, align 4
  br label %if.end577

sw.bb355:                                         ; preds = %if.then29
  %call358 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.219) #9
  %tobool359.not = icmp eq ptr %call358, null
  br i1 %tobool359.not, label %cond.end364, label %sw.bb355.if.then367_crit_edge

sw.bb355.if.then367_crit_edge:                    ; preds = %sw.bb355
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then367

cond.end364:                                      ; preds = %sw.bb355
  %call362 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.220) #9
  %call363 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.219) #9
  %tobool366.not = icmp eq ptr %call363, null
  br i1 %tobool366.not, label %do.end377, label %cond.end364.if.then367_crit_edge

cond.end364.if.then367_crit_edge:                 ; preds = %cond.end364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then367

if.then367:                                       ; preds = %cond.end364.if.then367_crit_edge, %sw.bb355.if.then367_crit_edge
  %cond365979 = phi ptr [ %call363, %cond.end364.if.then367_crit_edge ], [ %call358, %sw.bb355.if.then367_crit_edge ]
  %i2c_adap368 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call369 = tail call ptr %cond365979(ptr noundef nonnull @alps_bsrv2_config, ptr noundef %i2c_adap368) #9
  %cmp370 = icmp eq ptr %call369, null
  br i1 %cmp370, label %if.then372, label %if.then385

if.then372:                                       ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.219) #9
  br label %if.end380.thread

do.end377:                                        ; preds = %cond.end364
  call void @__sanitizer_cov_trace_pc() #11
  %call379 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222) #12
  br label %if.end380.thread

if.end380.thread:                                 ; preds = %do.end377, %if.then372
  %fe382981 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %102 = ptrtoint ptr %fe382981 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %fe382981, align 8
  br label %if.end577

if.then385:                                       ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #11
  %fe382 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %103 = ptrtoint ptr %fe382 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call369, ptr %fe382, align 8
  %set_params389 = getelementptr inbounds %struct.dvb_frontend, ptr %call369, i32 0, i32 1, i32 32, i32 6
  %104 = ptrtoint ptr %set_params389 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @alps_bsrv2_tuner_set_params, ptr %set_params389, align 4
  %105 = load ptr, ptr %fe382, align 8
  %diseqc_send_master_cmd392 = getelementptr inbounds %struct.dvb_frontend, ptr %105, i32 0, i32 1, i32 21
  %106 = ptrtoint ptr %diseqc_send_master_cmd392 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @av7110_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd392, align 4
  %107 = load ptr, ptr %fe382, align 8
  %diseqc_send_burst395 = getelementptr inbounds %struct.dvb_frontend, ptr %107, i32 0, i32 1, i32 23
  %108 = ptrtoint ptr %diseqc_send_burst395 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @av7110_diseqc_send_burst, ptr %diseqc_send_burst395, align 4
  %109 = load ptr, ptr %fe382, align 8
  %set_tone398 = getelementptr inbounds %struct.dvb_frontend, ptr %109, i32 0, i32 1, i32 24
  %110 = ptrtoint ptr %set_tone398 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @av7110_set_tone, ptr %set_tone398, align 4
  %recover399 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 97
  %111 = ptrtoint ptr %recover399 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @dvb_s_recover, ptr %recover399, align 4
  br label %if.end577

sw.bb401:                                         ; preds = %if.then29
  %call404 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.229) #9
  %tobool405.not = icmp eq ptr %call404, null
  br i1 %tobool405.not, label %cond.end410, label %sw.bb401.if.then413_crit_edge

sw.bb401.if.then413_crit_edge:                    ; preds = %sw.bb401
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then413

cond.end410:                                      ; preds = %sw.bb401
  %call408 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.230) #9
  %call409 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.229) #9
  %tobool412.not = icmp eq ptr %call409, null
  br i1 %tobool412.not, label %do.end423, label %cond.end410.if.then413_crit_edge

cond.end410.if.then413_crit_edge:                 ; preds = %cond.end410
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then413

if.then413:                                       ; preds = %cond.end410.if.then413_crit_edge, %sw.bb401.if.then413_crit_edge
  %cond411985 = phi ptr [ %call409, %cond.end410.if.then413_crit_edge ], [ %call404, %sw.bb401.if.then413_crit_edge ]
  %i2c_adap414 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call415 = tail call ptr %cond411985(ptr noundef nonnull @grundig_29504_451_config, ptr noundef %i2c_adap414) #9
  %cmp416 = icmp eq ptr %call415, null
  br i1 %cmp416, label %if.then418, label %if.then431

if.then418:                                       ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.229) #9
  br label %if.end426.thread

do.end423:                                        ; preds = %cond.end410
  call void @__sanitizer_cov_trace_pc() #11
  %call425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232) #12
  br label %if.end426.thread

if.end426.thread:                                 ; preds = %do.end423, %if.then418
  %fe428987 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %112 = ptrtoint ptr %fe428987 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %fe428987, align 8
  br label %if.end577

if.then431:                                       ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #11
  %fe428 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %113 = ptrtoint ptr %fe428 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call415, ptr %fe428, align 8
  %set_params435 = getelementptr inbounds %struct.dvb_frontend, ptr %call415, i32 0, i32 1, i32 32, i32 6
  %114 = ptrtoint ptr %set_params435 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @grundig_29504_451_tuner_set_params, ptr %set_params435, align 4
  %115 = load ptr, ptr %fe428, align 8
  %diseqc_send_master_cmd438 = getelementptr inbounds %struct.dvb_frontend, ptr %115, i32 0, i32 1, i32 21
  %116 = ptrtoint ptr %diseqc_send_master_cmd438 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @av7110_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd438, align 4
  %117 = load ptr, ptr %fe428, align 8
  %diseqc_send_burst441 = getelementptr inbounds %struct.dvb_frontend, ptr %117, i32 0, i32 1, i32 23
  %118 = ptrtoint ptr %diseqc_send_burst441 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @av7110_diseqc_send_burst, ptr %diseqc_send_burst441, align 4
  %119 = load ptr, ptr %fe428, align 8
  %set_tone444 = getelementptr inbounds %struct.dvb_frontend, ptr %119, i32 0, i32 1, i32 24
  %120 = ptrtoint ptr %set_tone444 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @av7110_set_tone, ptr %set_tone444, align 4
  %recover445 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 97
  %121 = ptrtoint ptr %recover445 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @dvb_s_recover, ptr %recover445, align 4
  br label %if.end577

sw.bb447:                                         ; preds = %if.then29
  %call450 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.254) #9
  %tobool451.not = icmp eq ptr %call450, null
  br i1 %tobool451.not, label %cond.end456, label %sw.bb447.if.then459_crit_edge

sw.bb447.if.then459_crit_edge:                    ; preds = %sw.bb447
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then459

cond.end456:                                      ; preds = %sw.bb447
  %call454 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.255) #9
  %call455 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.254) #9
  %tobool458.not = icmp eq ptr %call455, null
  br i1 %tobool458.not, label %do.end469, label %cond.end456.if.then459_crit_edge

cond.end456.if.then459_crit_edge:                 ; preds = %cond.end456
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then459

if.then459:                                       ; preds = %cond.end456.if.then459_crit_edge, %sw.bb447.if.then459_crit_edge
  %cond457991 = phi ptr [ %call455, %cond.end456.if.then459_crit_edge ], [ %call450, %sw.bb447.if.then459_crit_edge ]
  %i2c_adap460 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call461 = tail call ptr %cond457991(ptr noundef nonnull @nexusca_stv0297_config, ptr noundef %i2c_adap460) #9
  %cmp462 = icmp eq ptr %call461, null
  br i1 %cmp462, label %if.then464, label %if.then477

if.then464:                                       ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.254) #9
  br label %if.end472.thread

do.end469:                                        ; preds = %cond.end456
  call void @__sanitizer_cov_trace_pc() #11
  %call471 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257) #12
  br label %if.end472.thread

if.end472.thread:                                 ; preds = %do.end469, %if.then464
  %fe474993 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %122 = ptrtoint ptr %fe474993 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %fe474993, align 8
  br label %if.end577

if.then477:                                       ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #11
  %fe474 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %123 = ptrtoint ptr %fe474 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call461, ptr %fe474, align 8
  %set_params481 = getelementptr inbounds %struct.dvb_frontend, ptr %call461, i32 0, i32 1, i32 32, i32 6
  %124 = ptrtoint ptr %set_params481 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @nexusca_stv0297_tuner_set_params, ptr %set_params481, align 4
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %126, i32 noundef 1, i32 noundef 64) #9
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %128, i32 noundef 3, i32 noundef 64) #9
  %129 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev, align 8
  %i2c_bitrate = getelementptr inbounds %struct.saa7146_dev, ptr %130, i32 0, i32 17
  %131 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1792, ptr %i2c_bitrate, align 4
  br label %if.end577

sw.bb486:                                         ; preds = %if.then29
  %call489 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.224) #9
  %tobool490.not = icmp eq ptr %call489, null
  br i1 %tobool490.not, label %cond.end495, label %sw.bb486.if.then498_crit_edge

sw.bb486.if.then498_crit_edge:                    ; preds = %sw.bb486
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then498

cond.end495:                                      ; preds = %sw.bb486
  %call493 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.225) #9
  %call494 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.224) #9
  %tobool497.not = icmp eq ptr %call494, null
  br i1 %tobool497.not, label %do.end508, label %cond.end495.if.then498_crit_edge

cond.end495.if.then498_crit_edge:                 ; preds = %cond.end495
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then498

if.then498:                                       ; preds = %cond.end495.if.then498_crit_edge, %sw.bb486.if.then498_crit_edge
  %cond496997 = phi ptr [ %call494, %cond.end495.if.then498_crit_edge ], [ %call489, %sw.bb486.if.then498_crit_edge ]
  %i2c_adap499 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call500 = tail call ptr %cond496997(ptr noundef nonnull @alps_bsbe1_config, ptr noundef %i2c_adap499) #9
  %cmp501 = icmp eq ptr %call500, null
  br i1 %cmp501, label %if.then503, label %if.then516

if.then503:                                       ; preds = %if.then498
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.224) #9
  br label %if.end511.thread

do.end508:                                        ; preds = %cond.end495
  call void @__sanitizer_cov_trace_pc() #11
  %call510 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227) #12
  br label %if.end511.thread

if.end511.thread:                                 ; preds = %do.end508, %if.then503
  %fe513999 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %132 = ptrtoint ptr %fe513999 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %fe513999, align 8
  br label %if.end577

if.then516:                                       ; preds = %if.then498
  %fe513 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %133 = ptrtoint ptr %fe513 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call500, ptr %fe513, align 8
  %set_params520 = getelementptr inbounds %struct.dvb_frontend, ptr %call500, i32 0, i32 1, i32 32, i32 6
  %134 = ptrtoint ptr %set_params520 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @alps_bsbe1_tuner_set_params, ptr %set_params520, align 4
  %135 = load ptr, ptr %fe513, align 8
  %tuner_priv523 = getelementptr inbounds %struct.dvb_frontend, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %tuner_priv523 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %i2c_adap499, ptr %tuner_priv523, align 4
  %call526 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.261) #9
  %tobool527.not = icmp eq ptr %call526, null
  br i1 %tobool527.not, label %cond.end532, label %if.then516.if.then535_crit_edge

if.then516.if.then535_crit_edge:                  ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then535

cond.end532:                                      ; preds = %if.then516
  %call530 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.262) #9
  %call531 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.261) #9
  %tobool534.not = icmp eq ptr %call531, null
  br i1 %tobool534.not, label %do.end546, label %cond.end532.if.then535_crit_edge

cond.end532.if.then535_crit_edge:                 ; preds = %cond.end532
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then535

if.then535:                                       ; preds = %cond.end532.if.then535_crit_edge, %if.then516.if.then535_crit_edge
  %cond5331004 = phi ptr [ %call531, %cond.end532.if.then535_crit_edge ], [ %call526, %if.then516.if.then535_crit_edge ]
  %137 = ptrtoint ptr %fe513 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fe513, align 8
  %call538 = tail call ptr %cond5331004(ptr noundef %138, ptr noundef %i2c_adap499, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %cmp539 = icmp eq ptr %call538, null
  br i1 %cmp539, label %if.then541, label %if.else569

if.then541:                                       ; preds = %if.then535
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.261) #9
  br label %do.end556

do.end546:                                        ; preds = %cond.end532
  call void @__sanitizer_cov_trace_pc() #11
  %call548 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264) #12
  br label %do.end556

do.end556:                                        ; preds = %do.end546, %if.then541
  %call558 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267) #12
  %139 = ptrtoint ptr %fe513 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fe513, align 8
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %140, i32 0, i32 1, i32 3
  %141 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %release, align 4
  %tobool561.not = icmp eq ptr %142, null
  br i1 %tobool561.not, label %do.end556.if.end567_crit_edge, label %if.then562

do.end556.if.end567_crit_edge:                    ; preds = %do.end556
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end567

if.then562:                                       ; preds = %do.end556
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %142(ptr noundef %140) #9
  br label %if.end567

if.end567:                                        ; preds = %if.then562, %do.end556.if.end567_crit_edge
  %143 = ptrtoint ptr %fe513 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %fe513, align 8
  br label %if.end577

if.else569:                                       ; preds = %if.then535
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %fe513 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %fe513, align 8
  %dishnetwork_send_legacy_command = getelementptr inbounds %struct.dvb_frontend, ptr %145, i32 0, i32 1, i32 27
  %146 = ptrtoint ptr %dishnetwork_send_legacy_command to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %dishnetwork_send_legacy_command, align 4
  %recover572 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 97
  %147 = ptrtoint ptr %recover572 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @dvb_s_recover, ptr %recover572, align 4
  br label %if.end577

if.end577:                                        ; preds = %if.else569, %if.end567, %if.end511.thread, %if.then477, %if.end472.thread, %if.then431, %if.end426.thread, %if.then385, %if.end380.thread, %if.then349, %if.end344.thread, %if.then312, %if.end307.thread, %cleanup, %if.then240, %if.end235.thread, %if.then203, %if.end198.thread, %if.end167.if.end577_crit_edge, %if.then152, %if.then105, %if.then64, %if.then29.if.end577_crit_edge, %if.then19, %if.end15.thread, %if.then.if.end577_crit_edge, %entry.if.end577_crit_edge
  %fe578 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %148 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fe578, align 8
  %tobool579.not = icmp eq ptr %149, null
  br i1 %tobool579.not, label %if.then580, label %if.else600

if.then580:                                       ; preds = %if.end577
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev, align 8
  %pci586 = getelementptr inbounds %struct.saa7146_dev, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %pci586 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pci586, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 7
  %154 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %vendor, align 8
  %conv587 = zext i16 %155 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 8
  %156 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %device, align 2
  %conv590 = zext i16 %157 to i32
  %subsystem_vendor593 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 9
  %158 = ptrtoint ptr %subsystem_vendor593 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %subsystem_vendor593, align 4
  %conv594 = zext i16 %159 to i32
  %subsystem_device597 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 10
  %160 = ptrtoint ptr %subsystem_device597 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %subsystem_device597, align 2
  %conv598 = zext i16 %161 to i32
  %call599 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, i32 noundef %conv587, i32 noundef %conv590, i32 noundef %conv594, i32 noundef %conv598) #12
  br label %if.end726

if.else600:                                       ; preds = %if.end577
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %149, i32 0, i32 1, i32 5
  %162 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %init, align 4
  %cmp603.not = icmp eq ptr %163, null
  br i1 %cmp603.not, label %if.else600.if.end612_crit_edge, label %if.then605

if.else600.if.end612_crit_edge:                   ; preds = %if.else600
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end612

if.then605:                                       ; preds = %if.else600
  call void @__sanitizer_cov_trace_pc() #11
  %fe_init = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 102
  %164 = ptrtoint ptr %fe_init to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %fe_init, align 4
  %165 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @av7110_fe_init, ptr %init, align 4
  br label %if.end612

if.end612:                                        ; preds = %if.then605, %if.else600.if.end612_crit_edge
  %166 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %fe578, align 8
  %read_status = getelementptr inbounds %struct.dvb_frontend, ptr %167, i32 0, i32 1, i32 15
  %168 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read_status, align 4
  %cmp615.not = icmp eq ptr %169, null
  br i1 %cmp615.not, label %if.end612.if.end624_crit_edge, label %if.then617

if.end612.if.end624_crit_edge:                    ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end624

if.then617:                                       ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #11
  %fe_read_status = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 103
  %170 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %fe_read_status, align 8
  %171 = ptrtoint ptr %read_status to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @av7110_fe_read_status, ptr %read_status, align 4
  br label %if.end624

if.end624:                                        ; preds = %if.then617, %if.end612.if.end624_crit_edge
  %172 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fe578, align 8
  %diseqc_reset_overload = getelementptr inbounds %struct.dvb_frontend, ptr %173, i32 0, i32 1, i32 20
  %174 = ptrtoint ptr %diseqc_reset_overload to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %diseqc_reset_overload, align 4
  %cmp627.not = icmp eq ptr %175, null
  br i1 %cmp627.not, label %if.end624.if.end636_crit_edge, label %if.then629

if.end624.if.end636_crit_edge:                    ; preds = %if.end624
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end636

if.then629:                                       ; preds = %if.end624
  call void @__sanitizer_cov_trace_pc() #11
  %fe_diseqc_reset_overload = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 104
  %176 = ptrtoint ptr %fe_diseqc_reset_overload to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %175, ptr %fe_diseqc_reset_overload, align 4
  %177 = ptrtoint ptr %diseqc_reset_overload to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @av7110_fe_diseqc_reset_overload, ptr %diseqc_reset_overload, align 4
  br label %if.end636

if.end636:                                        ; preds = %if.then629, %if.end624.if.end636_crit_edge
  %178 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %fe578, align 8
  %diseqc_send_master_cmd639 = getelementptr inbounds %struct.dvb_frontend, ptr %179, i32 0, i32 1, i32 21
  %180 = ptrtoint ptr %diseqc_send_master_cmd639 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %diseqc_send_master_cmd639, align 4
  %cmp640.not = icmp eq ptr %181, null
  br i1 %cmp640.not, label %if.end636.if.end649_crit_edge, label %if.then642

if.end636.if.end649_crit_edge:                    ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end649

if.then642:                                       ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #11
  %fe_diseqc_send_master_cmd = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 105
  %182 = ptrtoint ptr %fe_diseqc_send_master_cmd to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %fe_diseqc_send_master_cmd, align 8
  %183 = ptrtoint ptr %diseqc_send_master_cmd639 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @av7110_fe_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd639, align 4
  br label %if.end649

if.end649:                                        ; preds = %if.then642, %if.end636.if.end649_crit_edge
  %184 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fe578, align 8
  %diseqc_send_burst652 = getelementptr inbounds %struct.dvb_frontend, ptr %185, i32 0, i32 1, i32 23
  %186 = ptrtoint ptr %diseqc_send_burst652 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %diseqc_send_burst652, align 4
  %cmp653.not = icmp eq ptr %187, null
  br i1 %cmp653.not, label %if.end649.if.end662_crit_edge, label %if.then655

if.end649.if.end662_crit_edge:                    ; preds = %if.end649
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end662

if.then655:                                       ; preds = %if.end649
  call void @__sanitizer_cov_trace_pc() #11
  %fe_diseqc_send_burst = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 106
  %188 = ptrtoint ptr %fe_diseqc_send_burst to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %187, ptr %fe_diseqc_send_burst, align 4
  %189 = ptrtoint ptr %diseqc_send_burst652 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @av7110_fe_diseqc_send_burst, ptr %diseqc_send_burst652, align 4
  br label %if.end662

if.end662:                                        ; preds = %if.then655, %if.end649.if.end662_crit_edge
  %190 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %fe578, align 8
  %set_tone665 = getelementptr inbounds %struct.dvb_frontend, ptr %191, i32 0, i32 1, i32 24
  %192 = ptrtoint ptr %set_tone665 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %set_tone665, align 4
  %cmp666.not = icmp eq ptr %193, null
  br i1 %cmp666.not, label %if.end662.if.end675_crit_edge, label %if.then668

if.end662.if.end675_crit_edge:                    ; preds = %if.end662
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end675

if.then668:                                       ; preds = %if.end662
  call void @__sanitizer_cov_trace_pc() #11
  %fe_set_tone = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 107
  %194 = ptrtoint ptr %fe_set_tone to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %fe_set_tone, align 8
  %195 = ptrtoint ptr %set_tone665 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @av7110_fe_set_tone, ptr %set_tone665, align 4
  br label %if.end675

if.end675:                                        ; preds = %if.then668, %if.end662.if.end675_crit_edge
  %196 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %fe578, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %197, i32 0, i32 1, i32 25
  %198 = ptrtoint ptr %set_voltage to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %set_voltage, align 4
  %cmp678.not = icmp eq ptr %199, null
  br i1 %cmp678.not, label %if.end675.if.end687_crit_edge, label %if.then680

if.end675.if.end687_crit_edge:                    ; preds = %if.end675
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end687

if.then680:                                       ; preds = %if.end675
  call void @__sanitizer_cov_trace_pc() #11
  %fe_set_voltage = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 108
  %200 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %199, ptr %fe_set_voltage, align 4
  %201 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @av7110_fe_set_voltage, ptr %set_voltage, align 4
  br label %if.end687

if.end687:                                        ; preds = %if.then680, %if.end675.if.end687_crit_edge
  %202 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %fe578, align 8
  %dishnetwork_send_legacy_command690 = getelementptr inbounds %struct.dvb_frontend, ptr %203, i32 0, i32 1, i32 27
  %204 = ptrtoint ptr %dishnetwork_send_legacy_command690 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dishnetwork_send_legacy_command690, align 4
  %cmp691.not = icmp eq ptr %205, null
  br i1 %cmp691.not, label %if.end687.if.end700_crit_edge, label %if.then693

if.end687.if.end700_crit_edge:                    ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end700

if.then693:                                       ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #11
  %fe_dishnetwork_send_legacy_command = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 109
  %206 = ptrtoint ptr %fe_dishnetwork_send_legacy_command to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %205, ptr %fe_dishnetwork_send_legacy_command, align 8
  %207 = ptrtoint ptr %dishnetwork_send_legacy_command690 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @av7110_fe_dishnetwork_send_legacy_command, ptr %dishnetwork_send_legacy_command690, align 4
  br label %if.end700

if.end700:                                        ; preds = %if.then693, %if.end687.if.end700_crit_edge
  %208 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %fe578, align 8
  %set_frontend = getelementptr inbounds %struct.dvb_frontend, ptr %209, i32 0, i32 1, i32 12
  %210 = ptrtoint ptr %set_frontend to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %set_frontend, align 4
  %cmp703.not = icmp eq ptr %211, null
  br i1 %cmp703.not, label %if.end700.if.end712_crit_edge, label %if.then705

if.end700.if.end712_crit_edge:                    ; preds = %if.end700
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end712

if.then705:                                       ; preds = %if.end700
  call void @__sanitizer_cov_trace_pc() #11
  %fe_set_frontend = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 110
  %212 = ptrtoint ptr %fe_set_frontend to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %211, ptr %fe_set_frontend, align 4
  %213 = ptrtoint ptr %set_frontend to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @av7110_fe_set_frontend, ptr %set_frontend, align 4
  br label %if.end712

if.end712:                                        ; preds = %if.then705, %if.end700.if.end712_crit_edge
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %214 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %fe578, align 8
  %call714 = call i32 @dvb_register_frontend(ptr noundef %dvb_adapter, ptr noundef %215) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call714)
  %cmp715 = icmp slt i32 %call714, 0
  br i1 %cmp715, label %do.end720, label %if.end712.if.end726_crit_edge

if.end712.if.end726_crit_edge:                    ; preds = %if.end712
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end726

do.end720:                                        ; preds = %if.end712
  call void @__sanitizer_cov_trace_pc() #11
  %call722 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273) #12
  %216 = ptrtoint ptr %fe578 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %fe578, align 8
  call void @dvb_frontend_detach(ptr noundef %217) #9
  %218 = ptrtoint ptr %fe578 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %fe578, align 8
  br label %if.end726

if.end726:                                        ; preds = %do.end720, %if.end712.if.end726_crit_edge, %if.then580
  %ret.0 = phi i32 [ %call714, %do.end720 ], [ %call714, %if.end712.if.end726_crit_edge ], [ -12, %if.then580 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_ir_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_exit_v4l(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_unregister(ptr noundef %av7110) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33
  %demux1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 37
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.277, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %registered = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 62
  %1 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %3 = load i32, ptr @budgetpatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_net1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 38
  tail call void @dvb_net_release(ptr noundef %dvb_net1) #9
  %close = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 0, i32 4
  %4 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close, align 8
  %call10 = tail call i32 %5(ptr noundef %demux1) #9
  %dmxdev1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 36
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev1) #9
  tail call void @dvb_dmx_release(ptr noundef %demux1) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6.if.end12_crit_edge
  %dvb_net = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 1
  tail call void @dvb_net_release(ptr noundef %dvb_net) #9
  %close14 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 0, i32 4
  %6 = ptrtoint ptr %close14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close14, align 8
  %call16 = tail call i32 %7(ptr noundef %demux) #9
  %remove_frontend = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 33, i32 0, i32 11
  %8 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remove_frontend, align 4
  %hw_frontend = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 34
  %call19 = tail call i32 %9(ptr noundef %demux, ptr noundef %hw_frontend) #9
  %10 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_frontend, align 4
  %mem_frontend = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 35
  %call23 = tail call i32 %11(ptr noundef %demux, ptr noundef %mem_frontend) #9
  %dmxdev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 32
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #9
  tail call void @dvb_dmx_release(ptr noundef %demux) #9
  %fe = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %12 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe, align 8
  %cmp.not = icmp eq ptr %13, null
  br i1 %cmp.not, label %if.end12.if.end29_crit_edge, label %if.then25

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then25:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe, align 8
  tail call void @dvb_frontend_detach(ptr noundef %15) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end12.if.end29_crit_edge
  %osd_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 82
  %16 = ptrtoint ptr %osd_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %osd_dev, align 8
  tail call void @dvb_unregister_device(ptr noundef %17) #9
  tail call void @av7110_av_unregister(ptr noundef %av7110) #9
  tail call void @av7110_ca_unregister(ptr noundef %av7110) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_ca_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_av_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_vfree_destroy_pgtable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_record_cb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_get_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @CI_handle(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_p2t_write(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_debiwrite(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_wait_for_debi_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_video_add_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_avail(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_debi_dma(ptr noundef %av7110, i32 noundef %dir, i32 noundef %addr, i32 noundef %len) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %cond = select i1 %cmp, i32 82, i32 87
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef %cond, i32 noundef %addr, i32 noundef %len) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call3 = tail call i32 @saa7146_wait_for_debi_done(ptr noundef %2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body11, label %do.end7

do.end7:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.135) #12
  br label %if.end22

do.body11:                                        ; preds = %do.end2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !693
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2048) #9, !srcloc !626
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %8, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !694
  tail call void @arm_heavy_mb() #9
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 220
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !635
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !695
  %12 = or i32 %11, 2048
  %13 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %14, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %12) #9, !srcloc !626
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #9
  %15 = tail call i32 @llvm.umax.i32(i32 %len, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp18 = icmp eq i32 %dir, 1
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %15, 3
  %and20 = and i32 %add, -4
  %call.i = tail call i32 @av7110_debiwrite(ptr noundef %av7110, i32 noundef 1966080, i32 noundef %addr, i32 noundef 0, i32 noundef %and20) #9
  br label %if.end22

if.else:                                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %call.i33 = tail call i32 @av7110_debiread(ptr noundef %av7110, i32 noundef 1966080, i32 noundef %addr, i32 noundef %15) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19, %do.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_pes_play(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_ir_handler(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_debiread(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_set_ir_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_start_feed(ptr noundef %feed) #0 align 64 {
entry:
  %npids.i = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.144, ptr noundef %3) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frontend, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %full_ts = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 45
  %7 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end7
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %10)
  %cmp = icmp ugt i16 %10, 8191
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %if.then14, label %if.end11.if.end61_crit_edge

if.end11.if.end61_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then14:                                        ; preds = %if.end11
  %ts_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 10
  %13 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ts_type, align 8
  %and15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then14.if.else_crit_edge, label %land.lhs.true17

if.then14.if.else_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true17:                                  ; preds = %if.then14
  %pes_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 11
  %15 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pes_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp18 = icmp ult i32 %16, 5
  br i1 %cmp18, label %if.then20, label %land.lhs.true17.if.else_crit_edge

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then20:                                        ; preds = %land.lhs.true17
  %source = getelementptr inbounds %struct.dmx_frontend, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cond = icmp eq i32 %18, 0
  br i1 %cond, label %if.then26, label %sw.default

if.then26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp28 = icmp ult i32 %16, 2
  br i1 %cmp28, label %land.lhs.true30, label %if.then26.if.end61_crit_edge

if.then26.if.end61_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true30:                                  ; preds = %if.then26
  %pids = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %pids to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pids, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %tobool33.not = icmp sgt i16 %20, -1
  br i1 %tobool33.not, label %land.lhs.true34, label %land.lhs.true30.if.end61_crit_edge

land.lhs.true30.if.end61_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %arrayidx36 = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 14, i32 1
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx36, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %tobool39.not = icmp sgt i16 %22, -1
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true34.if.end61_crit_edge

land.lhs.true34.if.end61_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then40:                                        ; preds = %land.lhs.true34
  %avout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 14
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %avout) #9
  %aout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %aout) #9
  %call41 = tail call i32 @av7110_av_start_play(ptr noundef %3, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.then40.if.end61_crit_edge

if.then40.if.end61_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %playing = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %playing to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %playing, align 4
  br label %if.end61

sw.default:                                       ; preds = %if.then20
  %24 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %demux1, align 4
  %priv.i = getelementptr inbounds %struct.dvb_demux, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 4
  %pids.i = getelementptr inbounds %struct.dvb_demux, ptr %25, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %npids.i) #9
  %28 = getelementptr inbounds [5 x i16], ptr %npids.i, i32 0, i32 1
  %29 = getelementptr inbounds [5 x i16], ptr %npids.i, i32 0, i32 2
  %30 = getelementptr inbounds [5 x i16], ptr %npids.i, i32 0, i32 3
  %31 = getelementptr inbounds [5 x i16], ptr %npids.i, i32 0, i32 4
  %32 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.default.do.end3.i_crit_edge, label %do.end.i

sw.default.do.end3.i_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.145, ptr noundef %27) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.default.do.end3.i_crit_edge
  %33 = call ptr @memset(ptr %npids.i, i32 255, i32 10)
  %34 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pes_type, align 4
  %arrayidx8.i = getelementptr i16, ptr %pids.i, i32 %35
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx8.i, align 2
  %38 = tail call i16 @llvm.smax.i16(i16 %37, i16 0) #9
  %arrayidx14.i = getelementptr [5 x i16], ptr %npids.i, i32 0, i32 %35
  %39 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i = icmp ne i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %tobool18.not.i = icmp slt i16 %37, 1
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool18.not.i
  br i1 %or.cond.i, label %if.end34.i, label %land.lhs.true19.i

land.lhs.true19.i:                                ; preds = %do.end3.i
  %40 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ts_type, align 8
  %and20.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true19.i.if.then41.i_crit_edge, label %if.then22.i

land.lhs.true19.i.if.then41.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

if.then22.i:                                      ; preds = %land.lhs.true19.i
  %42 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %arrayidx14.i, align 2
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %28, align 2
  %45 = ptrtoint ptr %npids.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %npids.i, align 2
  %47 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %29, align 2
  %49 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %30, align 2
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %31, align 2
  %call29.i = tail call i32 @ChangePIDs(ptr noundef %27, i16 noundef zeroext %44, i16 noundef zeroext %46, i16 noundef zeroext %48, i16 noundef zeroext %50, i16 noundef zeroext %52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.then22.i.dvb_feed_start_pid.exit_crit_edge

if.then22.i.dvb_feed_start_pid.exit_crit_edge:    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_start_pid.exit

if.then31.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  %filter.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 8
  %53 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %filter.i, align 8
  %call32.i = tail call fastcc i32 @StartHWFilter(ptr noundef %54) #9
  br label %dvb_feed_start_pid.exit

if.end34.i:                                       ; preds = %do.end3.i
  %55 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.287)
  switch i32 %35, label %if.end34.i.if.end51.i_crit_edge [
    i32 4, label %if.end34.i.if.then41.i_crit_edge
    i32 2, label %if.end34.i.if.then41.i_crit_edge157
    i32 1, label %if.end34.i.if.then41.i_crit_edge158
    i32 0, label %if.end34.i.if.then41.i_crit_edge159
  ]

if.end34.i.if.then41.i_crit_edge159:              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

if.end34.i.if.then41.i_crit_edge158:              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

if.end34.i.if.then41.i_crit_edge157:              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

if.end34.i.if.then41.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.i

if.end34.i.if.end51.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then41.i:                                      ; preds = %if.end34.i.if.then41.i_crit_edge, %if.end34.i.if.then41.i_crit_edge157, %if.end34.i.if.then41.i_crit_edge158, %if.end34.i.if.then41.i_crit_edge159, %land.lhs.true19.i.if.then41.i_crit_edge
  %56 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %28, align 2
  %58 = ptrtoint ptr %npids.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %npids.i, align 2
  %60 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %29, align 2
  %62 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %30, align 2
  %64 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %31, align 2
  %call47.i = tail call i32 @ChangePIDs(ptr noundef %27, i16 noundef zeroext %57, i16 noundef zeroext %59, i16 noundef zeroext %61, i16 noundef zeroext %63, i16 noundef zeroext %65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then41.i.if.end51.i_crit_edge, label %if.then41.i.dvb_feed_start_pid.exit_crit_edge

if.then41.i.dvb_feed_start_pid.exit_crit_edge:    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_start_pid.exit

if.then41.i.if.end51.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then41.i.if.end51.i_crit_edge, %if.end34.i.if.end51.i_crit_edge
  %66 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pes_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp53.i = icmp ult i32 %67, 2
  br i1 %cmp53.i, label %land.lhs.true55.i, label %if.end51.i.if.end67.i_crit_edge

if.end51.i.if.end67.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

land.lhs.true55.i:                                ; preds = %if.end51.i
  %68 = ptrtoint ptr %npids.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %npids.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool58.not.i = icmp eq i16 %69, 0
  br i1 %tobool58.not.i, label %land.lhs.true55.i.if.end67.i_crit_edge, label %if.then59.i

land.lhs.true55.i.if.end67.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.then59.i:                                      ; preds = %land.lhs.true55.i
  %fe_synced.i = getelementptr inbounds %struct.av7110, ptr %27, i32 0, i32 46
  %70 = ptrtoint ptr %fe_synced.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fe_synced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool60.not.i = icmp eq i32 %71, 0
  br i1 %tobool60.not.i, label %if.then59.i.if.end67.i_crit_edge, label %if.then61.i

if.then59.i.if.end67.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.then61.i:                                      ; preds = %if.then59.i
  %call62.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %27, i32 noundef 1, i32 noundef 9, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.then61.i.if.end67.i_crit_edge, label %if.then61.i.dvb_feed_start_pid.exit_crit_edge

if.then61.i.dvb_feed_start_pid.exit_crit_edge:    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_start_pid.exit

if.then61.i.if.end67.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then61.i.if.end67.i_crit_edge, %if.then59.i.if.end67.i_crit_edge, %land.lhs.true55.i.if.end67.i_crit_edge, %if.end51.i.if.end67.i_crit_edge
  %72 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ts_type, align 8
  %and69.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.end67.i.dvb_feed_start_pid.exit_crit_edge, label %land.lhs.true71.i

if.end67.i.dvb_feed_start_pid.exit_crit_edge:     ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_start_pid.exit

land.lhs.true71.i:                                ; preds = %if.end67.i
  %full_ts.i = getelementptr inbounds %struct.av7110, ptr %27, i32 0, i32 45
  %74 = ptrtoint ptr %full_ts.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %full_ts.i, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool72.not.i = icmp eq i8 %75, 0
  br i1 %tobool72.not.i, label %if.then73.i, label %land.lhs.true71.i.dvb_feed_start_pid.exit_crit_edge

land.lhs.true71.i.dvb_feed_start_pid.exit_crit_edge: ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_start_pid.exit

if.then73.i:                                      ; preds = %land.lhs.true71.i
  %76 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pes_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp75.i = icmp eq i32 %77, 0
  br i1 %cmp75.i, label %land.lhs.true77.i, label %if.then73.i.if.end85.i_crit_edge

if.then73.i.if.end85.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

land.lhs.true77.i:                                ; preds = %if.then73.i
  %78 = ptrtoint ptr %pids.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pids.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %79)
  %tobool82.not.i = icmp sgt i16 %79, -1
  br i1 %tobool82.not.i, label %if.then83.i, label %land.lhs.true77.i.dvb_feed_start_pid.exit_crit_edge

land.lhs.true77.i.dvb_feed_start_pid.exit_crit_edge: ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_start_pid.exit

if.then83.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #11
  %call84.i = tail call i32 @av7110_av_start_record(ptr noundef %27, i32 noundef 2, ptr noundef %feed) #9
  %80 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr.i = load i32, ptr %pes_type, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then83.i, %if.then73.i.if.end85.i_crit_edge
  %81 = phi i32 [ %.pr.i, %if.then83.i ], [ %77, %if.then73.i.if.end85.i_crit_edge ]
  %ret.3.i = phi i32 [ %call84.i, %if.then83.i ], [ 0, %if.then73.i.if.end85.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp87.i = icmp eq i32 %81, 1
  br i1 %cmp87.i, label %land.lhs.true89.i, label %if.end85.i.dvb_feed_start_pid.exit_crit_edge

if.end85.i.dvb_feed_start_pid.exit_crit_edge:     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_start_pid.exit

land.lhs.true89.i:                                ; preds = %if.end85.i
  %arrayidx91.i = getelementptr %struct.dvb_demux, ptr %25, i32 0, i32 14, i32 1
  %82 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx91.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %83)
  %tobool94.not.i = icmp sgt i16 %83, -1
  br i1 %tobool94.not.i, label %if.then95.i, label %land.lhs.true89.i.dvb_feed_start_pid.exit_crit_edge

land.lhs.true89.i.dvb_feed_start_pid.exit_crit_edge: ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_start_pid.exit

if.then95.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #11
  %call96.i = tail call i32 @av7110_av_start_record(ptr noundef %27, i32 noundef 1, ptr noundef %feed) #9
  br label %dvb_feed_start_pid.exit

dvb_feed_start_pid.exit:                          ; preds = %if.then95.i, %land.lhs.true89.i.dvb_feed_start_pid.exit_crit_edge, %if.end85.i.dvb_feed_start_pid.exit_crit_edge, %land.lhs.true77.i.dvb_feed_start_pid.exit_crit_edge, %land.lhs.true71.i.dvb_feed_start_pid.exit_crit_edge, %if.end67.i.dvb_feed_start_pid.exit_crit_edge, %if.then61.i.dvb_feed_start_pid.exit_crit_edge, %if.then41.i.dvb_feed_start_pid.exit_crit_edge, %if.then31.i, %if.then22.i.dvb_feed_start_pid.exit_crit_edge
  %retval.0.i = phi i32 [ %call29.i, %if.then22.i.dvb_feed_start_pid.exit_crit_edge ], [ %call32.i, %if.then31.i ], [ %call47.i, %if.then41.i.dvb_feed_start_pid.exit_crit_edge ], [ %call62.i, %if.then61.i.dvb_feed_start_pid.exit_crit_edge ], [ 0, %land.lhs.true71.i.dvb_feed_start_pid.exit_crit_edge ], [ %ret.3.i, %land.lhs.true89.i.dvb_feed_start_pid.exit_crit_edge ], [ %call96.i, %if.then95.i ], [ %ret.3.i, %if.end85.i.dvb_feed_start_pid.exit_crit_edge ], [ 0, %if.end67.i.dvb_feed_start_pid.exit_crit_edge ], [ 0, %land.lhs.true77.i.dvb_feed_start_pid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %npids.i) #9
  br label %if.end61

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %if.then14.if.else_crit_edge
  %and49 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else.if.end61_crit_edge, label %land.lhs.true51

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true51:                                  ; preds = %if.else
  %source54 = getelementptr inbounds %struct.dmx_frontend, ptr %6, i32 0, i32 1
  %84 = ptrtoint ptr %source54 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %source54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp55.not = icmp eq i32 %85, 0
  br i1 %cmp55.not, label %land.lhs.true51.if.end61_crit_edge, label %if.then57

land.lhs.true51.if.end61_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then57:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  %filter = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 8
  %86 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %filter, align 8
  %call58 = tail call fastcc i32 @StartHWFilter(ptr noundef %87)
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %land.lhs.true51.if.end61_crit_edge, %if.else.if.end61_crit_edge, %dvb_feed_start_pid.exit, %if.then43, %if.then40.if.end61_crit_edge, %land.lhs.true34.if.end61_crit_edge, %land.lhs.true30.if.end61_crit_edge, %if.then26.if.end61_crit_edge, %if.end11.if.end61_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true30.if.end61_crit_edge ], [ 0, %land.lhs.true34.if.end61_crit_edge ], [ %call41, %if.then40.if.end61_crit_edge ], [ 0, %if.then43 ], [ 0, %if.then26.if.end61_crit_edge ], [ %retval.0.i, %dvb_feed_start_pid.exit ], [ %call58, %if.then57 ], [ 0, %land.lhs.true51.if.end61_crit_edge ], [ 0, %if.else.if.end61_crit_edge ], [ 0, %if.end11.if.end61_crit_edge ]
  %88 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool63.not = icmp eq i8 %89, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 @budget_start_feed(ptr noundef %feed)
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %90 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp68 = icmp eq i32 %91, 1
  br i1 %cmp68, label %for.cond.preheader, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end66
  %filternum = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 2
  %92 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %filternum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp71152 = icmp sgt i32 %93, 0
  br i1 %cmp71152, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %filter73 = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.1153 = phi i32 [ %ret.0, %for.body.lr.ph ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %94 = ptrtoint ptr %filter73 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %filter73, align 8
  %state = getelementptr %struct.dvb_demux_filter, ptr %95, i32 %i.0154, i32 7
  %96 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp75.not = icmp eq i32 %97, 2
  br i1 %cmp75.not, label %if.end78, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end78:                                         ; preds = %for.body
  %type81 = getelementptr %struct.dvb_demux_filter, ptr %95, i32 %i.0154, i32 8
  %98 = ptrtoint ptr %type81 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %type81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp82.not = icmp eq i32 %99, 1
  br i1 %cmp82.not, label %if.end85, label %if.end78.for.inc_crit_edge

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end85:                                         ; preds = %if.end78
  %parent = getelementptr %struct.dvb_demux_filter, ptr %95, i32 %i.0154, i32 0, i32 3
  %100 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %parent, align 4
  %cmp90.not = icmp eq ptr %101, %feed
  br i1 %cmp90.not, label %if.end93, label %if.end85.for.inc_crit_edge

if.end85.for.inc_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end93:                                         ; preds = %if.end85
  %102 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %state, align 4
  %103 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %frontend, align 4
  %source99 = getelementptr inbounds %struct.dmx_frontend, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %source99 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %source99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp100.not = icmp eq i32 %106, 0
  br i1 %cmp100.not, label %if.end93.for.inc_crit_edge, label %if.then102

if.end93.for.inc_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then102:                                       ; preds = %if.end93
  %107 = ptrtoint ptr %filter73 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %filter73, align 8
  %arrayidx104 = getelementptr %struct.dvb_demux_filter, ptr %108, i32 %i.0154
  %call105 = tail call fastcc i32 @StartHWFilter(ptr noundef %arrayidx104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then102.for.inc_crit_edge, label %if.then102.cleanup_crit_edge

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then102.for.inc_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.then102.for.inc_crit_edge, %if.end93.for.inc_crit_edge, %if.end85.for.inc_crit_edge, %if.end78.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.1153, %for.body.for.inc_crit_edge ], [ %ret.1153, %if.end78.for.inc_crit_edge ], [ %ret.1153, %if.end85.for.inc_crit_edge ], [ 0, %if.then102.for.inc_crit_edge ], [ %ret.1153, %if.end93.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0154, 1
  %109 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %filternum, align 8
  %cmp71 = icmp slt i32 %inc, %110
  br i1 %cmp71, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then102.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.then64, %land.lhs.true.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then64 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %ret.0, %if.end66.cleanup_crit_edge ], [ %ret.0, %for.cond.preheader.cleanup_crit_edge ], [ %ret.2, %for.inc.cleanup_crit_edge ], [ %call105, %if.then102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_av_start_play(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @StartHWFilter(ptr noundef %dvbdmxfilter) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [20 x i16], align 2
  %handle = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %feed = getelementptr inbounds %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 5
  %0 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feed, align 4
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #9
  %6 = call ptr @memset(ptr %buf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %handle) #9
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %handle, align 2, !annotation !638
  %8 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.146, ptr noundef %5) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %full_ts = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 45
  %9 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %type = getelementptr inbounds %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 8
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end6
  %13 = load i32, ptr @hw_sections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.then7.if.end36_crit_edge, label %if.then9

if.then7.if.end36_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dvbdmxfilter to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dvbdmxfilter, align 4
  %conv = zext i8 %15 to i16
  %shl = shl nuw i16 %conv, 8
  %maskandmode = getelementptr inbounds %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1
  %16 = ptrtoint ptr %maskandmode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %maskandmode, align 4
  %conv11 = zext i8 %17 to i16
  %or = or i16 %shl, %conv11
  %arrayidx13 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or, ptr %arrayidx13, align 2
  %arrayidx18 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %20 to i16
  %shl20 = shl nuw i16 %conv19, 8
  %arrayidx22 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %22 to i16
  %or24 = or i16 %shl20, %conv23
  %arrayidx26 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or24, ptr %arrayidx26, align 2
  %arrayidx18.1 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx18.1, align 1
  %conv19.1 = zext i8 %25 to i16
  %shl20.1 = shl nuw i16 %conv19.1, 8
  %arrayidx22.1 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22.1, align 1
  %conv23.1 = zext i8 %27 to i16
  %or24.1 = or i16 %shl20.1, %conv23.1
  %arrayidx26.1 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or24.1, ptr %arrayidx26.1, align 2
  %arrayidx18.2 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx18.2, align 1
  %conv19.2 = zext i8 %30 to i16
  %shl20.2 = shl nuw i16 %conv19.2, 8
  %arrayidx22.2 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx22.2, align 1
  %conv23.2 = zext i8 %32 to i16
  %or24.2 = or i16 %shl20.2, %conv23.2
  %arrayidx26.2 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %or24.2, ptr %arrayidx26.2, align 2
  %arrayidx18.3 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx18.3, align 1
  %conv19.3 = zext i8 %35 to i16
  %shl20.3 = shl nuw i16 %conv19.3, 8
  %arrayidx22.3 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx22.3, align 1
  %conv23.3 = zext i8 %37 to i16
  %or24.3 = or i16 %shl20.3, %conv23.3
  %arrayidx26.3 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 8
  %38 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %or24.3, ptr %arrayidx26.3, align 2
  %arrayidx18.4 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 7
  %39 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx18.4, align 1
  %conv19.4 = zext i8 %40 to i16
  %shl20.4 = shl nuw i16 %conv19.4, 8
  %arrayidx22.4 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 7
  %41 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx22.4, align 1
  %conv23.4 = zext i8 %42 to i16
  %or24.4 = or i16 %shl20.4, %conv23.4
  %arrayidx26.4 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 9
  %43 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or24.4, ptr %arrayidx26.4, align 2
  %arrayidx18.5 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 8
  %44 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx18.5, align 1
  %conv19.5 = zext i8 %45 to i16
  %shl20.5 = shl nuw i16 %conv19.5, 8
  %arrayidx22.5 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 8
  %46 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx22.5, align 1
  %conv23.5 = zext i8 %47 to i16
  %or24.5 = or i16 %shl20.5, %conv23.5
  %arrayidx26.5 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 10
  %48 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or24.5, ptr %arrayidx26.5, align 2
  %arrayidx18.6 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 9
  %49 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx18.6, align 1
  %conv19.6 = zext i8 %50 to i16
  %shl20.6 = shl nuw i16 %conv19.6, 8
  %arrayidx22.6 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 9
  %51 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx22.6, align 1
  %conv23.6 = zext i8 %52 to i16
  %or24.6 = or i16 %shl20.6, %conv23.6
  %arrayidx26.6 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 11
  %53 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or24.6, ptr %arrayidx26.6, align 2
  %arrayidx18.7 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 10
  %54 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx18.7, align 1
  %conv19.7 = zext i8 %55 to i16
  %shl20.7 = shl nuw i16 %conv19.7, 8
  %arrayidx22.7 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 10
  %56 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx22.7, align 1
  %conv23.7 = zext i8 %57 to i16
  %or24.7 = or i16 %shl20.7, %conv23.7
  %arrayidx26.7 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 12
  %58 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %or24.7, ptr %arrayidx26.7, align 2
  %arrayidx18.8 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 11
  %59 = ptrtoint ptr %arrayidx18.8 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx18.8, align 1
  %conv19.8 = zext i8 %60 to i16
  %shl20.8 = shl nuw i16 %conv19.8, 8
  %arrayidx22.8 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 11
  %61 = ptrtoint ptr %arrayidx22.8 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx22.8, align 1
  %conv23.8 = zext i8 %62 to i16
  %or24.8 = or i16 %shl20.8, %conv23.8
  %arrayidx26.8 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 13
  %63 = ptrtoint ptr %arrayidx26.8 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %or24.8, ptr %arrayidx26.8, align 2
  %arrayidx18.9 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 12
  %64 = ptrtoint ptr %arrayidx18.9 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx18.9, align 1
  %conv19.9 = zext i8 %65 to i16
  %shl20.9 = shl nuw i16 %conv19.9, 8
  %arrayidx22.9 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 12
  %66 = ptrtoint ptr %arrayidx22.9 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx22.9, align 1
  %conv23.9 = zext i8 %67 to i16
  %or24.9 = or i16 %shl20.9, %conv23.9
  %arrayidx26.9 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 14
  %68 = ptrtoint ptr %arrayidx26.9 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %or24.9, ptr %arrayidx26.9, align 2
  %arrayidx18.10 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 13
  %69 = ptrtoint ptr %arrayidx18.10 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx18.10, align 1
  %conv19.10 = zext i8 %70 to i16
  %shl20.10 = shl nuw i16 %conv19.10, 8
  %arrayidx22.10 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 13
  %71 = ptrtoint ptr %arrayidx22.10 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx22.10, align 1
  %conv23.10 = zext i8 %72 to i16
  %or24.10 = or i16 %shl20.10, %conv23.10
  %arrayidx26.10 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 15
  %73 = ptrtoint ptr %arrayidx26.10 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %or24.10, ptr %arrayidx26.10, align 2
  %arrayidx18.11 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 14
  %74 = ptrtoint ptr %arrayidx18.11 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx18.11, align 1
  %conv19.11 = zext i8 %75 to i16
  %shl20.11 = shl nuw i16 %conv19.11, 8
  %arrayidx22.11 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 14
  %76 = ptrtoint ptr %arrayidx22.11 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx22.11, align 1
  %conv23.11 = zext i8 %77 to i16
  %or24.11 = or i16 %shl20.11, %conv23.11
  %arrayidx26.11 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 16
  %78 = ptrtoint ptr %arrayidx26.11 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %or24.11, ptr %arrayidx26.11, align 2
  %arrayidx18.12 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 15
  %79 = ptrtoint ptr %arrayidx18.12 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx18.12, align 1
  %conv19.12 = zext i8 %80 to i16
  %shl20.12 = shl nuw i16 %conv19.12, 8
  %arrayidx22.12 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 15
  %81 = ptrtoint ptr %arrayidx22.12 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx22.12, align 1
  %conv23.12 = zext i8 %82 to i16
  %or24.12 = or i16 %shl20.12, %conv23.12
  %arrayidx26.12 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 17
  %83 = ptrtoint ptr %arrayidx26.12 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %or24.12, ptr %arrayidx26.12, align 2
  %arrayidx18.13 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 16
  %84 = ptrtoint ptr %arrayidx18.13 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx18.13, align 1
  %conv19.13 = zext i8 %85 to i16
  %shl20.13 = shl nuw i16 %conv19.13, 8
  %arrayidx22.13 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 16
  %86 = ptrtoint ptr %arrayidx22.13 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx22.13, align 1
  %conv23.13 = zext i8 %87 to i16
  %or24.13 = or i16 %shl20.13, %conv23.13
  %arrayidx26.13 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 18
  %88 = ptrtoint ptr %arrayidx26.13 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %or24.13, ptr %arrayidx26.13, align 2
  %arrayidx18.14 = getelementptr [18 x i8], ptr %dvbdmxfilter, i32 0, i32 17
  %89 = ptrtoint ptr %arrayidx18.14 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx18.14, align 1
  %conv19.14 = zext i8 %90 to i16
  %shl20.14 = shl nuw i16 %conv19.14, 8
  %arrayidx22.14 = getelementptr %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 1, i32 17
  %91 = ptrtoint ptr %arrayidx22.14 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx22.14, align 1
  %conv23.14 = zext i8 %92 to i16
  %or24.14 = or i16 %shl20.14, %conv23.14
  %arrayidx26.14 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 19
  %93 = ptrtoint ptr %arrayidx26.14 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %or24.14, ptr %arrayidx26.14, align 2
  br label %if.end36

if.else:                                          ; preds = %if.end6
  %ts_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 10
  %94 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ts_type, align 8
  %96 = and i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %if.then33, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 6
  %98 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %index, align 4
  %arrayidx34 = getelementptr %struct.av7110, ptr %5, i32 0, i32 55, i32 %99
  tail call void @av7110_p2t_init(ptr noundef %arrayidx34, ptr noundef %1) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.else.if.end36_crit_edge, %if.then9, %if.then7.if.end36_crit_edge
  %mode.0 = phi i16 [ -18070, %if.then7.if.end36_crit_edge ], [ -18070, %if.then33 ], [ -18070, %if.else.if.end36_crit_edge ], [ 4, %if.then9 ]
  %100 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2823, ptr %buf, align 2
  %arrayidx38 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 16, ptr %arrayidx38, align 2
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 6
  %102 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %pid, align 4
  %arrayidx39 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %arrayidx39, align 2
  %arrayidx40 = getelementptr inbounds [20 x i16], ptr %buf, i32 0, i32 3
  %105 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %mode.0, ptr %arrayidx40, align 2
  %call41 = call i32 @av7110_fw_request(ptr noundef %5, ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull %handle, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %lor.lhs.false, label %if.end36.do.end50_crit_edge

if.end36.do.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

lor.lhs.false:                                    ; preds = %if.end36
  %106 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %handle, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %107)
  %cmp45 = icmp ugt i16 %107, 31
  br i1 %cmp45, label %lor.lhs.false.do.end50_crit_edge, label %if.end65

lor.lhs.false.do.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false.do.end50_crit_edge, %if.end36.do.end50_crit_edge
  %spec.store.select = phi i32 [ %call41, %if.end36.do.end50_crit_edge ], [ -1, %lor.lhs.false.do.end50_crit_edge ]
  %108 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %buf, align 2
  %conv53 = zext i16 %109 to i32
  %110 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx38, align 2
  %conv55 = zext i16 %111 to i32
  %112 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx39, align 2
  %conv57 = zext i16 %113 to i32
  %114 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx40, align 2
  %conv59 = zext i16 %115 to i32
  %116 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %handle, align 2
  %conv60 = zext i16 %117 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.146, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %conv57, i32 noundef %conv59, i32 noundef %call41, i32 noundef %conv60) #12
  br label %cleanup.sink.split

if.end65:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv44 = zext i16 %107 to i32
  %arrayidx66 = getelementptr %struct.av7110, ptr %5, i32 0, i32 54, i32 %conv44
  %118 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %dvbdmxfilter, ptr %arrayidx66, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end65, %do.end50
  %.sink = phi i16 [ %107, %if.end65 ], [ -1, %do.end50 ]
  %retval.0.ph = phi i32 [ 0, %if.end65 ], [ %spec.store.select, %do.end50 ]
  %hw_handle67 = getelementptr inbounds %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 9
  %119 = ptrtoint ptr %hw_handle67 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %.sink, ptr %hw_handle67, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %handle) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_start_feed(ptr nocapture noundef %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, ptr noundef %3) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %feedlock1 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %feedlock1) #9
  %pusi_seen = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 13
  %5 = ptrtoint ptr %pusi_seen to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %pusi_seen, align 4
  %6 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end4.do.end3.i_crit_edge, label %do.end.i

do.end4.do.end3.i_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef %3) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end4.do.end3.i_crit_edge
  %feeding1.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 40
  %7 = ptrtoint ptr %feeding1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %feeding1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %do.end3.i.start_ts_capture.exit_crit_edge

do.end3.i.start_ts_capture.exit_crit_edge:        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %start_ts_capture.exit

for.cond.preheader.i:                             ; preds = %do.end3.i
  %grabbing.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 42
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %y.032.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc8.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %grabbing.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %grabbing.i, align 4
  %mul.i = mul nuw nsw i32 %y.032.i, 376
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %11 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 376)
  %inc8.i = add nuw nsw i32 %y.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, 512
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %ttbp.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 41
  %12 = ptrtoint ptr %ttbp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ttbp.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !696
  tail call void @arm_heavy_mb() #9
  %dev.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %16, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 262144) #9, !srcloc !626
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  %int_slock.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %18, i32 0, i32 10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !694
  tail call void @arm_heavy_mb() #9
  %mem.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 220
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !635
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !695
  %22 = or i32 %21, 262144
  %23 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %24, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %22) #9, !srcloc !626
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i.i, i32 noundef %call2.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !697
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  %mem18.i = getelementptr inbounds %struct.saa7146_dev, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %mem18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem18.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %28, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 268439552) #9, !srcloc !626
  %29 = ptrtoint ptr %feeding1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %feeding1.i, align 4
  br label %start_ts_capture.exit

start_ts_capture.exit:                            ; preds = %for.end.i, %do.end3.i.start_ts_capture.exit_crit_edge
  %storemerge.in.i = phi i32 [ %30, %for.end.i ], [ %8, %do.end3.i.start_ts_capture.exit_crit_edge ]
  %storemerge.i = add i32 %storemerge.in.i, 1
  %31 = ptrtoint ptr %feeding1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge.i, ptr %feeding1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %feedlock1) #9
  ret i32 %storemerge.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_av_start_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_p2t_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_fw_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_stop_feed(ptr noundef readonly %feed) #0 align 64 {
entry:
  %npids.i = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.158, ptr noundef %3) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then5, label %do.end4.if.end39_crit_edge

do.end4.if.end39_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then5:                                         ; preds = %do.end4
  %ts_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 10
  %7 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ts_type, align 8
  %and6 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then5.if.end20_crit_edge, label %if.then8

if.then5.if.end20_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then8:                                         ; preds = %if.then5
  %pes_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 11
  %9 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pes_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %10)
  %cmp9 = icmp ugt i32 %10, 19
  br i1 %cmp9, label %if.then8.cleanup_crit_edge, label %lor.lhs.false

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then8
  %arrayidx = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 13, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 14, i32 %10
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx15, align 2
  %15 = or i16 %14, -32768
  store i16 %15, ptr %arrayidx15, align 2
  %16 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pes_type, align 4
  %arrayidx19 = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 13, i32 %17
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end13, %if.then5.if.end20_crit_edge
  %19 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ts_type, align 8
  %and22 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.else_crit_edge, label %land.lhs.true

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %pes_type24 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 11
  %21 = ptrtoint ptr %pes_type24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pes_type24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %22)
  %cmp25 = icmp ult i32 %22, 20
  br i1 %cmp25, label %if.then27, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then27:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %demux1, align 4
  %priv.i = getelementptr inbounds %struct.dvb_demux, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 4
  %pids.i = getelementptr inbounds %struct.dvb_demux, ptr %24, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %npids.i) #9
  %27 = getelementptr inbounds [5 x i16], ptr %npids.i, i32 0, i32 1
  %28 = getelementptr inbounds [5 x i16], ptr %npids.i, i32 0, i32 2
  %29 = getelementptr inbounds [5 x i16], ptr %npids.i, i32 0, i32 3
  %30 = getelementptr inbounds [5 x i16], ptr %npids.i, i32 0, i32 4
  %31 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then27.do.end3.i_crit_edge, label %do.end.i

if.then27.do.end3.i_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.159, ptr noundef %26) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then27.do.end3.i_crit_edge
  %32 = ptrtoint ptr %pes_type24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pes_type24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.i = icmp ult i32 %33, 2
  br i1 %cmp.i, label %if.then4.i, label %do.end3.i.if.end18.i_crit_edge

do.end3.i.if.end18.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then4.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool6.not.i = icmp eq i32 %33, 0
  %cond.i = select i1 %tobool6.not.i, i32 2, i32 1
  %call7.i = tail call i32 @av7110_av_stop(ptr noundef %26, i32 noundef %cond.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then4.i.dvb_feed_stop_pid.exit_crit_edge

if.then4.i.dvb_feed_stop_pid.exit_crit_edge:      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_stop_pid.exit

if.end10.i:                                       ; preds = %if.then4.i
  %rec_mode.i = getelementptr inbounds %struct.av7110, ptr %26, i32 0, i32 25
  %34 = ptrtoint ptr %rec_mode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not.i = icmp eq i32 %35, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end10.i.if.end13.i_crit_edge

if.end10.i.if.end13.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %recording.i = getelementptr inbounds %struct.dvb_demux, ptr %24, i32 0, i32 24
  %36 = ptrtoint ptr %recording.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %recording.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end13.i_crit_edge
  %playing.i = getelementptr inbounds %struct.av7110, ptr %26, i32 0, i32 26
  %37 = ptrtoint ptr %playing.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %playing.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool14.not.i = icmp eq i32 %38, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end13.i.if.end18thread-pre-split.i_crit_edge

if.end13.i.if.end18thread-pre-split.i_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18thread-pre-split.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %playing16.i = getelementptr inbounds %struct.dvb_demux, ptr %24, i32 0, i32 23
  %39 = ptrtoint ptr %playing16.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %playing16.i, align 4
  br label %if.end18thread-pre-split.i

if.end18thread-pre-split.i:                       ; preds = %if.then15.i, %if.end13.i.if.end18thread-pre-split.i_crit_edge
  %40 = ptrtoint ptr %pes_type24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr.i = load i32, ptr %pes_type24, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18thread-pre-split.i, %do.end3.i.if.end18.i_crit_edge
  %41 = phi i32 [ %.pr.i, %if.end18thread-pre-split.i ], [ %33, %do.end3.i.if.end18.i_crit_edge ]
  %42 = call ptr @memset(ptr %npids.i, i32 255, i32 10)
  %43 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.288)
  switch i32 %41, label %if.end18.i.if.then43.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %if.end18.i.sw.bb30.i_crit_edge
    i32 1, label %if.end18.i.sw.bb30.i_crit_edge120
    i32 4, label %if.end18.i.sw.bb30.i_crit_edge121
  ]

if.end18.i.sw.bb30.i_crit_edge121:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30.i

if.end18.i.sw.bb30.i_crit_edge120:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30.i

if.end18.i.sw.bb30.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30.i

if.end18.i.if.then43.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43.i

sw.bb.i:                                          ; preds = %if.end18.i
  %44 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ts_type, align 8
  %and24.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %sw.epilog.thread77.i, label %sw.epilog.i

sw.epilog.thread77.i:                             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %28, align 2
  br label %if.then43.i

sw.bb30.i:                                        ; preds = %if.end18.i.sw.bb30.i_crit_edge, %if.end18.i.sw.bb30.i_crit_edge120, %if.end18.i.sw.bb30.i_crit_edge121
  %47 = load i32, ptr @pids_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool31.not.i = icmp eq i32 %47, 0
  br i1 %tobool31.not.i, label %sw.bb30.i.dvb_feed_stop_pid.exit_crit_edge, label %if.end33.i

sw.bb30.i.dvb_feed_stop_pid.exit_crit_edge:       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_stop_pid.exit

if.end33.i:                                       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx34.i = getelementptr i16, ptr %pids.i, i32 %41
  %48 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx34.i, align 2
  %50 = tail call i16 @llvm.smax.i16(i16 %49, i16 0) #9
  %arrayidx41.i = getelementptr [5 x i16], ptr %npids.i, i32 0, i32 %41
  %51 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx41.i, align 2
  br label %if.then43.i

sw.epilog.i:                                      ; preds = %sw.bb.i
  %filter.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 8
  %52 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %filter.i, align 8
  %call27.i = tail call fastcc i32 @StopHWFilter(ptr noundef %53) #9
  %54 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %28, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool42.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool42.not.i, label %sw.epilog.i.if.then43.i_crit_edge, label %sw.epilog.i.dvb_feed_stop_pid.exit_crit_edge

sw.epilog.i.dvb_feed_stop_pid.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_feed_stop_pid.exit

sw.epilog.i.if.then43.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43.i

if.then43.i:                                      ; preds = %sw.epilog.i.if.then43.i_crit_edge, %if.end33.i, %sw.epilog.thread77.i, %if.end18.i.if.then43.i_crit_edge
  %55 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %27, align 2
  %57 = ptrtoint ptr %npids.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %npids.i, align 2
  %59 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %28, align 2
  %61 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %29, align 2
  %63 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %30, align 2
  %call49.i = tail call i32 @ChangePIDs(ptr noundef %26, i16 noundef zeroext %56, i16 noundef zeroext %58, i16 noundef zeroext %60, i16 noundef zeroext %62, i16 noundef zeroext %64) #9
  br label %dvb_feed_stop_pid.exit

dvb_feed_stop_pid.exit:                           ; preds = %if.then43.i, %sw.epilog.i.dvb_feed_stop_pid.exit_crit_edge, %sw.bb30.i.dvb_feed_stop_pid.exit_crit_edge, %if.then4.i.dvb_feed_stop_pid.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.then4.i.dvb_feed_stop_pid.exit_crit_edge ], [ 0, %sw.bb30.i.dvb_feed_stop_pid.exit_crit_edge ], [ %call27.i, %sw.epilog.i.dvb_feed_stop_pid.exit_crit_edge ], [ %call49.i, %if.then43.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %npids.i) #9
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end20.if.else_crit_edge
  %and30 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else.if.end39_crit_edge, label %land.lhs.true32

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true32:                                  ; preds = %if.else
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %frontend, align 4
  %source = getelementptr inbounds %struct.dmx_frontend, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp33.not = icmp eq i32 %68, 0
  br i1 %cmp33.not, label %land.lhs.true32.if.end39_crit_edge, label %if.then35

land.lhs.true32.if.end39_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  %filter = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 8
  %69 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %filter, align 8
  %call36 = tail call fastcc i32 @StopHWFilter(ptr noundef %70)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true32.if.end39_crit_edge, %if.else.if.end39_crit_edge, %dvb_feed_stop_pid.exit, %do.end4.if.end39_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %dvb_feed_stop_pid.exit ], [ %call36, %if.then35 ], [ 0, %land.lhs.true32.if.end39_crit_edge ], [ 0, %if.else.if.end39_crit_edge ], [ 0, %do.end4.if.end39_crit_edge ]
  %full_ts = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 45
  %71 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool40.not = icmp eq i8 %72, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 @budget_stop_feed(ptr noundef %feed)
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %73 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp45 = icmp eq i32 %74, 1
  br i1 %cmp45, label %for.cond.preheader, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end43
  %filternum = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 2
  %75 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %filternum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp48116 = icmp sgt i32 %76, 0
  br i1 %cmp48116, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %filter50 = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 10
  %frontend66 = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.1119 = phi i32 [ %ret.0, %for.body.lr.ph ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %i.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %77 = ptrtoint ptr %filter50 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %filter50, align 8
  %state = getelementptr %struct.dvb_demux_filter, ptr %78, i32 %i.0117, i32 7
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp52 = icmp eq i32 %80, 3
  br i1 %cmp52, label %land.lhs.true54, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true54:                                  ; preds = %for.body
  %parent = getelementptr %struct.dvb_demux_filter, ptr %78, i32 %i.0117, i32 0, i32 3
  %81 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parent, align 4
  %cmp59 = icmp eq ptr %82, %feed
  br i1 %cmp59, label %if.then61, label %land.lhs.true54.for.inc_crit_edge

land.lhs.true54.for.inc_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then61:                                        ; preds = %land.lhs.true54
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %state, align 4
  %84 = ptrtoint ptr %frontend66 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %frontend66, align 4
  %source67 = getelementptr inbounds %struct.dmx_frontend, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %source67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %source67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp68.not = icmp eq i32 %87, 0
  br i1 %cmp68.not, label %if.then61.for.inc_crit_edge, label %if.then70

if.then61.for.inc_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then70:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %filter50 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %filter50, align 8
  %arrayidx72 = getelementptr %struct.dvb_demux_filter, ptr %89, i32 %i.0117
  %call73 = tail call fastcc i32 @StopHWFilter(ptr noundef %arrayidx72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1119)
  %tobool74.not = icmp eq i32 %ret.1119, 0
  %spec.select = select i1 %tobool74.not, i32 %call73, i32 %ret.1119
  br label %for.inc

for.inc:                                          ; preds = %if.then70, %if.then61.for.inc_crit_edge, %land.lhs.true54.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.1119, %if.then61.for.inc_crit_edge ], [ %ret.1119, %land.lhs.true54.for.inc_crit_edge ], [ %ret.1119, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then70 ]
  %inc = add nuw nsw i32 %i.0117, 1
  %90 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %filternum, align 8
  %cmp48 = icmp slt i32 %inc, %91
  br i1 %cmp48, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then41, %lor.lhs.false.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then41 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ %ret.0, %if.end43.cleanup_crit_edge ], [ %ret.0, %for.cond.preheader.cleanup_crit_edge ], [ %ret.2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_write_to_decoder(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_get_stc(ptr noundef readonly %demux, i32 noundef %num, ptr nocapture noundef %stc, ptr nocapture noundef writeonly %base) #0 align 64 {
entry:
  %fwstc = alloca [4 x i16], align 8
  %tag = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fwstc) #9
  %0 = getelementptr inbounds [4 x i16], ptr %fwstc, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i16], ptr %fwstc, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i16], ptr %fwstc, i32 0, i32 3
  %3 = ptrtoint ptr %fwstc to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %fwstc, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tag) #9
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1802, ptr %tag, align 2
  %tobool.not = icmp eq ptr %demux, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !698

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/media/av7110/av7110.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1109, 0\0A.popsection", ""() #9, !srcloc !699
  unreachable

do.end9:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dmx_demux, ptr %demux, i32 0, i32 2
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !698

do.body21:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/media/av7110/av7110.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1111, 0\0A.popsection", ""() #9, !srcloc !700
  unreachable

do.end29:                                         ; preds = %do.end9
  %priv30 = getelementptr inbounds %struct.dvb_demux, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %priv30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv30, align 4
  %9 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %do.end29.do.end39_crit_edge, label %do.end36

do.end29.do.end39_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

do.end36:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.167, ptr noundef %8) #12
  br label %do.end39

do.end39:                                         ; preds = %do.end36, %do.end29.do.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp.not = icmp eq i32 %num, 0
  br i1 %cmp.not, label %if.end41, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %do.end39
  %call42 = call i32 @av7110_fw_request(ptr noundef %8, ptr noundef nonnull %tag, i32 noundef 0, ptr noundef nonnull %fwstc, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body51, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.167) #12
  br label %cleanup

do.body51:                                        ; preds = %if.end41
  %10 = load i32, ptr @av7110_debug, align 4
  %and52 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.do.end68_crit_edge, label %do.end57

do.body51.do.end68_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %fwstc to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fwstc, align 8
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %0, align 2
  %conv60 = zext i16 %14 to i32
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv62 = zext i16 %16 to i32
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %2, align 2
  %conv64 = zext i16 %18 to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.167, i32 noundef %conv, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %conv64) #12
  br label %do.end68

do.end68:                                         ; preds = %do.end57, %do.body51.do.end68_crit_edge
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %2, align 2
  %21 = lshr i16 %20, 15
  %22 = zext i16 %21 to i64
  %shl = shl nuw nsw i64 %22, 32
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %0, align 2
  %conv74 = zext i16 %24 to i64
  %shl75 = shl nuw nsw i64 %conv74, 16
  %or = or i64 %shl, %shl75
  %25 = ptrtoint ptr %fwstc to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fwstc, align 8
  %conv77 = zext i16 %26 to i64
  %or78 = or i64 %or, %conv77
  %27 = ptrtoint ptr %stc to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %or78, ptr %stc, align 8
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %base, align 4
  %29 = load i32, ptr @av7110_debug, align 4
  %and80 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.end68.cleanup_crit_edge, label %do.end85

do.end68.cleanup_crit_edge:                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end85:                                         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %stc to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %stc, align 8
  %conv87 = trunc i64 %31 to i32
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.167, i32 noundef %conv87) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %do.end68.cleanup_crit_edge, %do.end47, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %do.end47 ], [ -22, %do.end39.cleanup_crit_edge ], [ 0, %do.end85 ], [ 0, %do.end68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tag) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fwstc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_av_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_ca_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_stop_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.178, ptr noundef %3) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %feedlock1 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %feedlock1) #9
  %5 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end4.do.end2.i_crit_edge, label %do.end.i

do.end4.do.end2.i_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.179, ptr noundef %3) #12
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end4.do.end2.i_crit_edge
  %feeding1.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %feeding1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %feeding1.i, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %feeding1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body7.i, label %do.end2.i.stop_ts_capture.exit_crit_edge

do.end2.i.stop_ts_capture.exit_crit_edge:         ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_ts_capture.exit

do.body7.i:                                       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !701
  tail call void @arm_heavy_mb() #9
  %dev.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4096) #9, !srcloc !626
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %int_slock.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %13, i32 0, i32 10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !682
  tail call void @arm_heavy_mb() #9
  %mem.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 220
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !635
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !683
  %17 = and i32 %16, -262145
  %18 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %19, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %17) #9, !srcloc !626
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i.i, i32 noundef %call2.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !702
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %mem13.i = getelementptr inbounds %struct.saa7146_dev, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %mem13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %23, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 262144) #9, !srcloc !626
  br label %stop_ts_capture.exit

stop_ts_capture.exit:                             ; preds = %do.body7.i, %do.end2.i.stop_ts_capture.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %feedlock1) #9
  ret i32 %dec.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @StopHWFilter(ptr nocapture noundef readonly %dvbdmxfilter) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [3 x i16], align 2
  %answ = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %feed = getelementptr inbounds %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 5
  %0 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feed, align 4
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #9
  %6 = getelementptr inbounds [3 x i16], ptr %buf, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i16], ptr %buf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %answ) #9
  %8 = ptrtoint ptr %answ to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %answ, align 2, !annotation !638
  %9 = getelementptr inbounds [2 x i16], ptr %answ, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %9, align 2, !annotation !638
  %11 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.160, ptr noundef %5) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %full_ts = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 45
  %12 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %full_ts, align 8, !range !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %hw_handle = getelementptr inbounds %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 9
  %14 = ptrtoint ptr %hw_handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hw_handle, align 4
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %15)
  %cmp = icmp ugt i16 %15, 31
  br i1 %cmp, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.dvb_demux_filter, ptr %dvbdmxfilter, i32 0, i32 8
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.160, i32 noundef %conv, i32 noundef %17) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %arrayidx = getelementptr %struct.av7110, ptr %5, i32 0, i32 54, i32 %conv
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2824, ptr %buf, align 2
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %6, align 2
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %15, ptr %7, align 2
  %call20 = call i32 @av7110_fw_request(ptr noundef %5, ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull %answ, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %lor.lhs.false, label %if.end15.do.end31_crit_edge

if.end15.do.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

lor.lhs.false:                                    ; preds = %if.end15
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %15)
  %cmp26.not = icmp eq i16 %23, %15
  br i1 %cmp26.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end31_crit_edge

lor.lhs.false.do.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end31:                                         ; preds = %lor.lhs.false.do.end31_crit_edge, %if.end15.do.end31_crit_edge
  %spec.store.select = phi i32 [ %call20, %if.end15.do.end31_crit_edge ], [ -1, %lor.lhs.false.do.end31_crit_edge ]
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %buf, align 2
  %conv34 = zext i16 %25 to i32
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %6, align 2
  %conv36 = zext i16 %27 to i32
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %7, align 2
  %conv38 = zext i16 %29 to i32
  %30 = ptrtoint ptr %answ to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %answ, align 2
  %conv40 = zext i16 %31 to i32
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %9, align 2
  %conv42 = zext i16 %33 to i32
  %34 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %feed, align 4
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pid, align 4
  %conv44 = zext i16 %37 to i32
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.160, i32 noundef %conv34, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %call20, i32 noundef %conv40, i32 noundef %conv42, i32 noundef %conv44) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %lor.lhs.false.cleanup_crit_edge, %do.end11, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ 0, %do.end3.cleanup_crit_edge ], [ %spec.store.select, %do.end31 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %answ) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_av_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_osd_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %parg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.177, ptr noundef %3) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %cmd, label %do.end3.cleanup_crit_edge [
    i32 1075605408, label %if.then4
    i32 -2146930783, label %if.then8
  ]

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @av7110_osd_cmd(ptr noundef %3, ptr noundef %parg) #9
  br label %cleanup

if.then8:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @av7110_osd_capability(ptr noundef %3, ptr noundef %parg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then4, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call9, %if.then8 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_osd_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_osd_capability(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_set_volume(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_init_analog_module(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @read_pwm(ptr noundef %av7110) unnamed_addr #0 align 64 {
entry:
  %b = alloca i8, align 1
  %pwm = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #9
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm) #9
  %1 = ptrtoint ptr %pwm to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %pwm, align 1, !annotation !638
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 80, ptr %msg, align 4
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
  store ptr %b, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 80, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %10 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %11 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pwm, ptr %buf4, align 4
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp5 = icmp eq i8 %13, -1
  br i1 %cmp5, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %14 = ptrtoint ptr %pwm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 72, ptr %pwm, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %15 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pwm, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #9
  ret i8 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_cd1516_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %buf, align 4
  %add1 = add i32 %5, 36156250
  %div2 = udiv i32 %add1, 62500
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data, align 1
  %conv4 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %6, align 1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -114, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 174000000, i32 %5)
  %cmp = icmp ult i32 %5, 174000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %5)
  %cmp8 = icmp ult i32 %5, 470000000
  %phi.cast = select i1 %cmp8, i8 -110, i8 52
  %cond10 = select i1 %cmp, i8 -95, i8 %phi.cast
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cond10, ptr %8, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %21(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call15 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 1
  %. = select i1 %cmp16.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsrv2_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf1, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %14, 479500
  %div2 = udiv i32 %add, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %14)
  %cmp = icmp ugt i32 %14, 2000000
  br i1 %cmp, label %entry.if.end23_crit_edge, label %if.else

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %14)
  %cmp5 = icmp ugt i32 %14, 1800000
  br i1 %cmp5, label %if.else.if.end23_crit_edge, label %if.else7

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %14)
  %cmp9 = icmp ugt i32 %14, 1600000
  br i1 %cmp9, label %if.else7.if.end23_crit_edge, label %if.else11

if.else7.if.end23_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %14)
  %cmp13 = icmp ugt i32 %14, 1200000
  br i1 %cmp13, label %if.else11.if.end23_crit_edge, label %if.else15

if.else11.if.end23_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1099999, i32 %14)
  %cmp17 = icmp ugt i32 %14, 1099999
  %. = select i1 %cmp17, i8 112, i8 -80
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.else11.if.end23_crit_edge, %if.else7.if.end23_crit_edge, %if.else.if.end23_crit_edge, %entry.if.end23_crit_edge
  %pwr.0 = phi i8 [ -16, %entry.if.end23_crit_edge ], [ -80, %if.else.if.end23_crit_edge ], [ 112, %if.else7.if.end23_crit_edge ], [ 48, %if.else11.if.end23_crit_edge ], [ %., %if.else15 ]
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %buf, align 1
  %conv25 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25, ptr %4, align 1
  %and27 = lshr i32 %div2, 10
  %18 = trunc i32 %and27 to i8
  %19 = and i8 %18, 96
  %conv29 = or i8 %19, -107
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv29, ptr %5, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %pwr.0, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end23.if.end38_crit_edge, label %if.then35

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end23.if.end38_crit_edge
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call39 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  %.61 = select i1 %cmp40.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %.61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_diseqc_send_master_cmd(ptr nocapture noundef readonly %fe, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 @av7110_diseqc_send(ptr noundef %3, i32 noundef %conv, ptr noundef %cmd, i32 noundef -1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %minicmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call i32 @av7110_diseqc_send(ptr noundef %3, i32 noundef 0, ptr noundef null, i32 noundef %minicmd) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.290)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 0, label %entry.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb1 ], [ 2, %entry.cleanup.sink.split_crit_edge ]
  %call.i4 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 6, i32 noundef %.sink, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_s_recover(ptr noundef %av7110) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fe = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 94
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 8
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %call.i = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %5, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.av7110_fe_init.exit_crit_edge

entry.av7110_fe_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %av7110_fe_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fe_init.i = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 102
  %6 = ptrtoint ptr %fe_init.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_init.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %1) #9
  br label %av7110_fe_init.exit

av7110_fe_init.exit:                              ; preds = %if.then.i, %entry.av7110_fe_init.exit_crit_edge
  %8 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe, align 8
  %saved_voltage = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 98
  %10 = ptrtoint ptr %saved_voltage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saved_voltage, align 8
  %dvb.i22 = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %dvb.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dvb.i22, align 4
  %priv.i23 = getelementptr inbounds %struct.dvb_adapter, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %priv.i23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i23, align 4
  %call.i24 = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %15, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.then.i27, label %av7110_fe_init.exit.av7110_fe_set_voltage.exit_crit_edge

av7110_fe_init.exit.av7110_fe_set_voltage.exit_crit_edge: ; preds = %av7110_fe_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %av7110_fe_set_voltage.exit

if.then.i27:                                      ; preds = %av7110_fe_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %saved_voltage.i = getelementptr inbounds %struct.av7110, ptr %15, i32 0, i32 98
  %16 = ptrtoint ptr %saved_voltage.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %saved_voltage.i, align 8
  %fe_set_voltage.i = getelementptr inbounds %struct.av7110, ptr %15, i32 0, i32 108
  %17 = ptrtoint ptr %fe_set_voltage.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fe_set_voltage.i, align 4
  %call1.i26 = tail call i32 %18(ptr noundef %9, i32 noundef %11) #9
  br label %av7110_fe_set_voltage.exit

av7110_fe_set_voltage.exit:                       ; preds = %if.then.i27, %av7110_fe_init.exit.av7110_fe_set_voltage.exit_crit_edge
  %msg_len = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 100, i32 1
  %19 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msg_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %av7110_fe_set_voltage.exit.if.end_crit_edge, label %if.then

av7110_fe_set_voltage.exit.if.end_crit_edge:      ; preds = %av7110_fe_set_voltage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %av7110_fe_set_voltage.exit
  tail call void @msleep(i32 noundef 20) #9
  %21 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fe, align 8
  %dvb.i29 = getelementptr inbounds %struct.dvb_frontend, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dvb.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dvb.i29, align 4
  %priv.i30 = getelementptr inbounds %struct.dvb_adapter, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %priv.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i30, align 4
  %call.i31 = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %26, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %if.then.i34, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i34:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %saved_master_cmd = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 100
  %saved_master_cmd.i = getelementptr inbounds %struct.av7110, ptr %26, i32 0, i32 100
  %27 = call ptr @memcpy(ptr %saved_master_cmd.i, ptr %saved_master_cmd, i32 7)
  %fe_diseqc_send_master_cmd.i = getelementptr inbounds %struct.av7110, ptr %26, i32 0, i32 105
  %28 = ptrtoint ptr %fe_diseqc_send_master_cmd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fe_diseqc_send_master_cmd.i, align 8
  %call1.i33 = tail call i32 %29(ptr noundef %22, ptr noundef %saved_master_cmd) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i34, %if.then.if.end_crit_edge, %av7110_fe_set_voltage.exit.if.end_crit_edge
  tail call void @msleep(i32 noundef 20) #9
  %30 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fe, align 8
  %saved_minicmd = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 101
  %32 = ptrtoint ptr %saved_minicmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %saved_minicmd, align 8
  %dvb.i36 = getelementptr inbounds %struct.dvb_frontend, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %dvb.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dvb.i36, align 4
  %priv.i37 = getelementptr inbounds %struct.dvb_adapter, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %priv.i37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i37, align 4
  %call.i38 = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %37, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %if.then.i41, label %if.end.av7110_fe_diseqc_send_burst.exit_crit_edge

if.end.av7110_fe_diseqc_send_burst.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %av7110_fe_diseqc_send_burst.exit

if.then.i41:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %saved_minicmd.i = getelementptr inbounds %struct.av7110, ptr %37, i32 0, i32 101
  %38 = ptrtoint ptr %saved_minicmd.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %saved_minicmd.i, align 8
  %fe_diseqc_send_burst.i = getelementptr inbounds %struct.av7110, ptr %37, i32 0, i32 106
  %39 = ptrtoint ptr %fe_diseqc_send_burst.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fe_diseqc_send_burst.i, align 4
  %call1.i40 = tail call i32 %40(ptr noundef %31, i32 noundef %33) #9
  br label %av7110_fe_diseqc_send_burst.exit

av7110_fe_diseqc_send_burst.exit:                 ; preds = %if.then.i41, %if.end.av7110_fe_diseqc_send_burst.exit_crit_edge
  tail call void @msleep(i32 noundef 20) #9
  %41 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fe, align 8
  %saved_tone = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 99
  %43 = ptrtoint ptr %saved_tone to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %saved_tone, align 4
  %dvb.i43 = getelementptr inbounds %struct.dvb_frontend, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %dvb.i43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dvb.i43, align 4
  %priv.i44 = getelementptr inbounds %struct.dvb_adapter, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %priv.i44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i44, align 4
  %call.i45 = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %48, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %if.then.i48, label %av7110_fe_diseqc_send_burst.exit.av7110_fe_set_tone.exit_crit_edge

av7110_fe_diseqc_send_burst.exit.av7110_fe_set_tone.exit_crit_edge: ; preds = %av7110_fe_diseqc_send_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %av7110_fe_set_tone.exit

if.then.i48:                                      ; preds = %av7110_fe_diseqc_send_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  %saved_tone.i = getelementptr inbounds %struct.av7110, ptr %48, i32 0, i32 99
  %49 = ptrtoint ptr %saved_tone.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %44, ptr %saved_tone.i, align 4
  %fe_set_tone.i = getelementptr inbounds %struct.av7110, ptr %48, i32 0, i32 107
  %50 = ptrtoint ptr %fe_set_tone.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fe_set_tone.i, align 8
  %call1.i47 = tail call i32 %51(ptr noundef %42, i32 noundef %44) #9
  br label %av7110_fe_set_tone.exit

av7110_fe_set_tone.exit:                          ; preds = %if.then.i48, %av7110_fe_diseqc_send_burst.exit.av7110_fe_set_tone.exit_crit_edge
  %52 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fe, align 8
  %dvb.i50 = getelementptr inbounds %struct.dvb_frontend, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dvb.i50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dvb.i50, align 4
  %priv.i51 = getelementptr inbounds %struct.dvb_adapter, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %priv.i51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i51, align 4
  %call.i52 = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %57, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.then.i55, label %av7110_fe_set_tone.exit.av7110_fe_set_frontend.exit_crit_edge

av7110_fe_set_tone.exit.av7110_fe_set_frontend.exit_crit_edge: ; preds = %av7110_fe_set_tone.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %av7110_fe_set_frontend.exit

if.then.i55:                                      ; preds = %av7110_fe_set_tone.exit
  call void @__sanitizer_cov_trace_pc() #11
  %fe_set_frontend.i = getelementptr inbounds %struct.av7110, ptr %57, i32 0, i32 110
  %58 = ptrtoint ptr %fe_set_frontend.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fe_set_frontend.i, align 4
  %call1.i54 = tail call i32 %59(ptr noundef %53) #9
  br label %av7110_fe_set_frontend.exit

av7110_fe_set_frontend.exit:                      ; preds = %if.then.i55, %av7110_fe_set_tone.exit.av7110_fe_set_frontend.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsru6_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %buf1, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  %8 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dtv_property_cache, align 4
  %10 = add i32 %9, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %10)
  %11 = icmp ult i32 %10, -1200001
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %13 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %add = add nuw nsw i32 %9, 124
  %div5 = udiv i32 %add, 125
  %shr = lshr i32 %div5, 8
  %15 = trunc i32 %shr to i8
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %buf, align 1
  %conv7 = trunc i32 %div5 to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %14, align 1
  %and9 = lshr i32 %div5, 10
  %18 = trunc i32 %and9 to i8
  %19 = and i8 %18, 96
  %conv12 = or i8 %19, -124
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1530000, i32 %9)
  %cmp16 = icmp ugt i32 %9, 1530000
  %spec.store.select = select i1 %cmp16, i8 -64, i8 -60
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.store.select, ptr %12, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then21

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  %call25 = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 1
  %. = select i1 %cmp26.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grundig_29504_451_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %div1 = udiv i32 %14, 125
  %shr = lshr i32 %div1, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data, align 1
  %conv3 = trunc i32 %div1 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -114, ptr %5, align 1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %21(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call9 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 1
  %. = select i1 %cmp.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_tdbe2_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 98, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add1 = add i32 %14, 35968750
  %div2 = udiv i32 %add1, 62500
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data, align 1
  %conv4 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %4, align 1
  %shr6 = lshr i32 %div2, 10
  %18 = trunc i32 %shr6 to i8
  %19 = and i8 %18, 96
  %conv8 = or i8 %19, -123
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 174000000, i32 %14)
  %cmp = icmp ult i32 %14, 174000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %14)
  %cmp13 = icmp ult i32 %14, 470000000
  %phi.cast = select i1 %cmp13, i8 -124, i8 -127
  %cond15 = select i1 %cmp, i8 -120, i8 %phi.cast
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond15, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call20 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 1
  %. = select i1 %cmp21.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_tdlb7_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 96, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %14, 36200000
  %div1 = udiv i32 %add, 166666
  call void @__sanitizer_cov_trace_const_cmp4(i32 782000001, i32 %14)
  %cmp = icmp ult i32 %14, 782000001
  %. = select i1 %cmp, i8 64, i8 -128
  %shr = lshr i32 %div1, 8
  %conv = trunc i32 %shr to i8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %data, align 1
  %conv4 = trunc i32 %div1 to i8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4, ptr %4, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -123, ptr %5, align 1
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %., ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then9

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %20(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %entry.if.end12_crit_edge
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call13 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  %.29 = select i1 %cmp14.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %.29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grundig_29504_401_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %14, 36125000
  %div1 = udiv i32 %add, 166666
  call void @__sanitizer_cov_trace_const_cmp4(i32 175000000, i32 %14)
  %cmp = icmp ult i32 %14, 175000000
  br i1 %cmp, label %entry.if.end17_crit_edge, label %if.else

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 390000000, i32 %14)
  %cmp4 = icmp ult i32 %14, 390000000
  br i1 %cmp4, label %if.else.if.end17_crit_edge, label %if.else6

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %14)
  %cmp8 = icmp ult i32 %14, 470000000
  br i1 %cmp8, label %if.else6.if.end17_crit_edge, label %if.else10

if.else6.if.end17_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 750000000, i32 %14)
  %cmp12 = icmp ult i32 %14, 750000000
  %. = select i1 %cmp12, i8 64, i8 -64
  br label %if.end17

if.end17:                                         ; preds = %if.else10, %if.else6.if.end17_crit_edge, %if.else.if.end17_crit_edge, %entry.if.end17_crit_edge
  %cpump.0 = phi i8 [ -128, %entry.if.end17_crit_edge ], [ 64, %if.else.if.end17_crit_edge ], [ -128, %if.else6.if.end17_crit_edge ], [ %., %if.else10 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %14)
  %cmp23 = icmp ult i32 %14, 470000000
  %.71 = select i1 %cmp23, i8 5, i8 3
  %band_select.0 = select i1 %cmp, i8 14, i8 %.71
  %shr = lshr i32 %div1, 8
  %conv = trunc i32 %shr to i8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %data, align 1
  %conv29 = trunc i32 %div1 to i8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv29, ptr %4, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -120, ptr %5, align 1
  %or38 = or i8 %cpump.0, %band_select.0
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or38, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.end17.if.end44_crit_edge, label %if.then41

if.end17.if.end44_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %20(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end17.if.end44_crit_edge
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call45 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 1
  %.72 = select i1 %cmp46.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %.72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nexusca_stv0297_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  %readmsg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %data, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 99, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %readmsg) #9
  %15 = getelementptr inbounds i8, ptr %readmsg, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4
  %17 = ptrtoint ptr %readmsg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 99, ptr %readmsg, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %readmsg, i32 0, i32 1
  %18 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %readmsg, i32 0, i32 2
  %19 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %readmsg, i32 0, i32 3
  %20 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %data, ptr %buf4, align 4
  %21 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dtv_property_cache, align 4
  %add6 = add i32 %22, 36181250
  %div7 = udiv i32 %add6, 62500
  %shr = lshr i32 %div7, 8
  %23 = trunc i32 %shr to i8
  %conv = and i8 %23, 127
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %data, align 1
  %conv9 = trunc i32 %div7 to i8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9, ptr %4, align 1
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -50, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %22)
  %cmp = icmp ult i32 %22, 45000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 137000000, i32 %22)
  %cmp15 = icmp ult i32 %22, 137000000
  br i1 %cmp15, label %if.else.if.end34_crit_edge, label %if.else19

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 403000000, i32 %22)
  %cmp21 = icmp ult i32 %22, 403000000
  br i1 %cmp21, label %if.else19.if.end34_crit_edge, label %if.else25

if.else19.if.end34_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.else25:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 860000000, i32 %22)
  %cmp27 = icmp ult i32 %22, 860000000
  br i1 %cmp27, label %if.else25.if.end34_crit_edge, label %if.else25.cleanup_crit_edge

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else25.if.end34_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %if.else25.if.end34_crit_edge, %if.else19.if.end34_crit_edge, %if.else.if.end34_crit_edge
  %.sink = phi i8 [ 1, %if.else.if.end34_crit_edge ], [ 2, %if.else19.if.end34_crit_edge ], [ 4, %if.else25.if.end34_crit_edge ]
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.end34.if.end38_crit_edge, label %if.then35

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then35:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %29(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end34.if.end38_crit_edge
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call39 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  br i1 %cmp40.not, label %if.end38.for.body_crit_edge, label %do.end

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  br label %for.body

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275) #12
  br label %cleanup

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %if.end38.for.body_crit_edge
  %i.089 = phi i32 [ %inc, %if.end66.for.body_crit_edge ], [ 0, %if.end38.for.body_crit_edge ]
  %30 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool49.not = icmp eq ptr %31, null
  br i1 %tobool49.not, label %for.body.if.end54_crit_edge, label %if.then50

for.body.if.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 %31(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %for.body.if.end54_crit_edge
  %call56 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %readmsg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call56)
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %if.then59, label %if.end54.if.end66_crit_edge

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then59:                                        ; preds = %if.end54
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data, align 1
  %34 = and i8 %33, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool63.not = icmp eq i8 %34, 0
  br i1 %tobool63.not, label %if.then59.if.end66_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59.if.end66_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %if.then59.if.end66_crit_edge, %if.end54.if.end66_crit_edge
  call void @msleep(i32 noundef 10) #9
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end66.cleanup_crit_edge, label %if.end66.for.body_crit_edge

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end66.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %do.end, %if.else25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else25.cleanup_crit_edge ], [ 0, %if.then59.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %readmsg) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsbe1_tuner_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %buf, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  %8 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dtv_property_cache, align 4
  %10 = add i32 %9, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %10)
  %11 = icmp ult i32 %10, -1200001
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %13 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %div4 = udiv i32 %9, 1000
  %shr = lshr i32 %div4, 8
  %15 = trunc i32 %shr to i8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %data, align 1
  %conv6 = trunc i32 %div4 to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6, ptr %14, align 1
  %and8 = lshr i32 %div4, 10
  %18 = trunc i32 %and8 to i8
  %19 = and i8 %18, 96
  %conv11 = or i8 %19, -127
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv11, ptr %13, align 1
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -32, ptr %12, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %call18 = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 1
  %cond = select i1 %cmp19.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end17 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fe_init = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 102
  %4 = ptrtoint ptr %fe_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_init, align 4
  %call1 = tail call i32 %5(ptr noundef %fe) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_read_status(ptr noundef %fe, ptr noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %fe_read_status = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_read_status, align 8
  %call = tail call i32 %5(ptr noundef %fe, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 95
  %8 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fe_status, align 4
  %xor = xor i32 %9, %7
  %and = and i32 %xor, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %and2 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end6_crit_edge ], [ %call5, %if.then4 ], [ 0, %if.then.if.end6_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_diseqc_reset_overload(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fe_diseqc_reset_overload = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %fe_diseqc_reset_overload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_diseqc_reset_overload, align 4
  %call1 = tail call i32 %5(ptr noundef %fe) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_diseqc_send_master_cmd(ptr noundef %fe, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %saved_master_cmd = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 100
  %4 = call ptr @memcpy(ptr %saved_master_cmd, ptr %cmd, i32 7)
  %fe_diseqc_send_master_cmd = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 105
  %5 = ptrtoint ptr %fe_diseqc_send_master_cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_diseqc_send_master_cmd, align 8
  %call1 = tail call i32 %6(ptr noundef %fe, ptr noundef %cmd) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_diseqc_send_burst(ptr noundef %fe, i32 noundef %minicmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %saved_minicmd = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 101
  %4 = ptrtoint ptr %saved_minicmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %minicmd, ptr %saved_minicmd, align 8
  %fe_diseqc_send_burst = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 106
  %5 = ptrtoint ptr %fe_diseqc_send_burst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_diseqc_send_burst, align 4
  %call1 = tail call i32 %6(ptr noundef %fe, i32 noundef %minicmd) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_set_tone(ptr noundef %fe, i32 noundef %tone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %saved_tone = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %saved_tone to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tone, ptr %saved_tone, align 4
  %fe_set_tone = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 107
  %5 = ptrtoint ptr %fe_set_tone to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_set_tone, align 8
  %call1 = tail call i32 %6(ptr noundef %fe, i32 noundef %tone) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_set_voltage(ptr noundef %fe, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %saved_voltage = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 98
  %4 = ptrtoint ptr %saved_voltage to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %voltage, ptr %saved_voltage, align 8
  %fe_set_voltage = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 108
  %5 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_set_voltage, align 4
  %call1 = tail call i32 %6(ptr noundef %fe, i32 noundef %voltage) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_dishnetwork_send_legacy_command(ptr noundef %fe, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fe_dishnetwork_send_legacy_command = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 109
  %4 = ptrtoint ptr %fe_dishnetwork_send_legacy_command to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_dishnetwork_send_legacy_command, align 8
  %call1 = tail call i32 %5(ptr noundef %fe, i32 noundef %cmd) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_fe_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @av7110_fe_lock_fix(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fe_set_frontend = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %fe_set_frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_set_frontend, align 4
  %call1 = tail call i32 %5(ptr noundef %fe) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_diseqc_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsru6_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #0 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aclk.0, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i41, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i43 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i43, label %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, label %if.then.i45

stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #9
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i47, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge, label %if.then.i51

stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge: ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #9
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #9
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #9
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i53, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %18, null
  br i1 %tobool.not.i55, label %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge, label %if.then.i57

stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge: ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #9
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #9
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #9
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i59, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  br i1 %tobool.not.i61, label %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge, label %if.then.i63

stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge: ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #9
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_tdlb7_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsbe1_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #0 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aclk.0, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i41, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i43 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i43, label %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, label %if.then.i45

stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #9
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i47, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge, label %if.then.i51

stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge: ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #9
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #9
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #9
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i53, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %18, null
  br i1 %tobool.not.i55, label %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge, label %if.then.i57

stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge: ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #9
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #9
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #9
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i59, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  br i1 %tobool.not.i61, label %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge, label %if.then.i63

stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge: ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #9
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @av7110_fe_lock_fix(ptr noundef %av7110, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %fe_status = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 95
  %0 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %fe_status, align 4
  %fe_synced = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 46
  %1 = ptrtoint ptr %fe_synced to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fe_synced, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cond)
  %cmp = icmp eq i32 %2, %cond
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %playing = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 26
  %3 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %fe_synced to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %fe_synced, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pid_mutex = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 47
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %pid_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %pids = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 74
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = ptrtoint ptr %pids to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pids, align 4
  %arrayidx13 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 2
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 4
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx15, align 4
  %14 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then9.do.end3.i_crit_edge, label %do.end.i

if.then9.do.end3.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef %av7110) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then9.do.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %7)
  %cmp.i = icmp eq i16 %7, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %9)
  %cmp6.i = icmp eq i16 %9, 8191
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %11)
  %cmp10.i = icmp eq i16 %11, 8191
  %or.cond52.i = or i1 %or.cond.i, %cmp10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %13)
  %cmp18.i = icmp eq i16 %13, 8191
  %or.cond54.i = or i1 %or.cond52.i, %cmp18.i
  br i1 %or.cond54.i, label %if.then20.i, label %do.end3.i.SetPIDs.exit_crit_edge

do.end3.i.SetPIDs.exit_crit_edge:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %SetPIDs.exit

if.then20.i:                                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %arrayidx, align 2
  %16 = ptrtoint ptr %pids to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %pids, align 4
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arrayidx13, align 4
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %arrayidx15, align 4
  br label %SetPIDs.exit

SetPIDs.exit:                                     ; preds = %if.then20.i, %do.end3.i.SetPIDs.exit_crit_edge
  %apid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %9, %do.end3.i.SetPIDs.exit_crit_edge ]
  %ttpid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %11, %do.end3.i.SetPIDs.exit_crit_edge ]
  %pcrpid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %13, %do.end3.i.SetPIDs.exit_crit_edge ]
  %vpid.addr.0.i = phi i16 [ 0, %if.then20.i ], [ %7, %do.end3.i.SetPIDs.exit_crit_edge ]
  %bypass_mode.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 53, i32 5
  %19 = ptrtoint ptr %bypass_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bypass_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool28.not.i = icmp eq i32 %20, 0
  %spec.select.i = select i1 %tobool28.not.i, i32 0, i32 32768
  %conv33.i = zext i16 %pcrpid.addr.0.i to i32
  %conv34.i = zext i16 %vpid.addr.0.i to i32
  %conv35.i = zext i16 %apid.addr.0.i to i32
  %conv36.i = zext i16 %ttpid.addr.0.i to i32
  %call39.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 1, i32 noundef 0, i32 noundef 6, i32 noundef %conv33.i, i32 noundef %conv34.i, i32 noundef %conv35.i, i32 noundef %conv36.i, i32 noundef 0, i32 noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool17.not = icmp eq i32 %call39.i, 0
  br i1 %tobool17.not, label %if.then18, label %SetPIDs.exit.if.end34_crit_edge

SetPIDs.exit.if.end34_crit_edge:                  ; preds = %SetPIDs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then18:                                        ; preds = %SetPIDs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 1, i32 noundef 9, i32 noundef 0) #9
  br label %if.end30

if.else:                                          ; preds = %if.end7
  %21 = load i32, ptr @av7110_debug, align 4
  %and.i60 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61, label %if.else.SetPIDs.exit77_crit_edge, label %do.end.i63

if.else.SetPIDs.exit77_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %SetPIDs.exit77

do.end.i63:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef %av7110) #12
  br label %SetPIDs.exit77

SetPIDs.exit77:                                   ; preds = %do.end.i63, %if.else.SetPIDs.exit77_crit_edge
  %bypass_mode.i69 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 53, i32 5
  %22 = ptrtoint ptr %bypass_mode.i69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bypass_mode.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not.i70 = icmp eq i32 %23, 0
  %spec.select.i71 = select i1 %tobool28.not.i70, i32 0, i32 32768
  %call39.i76 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 1, i32 noundef 0, i32 noundef 6, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %spec.select.i71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i76)
  %tobool22.not = icmp eq i32 %call39.i76, 0
  br i1 %tobool22.not, label %if.then23, label %SetPIDs.exit77.if.end34_crit_edge

SetPIDs.exit77.if.end34_crit_edge:                ; preds = %SetPIDs.exit77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then23:                                        ; preds = %SetPIDs.exit77
  %call24 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 11, i32 noundef 12, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.then23.if.end34_crit_edge

if.then23.if.end34_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @av7110_wait_msgstate(ptr noundef %av7110, i16 noundef zeroext 64) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then18
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ %call27, %if.then26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool31.not = icmp eq i32 %ret.0, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %fe_synced to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %fe_synced, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge, %if.then23.if.end34_crit_edge, %SetPIDs.exit77.if.end34_crit_edge, %SetPIDs.exit.if.end34_crit_edge
  %ret.080 = phi i32 [ 0, %if.then32 ], [ %ret.0, %if.end30.if.end34_crit_edge ], [ %call24, %if.then23.if.end34_crit_edge ], [ %call39.i76, %SetPIDs.exit77.if.end34_crit_edge ], [ %call39.i, %SetPIDs.exit.if.end34_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pid_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %ret.080, %if.end34 ], [ 0, %entry.cleanup_crit_edge ], [ -512, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_wait_msgstate(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_av_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_ca_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_ir_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_extension(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 282)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 282)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !64, !66, !67, !68, !69, !70, !72, !74, !76, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !116, !117, !118, !119, !120, !122, !123, !124, !126, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !205, !207, !209, !210, !212, !213, !214, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !344, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !381, !382, !383, !384, !386, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !497, !498, !500, !501, !502, !503, !504, !505, !507, !508, !509, !510, !511, !513, !514, !515, !516, !517, !519, !520, !521, !522, !523, !525, !526, !528, !529, !531, !532, !533, !534, !535, !537, !538, !539, !540, !541, !543, !544, !546, !547, !549, !550, !552, !553, !554, !555, !556, !558, !559, !561, !562, !563, !564, !565, !567, !568, !569, !571, !572, !573, !575, !576, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !600, !601, !602, !604, !606, !608, !610, !611, !612, !614, !615}
!llvm.module.flags = !{!616, !617, !618, !619, !620, !621, !622, !623}
!llvm.ident = !{!624}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/av7110.c", i32 75, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype385, !1, !"__UNIQUE_ID_debugtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug386, !4, !"__UNIQUE_ID_debug386", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/av7110/av7110.c", i32 76, i32 1}
!5 = !{ptr @__param_vidmode, !6, !"__param_vidmode", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/av7110/av7110.c", i32 77, i32 1}
!7 = !{ptr @__UNIQUE_ID_vidmodetype387, !6, !"__UNIQUE_ID_vidmodetype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_vidmode388, !9, !"__UNIQUE_ID_vidmode388", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/av7110/av7110.c", i32 78, i32 1}
!10 = !{ptr @__param_pids_off, !11, !"__param_pids_off", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/av7110/av7110.c", i32 79, i32 1}
!12 = !{ptr @__UNIQUE_ID_pids_offtype389, !11, !"__UNIQUE_ID_pids_offtype389", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pids_off390, !14, !"__UNIQUE_ID_pids_off390", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/av7110/av7110.c", i32 80, i32 1}
!15 = !{ptr @__param_adac, !16, !"__param_adac", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/av7110/av7110.c", i32 81, i32 1}
!17 = !{ptr @__UNIQUE_ID_adactype391, !16, !"__UNIQUE_ID_adactype391", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_adac392, !19, !"__UNIQUE_ID_adac392", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/av7110/av7110.c", i32 82, i32 1}
!20 = !{ptr @__param_hw_sections, !21, !"__param_hw_sections", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/av7110/av7110.c", i32 83, i32 1}
!22 = !{ptr @__UNIQUE_ID_hw_sectionstype393, !21, !"__UNIQUE_ID_hw_sectionstype393", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_hw_sections394, !24, !"__UNIQUE_ID_hw_sections394", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/av7110/av7110.c", i32 84, i32 1}
!25 = !{ptr @__param_rgb_on, !26, !"__param_rgb_on", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/av7110/av7110.c", i32 85, i32 1}
!27 = !{ptr @__UNIQUE_ID_rgb_ontype395, !26, !"__UNIQUE_ID_rgb_ontype395", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_rgb_on396, !29, !"__UNIQUE_ID_rgb_on396", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/av7110/av7110.c", i32 86, i32 1}
!30 = !{ptr @__param_volume, !31, !"__param_volume", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/av7110/av7110.c", i32 87, i32 1}
!32 = !{ptr @__UNIQUE_ID_volumetype397, !31, !"__UNIQUE_ID_volumetype397", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_volume398, !34, !"__UNIQUE_ID_volume398", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/av7110/av7110.c", i32 88, i32 1}
!35 = !{ptr @__param_budgetpatch, !36, !"__param_budgetpatch", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/av7110/av7110.c", i32 89, i32 1}
!37 = !{ptr @__UNIQUE_ID_budgetpatchtype399, !36, !"__UNIQUE_ID_budgetpatchtype399", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_budgetpatch400, !39, !"__UNIQUE_ID_budgetpatch400", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/av7110/av7110.c", i32 90, i32 1}
!40 = !{ptr @__param_full_ts, !41, !"__param_full_ts", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/av7110/av7110.c", i32 91, i32 1}
!42 = !{ptr @__UNIQUE_ID_full_tstype401, !41, !"__UNIQUE_ID_full_tstype401", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_full_ts402, !44, !"__UNIQUE_ID_full_ts402", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/av7110/av7110.c", i32 92, i32 1}
!45 = !{ptr @__param_wss_cfg_4_3, !46, !"__param_wss_cfg_4_3", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/av7110/av7110.c", i32 93, i32 1}
!47 = !{ptr @__UNIQUE_ID_wss_cfg_4_3type403, !46, !"__UNIQUE_ID_wss_cfg_4_3type403", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_wss_cfg_4_3404, !49, !"__UNIQUE_ID_wss_cfg_4_3404", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/av7110/av7110.c", i32 94, i32 1}
!50 = !{ptr @__param_wss_cfg_16_9, !51, !"__param_wss_cfg_16_9", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/av7110/av7110.c", i32 95, i32 1}
!52 = !{ptr @__UNIQUE_ID_wss_cfg_16_9type405, !51, !"__UNIQUE_ID_wss_cfg_16_9type405", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_wss_cfg_16_9406, !54, !"__UNIQUE_ID_wss_cfg_16_9406", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/av7110/av7110.c", i32 96, i32 1}
!55 = !{ptr @__param_tv_standard, !56, !"__param_tv_standard", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/av7110/av7110.c", i32 97, i32 1}
!57 = !{ptr @__UNIQUE_ID_tv_standardtype407, !56, !"__UNIQUE_ID_tv_standardtype407", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_tv_standard408, !59, !"__UNIQUE_ID_tv_standard408", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/av7110/av7110.c", i32 98, i32 1}
!60 = !{ptr @__param_adapter_nr, !61, !"__param_adapter_nr", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/av7110/av7110.c", i32 100, i32 1}
!62 = !{ptr @__UNIQUE_ID_adapter_nrtype409, !61, !"__UNIQUE_ID_adapter_nrtype409", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_adapter_nr410, !61, !"__UNIQUE_ID_adapter_nr410", i1 false, i1 false}
!64 = !{ptr @.str, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/av7110/av7110.c", i32 741, i32 2}
!66 = !{ptr @.str.1, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ChangePIDs._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @ChangePIDs._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__initcall__kmod_dvb_ttpci__411_2914_av7110_init6, !71, !"__initcall__kmod_dvb_ttpci__411_2914_av7110_init6", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2914, i32 1}
!72 = !{ptr @__exitcall_av7110_exit, !73, !"__exitcall_av7110_exit", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2915, i32 1}
!74 = !{ptr @__UNIQUE_ID_description412, !75, !"__UNIQUE_ID_description412", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2917, i32 1}
!76 = !{ptr @__UNIQUE_ID_author413, !77, !"__UNIQUE_ID_author413", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2918, i32 1}
!78 = !{ptr @__UNIQUE_ID_file414, !79, !"__UNIQUE_ID_file414", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2919, i32 1}
!80 = !{ptr @__UNIQUE_ID_license415, !79, !"__UNIQUE_ID_license415", i1 false, i1 false}
!81 = !{ptr @av7110_debug, !82, !"av7110_debug", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/av7110/av7110.c", i32 61, i32 5}
!83 = !{ptr @pids_off, !84, !"pids_off", i1 false, i1 false}
!84 = !{!"../drivers/staging/media/av7110/av7110.c", i32 64, i32 12}
!85 = !{ptr @hw_sections, !86, !"hw_sections", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/av7110/av7110.c", i32 66, i32 12}
!87 = !{ptr @rgb_on, !88, !"rgb_on", i1 false, i1 false}
!88 = !{!"../drivers/staging/media/av7110/av7110.c", i32 67, i32 12}
!89 = !{ptr @budgetpatch, !90, !"budgetpatch", i1 false, i1 false}
!90 = !{!"../drivers/staging/media/av7110/av7110.c", i32 69, i32 12}
!91 = !{ptr @tv_standard, !92, !"tv_standard", i1 false, i1 false}
!92 = !{!"../drivers/staging/media/av7110/av7110.c", i32 72, i32 12}
!93 = !{ptr @full_ts, !94, !"full_ts", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/av7110/av7110.c", i32 73, i32 12}
!95 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!96 = !{ptr @__param_str_vidmode, !6, !"__param_str_vidmode", i1 false, i1 false}
!97 = !{ptr @vidmode, !98, !"vidmode", i1 false, i1 false}
!98 = !{!"../drivers/staging/media/av7110/av7110.c", i32 63, i32 12}
!99 = !{ptr @__param_str_pids_off, !11, !"__param_str_pids_off", i1 false, i1 false}
!100 = !{ptr @__param_str_adac, !16, !"__param_str_adac", i1 false, i1 false}
!101 = !{ptr @adac, !102, !"adac", i1 false, i1 false}
!102 = !{!"../drivers/staging/media/av7110/av7110.c", i32 65, i32 12}
!103 = !{ptr @__param_str_hw_sections, !21, !"__param_str_hw_sections", i1 false, i1 false}
!104 = !{ptr @__param_str_rgb_on, !26, !"__param_str_rgb_on", i1 false, i1 false}
!105 = !{ptr @__param_str_volume, !31, !"__param_str_volume", i1 false, i1 false}
!106 = !{ptr @volume, !107, !"volume", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/av7110/av7110.c", i32 68, i32 12}
!108 = !{ptr @__param_str_budgetpatch, !36, !"__param_str_budgetpatch", i1 false, i1 false}
!109 = !{ptr @__param_str_full_ts, !41, !"__param_str_full_ts", i1 false, i1 false}
!110 = !{ptr @__param_str_wss_cfg_4_3, !46, !"__param_str_wss_cfg_4_3", i1 false, i1 false}
!111 = !{ptr @wss_cfg_4_3, !112, !"wss_cfg_4_3", i1 false, i1 false}
!112 = !{!"../drivers/staging/media/av7110/av7110.c", i32 70, i32 12}
!113 = !{ptr @__param_str_wss_cfg_16_9, !51, !"__param_str_wss_cfg_16_9", i1 false, i1 false}
!114 = !{ptr @wss_cfg_16_9, !115, !"wss_cfg_16_9", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/av7110/av7110.c", i32 71, i32 12}
!116 = !{ptr @__param_str_tv_standard, !56, !"__param_str_tv_standard", i1 false, i1 false}
!117 = !{ptr @__param_str_adapter_nr, !61, !"__param_str_adapter_nr", i1 false, i1 false}
!118 = !{ptr @__param_arr_adapter_nr, !61, !"__param_arr_adapter_nr", i1 false, i1 false}
!119 = !{ptr @adapter_nr, !61, !"adapter_nr", i1 false, i1 false}
!120 = !{ptr @.str.3, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/media/av7110/av7110.c", i32 719, i32 2}
!122 = !{ptr @SetPIDs._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @SetPIDs._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @av7110_extension_driver, !125, !"av7110_extension_driver", i1 false, i1 false}
!125 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2889, i32 33}
!126 = !{ptr @pci_tbl, !127, !"pci_tbl", i1 false, i1 false}
!127 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2865, i32 35}
!128 = !{ptr @.str.4, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2861, i32 1}
!130 = !{ptr @fsc, !129, !"fsc", i1 false, i1 false}
!131 = !{ptr @.str.5, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2853, i32 1}
!133 = !{ptr @tts_1_X_fsc, !132, !"tts_1_X_fsc", i1 false, i1 false}
!134 = !{ptr @.str.6, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2854, i32 1}
!136 = !{ptr @ttt_1_X, !135, !"ttt_1_X", i1 false, i1 false}
!137 = !{ptr @.str.7, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2856, i32 1}
!139 = !{ptr @ttc_2_X, !138, !"ttc_2_X", i1 false, i1 false}
!140 = !{ptr @.str.8, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2857, i32 1}
!142 = !{ptr @tts_2_X, !141, !"tts_2_X", i1 false, i1 false}
!143 = !{ptr @.str.9, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2863, i32 1}
!145 = !{ptr @gxs_1_3, !144, !"gxs_1_3", i1 false, i1 false}
!146 = !{ptr @.str.10, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2862, i32 1}
!148 = !{ptr @fss, !147, !"fss", i1 false, i1 false}
!149 = !{ptr @.str.11, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2860, i32 1}
!151 = !{ptr @ttt, !150, !"ttt", i1 false, i1 false}
!152 = !{ptr @.str.12, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2855, i32 1}
!154 = !{ptr @ttc_1_X, !153, !"ttc_1_X", i1 false, i1 false}
!155 = !{ptr @.str.13, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2858, i32 1}
!157 = !{ptr @tts_2_3, !156, !"tts_2_3", i1 false, i1 false}
!158 = !{ptr @.str.14, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2859, i32 1}
!160 = !{ptr @tts_1_3se, !159, !"tts_1_3se", i1 false, i1 false}
!161 = !{ptr @.str.15, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2356, i32 2}
!163 = !{ptr @.str.16, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @av7110_attach._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @av7110_attach._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.18, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2438, i32 4}
!168 = !{ptr @av7110_attach._entry.17, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @av7110_attach._entry_ptr.19, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.21, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2450, i32 3}
!172 = !{ptr @av7110_attach._entry.20, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @av7110_attach._entry_ptr.22, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.24, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2496, i32 3}
!176 = !{ptr @av7110_attach._entry.23, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @av7110_attach._entry_ptr.25, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @av7110_attach.__key, !179, !"__key", i1 false, i1 false}
!179 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2497, i32 3}
!180 = !{ptr @.str.26, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @av7110_attach.__key.27, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2525, i32 3}
!183 = !{ptr @av7110_attach.__key.28, !184, !"__key", i1 false, i1 false}
!184 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2621, i32 2}
!185 = !{ptr @.str.29, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @av7110_attach.__key.30, !187, !"__key", i1 false, i1 false}
!187 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2624, i32 2}
!188 = !{ptr @.str.31, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @av7110_attach.__key.32, !190, !"__key", i1 false, i1 false}
!190 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2625, i32 2}
!191 = !{ptr @.str.33, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @av7110_attach.__key.34, !193, !"__key", i1 false, i1 false}
!193 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2630, i32 2}
!194 = !{ptr @.str.35, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @av7110_attach.__key.36, !196, !"__key", i1 false, i1 false}
!196 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2637, i32 2}
!197 = !{ptr @.str.37, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @av7110_attach.__key.38, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2657, i32 2}
!200 = !{ptr @.str.39, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.41, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2673, i32 3}
!203 = !{ptr @av7110_attach._entry.40, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @av7110_attach._entry_ptr.42, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.43, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2677, i32 11}
!207 = !{ptr @av7110_attach.__key.44, !208, !"__key", i1 false, i1 false}
!208 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2706, i32 2}
!209 = !{ptr @.str.45, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.47, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2711, i32 2}
!212 = !{ptr @av7110_attach._entry.46, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @av7110_attach._entry_ptr.48, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.49, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1503, i32 30}
!216 = !{ptr @.str.50, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1506, i32 4}
!218 = !{ptr @.str.51, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @get_firmware._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @get_firmware._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.53, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1507, i32 4}
!223 = !{ptr @get_firmware._entry.52, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @get_firmware._entry_ptr.54, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.56, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1508, i32 4}
!227 = !{ptr @get_firmware._entry.55, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @get_firmware._entry_ptr.57, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.59, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1510, i32 4}
!231 = !{ptr @get_firmware._entry.58, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @get_firmware._entry_ptr.60, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.62, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1516, i32 3}
!235 = !{ptr @get_firmware._entry.61, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @get_firmware._entry_ptr.63, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @get_firmware._entry.64, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1524, i32 3}
!239 = !{ptr @get_firmware._entry_ptr.65, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.66, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1450, i32 3}
!242 = !{ptr @.str.67, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @check_firmware._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @check_firmware._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.69, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1461, i32 3}
!247 = !{ptr @check_firmware._entry.68, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @check_firmware._entry_ptr.70, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.72, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1465, i32 3}
!251 = !{ptr @check_firmware._entry.71, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @check_firmware._entry_ptr.73, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.75, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1480, i32 3}
!255 = !{ptr @check_firmware._entry.74, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @check_firmware._entry_ptr.76, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.78, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1484, i32 3}
!259 = !{ptr @check_firmware._entry.77, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @check_firmware._entry_ptr.79, !258, !"_entry_ptr", i1 false, i1 false}
!261 = distinct !{null, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/staging/media/av7110/av7110.c", i32 367, i32 13}
!263 = !{ptr @.str.81, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/staging/media/av7110/av7110.c", i32 368, i32 2}
!265 = !{ptr @.str.82, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @debiirq._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @debiirq._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.84, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/staging/media/av7110/av7110.c", i32 371, i32 3}
!270 = !{ptr @debiirq._entry.83, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @debiirq._entry_ptr.85, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.87, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/staging/media/av7110/av7110.c", i32 433, i32 3}
!274 = !{ptr @debiirq._entry.86, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @debiirq._entry_ptr.88, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.90, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/staging/media/av7110/av7110.c", i32 438, i32 3}
!278 = !{ptr @debiirq._entry.89, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @debiirq._entry_ptr.91, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.93, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/staging/media/av7110/av7110.c", i32 442, i32 3}
!282 = !{ptr @debiirq._entry.92, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @debiirq._entry_ptr.94, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.96, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/staging/media/av7110/av7110.c", i32 446, i32 3}
!286 = !{ptr @debiirq._entry.95, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @debiirq._entry_ptr.97, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.98, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/staging/media/av7110/av7110.c", i32 469, i32 3}
!290 = !{ptr @.str.99, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @gpioirq._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @gpioirq._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.101, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/staging/media/av7110/av7110.c", i32 474, i32 3}
!295 = !{ptr @gpioirq._entry.100, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @gpioirq._entry_ptr.102, !294, !"_entry_ptr", i1 false, i1 false}
!297 = distinct !{null, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/staging/media/av7110/av7110.c", i32 488, i32 13}
!299 = !{ptr @.str.105, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/staging/media/av7110/av7110.c", i32 489, i32 2}
!301 = !{ptr @gpioirq._entry.104, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @gpioirq._entry_ptr.106, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.108, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/staging/media/av7110/av7110.c", i32 531, i32 3}
!305 = !{ptr @gpioirq._entry.107, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @gpioirq._entry_ptr.109, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.111, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/staging/media/av7110/av7110.c", i32 565, i32 3}
!309 = !{ptr @gpioirq._entry.110, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @gpioirq._entry_ptr.112, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.114, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/staging/media/av7110/av7110.c", i32 597, i32 3}
!313 = !{ptr @gpioirq._entry.113, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @gpioirq._entry_ptr.115, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.117, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/staging/media/av7110/av7110.c", i32 600, i32 3}
!317 = !{ptr @gpioirq._entry.116, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @gpioirq._entry_ptr.118, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.120, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/staging/media/av7110/av7110.c", i32 607, i32 3}
!321 = !{ptr @gpioirq._entry.119, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @gpioirq._entry_ptr.121, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.123, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/staging/media/av7110/av7110.c", i32 614, i32 4}
!325 = !{ptr @gpioirq._entry.122, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @gpioirq._entry_ptr.124, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.126, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/staging/media/av7110/av7110.c", i32 626, i32 3}
!329 = !{ptr @gpioirq._entry.125, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @gpioirq._entry_ptr.127, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.129, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/staging/media/av7110/av7110.c", i32 644, i32 3}
!333 = !{ptr @gpioirq._entry.128, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @gpioirq._entry_ptr.130, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.132, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/staging/media/av7110/av7110.c", i32 668, i32 3}
!337 = !{ptr @gpioirq._entry.131, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @gpioirq._entry_ptr.133, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.134, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/staging/media/av7110/av7110.c", i32 344, i32 2}
!341 = !{ptr @.str.135, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @start_debi_dma._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @start_debi_dma._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @start_debi_dma._entry.136, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../drivers/staging/media/av7110/av7110.c", i32 346, i32 3}
!346 = !{ptr @start_debi_dma._entry_ptr.137, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.138, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/staging/media/av7110/av7110.c", i32 239, i32 2}
!349 = !{ptr @arm_thread._entry, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @arm_thread._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.140, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/staging/media/av7110/av7110.c", i32 259, i32 4}
!353 = !{ptr @arm_thread._entry.139, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @arm_thread._entry_ptr.141, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.142, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/staging/media/av7110/av7110.c", i32 207, i32 2}
!357 = !{ptr @recover_arm._entry, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @recover_arm._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.143, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1068, i32 2}
!361 = !{ptr @restart_feeds._entry, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @restart_feeds._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.144, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/staging/media/av7110/av7110.c", i32 950, i32 2}
!365 = !{ptr @av7110_start_feed._entry, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @av7110_start_feed._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.145, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/staging/media/av7110/av7110.c", i32 868, i32 2}
!369 = !{ptr @dvb_feed_start_pid._entry, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @dvb_feed_start_pid._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.146, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/staging/media/av7110/av7110.c", i32 781, i32 2}
!373 = !{ptr @StartHWFilter._entry, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @StartHWFilter._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.148, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/staging/media/av7110/av7110.c", i32 808, i32 3}
!377 = !{ptr @StartHWFilter._entry.147, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @StartHWFilter._entry_ptr.149, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.150, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1210, i32 2}
!381 = !{ptr @.str.151, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @budget_start_feed._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @budget_start_feed._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.152, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1191, i32 2}
!386 = !{ptr @.str.153, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @start_ts_capture._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @start_ts_capture._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.154, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1279, i32 2}
!391 = !{ptr @av7110_register._entry, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @av7110_register._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.156, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1361, i32 3}
!395 = !{ptr @av7110_register._entry.155, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @av7110_register._entry_ptr.157, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.158, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1017, i32 2}
!399 = !{ptr @av7110_stop_feed._entry, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @av7110_stop_feed._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.159, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/staging/media/av7110/av7110.c", i32 912, i32 2}
!403 = !{ptr @dvb_feed_stop_pid._entry, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @dvb_feed_stop_pid._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.160, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/staging/media/av7110/av7110.c", i32 831, i32 2}
!407 = !{ptr @StopHWFilter._entry, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @StopHWFilter._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.162, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/staging/media/av7110/av7110.c", i32 838, i32 3}
!411 = !{ptr @StopHWFilter._entry.161, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @StopHWFilter._entry_ptr.163, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.165, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/staging/media/av7110/av7110.c", i32 850, i32 3}
!415 = !{ptr @StopHWFilter._entry.164, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @StopHWFilter._entry_ptr.166, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.167, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1114, i32 2}
!419 = !{ptr @dvb_get_stc._entry, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @dvb_get_stc._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.169, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1121, i32 3}
!423 = !{ptr @dvb_get_stc._entry.168, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @dvb_get_stc._entry_ptr.170, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.172, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1124, i32 2}
!427 = !{ptr @dvb_get_stc._entry.171, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @dvb_get_stc._entry_ptr.173, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.175, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1131, i32 2}
!431 = !{ptr @dvb_get_stc._entry.174, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @dvb_get_stc._entry_ptr.176, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @dvbdev_osd, !434, !"dvbdev_osd", i1 false, i1 false}
!434 = !{!"../drivers/staging/media/av7110/av7110.c", i32 704, i32 26}
!435 = !{ptr @dvb_osd_fops, !436, !"dvb_osd_fops", i1 false, i1 false}
!436 = !{!"../drivers/staging/media/av7110/av7110.c", i32 696, i32 37}
!437 = !{ptr @.str.177, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/staging/media/av7110/av7110.c", i32 685, i32 2}
!439 = !{ptr @dvb_osd_ioctl._entry, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @dvb_osd_ioctl._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.178, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1225, i32 2}
!443 = !{ptr @budget_stop_feed._entry, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @budget_stop_feed._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.179, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1177, i32 2}
!447 = !{ptr @stop_ts_capture._entry, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @stop_ts_capture._entry_ptr, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.180, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/staging/media/av7110/av7110.c", i32 126, i32 3}
!451 = !{ptr @.str.181, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @init_av7110_av._entry, !450, !"_entry", i1 false, i1 false}
!453 = !{ptr @init_av7110_av._entry_ptr, !450, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.183, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/staging/media/av7110/av7110.c", i32 131, i32 3}
!456 = !{ptr @init_av7110_av._entry.182, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @init_av7110_av._entry_ptr.184, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.186, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/staging/media/av7110/av7110.c", i32 135, i32 3}
!460 = !{ptr @init_av7110_av._entry.185, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @init_av7110_av._entry_ptr.187, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.189, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/staging/media/av7110/av7110.c", i32 139, i32 3}
!464 = !{ptr @init_av7110_av._entry.188, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @init_av7110_av._entry_ptr.190, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.192, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/staging/media/av7110/av7110.c", i32 142, i32 3}
!468 = !{ptr @init_av7110_av._entry.191, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @init_av7110_av._entry_ptr.193, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.195, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/staging/media/av7110/av7110.c", i32 146, i32 3}
!472 = !{ptr @init_av7110_av._entry.194, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @init_av7110_av._entry_ptr.196, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.198, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/staging/media/av7110/av7110.c", i32 155, i32 3}
!476 = !{ptr @init_av7110_av._entry.197, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @init_av7110_av._entry_ptr.199, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.201, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/staging/media/av7110/av7110.c", i32 170, i32 3}
!480 = !{ptr @init_av7110_av._entry.200, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @init_av7110_av._entry_ptr.202, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.204, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/staging/media/av7110/av7110.c", i32 176, i32 3}
!484 = !{ptr @init_av7110_av._entry.203, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @init_av7110_av._entry_ptr.205, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.207, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/staging/media/av7110/av7110.c", i32 184, i32 4}
!488 = !{ptr @init_av7110_av._entry.206, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @init_av7110_av._entry_ptr.208, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.210, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/staging/media/av7110/av7110.c", i32 187, i32 4}
!492 = !{ptr @init_av7110_av._entry.209, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @init_av7110_av._entry_ptr.211, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.213, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/staging/media/av7110/av7110.c", i32 202, i32 3}
!496 = !{ptr @init_av7110_av._entry.212, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @init_av7110_av._entry_ptr.214, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.215, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2098, i32 17}
!500 = !{ptr @.str.216, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.217, !499, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @.str.218, !499, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @frontend_init._entry, !499, !"_entry", i1 false, i1 false}
!504 = !{ptr @frontend_init._entry_ptr, !499, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.219, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2113, i32 17}
!507 = !{ptr @.str.220, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @.str.222, !506, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @frontend_init._entry.221, !506, !"_entry", i1 false, i1 false}
!510 = !{ptr @frontend_init._entry_ptr.223, !506, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.224, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2124, i32 17}
!513 = !{ptr @.str.225, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @.str.227, !512, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @frontend_init._entry.226, !512, !"_entry", i1 false, i1 false}
!516 = !{ptr @frontend_init._entry_ptr.228, !512, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.229, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2137, i32 17}
!519 = !{ptr @.str.230, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @.str.232, !518, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @frontend_init._entry.231, !518, !"_entry", i1 false, i1 false}
!522 = !{ptr @frontend_init._entry_ptr.233, !518, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @frontend_init._entry.234, !524, !"_entry", i1 false, i1 false}
!524 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2151, i32 18}
!525 = !{ptr @frontend_init._entry_ptr.235, !524, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @frontend_init._entry.236, !527, !"_entry", i1 false, i1 false}
!527 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2159, i32 18}
!528 = !{ptr @frontend_init._entry_ptr.237, !527, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.238, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2173, i32 9}
!531 = !{ptr @.str.239, !530, !"<string literal>", i1 false, i1 false}
!532 = !{ptr @.str.241, !530, !"<string literal>", i1 false, i1 false}
!533 = !{ptr @frontend_init._entry.240, !530, !"_entry", i1 false, i1 false}
!534 = !{ptr @frontend_init._entry_ptr.242, !530, !"_entry_ptr", i1 false, i1 false}
!535 = !{ptr @.str.243, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2184, i32 17}
!537 = !{ptr @.str.244, !536, !"<string literal>", i1 false, i1 false}
!538 = !{ptr @.str.246, !536, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @frontend_init._entry.245, !536, !"_entry", i1 false, i1 false}
!540 = !{ptr @frontend_init._entry_ptr.247, !536, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @frontend_init._entry.248, !542, !"_entry", i1 false, i1 false}
!542 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2191, i32 17}
!543 = !{ptr @frontend_init._entry_ptr.249, !542, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @frontend_init._entry.250, !545, !"_entry", i1 false, i1 false}
!545 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2199, i32 17}
!546 = !{ptr @frontend_init._entry_ptr.251, !545, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @frontend_init._entry.252, !548, !"_entry", i1 false, i1 false}
!548 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2211, i32 17}
!549 = !{ptr @frontend_init._entry_ptr.253, !548, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.254, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2223, i32 17}
!552 = !{ptr @.str.255, !551, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @.str.257, !551, !"<string literal>", i1 false, i1 false}
!554 = !{ptr @frontend_init._entry.256, !551, !"_entry", i1 false, i1 false}
!555 = !{ptr @frontend_init._entry_ptr.258, !551, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @frontend_init._entry.259, !557, !"_entry", i1 false, i1 false}
!557 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2239, i32 17}
!558 = !{ptr @frontend_init._entry_ptr.260, !557, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.261, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2244, i32 9}
!561 = !{ptr @.str.262, !560, !"<string literal>", i1 false, i1 false}
!562 = !{ptr @.str.264, !560, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @frontend_init._entry.263, !560, !"_entry", i1 false, i1 false}
!564 = !{ptr @frontend_init._entry_ptr.265, !560, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @.str.267, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2245, i32 6}
!567 = !{ptr @frontend_init._entry.266, !566, !"_entry", i1 false, i1 false}
!568 = !{ptr @frontend_init._entry_ptr.268, !566, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @.str.270, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2261, i32 3}
!571 = !{ptr @frontend_init._entry.269, !570, !"_entry", i1 false, i1 false}
!572 = !{ptr @frontend_init._entry_ptr.271, !570, !"_entry_ptr", i1 false, i1 false}
!573 = !{ptr @.str.273, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2279, i32 4}
!575 = !{ptr @frontend_init._entry.272, !574, !"_entry", i1 false, i1 false}
!576 = !{ptr @frontend_init._entry_ptr.274, !574, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @philips_cd1516_config, !578, !"philips_cd1516_config", i1 false, i1 false}
!578 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1663, i32 30}
!579 = !{ptr @alps_bsrv2_config, !580, !"alps_bsrv2_config", i1 false, i1 false}
!580 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1575, i32 30}
!581 = !{ptr @alps_bsru6_config, !582, !"alps_bsru6_config", i1 false, i1 false}
!582 = !{!"../drivers/media/dvb-frontends/bsru6.h", i32 114, i32 30}
!583 = !{ptr @alps_bsru6_inittab, !584, !"alps_bsru6_inittab", i1 false, i1 false}
!584 = !{!"../drivers/media/dvb-frontends/bsru6.h", i32 11, i32 11}
!585 = !{ptr @grundig_29504_451_config, !586, !"grundig_29504_451_config", i1 false, i1 false}
!586 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1634, i32 30}
!587 = !{ptr @alps_tdbe2_config, !588, !"alps_tdbe2_config", i1 false, i1 false}
!588 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1603, i32 30}
!589 = !{ptr @alps_tdlb7_config, !590, !"alps_tdlb7_config", i1 false, i1 false}
!590 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1710, i32 35}
!591 = !{ptr @grundig_29504_401_config, !592, !"grundig_29504_401_config", i1 false, i1 false}
!592 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1908, i32 29}
!593 = !{ptr @nexusca_stv0297_config, !594, !"nexusca_stv0297_config", i1 false, i1 false}
!594 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1856, i32 30}
!595 = !{ptr @nexusca_stv0297_inittab, !596, !"nexusca_stv0297_inittab", i1 false, i1 false}
!596 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1717, i32 11}
!597 = !{ptr @.str.275, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1840, i32 3}
!599 = !{ptr @.str.276, !598, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @nexusca_stv0297_tuner_set_params._entry, !598, !"_entry", i1 false, i1 false}
!601 = !{ptr @nexusca_stv0297_tuner_set_params._entry_ptr, !598, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @alps_bsbe1_config, !603, !"alps_bsbe1_config", i1 false, i1 false}
!603 = !{!"../drivers/media/dvb-frontends/bsbe1.h", i32 79, i32 30}
!604 = !{ptr @alps_bsbe1_inittab, !605, !"alps_bsbe1_inittab", i1 false, i1 false}
!605 = !{!"../drivers/media/dvb-frontends/bsbe1.h", i32 11, i32 11}
!606 = !{ptr @av7110_num, !607, !"av7110_num", i1 false, i1 false}
!607 = !{!"../drivers/staging/media/av7110/av7110.c", i32 106, i32 12}
!608 = !{ptr @.str.277, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/staging/media/av7110/av7110.c", i32 1372, i32 2}
!610 = !{ptr @dvb_unregister._entry, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @dvb_unregister._entry_ptr, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.278, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/staging/media/av7110/av7110.c", i32 2750, i32 2}
!614 = !{ptr @av7110_detach._entry, !613, !"_entry", i1 false, i1 false}
!615 = !{ptr @av7110_detach._entry_ptr, !613, !"_entry_ptr", i1 false, i1 false}
!616 = !{i32 1, !"wchar_size", i32 2}
!617 = !{i32 1, !"min_enum_size", i32 4}
!618 = !{i32 8, !"branch-target-enforcement", i32 0}
!619 = !{i32 8, !"sign-return-address", i32 0}
!620 = !{i32 8, !"sign-return-address-all", i32 0}
!621 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!622 = !{i32 7, !"uwtable", i32 1}
!623 = !{i32 7, !"frame-pointer", i32 2}
!624 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!625 = !{i64 2158914206}
!626 = !{i64 5465380}
!627 = !{i64 2158914690}
!628 = !{i64 2158915160}
!629 = !{i64 2158915657}
!630 = !{i64 2158916893}
!631 = !{i64 2158918308}
!632 = !{i64 2158918787}
!633 = !{i64 2158920820}
!634 = !{i64 2158921410}
!635 = !{i64 5465798}
!636 = !{i64 2158924800}
!637 = !{i64 2158926507}
!638 = !{!"auto-init"}
!639 = !{i64 2158928916}
!640 = !{i8 0, i8 2}
!641 = !{i64 2158931217}
!642 = !{i64 2158931773}
!643 = !{i64 2158932322}
!644 = !{i64 2158932952}
!645 = !{i64 2158933579}
!646 = !{i64 2158934127}
!647 = !{i64 2158935726}
!648 = !{i64 2158936713}
!649 = !{i64 2158937009}
!650 = !{i64 2158937461}
!651 = !{i64 2158937937}
!652 = !{i64 2158938421}
!653 = !{i64 2158938962}
!654 = !{i64 2158939561}
!655 = !{i64 2158940133}
!656 = !{i64 2158940878}
!657 = !{i64 2158941375}
!658 = !{i64 2158941872}
!659 = !{i64 2158942369}
!660 = !{i64 2158942999}
!661 = !{i64 2158943626}
!662 = !{i64 2158944105}
!663 = !{i64 2158944557}
!664 = !{i64 2158945033}
!665 = !{i64 2158945592}
!666 = !{i64 2158946157}
!667 = !{i64 2158946657}
!668 = !{i64 2158947181}
!669 = !{i64 2158947675}
!670 = !{i64 2158950469}
!671 = !{i64 2158951042}
!672 = !{i64 2158951631}
!673 = !{i64 2158952179}
!674 = !{i64 2158952676}
!675 = !{i64 2158953173}
!676 = !{i64 2158953670}
!677 = !{i64 2158954300}
!678 = !{i64 2158954930}
!679 = !{i64 2158955424}
!680 = !{i64 2158963865}
!681 = !{i64 2158964378}
!682 = !{i64 2158626082}
!683 = !{i64 2158626996}
!684 = !{i64 2158964951}
!685 = !{i64 2158965598}
!686 = !{i64 2158966270}
!687 = !{i64 2158841780}
!688 = !{i64 2158757496}
!689 = !{i64 2158758068}
!690 = !{i64 2158768409}
!691 = !{i64 2158768981}
!692 = !{i64 2158770799, i64 2158771301, i64 2158770836, i64 2158770892, i64 2158770926, i64 2158770950, i64 2158770991, i64 2158771012, i64 2158771040, i64 2158771074}
!693 = !{i64 2158752061}
!694 = !{i64 2158628819}
!695 = !{i64 2158629731}
!696 = !{i64 2158835675}
!697 = !{i64 2158836276}
!698 = !{!"branch_weights", i32 1, i32 2000}
!699 = !{i64 2158821042, i64 2158821545, i64 2158821079, i64 2158821135, i64 2158821169, i64 2158821193, i64 2158821234, i64 2158821255, i64 2158821283, i64 2158821317}
!700 = !{i64 2158822673, i64 2158823176, i64 2158822710, i64 2158822766, i64 2158822800, i64 2158822824, i64 2158822865, i64 2158822886, i64 2158822914, i64 2158822948}
!701 = !{i64 2158832752}
!702 = !{i64 2158833357}
