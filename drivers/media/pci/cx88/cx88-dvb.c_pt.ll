; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-dvb.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.cx8802_driver = type { ptr, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx22702_config = type { i8, i8 }
%struct.cx24123_config = type { i8, ptr, i32, i8, ptr }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.or51132_config = type { i8, ptr }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.nxt200x_config = type { i8, ptr }
%struct.s5h1409_config = type { i8, i8, i8, i16, i8, i8, i16, i8 }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.cx24116_config = type { i8, ptr, ptr, i8, i16 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.stv0288_config = type { i8, ptr, i32, ptr }
%struct.ds3000_config = type { i8, i8, ptr, ptr }
%struct.stv0900_config = type { i8, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.stb6100_config = type { i8, i32 }
%struct.mb86a16_config = type { i8, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cx8802_dev = type { ptr, %struct.spinlock, ptr, i8, i8, %struct.cx88_dmaqueue, %struct.vb2_queue, i32, i32, %struct.cx8802_suspend_state, %struct.list_head, %struct.video_device, i32, %struct.cx2341x_handler, %struct.vb2_dvb_frontends, ptr, i8, %struct.list_head, %struct.work_struct }
%struct.cx88_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx8802_suspend_state = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152 }
%struct.anon.145 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.148 = type { ptr, ptr }
%struct.anon.149 = type { ptr, ptr, ptr }
%struct.anon.150 = type { ptr, ptr }
%struct.anon.151 = type { ptr, ptr }
%struct.anon.152 = type { ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.vb2_dvb_frontend = type { %struct.list_head, i32, %struct.vb2_dvb }
%struct.vb2_dvb = type { ptr, ptr, %struct.vb2_queue, %struct.mutex, i32, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.xc4000_config = type { i8, i8, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.141], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.141 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.142 }>
%union.anon.142 = type { i64 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx88_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, %struct.cx88_riscmem }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.135, i32 }
%union.anon.135 = type { i32 }
%struct.cx88_riscmem = type { i32, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__UNIQUE_ID_description385 = internal constant [56 x i8] c"cx88_dvb.description=driver for cx2388x based DVB cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [55 x i8] c"cx88_dvb.author=Chris Pascoe <c.pascoe@itee.uq.edu.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_author387 = internal constant [60 x i8] c"cx88_dvb.author=Gerd Knorr <kraxel@bytesex.org> [SuSE Labs]\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [46 x i8] c"cx88_dvb.file=drivers/media/pci/cx88/cx88-dvb\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [21 x i8] c"cx88_dvb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version390 = internal constant [23 x i8] c"cx88_dvb.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cx88_dvb\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [15 x i8] c"cx88_dvb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype391 = internal constant [28 x i8] c"cx88_dvb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug392 = internal constant [48 x i8] c"cx88_dvb.parm=debug:enable debug messages [dvb]\00", section ".modinfo", align 1
@__param_str_dvb_buf_tscnt = internal constant [23 x i8] c"cx88_dvb.dvb_buf_tscnt\00", align 1
@dvb_buf_tscnt = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_dvb_buf_tscnt = internal constant %struct.kernel_param { ptr @__param_str_dvb_buf_tscnt, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_buf_tscnt } }, section "__param", align 4
@__UNIQUE_ID_dvb_buf_tscnttype393 = internal constant [36 x i8] c"cx88_dvb.parmtype=dvb_buf_tscnt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_buf_tscnt394 = internal constant [54 x i8] c"cx88_dvb.parm=dvb_buf_tscnt:DVB Buffer TS count [dvb]\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [20 x i8] c"cx88_dvb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype395 = internal constant [44 x i8] c"cx88_dvb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr396 = internal constant [45 x i8] c"cx88_dvb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@cx8802_dvb_driver = internal global { %struct.cx8802_driver, [44 x i8] } { %struct.cx8802_driver { ptr null, %struct.list_head zeroinitializer, i32 1, i32 1, ptr null, ptr null, ptr @cx8802_dvb_probe, ptr @cx8802_dvb_remove, ptr @cx8802_dvb_advise_acquire, ptr @cx8802_dvb_advise_release, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cx88_dvb__397_1843_dvb_init6 = internal global ptr @dvb_init, section ".initcall6.init", align 4
@__exitcall_dvb_fini = internal global ptr @dvb_fini, section ".exitcall.exit", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@cx8802_dvb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017cx88_dvb: %s: dvb:%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx8802_dvb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/cx88/cx88-dvb.c\00", [62 x i8] zeroinitializer }, align 32
@cx8802_dvb_probe._entry_ptr = internal global ptr @cx8802_dvb_probe._entry, section ".printk_index", align 4
@cx8802_dvb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017cx88_dvb: %s: dvb: ->being probed by Card=%d Name=%s, PCI %02x:%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@cx8802_dvb_probe._entry_ptr.8 = internal global ptr @cx8802_dvb_probe._entry.6, section ".printk_index", align 4
@cx8802_dvb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016cx88_dvb: cx2388x based DVB/ATSC card\0A\00", [55 x i8] zeroinitializer }, align 32
@cx8802_dvb_probe._entry_ptr.11 = internal global ptr @cx8802_dvb_probe._entry.9, section ".printk_index", align 4
@cx8802_dvb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cx88_dvb: %s() failed to get frontend(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@cx8802_dvb_probe._entry_ptr.14 = internal global ptr @cx8802_dvb_probe._entry.12, section ".printk_index", align 4
@dvb_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr @buffer_finish, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cx8802_dvb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cx88_dvb: dvb_register failed (err = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx8802_dvb_probe._entry_ptr.17 = internal global ptr @cx8802_dvb_probe._entry.15, section ".printk_index", align 4
@cx8802_alloc_frontends.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev->frontends.lock\00", [43 x i8] zeroinitializer }, align 32
@cx8802_alloc_frontends._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cx88_dvb: %s: allocating %d frontend(s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx8802_alloc_frontends\00", [41 x i8] zeroinitializer }, align 32
@cx8802_alloc_frontends._entry_ptr = internal global ptr @cx8802_alloc_frontends._entry, section ".printk_index", align 4
@cx8802_alloc_frontends._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cx88_dvb: %s() failed to alloc\0A\00", [62 x i8] zeroinitializer }, align 32
@cx8802_alloc_frontends._entry_ptr.23 = internal global ptr @cx8802_alloc_frontends._entry.21, section ".printk_index", align 4
@dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013cx88_dvb: no i2c-bus available, cannot attach dvb drivers\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_register\00", [19 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr = internal global ptr @dvb_register._entry, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx22702_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx22702_attach\00", [42 x i8] zeroinitializer }, align 32
@connexant_refboard_config = internal constant { %struct.cx22702_config, [30 x i8] } { %struct.cx22702_config { i8 67, i8 1 }, [30 x i8] zeroinitializer }, align 32
@dvb_register._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.5, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx22702_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.30 = internal global ptr @dvb_register._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_register._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.35 = internal global ptr @dvb_register._entry.33, section ".printk_index", align 4
@dvb_register._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.5, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.37 = internal global ptr @dvb_register._entry.36, section ".printk_index", align 4
@dvb_register._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.39 = internal global ptr @dvb_register._entry.38, section ".printk_index", align 4
@hauppauge_hvr_config = internal constant { %struct.cx22702_config, [30 x i8] } { %struct.cx22702_config { i8 99, i8 1 }, [30 x i8] zeroinitializer }, align 32
@dvb_register._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.5, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.41 = internal global ptr @dvb_register._entry.40, section ".printk_index", align 4
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@dvb_register._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.46 = internal global ptr @dvb_register._entry.44, section ".printk_index", align 4
@dvb_register._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.5, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.48 = internal global ptr @dvb_register._entry.47, section ".printk_index", align 4
@dvb_register._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.50 = internal global ptr @dvb_register._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24123_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24123_attach\00", [42 x i8] zeroinitializer }, align 32
@hauppauge_novas_config = internal constant { %struct.cx24123_config, [44 x i8] } { %struct.cx24123_config { i8 85, ptr @cx24123_set_ts_param, i32 0, i8 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.25, ptr @.str.5, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24123_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.55 = internal global ptr @dvb_register._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl6421_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:isl6421_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_register._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.25, ptr @.str.5, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol isl6421_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.60 = internal global ptr @dvb_register._entry.58, section ".printk_index", align 4
@dvb_register._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.5, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.62 = internal global ptr @dvb_register._entry.61, section ".printk_index", align 4
@dvb_register._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.64 = internal global ptr @dvb_register._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv = internal constant { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @dvico_fusionhdtv_demod_init }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.25, ptr @.str.5, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.69 = internal global ptr @dvb_register._entry.67, section ".printk_index", align 4
@dvb_register._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.71 = internal global ptr @dvb_register._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_plus_v1_1 = internal constant { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.25, ptr @.str.5, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.76 = internal global ptr @dvb_register._entry.74, section ".printk_index", align 4
@dvb_register._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.78 = internal global ptr @dvb_register._entry.77, section ".printk_index", align 4
@dvico_fusionhdtv_dual = internal constant { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @dvico_dual_demod_init }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.25, ptr @.str.5, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.80 = internal global ptr @dvb_register._entry.79, section ".printk_index", align 4
@dvb_register._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.82 = internal global ptr @dvb_register._entry.81, section ".printk_index", align 4
@dvb_register._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.25, ptr @.str.5, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.84 = internal global ptr @dvb_register._entry.83, section ".printk_index", align 4
@dvb_register._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.86 = internal global ptr @dvb_register._entry.85, section ".printk_index", align 4
@dvb_register._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.25, ptr @.str.5, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.88 = internal global ptr @dvb_register._entry.87, section ".printk_index", align 4
@dvb_register._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.90 = internal global ptr @dvb_register._entry.89, section ".printk_index", align 4
@dntv_live_dvbt_config = internal constant { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @dntv_live_dvbt_demod_init }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.25, ptr @.str.5, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.92 = internal global ptr @dvb_register._entry.91, section ".printk_index", align 4
@dvb_register._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.94 = internal global ptr @dvb_register._entry.93, section ".printk_index", align 4
@dntv_live_dvbt_pro_config = internal constant { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 1, ptr @dntv_live_dvbt_pro_demod_init }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.25, ptr @.str.5, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.96 = internal global ptr @dvb_register._entry.95, section ".printk_index", align 4
@dvb_register._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.98 = internal global ptr @dvb_register._entry.97, section ".printk_index", align 4
@dvico_fusionhdtv_hybrid = internal constant { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 1, i32 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.25, ptr @.str.5, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.100 = internal global ptr @dvb_register._entry.99, section ".printk_index", align 4
@dvb_register._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.102 = internal global ptr @dvb_register._entry.101, section ".printk_index", align 4
@dvico_fusionhdtv_xc3028 = internal constant { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.25, ptr @.str.5, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.104 = internal global ptr @dvb_register._entry.103, section ".printk_index", align 4
@dvico_fusionhdtv_mt352_xc3028 = internal constant { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 4560, i32 1, ptr @dvico_fusionhdtv_demod_init }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.25, ptr @.str.5, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.106 = internal global ptr @dvb_register._entry.105, section ".printk_index", align 4
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"or51132_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:or51132_attach\00", [42 x i8] zeroinitializer }, align 32
@pchdtv_hd3000 = internal constant { %struct.or51132_config, [24 x i8] } { %struct.or51132_config { i8 21, ptr @or51132_set_ts_param }, [24 x i8] zeroinitializer }, align 32
@dvb_register._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.25, ptr @.str.5, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol or51132_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.111 = internal global ptr @dvb_register._entry.109, section ".printk_index", align 4
@dvb_register._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.113 = internal global ptr @dvb_register._entry.112, section ".printk_index", align 4
@fusionhdtv_3_gold = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 1, i32 4, ptr null, ptr @lgdt330x_set_ts_param, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt330x_attach\00", [41 x i8] zeroinitializer }, align 32
@dvb_register._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.25, ptr @.str.5, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt330x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.118 = internal global ptr @dvb_register._entry.116, section ".printk_index", align 4
@dvb_register._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.120 = internal global ptr @dvb_register._entry.119, section ".printk_index", align 4
@dvb_register._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.25, ptr @.str.5, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.122 = internal global ptr @dvb_register._entry.121, section ".printk_index", align 4
@dvb_register._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.124 = internal global ptr @dvb_register._entry.123, section ".printk_index", align 4
@fusionhdtv_5_gold = internal constant { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 64, ptr null, ptr @lgdt330x_set_ts_param, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.25, ptr @.str.5, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.126 = internal global ptr @dvb_register._entry.125, section ".printk_index", align 4
@dvb_register._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.128 = internal global ptr @dvb_register._entry.127, section ".printk_index", align 4
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda9887_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda9887_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_register._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.25, ptr @.str.5, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda9887_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.133 = internal global ptr @dvb_register._entry.131, section ".printk_index", align 4
@pchdtv_hd5500 = internal constant { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 64, ptr null, ptr @lgdt330x_set_ts_param, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.25, ptr @.str.5, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.135 = internal global ptr @dvb_register._entry.134, section ".printk_index", align 4
@dvb_register._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.137 = internal global ptr @dvb_register._entry.136, section ".printk_index", align 4
@dvb_register._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.25, ptr @.str.5, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.139 = internal global ptr @dvb_register._entry.138, section ".printk_index", align 4
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxt200x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:nxt200x_attach\00", [42 x i8] zeroinitializer }, align 32
@ati_hdtvwonder = internal constant { %struct.nxt200x_config, [24 x i8] } { %struct.nxt200x_config { i8 10, ptr @nxt200x_set_ts_param }, [24 x i8] zeroinitializer }, align 32
@dvb_register._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.25, ptr @.str.5, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol nxt200x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.144 = internal global ptr @dvb_register._entry.142, section ".printk_index", align 4
@dvb_register._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.146 = internal global ptr @dvb_register._entry.145, section ".printk_index", align 4
@dvb_register._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.25, ptr @.str.5, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.148 = internal global ptr @dvb_register._entry.147, section ".printk_index", align 4
@dvb_register._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.25, ptr @.str.5, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.150 = internal global ptr @dvb_register._entry.149, section ".printk_index", align 4
@kworld_dvbs_100_config = internal constant { %struct.cx24123_config, [44 x i8] } { %struct.cx24123_config { i8 21, ptr @cx24123_set_ts_param, i32 1, i8 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.25, ptr @.str.5, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.152 = internal global ptr @dvb_register._entry.151, section ".printk_index", align 4
@geniatech_dvbs_config = internal constant { %struct.cx24123_config, [44 x i8] } { %struct.cx24123_config { i8 85, ptr @cx24123_set_ts_param, i32 0, i8 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.25, ptr @.str.5, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.154 = internal global ptr @dvb_register._entry.153, section ".printk_index", align 4
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1409_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1409_attach\00", [42 x i8] zeroinitializer }, align 32
@pinnacle_pctv_hd_800i_config = internal constant { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 0, i8 1, i16 -21536, i8 0, i8 1, i16 3, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.25, ptr @.str.5, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1409_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.159 = internal global ptr @dvb_register._entry.157, section ".printk_index", align 4
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@pinnacle_pctv_hd_800i_tuner_config = internal constant { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 100, i32 5380, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.25, ptr @.str.5, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.164 = internal global ptr @dvb_register._entry.162, section ".printk_index", align 4
@dvico_hdtv5_pci_nano_config = internal constant { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 0, i16 0, i8 0, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.25, ptr @.str.5, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.166 = internal global ptr @dvb_register._entry.165, section ".printk_index", align 4
@dvb_register.ctl = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.167, i32 64, i32 0, i32 5380, i8 0, i32 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_register._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.25, ptr @.str.5, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.172 = internal global ptr @dvb_register._entry.170, section ".printk_index", align 4
@cx88_pinnacle_hybrid_pctv = internal constant { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.25, ptr @.str.5, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.174 = internal global ptr @dvb_register._entry.173, section ".printk_index", align 4
@dvb_register._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.25, ptr @.str.5, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.176 = internal global ptr @dvb_register._entry.175, section ".printk_index", align 4
@cx88_geniatech_x8000_mt = internal constant { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 1, i32 0, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.25, ptr @.str.5, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.179 = internal global ptr @dvb_register._entry.178, section ".printk_index", align 4
@kworld_atsc_120_config = internal constant { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 0, i16 0, i8 0, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.25, ptr @.str.5, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.181 = internal global ptr @dvb_register._entry.180, section ".printk_index", align 4
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1411_attach\00", [42 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv7_config = internal constant { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 1, i8 1, i16 1, i16 -21536, i16 -21536, i8 0, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_register._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.25, ptr @.str.5, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1411_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.186 = internal global ptr @dvb_register._entry.184, section ".printk_index", align 4
@dvico_fusionhdtv7_tuner_config = internal constant { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 5380, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.25, ptr @.str.5, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.188 = internal global ptr @dvb_register._entry.187, section ".printk_index", align 4
@.str.189 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24116_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24116_attach\00", [42 x i8] zeroinitializer }, align 32
@hauppauge_hvr4000_config = internal constant { %struct.cx24116_config, [16 x i8] } { %struct.cx24116_config { i8 5, ptr @cx24116_set_ts_param, ptr @cx24116_reset_device, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@dvb_register._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.25, ptr @.str.5, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24116_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.193 = internal global ptr @dvb_register._entry.191, section ".printk_index", align 4
@dvb_register._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.25, ptr @.str.5, i32 1451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.195 = internal global ptr @dvb_register._entry.194, section ".printk_index", align 4
@dvb_register._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.5, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.197 = internal global ptr @dvb_register._entry.196, section ".printk_index", align 4
@dvb_register._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.5, i32 1467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.199 = internal global ptr @dvb_register._entry.198, section ".printk_index", align 4
@dvb_register._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.25, ptr @.str.5, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.201 = internal global ptr @dvb_register._entry.200, section ".printk_index", align 4
@dvb_register._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.25, ptr @.str.5, i32 1479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.203 = internal global ptr @dvb_register._entry.202, section ".printk_index", align 4
@.str.204 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@tevii_tuner_sharp_config = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @sharp_z0194a_inittab, i32 88000000, i8 -104, i32 100, ptr @sharp_z0194a_set_symbol_rate, ptr @cx24116_set_ts_param }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.25, ptr @.str.5, i32 1488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.208 = internal global ptr @dvb_register._entry.206, section ".printk_index", align 4
@dvb_register._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.5, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.210 = internal global ptr @dvb_register._entry.209, section ".printk_index", align 4
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0288_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0288_attach\00", [42 x i8] zeroinitializer }, align 32
@tevii_tuner_earda_config = internal constant { %struct.stv0288_config, [16 x i8] } { %struct.stv0288_config { i8 104, ptr null, i32 100, ptr @cx24116_set_ts_param }, [16 x i8] zeroinitializer }, align 32
@dvb_register._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.25, ptr @.str.5, i32 1499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0288_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.215 = internal global ptr @dvb_register._entry.213, section ".printk_index", align 4
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6000_attach\00", [42 x i8] zeroinitializer }, align 32
@dvb_register._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.25, ptr @.str.5, i32 1503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.220 = internal global ptr @dvb_register._entry.218, section ".printk_index", align 4
@tevii_s460_config = internal constant { %struct.cx24116_config, [16 x i8] } { %struct.cx24116_config { i8 85, ptr @cx24116_set_ts_param, ptr @cx24116_reset_device, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@dvb_register._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.25, ptr @.str.5, i32 1513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.222 = internal global ptr @dvb_register._entry.221, section ".printk_index", align 4
@.str.223 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ds3000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ds3000_attach\00", [43 x i8] zeroinitializer }, align 32
@tevii_ds3000_config = internal global { %struct.ds3000_config, [20 x i8] } { %struct.ds3000_config { i8 104, i8 0, ptr @ds3000_set_ts_param, ptr null }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.25, ptr @.str.5, i32 1520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ds3000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.227 = internal global ptr @dvb_register._entry.225, section ".printk_index", align 4
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ts2020_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ts2020_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_register._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.25, ptr @.str.5, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ts2020_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.232 = internal global ptr @dvb_register._entry.230, section ".printk_index", align 4
@dvb_register._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.25, ptr @.str.5, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.234 = internal global ptr @dvb_register._entry.233, section ".printk_index", align 4
@cx88_terratec_cinergy_ht_pci_mkii_config = internal constant { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.25, ptr @.str.5, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.236 = internal global ptr @dvb_register._entry.235, section ".printk_index", align 4
@.str.237 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0900_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0900_attach\00", [42 x i8] zeroinitializer }, align 32
@prof_7301_stv0900_config = internal constant { %struct.stv0900_config, [32 x i8] } { %struct.stv0900_config { i8 106, i8 0, i32 27000000, i8 3, i8 2, i8 3, i8 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @stv0900_set_ts_param, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_register._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.25, ptr @.str.5, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0900_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.241 = internal global ptr @dvb_register._entry.239, section ".printk_index", align 4
@.str.242 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6100_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6100_attach\00", [42 x i8] zeroinitializer }, align 32
@prof_7301_stb6100_config = internal constant { %struct.stb6100_config, [24 x i8] } { %struct.stb6100_config { i8 96, i32 27000000 }, [24 x i8] zeroinitializer }, align 32
@dvb_register._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.25, ptr @.str.5, i32 1557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6100_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.246 = internal global ptr @dvb_register._entry.244, section ".printk_index", align 4
@samsung_stv0299_config = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @samsung_smt_7020_inittab, i32 88000000, i8 56, i32 100, ptr @samsung_smt_7020_stv0299_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.25, ptr @.str.5, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.248 = internal global ptr @dvb_register._entry.247, section ".printk_index", align 4
@.str.249 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mb86a16_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:mb86a16_attach\00", [42 x i8] zeroinitializer }, align 32
@twinhan_vp1027 = internal constant { %struct.mb86a16_config, [24 x i8] } { %struct.mb86a16_config { i8 8, ptr null }, [24 x i8] zeroinitializer }, align 32
@dvb_register._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.25, ptr @.str.5, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol mb86a16_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.253 = internal global ptr @dvb_register._entry.251, section ".printk_index", align 4
@dvb_register._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.25, ptr @.str.5, i32 1612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013cx88_dvb: The frontend of your DVB/ATSC card isn't supported yet\0A\00", [60 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.256 = internal global ptr @dvb_register._entry.254, section ".printk_index", align 4
@dvb_register._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.25, ptr @.str.5, i32 1617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cx88_dvb: frontend initialization failed\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.259 = internal global ptr @dvb_register._entry.257, section ".printk_index", align 4
@dvico_fusionhdtv_demod_init.clock_config = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\8989", [29 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_demod_init.reset = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_demod_init.adc_ctl_1_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_demod_init.agc_cfg = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"g$ ", [29 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_demod_init.gpp_ctl_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\8C3", [30 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_demod_init.capt_range_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dvico_dual_demod_init.clock_config = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\8988", [29 x i8] zeroinitializer }, align 32
@dvico_dual_demod_init.reset = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@dvico_dual_demod_init.adc_ctl_1_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@dvico_dual_demod_init.agc_cfg = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"g( ", [29 x i8] zeroinitializer }, align 32
@dvico_dual_demod_init.gpp_ctl_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\8C3", [30 x i8] zeroinitializer }, align 32
@dvico_dual_demod_init.capt_range_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_demod_init.clock_config = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\8989", [29 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_demod_init.reset = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_demod_init.adc_ctl_1_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_demod_init.agc_cfg = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"g\10#\00\FF\FF\00\FF\00@@", [21 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_demod_init.dntv_extra = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B5z", [30 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_demod_init.capt_range_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_pro_demod_init.clock_config = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\8988", [29 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_pro_demod_init.reset = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_pro_demod_init.adc_ctl_1_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_pro_demod_init.agc_cfg = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"g\10 \00\FF\FF\00\FF\00@@", [21 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_pro_demod_init.dntv_extra = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B5z", [30 x i8] zeroinitializer }, align 32
@dntv_live_dvbt_pro_demod_init.capt_range_cfg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@attach_xc3028._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.5, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013cx88_dvb: dvb frontend not attached. Can't attach xc3028\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"attach_xc3028\00", [18 x i8] zeroinitializer }, align 32
@attach_xc3028._entry_ptr = internal global ptr @attach_xc3028._entry, section ".printk_index", align 4
@attach_xc3028._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.261, ptr @.str.5, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@attach_xc3028._entry_ptr.263 = internal global ptr @attach_xc3028._entry.262, section ".printk_index", align 4
@attach_xc3028._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.261, ptr @.str.5, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cx88_dvb: xc3028 attach failed\0A\00", [62 x i8] zeroinitializer }, align 32
@attach_xc3028._entry_ptr.266 = internal global ptr @attach_xc3028._entry.264, section ".printk_index", align 4
@attach_xc3028._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.261, ptr @.str.5, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016cx88_dvb: xc3028 attached\0A\00", [35 x i8] zeroinitializer }, align 32
@attach_xc3028._entry_ptr.269 = internal global ptr @attach_xc3028._entry.267, section ".printk_index", align 4
@lgdt330x_pll_rf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.271, ptr @.str.5, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017cx88_dvb: %s: dvb:%s: index = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgdt330x_pll_rf_set\00", [44 x i8] zeroinitializer }, align 32
@lgdt330x_pll_rf_set._entry_ptr = internal global ptr @lgdt330x_pll_rf_set._entry, section ".printk_index", align 4
@geniatech_dvbs_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.273, ptr @.str.5, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017cx88_dvb: %s: dvb:LNB Voltage OFF\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"geniatech_dvbs_set_voltage\00", [37 x i8] zeroinitializer }, align 32
@geniatech_dvbs_set_voltage._entry_ptr = internal global ptr @geniatech_dvbs_set_voltage._entry, section ".printk_index", align 4
@attach_xc4000._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.275, ptr @.str.5, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013cx88_dvb: dvb frontend not attached. Can't attach xc4000\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"attach_xc4000\00", [18 x i8] zeroinitializer }, align 32
@attach_xc4000._entry_ptr = internal global ptr @attach_xc4000._entry, section ".printk_index", align 4
@.str.276 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc4000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc4000_attach\00", [43 x i8] zeroinitializer }, align 32
@attach_xc4000._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.275, ptr @.str.5, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc4000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@attach_xc4000._entry_ptr.280 = internal global ptr @attach_xc4000._entry.278, section ".printk_index", align 4
@attach_xc4000._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.275, ptr @.str.5, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cx88_dvb: xc4000 attach failed\0A\00", [62 x i8] zeroinitializer }, align 32
@attach_xc4000._entry_ptr.283 = internal global ptr @attach_xc4000._entry.281, section ".printk_index", align 4
@attach_xc4000._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.275, ptr @.str.5, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016cx88_dvb: xc4000 attached\0A\00", [35 x i8] zeroinitializer }, align 32
@attach_xc4000._entry_ptr.286 = internal global ptr @attach_xc4000._entry.284, section ".printk_index", align 4
@sharp_z0194a_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@tevii_ts2020_config = internal global { { i8, i32, i8, i8, ptr, i8, ptr }, [40 x i8] } { { i8, i32, i8, i8, ptr, i8, ptr } { i8 96, i32 0, i8 1, i8 0, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.289, ptr @.str.290, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid parameter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb6100_set_freq\00", [47 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/dvb-frontends/stb6100_proc.h\00", [53 x i8] zeroinitializer }, align 32
@stb6100_set_freq._entry_ptr = internal global ptr @stb6100_set_freq._entry, section ".printk_index", align 4
@stb6100_get_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.291, ptr @.str.290, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb6100_get_freq\00", [47 x i8] zeroinitializer }, align 32
@stb6100_get_freq._entry_ptr = internal global ptr @stb6100_get_freq._entry, section ".printk_index", align 4
@stb6100_set_bandw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.293, ptr @.str.290, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Invalid parameter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb6100_set_bandw\00", [46 x i8] zeroinitializer }, align 32
@stb6100_set_bandw._entry_ptr = internal global ptr @stb6100_set_bandw._entry, section ".printk_index", align 4
@stb6100_get_bandw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.294, ptr @.str.290, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb6100_get_bandw\00", [46 x i8] zeroinitializer }, align 32
@stb6100_get_bandw._entry_ptr = internal global ptr @stb6100_get_bandw._entry, section ".printk_index", align 4
@samsung_smt_7020_inittab = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\01\15\02\00\03\00\04}\05\0F\06\02\07\00\08`\0A\C2\0B\00\0C\01\0D\81\0ED\0F\09\10<\11\84\12\DA\13\99\14\8D\15\CE\16\E8\17C\18\1C\19\1B\1A\1D\1C\12\1D\00\1E\00\1F\00 \00!\00\22\00#\00(\02)(*\14+\0F,\09-\051\1F2\193\FC4\13\FF\FF", [40 x i8] zeroinitializer }, align 32
@vp1027_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.296, ptr @.str.5, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017cx88_dvb: %s: dvb:LNB SEC Voltage=13\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vp1027_set_voltage\00", [45 x i8] zeroinitializer }, align 32
@vp1027_set_voltage._entry_ptr = internal global ptr @vp1027_set_voltage._entry, section ".printk_index", align 4
@vp1027_set_voltage._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.296, ptr @.str.5, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017cx88_dvb: %s: dvb:LNB SEC Voltage=18\0A\00", [56 x i8] zeroinitializer }, align 32
@vp1027_set_voltage._entry_ptr.299 = internal global ptr @vp1027_set_voltage._entry.297, section ".printk_index", align 4
@vp1027_set_voltage._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.296, ptr @.str.5, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1027_set_voltage._entry_ptr.301 = internal global ptr @vp1027_set_voltage._entry.300, section ".printk_index", align 4
@cx88_dvb_bus_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.303, ptr @.str.5, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013cx88_dvb: %s() No frontend found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx88_dvb_bus_ctrl\00", [46 x i8] zeroinitializer }, align 32
@cx88_dvb_bus_ctrl._entry_ptr = internal global ptr @cx88_dvb_bus_ctrl._entry, section ".printk_index", align 4
@cx8802_dvb_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.304, ptr @.str.5, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx8802_dvb_remove\00", [46 x i8] zeroinitializer }, align 32
@cx8802_dvb_remove._entry_ptr = internal global ptr @cx8802_dvb_remove._entry, section ".printk_index", align 4
@cx8802_dvb_advise_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.305, ptr @.str.5, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx8802_dvb_advise_acquire\00", [38 x i8] zeroinitializer }, align 32
@cx8802_dvb_advise_acquire._entry_ptr = internal global ptr @cx8802_dvb_advise_acquire._entry, section ".printk_index", align 4
@cx8802_dvb_advise_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.306, ptr @.str.5, i32 1718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx8802_dvb_advise_release\00", [38 x i8] zeroinitializer }, align 32
@cx8802_dvb_advise_release._entry_ptr = internal global ptr @cx8802_dvb_advise_release._entry, section ".printk_index", align 4
@dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.308, ptr @.str.5, i32 1834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cx88_dvb: cx2388x dvb driver version %s loaded\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvb_init\00", [23 x i8] zeroinitializer }, align 32
@dvb_init._entry_ptr = internal global ptr @dvb_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 53, i64 56, i64 68, i64 87]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.310 = internal global [5 x i64] [i64 3, i64 32, i64 53, i64 56, i64 68]
@__sancov_gen_cov_switch_values.311 = internal global [57 x i64] [i64 55, i64 32, i64 14, i64 15, i64 17, i64 18, i64 19, i64 21, i64 22, i64 23, i64 28, i64 29, i64 30, i64 31, i64 34, i64 35, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 46, i64 47, i64 51, i64 52, i64 53, i64 56, i64 58, i64 59, i64 60, i64 63, i64 64, i64 65, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 75, i64 76, i64 77, i64 78, i64 79, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 91]
@__sancov_gen_cov_switch_values.312 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.313 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.315 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 55, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 57, i32 21 }
@___asan_gen_.328 = private unnamed_addr constant [14 x i8] c"dvb_buf_tscnt\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 61, i32 21 }
@___asan_gen_.331 = private unnamed_addr constant [18 x i8] c"cx8802_dvb_driver\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1823, i32 29 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 65, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1741, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1742, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1758, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1770, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant [9 x i8] c"dvb_qops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 150, i32 29 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1799, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 785, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 791, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 796, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 996, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [26 x i8] c"connexant_refboard_config\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 358, i32 36 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1014, i32 23 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1018, i32 9 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1028, i32 23 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1032, i32 9 }
@___asan_gen_.439 = private unnamed_addr constant [21 x i8] c"hauppauge_hvr_config\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 363, i32 36 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1042, i32 23 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1046, i32 9 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1053, i32 23 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1057, i32 9 }
@___asan_gen_.469 = private unnamed_addr constant [23 x i8] c"hauppauge_novas_config\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 532, i32 36 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1068, i32 23 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1072, i32 9 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1083, i32 23 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1088, i32 9 }
@___asan_gen_.502 = private unnamed_addr constant [17 x i8] c"dvico_fusionhdtv\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 280, i32 34 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1096, i32 23 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1100, i32 9 }
@___asan_gen_.520 = private unnamed_addr constant [27 x i8] c"dvico_fusionhdtv_plus_v1_1\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 354, i32 36 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1106, i32 23 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1110, i32 9 }
@___asan_gen_.532 = private unnamed_addr constant [22 x i8] c"dvico_fusionhdtv_dual\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 290, i32 34 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1120, i32 23 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1124, i32 9 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1130, i32 23 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1134, i32 9 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1140, i32 23 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1144, i32 9 }
@___asan_gen_.553 = private unnamed_addr constant [22 x i8] c"dntv_live_dvbt_config\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 285, i32 34 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1152, i32 23 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1156, i32 9 }
@___asan_gen_.562 = private unnamed_addr constant [26 x i8] c"dntv_live_dvbt_pro_config\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 329, i32 34 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1164, i32 23 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1168, i32 9 }
@___asan_gen_.571 = private unnamed_addr constant [24 x i8] c"dvico_fusionhdtv_hybrid\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 336, i32 36 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1178, i32 23 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1182, i32 9 }
@___asan_gen_.580 = private unnamed_addr constant [24 x i8] c"dvico_fusionhdtv_xc3028\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 341, i32 36 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1189, i32 23 }
@___asan_gen_.586 = private unnamed_addr constant [30 x i8] c"dvico_fusionhdtv_mt352_xc3028\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 347, i32 34 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1193, i32 24 }
@___asan_gen_.598 = private unnamed_addr constant [14 x i8] c"pchdtv_hd3000\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 376, i32 36 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1207, i32 23 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1210, i32 9 }
@___asan_gen_.610 = private unnamed_addr constant [18 x i8] c"fusionhdtv_3_gold\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 405, i32 31 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1227, i32 23 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1232, i32 9 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1246, i32 23 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1251, i32 9 }
@___asan_gen_.634 = private unnamed_addr constant [18 x i8] c"fusionhdtv_5_gold\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 411, i32 37 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1265, i32 23 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1270, i32 9 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1274, i32 9 }
@___asan_gen_.655 = private unnamed_addr constant [14 x i8] c"pchdtv_hd5500\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 417, i32 37 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1287, i32 23 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1292, i32 9 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1296, i32 9 }
@___asan_gen_.673 = private unnamed_addr constant [15 x i8] c"ati_hdtvwonder\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 431, i32 36 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1302, i32 23 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1306, i32 9 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1314, i32 23 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1325, i32 9 }
@___asan_gen_.691 = private unnamed_addr constant [23 x i8] c"kworld_dvbs_100_config\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 537, i32 36 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1332, i32 23 }
@___asan_gen_.697 = private unnamed_addr constant [22 x i8] c"geniatech_dvbs_config\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 527, i32 36 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1341, i32 23 }
@___asan_gen_.709 = private unnamed_addr constant [29 x i8] c"pinnacle_pctv_hd_800i_config\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 543, i32 36 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1350, i32 23 }
@___asan_gen_.724 = private unnamed_addr constant [35 x i8] c"pinnacle_pctv_hd_800i_tuner_config\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 571, i32 35 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1354, i32 9 }
@___asan_gen_.733 = private unnamed_addr constant [28 x i8] c"dvico_hdtv5_pci_nano_config\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 553, i32 36 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1361, i32 23 }
@___asan_gen_.739 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1370, i32 30 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1371, i32 20 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1376, i32 9 }
@___asan_gen_.757 = private unnamed_addr constant [26 x i8] c"cx88_pinnacle_hybrid_pctv\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 576, i32 36 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1385, i32 23 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1396, i32 23 }
@___asan_gen_.766 = private unnamed_addr constant [24 x i8] c"cx88_geniatech_x8000_mt\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 582, i32 36 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1415, i32 23 }
@___asan_gen_.772 = private unnamed_addr constant [23 x i8] c"kworld_atsc_120_config\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 562, i32 36 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1422, i32 23 }
@___asan_gen_.784 = private unnamed_addr constant [25 x i8] c"dvico_fusionhdtv7_config\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 588, i32 36 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1429, i32 23 }
@___asan_gen_.793 = private unnamed_addr constant [31 x i8] c"dvico_fusionhdtv7_tuner_config\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 598, i32 35 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1433, i32 9 }
@___asan_gen_.805 = private unnamed_addr constant [25 x i8] c"hauppauge_hvr4000_config\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 711, i32 36 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1444, i32 23 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1448, i32 9 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1459, i32 23 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1464, i32 9 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1472, i32 23 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1476, i32 9 }
@___asan_gen_.835 = private unnamed_addr constant [25 x i8] c"tevii_tuner_sharp_config\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 760, i32 36 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1486, i32 23 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1490, i32 9 }
@___asan_gen_.853 = private unnamed_addr constant [25 x i8] c"tevii_tuner_earda_config\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 773, i32 36 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1497, i32 24 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1501, i32 10 }
@___asan_gen_.874 = private unnamed_addr constant [18 x i8] c"tevii_s460_config\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 717, i32 36 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1511, i32 23 }
@___asan_gen_.886 = private unnamed_addr constant [20 x i8] c"tevii_ds3000_config\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 733, i32 29 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1518, i32 23 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1522, i32 4 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1532, i32 23 }
@___asan_gen_.910 = private unnamed_addr constant [41 x i8] c"cx88_terratec_cinergy_ht_pci_mkii_config\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 295, i32 36 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1539, i32 23 }
@___asan_gen_.922 = private unnamed_addr constant [25 x i8] c"prof_7301_stv0900_config\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 743, i32 36 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1551, i32 23 }
@___asan_gen_.937 = private unnamed_addr constant [25 x i8] c"prof_7301_stb6100_config\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 755, i32 36 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1555, i32 9 }
@___asan_gen_.946 = private unnamed_addr constant [23 x i8] c"samsung_stv0299_config\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 976, i32 36 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1583, i32 23 }
@___asan_gen_.958 = private unnamed_addr constant [15 x i8] c"twinhan_vp1027\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 301, i32 36 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1600, i32 23 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1612, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1617, i32 3 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 218, i32 18 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 219, i32 18 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 220, i32 18 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 221, i32 18 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 222, i32 18 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 223, i32 18 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 238, i32 18 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 239, i32 18 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 240, i32 18 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 241, i32 18 }
@___asan_gen_.1009 = private unnamed_addr constant [12 x i8] c"gpp_ctl_cfg\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 242, i32 18 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 243, i32 18 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 259, i32 18 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 260, i32 18 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 261, i32 18 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 262, i32 18 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 264, i32 18 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 265, i32 18 }
@___asan_gen_.1033 = private unnamed_addr constant [13 x i8] c"clock_config\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 308, i32 18 }
@___asan_gen_.1036 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 309, i32 18 }
@___asan_gen_.1039 = private unnamed_addr constant [14 x i8] c"adc_ctl_1_cfg\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 310, i32 18 }
@___asan_gen_.1042 = private unnamed_addr constant [8 x i8] c"agc_cfg\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 311, i32 18 }
@___asan_gen_.1045 = private unnamed_addr constant [11 x i8] c"dntv_extra\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 313, i32 18 }
@___asan_gen_.1048 = private unnamed_addr constant [15 x i8] c"capt_range_cfg\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 314, i32 18 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 620, i32 3 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 631, i32 7 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 633, i32 3 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 640, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 386, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 468, i32 3 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 656, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 660, i32 7 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 663, i32 3 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 670, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant [21 x i8] c"sharp_z0194a_inittab\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant [40 x i8] c"../drivers/media/dvb-frontends/z0194a.h\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1127, i32 40, i32 11 }
@___asan_gen_.1129 = private unnamed_addr constant [20 x i8] c"tevii_ts2020_config\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 738, i32 29 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1163, i32 52, i32 4 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1163, i32 23, i32 4 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1163, i32 105, i32 4 }
@___asan_gen_.1163 = private unnamed_addr constant [46 x i8] c"../drivers/media/dvb-frontends/stb6100_proc.h\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1163, i32 76, i32 4 }
@___asan_gen_.1165 = private unnamed_addr constant [25 x i8] c"samsung_smt_7020_inittab\00", align 1
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 804, i32 17 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 509, i32 3 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 513, i32 3 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 517, i32 3 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 172, i32 3 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1812, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1653, i32 2 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1718, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1220 = private constant [37 x i8] c"../drivers/media/pci/cx88/cx88-dvb.c\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1220, i32 1834, i32 2 }
@llvm.compiler.used = appending global [430 x ptr] [ptr @__UNIQUE_ID_adapter_nr396, ptr @__UNIQUE_ID_adapter_nrtype395, ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_debug392, ptr @__UNIQUE_ID_debugtype391, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_dvb_buf_tscnt394, ptr @__UNIQUE_ID_dvb_buf_tscnttype393, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__UNIQUE_ID_version390, ptr @__exitcall_dvb_fini, ptr @__initcall__kmod_cx88_dvb__397_1843_dvb_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_dvb_buf_tscnt, ptr @attach_xc3028._entry, ptr @attach_xc3028._entry.262, ptr @attach_xc3028._entry.264, ptr @attach_xc3028._entry.267, ptr @attach_xc3028._entry_ptr, ptr @attach_xc3028._entry_ptr.263, ptr @attach_xc3028._entry_ptr.266, ptr @attach_xc3028._entry_ptr.269, ptr @attach_xc4000._entry, ptr @attach_xc4000._entry.278, ptr @attach_xc4000._entry.281, ptr @attach_xc4000._entry.284, ptr @attach_xc4000._entry_ptr, ptr @attach_xc4000._entry_ptr.280, ptr @attach_xc4000._entry_ptr.283, ptr @attach_xc4000._entry_ptr.286, ptr @cx8802_alloc_frontends._entry, ptr @cx8802_alloc_frontends._entry.21, ptr @cx8802_alloc_frontends._entry_ptr, ptr @cx8802_alloc_frontends._entry_ptr.23, ptr @cx8802_dvb_advise_acquire._entry, ptr @cx8802_dvb_advise_acquire._entry_ptr, ptr @cx8802_dvb_advise_release._entry, ptr @cx8802_dvb_advise_release._entry_ptr, ptr @cx8802_dvb_probe._entry, ptr @cx8802_dvb_probe._entry.12, ptr @cx8802_dvb_probe._entry.15, ptr @cx8802_dvb_probe._entry.6, ptr @cx8802_dvb_probe._entry.9, ptr @cx8802_dvb_probe._entry_ptr, ptr @cx8802_dvb_probe._entry_ptr.11, ptr @cx8802_dvb_probe._entry_ptr.14, ptr @cx8802_dvb_probe._entry_ptr.17, ptr @cx8802_dvb_probe._entry_ptr.8, ptr @cx8802_dvb_remove._entry, ptr @cx8802_dvb_remove._entry_ptr, ptr @cx88_dvb_bus_ctrl._entry, ptr @cx88_dvb_bus_ctrl._entry_ptr, ptr @dvb_fini, ptr @dvb_init._entry, ptr @dvb_init._entry_ptr, ptr @dvb_register._entry, ptr @dvb_register._entry.101, ptr @dvb_register._entry.103, ptr @dvb_register._entry.105, ptr @dvb_register._entry.109, ptr @dvb_register._entry.112, ptr @dvb_register._entry.116, ptr @dvb_register._entry.119, ptr @dvb_register._entry.121, ptr @dvb_register._entry.123, ptr @dvb_register._entry.125, ptr @dvb_register._entry.127, ptr @dvb_register._entry.131, ptr @dvb_register._entry.134, ptr @dvb_register._entry.136, ptr @dvb_register._entry.138, ptr @dvb_register._entry.142, ptr @dvb_register._entry.145, ptr @dvb_register._entry.147, ptr @dvb_register._entry.149, ptr @dvb_register._entry.151, ptr @dvb_register._entry.153, ptr @dvb_register._entry.157, ptr @dvb_register._entry.162, ptr @dvb_register._entry.165, ptr @dvb_register._entry.170, ptr @dvb_register._entry.173, ptr @dvb_register._entry.175, ptr @dvb_register._entry.178, ptr @dvb_register._entry.180, ptr @dvb_register._entry.184, ptr @dvb_register._entry.187, ptr @dvb_register._entry.191, ptr @dvb_register._entry.194, ptr @dvb_register._entry.196, ptr @dvb_register._entry.198, ptr @dvb_register._entry.200, ptr @dvb_register._entry.202, ptr @dvb_register._entry.206, ptr @dvb_register._entry.209, ptr @dvb_register._entry.213, ptr @dvb_register._entry.218, ptr @dvb_register._entry.221, ptr @dvb_register._entry.225, ptr @dvb_register._entry.230, ptr @dvb_register._entry.233, ptr @dvb_register._entry.235, ptr @dvb_register._entry.239, ptr @dvb_register._entry.244, ptr @dvb_register._entry.247, ptr @dvb_register._entry.251, ptr @dvb_register._entry.254, ptr @dvb_register._entry.257, ptr @dvb_register._entry.28, ptr @dvb_register._entry.33, ptr @dvb_register._entry.36, ptr @dvb_register._entry.38, ptr @dvb_register._entry.40, ptr @dvb_register._entry.44, ptr @dvb_register._entry.47, ptr @dvb_register._entry.49, ptr @dvb_register._entry.53, ptr @dvb_register._entry.58, ptr @dvb_register._entry.61, ptr @dvb_register._entry.63, ptr @dvb_register._entry.67, ptr @dvb_register._entry.70, ptr @dvb_register._entry.74, ptr @dvb_register._entry.77, ptr @dvb_register._entry.79, ptr @dvb_register._entry.81, ptr @dvb_register._entry.83, ptr @dvb_register._entry.85, ptr @dvb_register._entry.87, ptr @dvb_register._entry.89, ptr @dvb_register._entry.91, ptr @dvb_register._entry.93, ptr @dvb_register._entry.95, ptr @dvb_register._entry.97, ptr @dvb_register._entry.99, ptr @dvb_register._entry_ptr, ptr @dvb_register._entry_ptr.100, ptr @dvb_register._entry_ptr.102, ptr @dvb_register._entry_ptr.104, ptr @dvb_register._entry_ptr.106, ptr @dvb_register._entry_ptr.111, ptr @dvb_register._entry_ptr.113, ptr @dvb_register._entry_ptr.118, ptr @dvb_register._entry_ptr.120, ptr @dvb_register._entry_ptr.122, ptr @dvb_register._entry_ptr.124, ptr @dvb_register._entry_ptr.126, ptr @dvb_register._entry_ptr.128, ptr @dvb_register._entry_ptr.133, ptr @dvb_register._entry_ptr.135, ptr @dvb_register._entry_ptr.137, ptr @dvb_register._entry_ptr.139, ptr @dvb_register._entry_ptr.144, ptr @dvb_register._entry_ptr.146, ptr @dvb_register._entry_ptr.148, ptr @dvb_register._entry_ptr.150, ptr @dvb_register._entry_ptr.152, ptr @dvb_register._entry_ptr.154, ptr @dvb_register._entry_ptr.159, ptr @dvb_register._entry_ptr.164, ptr @dvb_register._entry_ptr.166, ptr @dvb_register._entry_ptr.172, ptr @dvb_register._entry_ptr.174, ptr @dvb_register._entry_ptr.176, ptr @dvb_register._entry_ptr.179, ptr @dvb_register._entry_ptr.181, ptr @dvb_register._entry_ptr.186, ptr @dvb_register._entry_ptr.188, ptr @dvb_register._entry_ptr.193, ptr @dvb_register._entry_ptr.195, ptr @dvb_register._entry_ptr.197, ptr @dvb_register._entry_ptr.199, ptr @dvb_register._entry_ptr.201, ptr @dvb_register._entry_ptr.203, ptr @dvb_register._entry_ptr.208, ptr @dvb_register._entry_ptr.210, ptr @dvb_register._entry_ptr.215, ptr @dvb_register._entry_ptr.220, ptr @dvb_register._entry_ptr.222, ptr @dvb_register._entry_ptr.227, ptr @dvb_register._entry_ptr.232, ptr @dvb_register._entry_ptr.234, ptr @dvb_register._entry_ptr.236, ptr @dvb_register._entry_ptr.241, ptr @dvb_register._entry_ptr.246, ptr @dvb_register._entry_ptr.248, ptr @dvb_register._entry_ptr.253, ptr @dvb_register._entry_ptr.256, ptr @dvb_register._entry_ptr.259, ptr @dvb_register._entry_ptr.30, ptr @dvb_register._entry_ptr.35, ptr @dvb_register._entry_ptr.37, ptr @dvb_register._entry_ptr.39, ptr @dvb_register._entry_ptr.41, ptr @dvb_register._entry_ptr.46, ptr @dvb_register._entry_ptr.48, ptr @dvb_register._entry_ptr.50, ptr @dvb_register._entry_ptr.55, ptr @dvb_register._entry_ptr.60, ptr @dvb_register._entry_ptr.62, ptr @dvb_register._entry_ptr.64, ptr @dvb_register._entry_ptr.69, ptr @dvb_register._entry_ptr.71, ptr @dvb_register._entry_ptr.76, ptr @dvb_register._entry_ptr.78, ptr @dvb_register._entry_ptr.80, ptr @dvb_register._entry_ptr.82, ptr @dvb_register._entry_ptr.84, ptr @dvb_register._entry_ptr.86, ptr @dvb_register._entry_ptr.88, ptr @dvb_register._entry_ptr.90, ptr @dvb_register._entry_ptr.92, ptr @dvb_register._entry_ptr.94, ptr @dvb_register._entry_ptr.96, ptr @dvb_register._entry_ptr.98, ptr @geniatech_dvbs_set_voltage._entry, ptr @geniatech_dvbs_set_voltage._entry_ptr, ptr @lgdt330x_pll_rf_set._entry, ptr @lgdt330x_pll_rf_set._entry_ptr, ptr @stb6100_get_bandw._entry, ptr @stb6100_get_bandw._entry_ptr, ptr @stb6100_get_freq._entry, ptr @stb6100_get_freq._entry_ptr, ptr @stb6100_set_bandw._entry, ptr @stb6100_set_bandw._entry_ptr, ptr @stb6100_set_freq._entry, ptr @stb6100_set_freq._entry_ptr, ptr @vp1027_set_voltage._entry, ptr @vp1027_set_voltage._entry.297, ptr @vp1027_set_voltage._entry.300, ptr @vp1027_set_voltage._entry_ptr, ptr @vp1027_set_voltage._entry_ptr.299, ptr @vp1027_set_voltage._entry_ptr.301, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @dvb_buf_tscnt, ptr @cx8802_dvb_driver, ptr @adapter_nr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @dvb_qops, ptr @.str.16, ptr @cx8802_alloc_frontends.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @connexant_refboard_config, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @hauppauge_hvr_config, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.51, ptr @.str.52, ptr @hauppauge_novas_config, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.65, ptr @.str.66, ptr @dvico_fusionhdtv, ptr @.str.68, ptr @.str.72, ptr @.str.73, ptr @dvico_fusionhdtv_plus_v1_1, ptr @.str.75, ptr @dvico_fusionhdtv_dual, ptr @dntv_live_dvbt_config, ptr @dntv_live_dvbt_pro_config, ptr @dvico_fusionhdtv_hybrid, ptr @dvico_fusionhdtv_xc3028, ptr @dvico_fusionhdtv_mt352_xc3028, ptr @.str.107, ptr @.str.108, ptr @pchdtv_hd3000, ptr @.str.110, ptr @fusionhdtv_3_gold, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @fusionhdtv_5_gold, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @pchdtv_hd5500, ptr @.str.140, ptr @.str.141, ptr @ati_hdtvwonder, ptr @.str.143, ptr @kworld_dvbs_100_config, ptr @geniatech_dvbs_config, ptr @.str.155, ptr @.str.156, ptr @pinnacle_pctv_hd_800i_config, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @pinnacle_pctv_hd_800i_tuner_config, ptr @.str.163, ptr @dvico_hdtv5_pci_nano_config, ptr @dvb_register.ctl, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @cx88_pinnacle_hybrid_pctv, ptr @cx88_geniatech_x8000_mt, ptr @kworld_atsc_120_config, ptr @.str.182, ptr @.str.183, ptr @dvico_fusionhdtv7_config, ptr @.str.185, ptr @dvico_fusionhdtv7_tuner_config, ptr @.str.189, ptr @.str.190, ptr @hauppauge_hvr4000_config, ptr @.str.192, ptr @.str.204, ptr @.str.205, ptr @tevii_tuner_sharp_config, ptr @.str.207, ptr @.str.211, ptr @.str.212, ptr @tevii_tuner_earda_config, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.219, ptr @tevii_s460_config, ptr @.str.223, ptr @.str.224, ptr @tevii_ds3000_config, ptr @.str.226, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @cx88_terratec_cinergy_ht_pci_mkii_config, ptr @.str.237, ptr @.str.238, ptr @prof_7301_stv0900_config, ptr @.str.240, ptr @.str.242, ptr @.str.243, ptr @prof_7301_stb6100_config, ptr @.str.245, ptr @samsung_stv0299_config, ptr @.str.249, ptr @.str.250, ptr @twinhan_vp1027, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @dvico_fusionhdtv_demod_init.clock_config, ptr @dvico_fusionhdtv_demod_init.reset, ptr @dvico_fusionhdtv_demod_init.adc_ctl_1_cfg, ptr @dvico_fusionhdtv_demod_init.agc_cfg, ptr @dvico_fusionhdtv_demod_init.gpp_ctl_cfg, ptr @dvico_fusionhdtv_demod_init.capt_range_cfg, ptr @dvico_dual_demod_init.clock_config, ptr @dvico_dual_demod_init.reset, ptr @dvico_dual_demod_init.adc_ctl_1_cfg, ptr @dvico_dual_demod_init.agc_cfg, ptr @dvico_dual_demod_init.gpp_ctl_cfg, ptr @dvico_dual_demod_init.capt_range_cfg, ptr @dntv_live_dvbt_demod_init.clock_config, ptr @dntv_live_dvbt_demod_init.reset, ptr @dntv_live_dvbt_demod_init.adc_ctl_1_cfg, ptr @dntv_live_dvbt_demod_init.agc_cfg, ptr @dntv_live_dvbt_demod_init.dntv_extra, ptr @dntv_live_dvbt_demod_init.capt_range_cfg, ptr @dntv_live_dvbt_pro_demod_init.clock_config, ptr @dntv_live_dvbt_pro_demod_init.reset, ptr @dntv_live_dvbt_pro_demod_init.adc_ctl_1_cfg, ptr @dntv_live_dvbt_pro_demod_init.agc_cfg, ptr @dntv_live_dvbt_pro_demod_init.dntv_extra, ptr @dntv_live_dvbt_pro_demod_init.capt_range_cfg, ptr @.str.260, ptr @.str.261, ptr @.str.265, ptr @.str.268, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @sharp_z0194a_inittab, ptr @tevii_ts2020_config, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @samsung_smt_7020_inittab, ptr @.str.295, ptr @.str.296, ptr @.str.298, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308], section "llvm.metadata"
@0 = internal global [302 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_buf_tscnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_driver to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_alloc_frontends.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_alloc_frontends._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_alloc_frontends._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connexant_refboard_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_novas_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_plus_v1_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_dual to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_pro_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_hybrid to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_xc3028 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_mt352_xc3028 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pchdtv_hd3000 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusionhdtv_3_gold to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusionhdtv_5_gold to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pchdtv_hd5500 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_hdtvwonder to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_dvbs_100_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geniatech_dvbs_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_pctv_hd_800i_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_pctv_hd_800i_tuner_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_hdtv5_pci_nano_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.ctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_pinnacle_hybrid_pctv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_geniatech_x8000_mt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_atsc_120_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv7_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv7_tuner_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr4000_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tevii_tuner_sharp_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tevii_tuner_earda_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tevii_s460_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tevii_ds3000_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_terratec_cinergy_ht_pci_mkii_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_7301_stv0900_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_7301_stb6100_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_stv0299_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twinhan_vp1027 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_demod_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_demod_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_demod_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_demod_init.agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_demod_init.gpp_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_demod_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_dual_demod_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_dual_demod_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_dual_demod_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_dual_demod_init.agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_dual_demod_init.gpp_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_dual_demod_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_demod_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_demod_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_demod_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_demod_init.agc_cfg to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_demod_init.dntv_extra to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_demod_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_pro_demod_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_pro_demod_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_pro_demod_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_pro_demod_init.agc_cfg to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_pro_demod_init.dntv_extra to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dntv_live_dvbt_pro_demod_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_xc3028._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_xc3028._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_xc3028._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_xc3028._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgdt330x_pll_rf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geniatech_dvbs_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_xc4000._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_xc4000._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_xc4000._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_xc4000._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_z0194a_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tevii_ts2020_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_smt_7020_inittab to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1027_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1027_set_voltage._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1027_set_voltage._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_dvb_bus_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_advise_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8802_dvb_advise_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dvb_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @cx8802_unregister_driver(ptr noundef nonnull @cx8802_dvb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8802_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.2) #10
  %call1 = tail call i32 @cx8802_register_driver(ptr noundef nonnull @cx8802_dvb_driver) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8802_dvb_probe(ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %dvbdev = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvbdev, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end16_crit_edge, label %do.body6

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.body6:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4) #10
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp7.not = icmp eq i32 %.pr, 0
  br i1 %cmp7.not, label %do.body6.do.end16_crit_edge, label %do.end11

do.body6.do.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %boardnr, align 4
  %name = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 3
  %pci_bus = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %pci_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pci_bus, align 4
  %pci_slot = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %pci_slot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pci_slot, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %6, ptr noundef %name, i32 noundef %8, i32 noundef %10) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body6.do.end16_crit_edge, %entry.do.end16_crit_edge
  %mpeg = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 23, i32 8
  %11 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mpeg, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end16.cleanup67_crit_edge, label %if.end18

do.end16.cleanup67_crit_edge:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end18:                                         ; preds = %do.end16
  %call19 = tail call i32 @vp3054_i2c_probe(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %do.end25, label %if.end18.cleanup67_crit_edge

if.end18.cleanup67_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

do.end25:                                         ; preds = %if.end18
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  %ts_gen_cntrl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %ts_gen_cntrl to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 12, ptr %ts_gen_cntrl, align 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %frontends.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 14
  %lock.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 14, i32 1
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @cx8802_alloc_frontends.__key) #7
  %16 = ptrtoint ptr %frontends.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %frontends.i, ptr %frontends.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 14, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %frontends.i, ptr %prev.i.i, align 4
  %num_frontends.i = getelementptr inbounds %struct.cx88_core, ptr %15, i32 0, i32 23, i32 10
  %18 = ptrtoint ptr %num_frontends.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_frontends.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.end25.cleanup67_crit_edge, label %do.end5.i

do.end25.cleanup67_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

do.end5.i:                                        ; preds = %do.end25
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %19) #10
  %20 = ptrtoint ptr %num_frontends.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_frontends.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not31.i = icmp slt i32 %21, 1
  br i1 %cmp.not31.i, label %do.end5.i.cx8802_alloc_frontends.exit_crit_edge, label %do.end5.i.for.body.i_crit_edge

do.end5.i.for.body.i_crit_edge:                   ; preds = %do.end5.i
  br label %for.body.i

do.end5.i.cx8802_alloc_frontends.exit_crit_edge:  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx8802_alloc_frontends.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %i.032.i, 1
  %22 = ptrtoint ptr %num_frontends.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_frontends.i, align 4
  %cmp.not.i = icmp sgt i32 %inc.i, %23
  br i1 %cmp.not.i, label %for.cond.i.cx8802_alloc_frontends.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.cx8802_alloc_frontends.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx8802_alloc_frontends.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end5.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 1, %do.end5.i.for.body.i_crit_edge ]
  %call11.i = tail call ptr @vb2_dvb_alloc_frontend(ptr noundef %frontends.i, i32 noundef %i.032.i) #7
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %for.cond.i

do.end16.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #10
  tail call void @vb2_dvb_dealloc_frontends(ptr noundef %frontends.i) #7
  br label %cleanup67

cx8802_alloc_frontends.exit:                      ; preds = %for.cond.i.cx8802_alloc_frontends.exit_crit_edge, %do.end5.i.cx8802_alloc_frontends.exit_crit_edge
  %num_frontends = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 23, i32 10
  %24 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp33.not117 = icmp slt i32 %25, 1
  br i1 %cmp33.not117, label %cx8802_alloc_frontends.exit.for.end_crit_edge, label %for.body.lr.ph

cx8802_alloc_frontends.exit.for.end_crit_edge:    ; preds = %cx8802_alloc_frontends.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %cx8802_alloc_frontends.exit
  %lock = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 43
  %pci = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0118 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dvbdev, align 4
  %frontends = getelementptr inbounds %struct.cx8802_dev, ptr %27, i32 0, i32 14
  %call35 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef %i.0118) #7
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end40, label %if.end43

do.end40:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, i32 noundef %i.0118) #10
  br label %fail_probe

if.end43:                                         ; preds = %for.body
  %dvbq = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %dvbq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %dvbq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 1
  %29 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 23, ptr %io_modes, align 4
  %gfp_flags = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 14
  %30 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %gfp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 15
  %31 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %min_buffers_needed, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 10
  %32 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %3, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 12
  %33 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 768, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 7
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @dvb_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 8
  %35 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 13
  %36 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock44 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 5
  %37 = ptrtoint ptr %lock44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %lock, ptr %lock44, align 4
  %38 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %dev46 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2, i32 2, i32 2
  %40 = ptrtoint ptr %dev46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev45, ptr %dev46, align 4
  %call47 = tail call i32 @vb2_queue_init(ptr noundef %dvbq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end43.fail_probe_crit_edge, label %for.inc

if.end43.fail_probe_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_probe

for.inc:                                          ; preds = %if.end43
  %dvb = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call35, i32 0, i32 2
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 8
  %name52 = getelementptr inbounds %struct.cx88_core, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dvb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %name52, ptr %dvb, align 8
  %inc = add i32 %i.0118, 1
  %44 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_frontends, align 4
  %cmp33.not = icmp sgt i32 %inc, %45
  br i1 %cmp33.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cx8802_alloc_frontends.exit.for.end_crit_edge
  %call56 = tail call fastcc i32 @dvb_register(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.end.cleanup67_crit_edge, label %do.end61

for.end.cleanup67_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

do.end61:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call56) #10
  br label %cleanup67

fail_probe:                                       ; preds = %if.end43.fail_probe_crit_edge, %do.end40
  %err.0.ph = phi i32 [ -19, %do.end40 ], [ %call47, %if.end43.fail_probe_crit_edge ]
  %46 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dvbdev, align 4
  %frontends66 = getelementptr inbounds %struct.cx8802_dev, ptr %47, i32 0, i32 14
  tail call void @vb2_dvb_dealloc_frontends(ptr noundef %frontends66) #7
  br label %cleanup67

cleanup67:                                        ; preds = %fail_probe, %do.end61, %for.end.cleanup67_crit_edge, %do.end16.i, %do.end25.cleanup67_crit_edge, %if.end18.cleanup67_crit_edge, %do.end16.cleanup67_crit_edge
  %retval.0 = phi i32 [ %call56, %do.end61 ], [ 0, %for.end.cleanup67_crit_edge ], [ %call19, %if.end18.cleanup67_crit_edge ], [ %err.0.ph, %fail_probe ], [ -19, %do.end16.cleanup67_crit_edge ], [ -19, %do.end25.cleanup67_crit_edge ], [ -12, %do.end16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8802_dvb_remove(ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %dvbdev = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvbdev, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.304) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %frontends = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 14
  tail call void @vb2_dvb_unregister_bus(ptr noundef %frontends) #7
  tail call void @vp3054_i2c_remove(ptr noundef %3) #7
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %gate_ctrl, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8802_dvb_advise_acquire(ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.305) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %boardnr, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end4.sw.epilog147_crit_edge [
    i32 56, label %do.body5
    i32 53, label %do.end4.do.body56_crit_edge
    i32 68, label %do.end4.do.body56_crit_edge173
    i32 87, label %do.body142
  ]

do.end4.do.body56_crit_edge173:                   ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

do.end4.do.body56_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

do.end4.sw.epilog147_crit_edge:                   ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog147

do.body5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !633
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 868356
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !635
  %9 = or i32 %8, -2147483648
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr12 = getelementptr i32, ptr %11, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #7, !srcloc !636
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !637
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr19 = getelementptr i32, ptr %14, i32 868356
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !638
  %16 = and i32 %15, 2147483647
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %18, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %16) #7, !srcloc !636
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !639
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr33 = getelementptr i32, ptr %21, i32 868356
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !640
  %23 = or i32 %22, -2147483648
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr40 = getelementptr i32, ptr %25, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %23) #7, !srcloc !636
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !641
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  %add.ptr47 = getelementptr i32, ptr %28, i32 868356
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !642
  %30 = and i32 %29, -67108865
  %31 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio, align 4
  %add.ptr54 = getelementptr i32, ptr %32, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %30) #7, !srcloc !636
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  br label %sw.epilog147

do.body56:                                        ; preds = %do.end4.do.body56_crit_edge, %do.end4.do.body56_crit_edge173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !643
  tail call void @arm_heavy_mb() #7
  %lmmio61 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio61, align 4
  %add.ptr62 = getelementptr i32, ptr %35, i32 868356
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !644
  %37 = or i32 %36, -2147483648
  %38 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio61, align 4
  %add.ptr69 = getelementptr i32, ptr %39, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %37) #7, !srcloc !636
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !645
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio61, align 4
  %add.ptr76 = getelementptr i32, ptr %42, i32 868356
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !646
  %44 = and i32 %43, 2147483647
  %45 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio61, align 4
  %add.ptr83 = getelementptr i32, ptr %46, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %44) #7, !srcloc !636
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 10737400) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !647
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lmmio61, align 4
  %add.ptr90 = getelementptr i32, ptr %49, i32 868356
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !648
  %51 = or i32 %50, -2147483648
  %52 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lmmio61, align 4
  %add.ptr97 = getelementptr i32, ptr %53, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %51) #7, !srcloc !636
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #7
  %dvbdev = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 45
  %55 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dvbdev, align 4
  %active_fe_id = getelementptr inbounds %struct.cx8802_dev, ptr %56, i32 0, i32 14, i32 3
  %57 = ptrtoint ptr %active_fe_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %active_fe_id, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.309)
  switch i32 %58, label %do.body56.sw.epilog_crit_edge [
    i32 1, label %do.body99
    i32 2, label %do.body120
  ]

do.body56.sw.epilog_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body99:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !649
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lmmio61, align 4
  %add.ptr105 = getelementptr i32, ptr %61, i32 868356
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !650
  %63 = or i32 %62, 67108864
  %64 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio61, align 4
  %add.ptr112 = getelementptr i32, ptr %65, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %63) #7, !srcloc !636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !651
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lmmio61, align 4
  %add.ptr117 = getelementptr i32, ptr %67, i32 880663
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 16777216) #7, !srcloc !636
  br label %sw.epilog.sink.split

do.body120:                                       ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !652
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lmmio61, align 4
  %add.ptr124 = getelementptr i32, ptr %69, i32 880663
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 0) #7, !srcloc !636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !653
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio61, align 4
  %add.ptr131 = getelementptr i32, ptr %71, i32 868356
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !654
  %73 = and i32 %72, -67108865
  %74 = ptrtoint ptr %lmmio61 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio61, align 4
  %add.ptr138 = getelementptr i32, ptr %75, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %73) #7, !srcloc !636
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.body120, %do.body99
  %.sink = phi i8 [ 12, %do.body120 ], [ 2, %do.body99 ]
  %76 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dvbdev, align 4
  %ts_gen_cntrl140 = getelementptr inbounds %struct.cx8802_dev, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %ts_gen_cntrl140 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.sink, ptr %ts_gen_cntrl140, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body56.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #7
  br label %sw.epilog147

do.body142:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !655
  tail call void @arm_heavy_mb() #7
  %lmmio145 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %80 = ptrtoint ptr %lmmio145 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lmmio145, align 4
  %add.ptr146 = getelementptr i32, ptr %81, i32 868358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 16842752) #7, !srcloc !636
  br label %sw.epilog147

sw.epilog147:                                     ; preds = %do.body142, %sw.epilog, %do.body5, %do.end4.sw.epilog147_crit_edge
  %err.0 = phi i32 [ 0, %do.body142 ], [ 0, %sw.epilog ], [ 0, %do.body5 ], [ -19, %do.end4.sw.epilog147_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8802_dvb_advise_release(ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.306) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %boardnr, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %4, label %sw.default [
    i32 56, label %do.end4.sw.epilog_crit_edge
    i32 53, label %do.end4.sw.epilog_crit_edge5
    i32 68, label %do.end4.sw.epilog_crit_edge6
  ]

do.end4.sw.epilog_crit_edge6:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end4.sw.epilog_crit_edge5:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end4.sw.epilog_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end4.sw.epilog_crit_edge, %do.end4.sw.epilog_crit_edge5, %do.end4.sw.epilog_crit_edge6
  %err.0 = phi i32 [ -19, %sw.default ], [ 0, %do.end4.sw.epilog_crit_edge ], [ 0, %do.end4.sw.epilog_crit_edge5 ], [ 0, %do.end4.sw.epilog_crit_edge6 ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp3054_i2c_probe(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_get_frontend(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_register(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.xc2028_config, align 4
  %cfg1855 = alloca %struct.xc4000_config, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %frontend_detach

if.end:                                           ; preds = %entry
  %frontends = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 14
  %call2 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.frontend_detach_crit_edge, label %if.end4

if.end.frontend_detach_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end4:                                          ; preds = %if.end
  %gate = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 14, i32 4
  %4 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %gate, align 8
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cx88_dvb_gate_ctrl, ptr %gate_ctrl, align 4
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %boardnr, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %7, label %do.end2739 [
    i32 18, label %sw.bb
    i32 30, label %if.end4.sw.bb58_crit_edge
    i32 19, label %if.end4.sw.bb58_crit_edge3727
    i32 43, label %if.end4.sw.bb58_crit_edge3728
    i32 35, label %if.end4.sw.bb58_crit_edge3729
    i32 51, label %if.end4.sw.bb121_crit_edge
    i32 40, label %if.end4.sw.bb121_crit_edge3730
    i32 41, label %if.end4.sw.bb121_crit_edge3731
    i32 56, label %if.end4.sw.bb121_crit_edge3732
    i32 82, label %sw.bb184
    i32 53, label %sw.bb247
    i32 21, label %sw.bb385
    i32 44, label %sw.bb508
    i32 15, label %sw.bb631
    i32 14, label %if.end4.sw.bb693_crit_edge
    i32 23, label %if.end4.sw.bb693_crit_edge3733
    i32 29, label %if.end4.sw.bb693_crit_edge3734
    i32 42, label %sw.bb755
    i32 46, label %sw.bb817
    i32 64, label %sw.bb880
    i32 22, label %sw.bb951
    i32 17, label %sw.bb1014
    i32 28, label %sw.bb1100
    i32 31, label %sw.bb1192
    i32 47, label %sw.bb1314
    i32 34, label %sw.bb1436
    i32 37, label %if.end4.sw.bb1499_crit_edge
    i32 38, label %if.end4.sw.bb1499_crit_edge3735
    i32 39, label %sw.bb1567
    i32 52, label %sw.bb1607
    i32 58, label %sw.bb1649
    i32 59, label %sw.bb1712
    i32 91, label %if.end4.sw.bb1782_crit_edge
    i32 60, label %if.end4.sw.bb1782_crit_edge3736
    i32 81, label %if.end4.sw.bb1782_crit_edge3737
    i32 88, label %if.end4.sw.bb1823_crit_edge
    i32 87, label %if.end4.sw.bb1823_crit_edge3738
    i32 63, label %sw.bb1868
    i32 67, label %sw.bb1901
    i32 65, label %sw.bb1933
    i32 68, label %sw.bb1996
    i32 69, label %sw.bb2135
    i32 78, label %if.end4.sw.bb2200_crit_edge
    i32 77, label %if.end4.sw.bb2200_crit_edge3739
    i32 73, label %if.end4.sw.bb2200_crit_edge3740
    i32 70, label %sw.bb2344
    i32 86, label %sw.bb2381
    i32 71, label %if.end4.sw.bb2445_crit_edge
    i32 72, label %if.end4.sw.bb2445_crit_edge3741
    i32 75, label %if.end4.sw.bb2445_crit_edge3742
    i32 76, label %if.end4.sw.bb2445_crit_edge3743
    i32 79, label %sw.bb2482
    i32 83, label %sw.bb2523
    i32 84, label %sw.bb2602
    i32 85, label %sw.bb2694
  ]

if.end4.sw.bb2445_crit_edge3743:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2445

if.end4.sw.bb2445_crit_edge3742:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2445

if.end4.sw.bb2445_crit_edge3741:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2445

if.end4.sw.bb2445_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2445

if.end4.sw.bb2200_crit_edge3740:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2200

if.end4.sw.bb2200_crit_edge3739:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2200

if.end4.sw.bb2200_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2200

if.end4.sw.bb1823_crit_edge3738:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1823

if.end4.sw.bb1823_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1823

if.end4.sw.bb1782_crit_edge3737:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1782

if.end4.sw.bb1782_crit_edge3736:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1782

if.end4.sw.bb1782_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1782

if.end4.sw.bb1499_crit_edge3735:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1499

if.end4.sw.bb1499_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1499

if.end4.sw.bb693_crit_edge3734:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb693

if.end4.sw.bb693_crit_edge3733:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb693

if.end4.sw.bb693_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb693

if.end4.sw.bb121_crit_edge3732:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb121

if.end4.sw.bb121_crit_edge3731:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb121

if.end4.sw.bb121_crit_edge3730:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb121

if.end4.sw.bb121_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb121

if.end4.sw.bb58_crit_edge3729:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end4.sw.bb58_crit_edge3728:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end4.sw.bb58_crit_edge3727:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end4.sw.bb58_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

sw.bb:                                            ; preds = %if.end4
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cond.end, label %sw.bb.if.then11_crit_edge

sw.bb.if.then11_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

cond.end:                                         ; preds = %sw.bb
  %call8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #7
  %call9 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end18, label %cond.end.if.then11_crit_edge

cond.end.if.then11_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %cond.end.if.then11_crit_edge, %sw.bb.if.then11_crit_edge
  %cond3296 = phi ptr [ %call9, %cond.end.if.then11_crit_edge ], [ %call6, %sw.bb.if.then11_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call12 = tail call ptr %cond3296(ptr noundef nonnull @connexant_refboard_config, ptr noundef %i2c_adap) #7
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then14, label %if.then26

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #7
  br label %if.end21.thread

do.end18:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %do.end18, %if.then14
  %frontend3298 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %frontend3298 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %frontend3298, align 4
  br label %sw.epilog

if.then26:                                        ; preds = %if.then11
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %frontend, align 4
  %call29 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %cond.end35, label %if.then26.if.then38_crit_edge

if.then26.if.then38_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

cond.end35:                                       ; preds = %if.then26
  %call33 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call34 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool37.not = icmp eq ptr %call34, null
  br i1 %tobool37.not, label %do.end49, label %cond.end35.if.then38_crit_edge

cond.end35.if.then38_crit_edge:                   ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then38:                                        ; preds = %cond.end35.if.then38_crit_edge, %if.then26.if.then38_crit_edge
  %cond363302 = phi ptr [ %call34, %cond.end35.if.then38_crit_edge ], [ %call29, %if.then26.if.then38_crit_edge ]
  %11 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %frontend, align 4
  %call42 = tail call ptr %cond363302(ptr noundef %12, i32 noundef 97, ptr noundef %i2c_adap, i32 noundef 2) #7
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %if.then44, label %if.then38.sw.epilog_crit_edge

if.then38.sw.epilog_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end49:                                         ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

sw.bb58:                                          ; preds = %if.end4.sw.bb58_crit_edge, %if.end4.sw.bb58_crit_edge3727, %if.end4.sw.bb58_crit_edge3728, %if.end4.sw.bb58_crit_edge3729
  %call61 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %cond.end67, label %sw.bb58.if.then70_crit_edge

sw.bb58.if.then70_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70

cond.end67:                                       ; preds = %sw.bb58
  %call65 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #7
  %call66 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool69.not = icmp eq ptr %call66, null
  br i1 %tobool69.not, label %do.end79, label %cond.end67.if.then70_crit_edge

cond.end67.if.then70_crit_edge:                   ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70

if.then70:                                        ; preds = %cond.end67.if.then70_crit_edge, %sw.bb58.if.then70_crit_edge
  %cond683307 = phi ptr [ %call66, %cond.end67.if.then70_crit_edge ], [ %call61, %sw.bb58.if.then70_crit_edge ]
  %i2c_adap71 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call72 = tail call ptr %cond683307(ptr noundef nonnull @connexant_refboard_config, ptr noundef %i2c_adap71) #7
  %cmp73 = icmp eq ptr %call72, null
  br i1 %cmp73, label %if.then74, label %if.then89

if.then74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #7
  br label %if.end82.thread

do.end79:                                         ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end82.thread

if.end82.thread:                                  ; preds = %do.end79, %if.then74
  %frontend853309 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %frontend853309 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %frontend853309, align 4
  br label %sw.epilog

if.then89:                                        ; preds = %if.then70
  %frontend85 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %frontend85 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call72, ptr %frontend85, align 4
  %call92 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %cond.end98, label %if.then89.if.then101_crit_edge

if.then89.if.then101_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

cond.end98:                                       ; preds = %if.then89
  %call96 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call97 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool100.not = icmp eq ptr %call97, null
  br i1 %tobool100.not, label %do.end112, label %cond.end98.if.then101_crit_edge

cond.end98.if.then101_crit_edge:                  ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

if.then101:                                       ; preds = %cond.end98.if.then101_crit_edge, %if.then89.if.then101_crit_edge
  %cond993313 = phi ptr [ %call97, %cond.end98.if.then101_crit_edge ], [ %call92, %if.then89.if.then101_crit_edge ]
  %15 = ptrtoint ptr %frontend85 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %frontend85, align 4
  %call105 = tail call ptr %cond993313(ptr noundef %16, i32 noundef 96, ptr noundef %i2c_adap71, i32 noundef 1) #7
  %cmp106 = icmp eq ptr %call105, null
  br i1 %cmp106, label %if.then107, label %if.then101.sw.epilog_crit_edge

if.then101.sw.epilog_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then107:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end112:                                        ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #9
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

sw.bb121:                                         ; preds = %if.end4.sw.bb121_crit_edge, %if.end4.sw.bb121_crit_edge3730, %if.end4.sw.bb121_crit_edge3731, %if.end4.sw.bb121_crit_edge3732
  %call124 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %cond.end130, label %sw.bb121.if.then133_crit_edge

sw.bb121.if.then133_crit_edge:                    ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then133

cond.end130:                                      ; preds = %sw.bb121
  %call128 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #7
  %call129 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool132.not = icmp eq ptr %call129, null
  br i1 %tobool132.not, label %do.end142, label %cond.end130.if.then133_crit_edge

cond.end130.if.then133_crit_edge:                 ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then133

if.then133:                                       ; preds = %cond.end130.if.then133_crit_edge, %sw.bb121.if.then133_crit_edge
  %cond1313318 = phi ptr [ %call129, %cond.end130.if.then133_crit_edge ], [ %call124, %sw.bb121.if.then133_crit_edge ]
  %i2c_adap134 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call135 = tail call ptr %cond1313318(ptr noundef nonnull @hauppauge_hvr_config, ptr noundef %i2c_adap134) #7
  %cmp136 = icmp eq ptr %call135, null
  br i1 %cmp136, label %if.then137, label %if.then152

if.then137:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #7
  br label %if.end145.thread

do.end142:                                        ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #9
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end145.thread

if.end145.thread:                                 ; preds = %do.end142, %if.then137
  %frontend1483320 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %frontend1483320 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %frontend1483320, align 4
  br label %sw.epilog

if.then152:                                       ; preds = %if.then133
  %frontend148 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %frontend148 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call135, ptr %frontend148, align 4
  %call155 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool156.not = icmp eq ptr %call155, null
  br i1 %tobool156.not, label %cond.end161, label %if.then152.if.then164_crit_edge

if.then152.if.then164_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then164

cond.end161:                                      ; preds = %if.then152
  %call159 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call160 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool163.not = icmp eq ptr %call160, null
  br i1 %tobool163.not, label %do.end175, label %cond.end161.if.then164_crit_edge

cond.end161.if.then164_crit_edge:                 ; preds = %cond.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then164

if.then164:                                       ; preds = %cond.end161.if.then164_crit_edge, %if.then152.if.then164_crit_edge
  %cond1623324 = phi ptr [ %call160, %cond.end161.if.then164_crit_edge ], [ %call155, %if.then152.if.then164_crit_edge ]
  %19 = ptrtoint ptr %frontend148 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %frontend148, align 4
  %call168 = tail call ptr %cond1623324(ptr noundef %20, ptr noundef %i2c_adap134, i8 noundef zeroext 97, i32 noundef 63) #7
  %cmp169 = icmp eq ptr %call168, null
  br i1 %cmp169, label %if.then170, label %if.then164.sw.epilog_crit_edge

if.then164.sw.epilog_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then170:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end175:                                        ; preds = %cond.end161
  call void @__sanitizer_cov_trace_pc() #9
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb184:                                         ; preds = %if.end4
  %call187 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool188.not = icmp eq ptr %call187, null
  br i1 %tobool188.not, label %cond.end193, label %sw.bb184.if.then196_crit_edge

sw.bb184.if.then196_crit_edge:                    ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then196

cond.end193:                                      ; preds = %sw.bb184
  %call191 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #7
  %call192 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool195.not = icmp eq ptr %call192, null
  br i1 %tobool195.not, label %do.end205, label %cond.end193.if.then196_crit_edge

cond.end193.if.then196_crit_edge:                 ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then196

if.then196:                                       ; preds = %cond.end193.if.then196_crit_edge, %sw.bb184.if.then196_crit_edge
  %cond1943329 = phi ptr [ %call192, %cond.end193.if.then196_crit_edge ], [ %call187, %sw.bb184.if.then196_crit_edge ]
  %i2c_adap197 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call198 = tail call ptr %cond1943329(ptr noundef nonnull @hauppauge_hvr_config, ptr noundef %i2c_adap197) #7
  %cmp199 = icmp eq ptr %call198, null
  br i1 %cmp199, label %if.then200, label %if.then215

if.then200:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #7
  br label %if.end208.thread

do.end205:                                        ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #9
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end208.thread

if.end208.thread:                                 ; preds = %do.end205, %if.then200
  %frontend2113331 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %frontend2113331 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %frontend2113331, align 4
  br label %sw.epilog

if.then215:                                       ; preds = %if.then196
  %frontend211 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %frontend211 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call198, ptr %frontend211, align 4
  %call218 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool219.not = icmp eq ptr %call218, null
  br i1 %tobool219.not, label %cond.end224, label %if.then215.if.then227_crit_edge

if.then215.if.then227_crit_edge:                  ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then227

cond.end224:                                      ; preds = %if.then215
  %call222 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call223 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool226.not = icmp eq ptr %call223, null
  br i1 %tobool226.not, label %do.end238, label %cond.end224.if.then227_crit_edge

cond.end224.if.then227_crit_edge:                 ; preds = %cond.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then227

if.then227:                                       ; preds = %cond.end224.if.then227_crit_edge, %if.then215.if.then227_crit_edge
  %cond2253335 = phi ptr [ %call223, %cond.end224.if.then227_crit_edge ], [ %call218, %if.then215.if.then227_crit_edge ]
  %23 = ptrtoint ptr %frontend211 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frontend211, align 4
  %call231 = tail call ptr %cond2253335(ptr noundef %24, ptr noundef %i2c_adap197, i8 noundef zeroext 97, i32 noundef 78) #7
  %cmp232 = icmp eq ptr %call231, null
  br i1 %cmp232, label %if.then233, label %if.then227.sw.epilog_crit_edge

if.then227.sw.epilog_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then233:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end238:                                        ; preds = %cond.end224
  call void @__sanitizer_cov_trace_pc() #9
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb247:                                         ; preds = %if.end4
  %25 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %gate, align 8
  %call252 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool253.not = icmp eq ptr %call252, null
  br i1 %tobool253.not, label %cond.end258, label %sw.bb247.if.then261_crit_edge

sw.bb247.if.then261_crit_edge:                    ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then261

cond.end258:                                      ; preds = %sw.bb247
  %call256 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #7
  %call257 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool260.not = icmp eq ptr %call257, null
  br i1 %tobool260.not, label %do.end271, label %cond.end258.if.then261_crit_edge

cond.end258.if.then261_crit_edge:                 ; preds = %cond.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then261

if.then261:                                       ; preds = %cond.end258.if.then261_crit_edge, %sw.bb247.if.then261_crit_edge
  %cond2593340 = phi ptr [ %call257, %cond.end258.if.then261_crit_edge ], [ %call252, %sw.bb247.if.then261_crit_edge ]
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %i2c_adap263 = getelementptr inbounds %struct.cx88_core, ptr %27, i32 0, i32 11
  %call264 = tail call ptr %cond2593340(ptr noundef nonnull @hauppauge_novas_config, ptr noundef %i2c_adap263) #7
  %cmp265 = icmp eq ptr %call264, null
  br i1 %cmp265, label %if.then266, label %if.then281

if.then266:                                       ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #7
  br label %if.end274.thread

do.end271:                                        ; preds = %cond.end258
  call void @__sanitizer_cov_trace_pc() #9
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #10
  br label %if.end274.thread

if.end274.thread:                                 ; preds = %do.end271, %if.then266
  %frontend2773342 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %frontend2773342 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %frontend2773342, align 4
  br label %if.end313

if.then281:                                       ; preds = %if.then261
  %frontend277 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %frontend277 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call264, ptr %frontend277, align 4
  %call284 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool285.not = icmp eq ptr %call284, null
  br i1 %tobool285.not, label %cond.end290, label %if.then281.if.then293_crit_edge

if.then281.if.then293_crit_edge:                  ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then293

cond.end290:                                      ; preds = %if.then281
  %call288 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #7
  %call289 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool292.not = icmp eq ptr %call289, null
  br i1 %tobool292.not, label %do.end305, label %cond.end290.if.then293_crit_edge

cond.end290.if.then293_crit_edge:                 ; preds = %cond.end290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then293

if.then293:                                       ; preds = %cond.end290.if.then293_crit_edge, %if.then281.if.then293_crit_edge
  %cond2913346 = phi ptr [ %call289, %cond.end290.if.then293_crit_edge ], [ %call284, %if.then281.if.then293_crit_edge ]
  %30 = ptrtoint ptr %frontend277 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %frontend277, align 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %i2c_adap297 = getelementptr inbounds %struct.cx88_core, ptr %33, i32 0, i32 11
  %call298 = tail call ptr %cond2913346(ptr noundef %31, ptr noundef %i2c_adap297, i8 noundef zeroext 8, i8 noundef zeroext 64, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  %cmp299 = icmp eq ptr %call298, null
  br i1 %cmp299, label %if.then300, label %if.then293.if.end313_crit_edge

if.then293.if.end313_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end313

if.then300:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #7
  br label %frontend_detach

do.end305:                                        ; preds = %cond.end290
  call void @__sanitizer_cov_trace_pc() #9
  %call307 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #10
  br label %frontend_detach

if.end313:                                        ; preds = %if.then293.if.end313_crit_edge, %if.end274.thread
  %call315 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 2) #7
  %tobool316.not = icmp eq ptr %call315, null
  br i1 %tobool316.not, label %if.end313.frontend_detach_crit_edge, label %if.end318

if.end313.frontend_detach_crit_edge:              ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end318:                                        ; preds = %if.end313
  %call321 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool322.not = icmp eq ptr %call321, null
  br i1 %tobool322.not, label %cond.end327, label %if.end318.if.then330_crit_edge

if.end318.if.then330_crit_edge:                   ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then330

cond.end327:                                      ; preds = %if.end318
  %call325 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #7
  %call326 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool329.not = icmp eq ptr %call326, null
  br i1 %tobool329.not, label %do.end340, label %cond.end327.if.then330_crit_edge

cond.end327.if.then330_crit_edge:                 ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then330

if.then330:                                       ; preds = %cond.end327.if.then330_crit_edge, %if.end318.if.then330_crit_edge
  %cond3283351 = phi ptr [ %call326, %cond.end327.if.then330_crit_edge ], [ %call321, %if.end318.if.then330_crit_edge ]
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %i2c_adap332 = getelementptr inbounds %struct.cx88_core, ptr %35, i32 0, i32 11
  %call333 = tail call ptr %cond3283351(ptr noundef nonnull @hauppauge_hvr_config, ptr noundef %i2c_adap332) #7
  %cmp334 = icmp eq ptr %call333, null
  br i1 %cmp334, label %if.then335, label %if.then350

if.then335:                                       ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #7
  br label %if.end343.thread

do.end340:                                        ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #9
  %call342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end343.thread

if.end343.thread:                                 ; preds = %do.end340, %if.then335
  %frontend3463353 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call315, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %frontend3463353 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %frontend3463353, align 4
  br label %sw.epilog

if.then350:                                       ; preds = %if.then330
  %frontend346 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call315, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %frontend346 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call333, ptr %frontend346, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %call333, i32 0, i32 10
  %38 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %id, align 4
  %call355 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool356.not = icmp eq ptr %call355, null
  br i1 %tobool356.not, label %cond.end361, label %if.then350.if.then364_crit_edge

if.then350.if.then364_crit_edge:                  ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then364

cond.end361:                                      ; preds = %if.then350
  %call359 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call360 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool363.not = icmp eq ptr %call360, null
  br i1 %tobool363.not, label %do.end376, label %cond.end361.if.then364_crit_edge

cond.end361.if.then364_crit_edge:                 ; preds = %cond.end361
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then364

if.then364:                                       ; preds = %cond.end361.if.then364_crit_edge, %if.then350.if.then364_crit_edge
  %cond3623357 = phi ptr [ %call360, %cond.end361.if.then364_crit_edge ], [ %call355, %if.then350.if.then364_crit_edge ]
  %39 = ptrtoint ptr %frontend346 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %frontend346, align 4
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %i2c_adap368 = getelementptr inbounds %struct.cx88_core, ptr %42, i32 0, i32 11
  %call369 = tail call ptr %cond3623357(ptr noundef %40, ptr noundef %i2c_adap368, i8 noundef zeroext 97, i32 noundef 63) #7
  %cmp370 = icmp eq ptr %call369, null
  br i1 %cmp370, label %if.then371, label %if.then364.sw.epilog_crit_edge

if.then364.sw.epilog_crit_edge:                   ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then371:                                       ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end376:                                        ; preds = %cond.end361
  call void @__sanitizer_cov_trace_pc() #9
  %call378 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb385:                                         ; preds = %if.end4
  %call388 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool389.not = icmp eq ptr %call388, null
  br i1 %tobool389.not, label %cond.end394, label %sw.bb385.if.then397_crit_edge

sw.bb385.if.then397_crit_edge:                    ; preds = %sw.bb385
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then397

cond.end394:                                      ; preds = %sw.bb385
  %call392 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.66) #7
  %call393 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool396.not = icmp eq ptr %call393, null
  br i1 %tobool396.not, label %do.end406, label %cond.end394.if.then397_crit_edge

cond.end394.if.then397_crit_edge:                 ; preds = %cond.end394
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then397

if.then397:                                       ; preds = %cond.end394.if.then397_crit_edge, %sw.bb385.if.then397_crit_edge
  %cond3953362 = phi ptr [ %call393, %cond.end394.if.then397_crit_edge ], [ %call388, %sw.bb385.if.then397_crit_edge ]
  %i2c_adap398 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call399 = tail call ptr %cond3953362(ptr noundef nonnull @dvico_fusionhdtv, ptr noundef %i2c_adap398) #7
  %cmp400 = icmp eq ptr %call399, null
  br i1 %cmp400, label %if.then401, label %if.then416

if.then401:                                       ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.65) #7
  br label %if.end446

do.end406:                                        ; preds = %cond.end394
  call void @__sanitizer_cov_trace_pc() #9
  %call408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #10
  br label %if.end446

if.then416:                                       ; preds = %if.then397
  %frontend412 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %frontend412 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call399, ptr %frontend412, align 4
  %call419 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool420.not = icmp eq ptr %call419, null
  br i1 %tobool420.not, label %cond.end425, label %if.then416.if.then428_crit_edge

if.then416.if.then428_crit_edge:                  ; preds = %if.then416
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then428

cond.end425:                                      ; preds = %if.then416
  %call423 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call424 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool427.not = icmp eq ptr %call424, null
  br i1 %tobool427.not, label %do.end438, label %cond.end425.if.then428_crit_edge

cond.end425.if.then428_crit_edge:                 ; preds = %cond.end425
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then428

if.then428:                                       ; preds = %cond.end425.if.then428_crit_edge, %if.then416.if.then428_crit_edge
  %cond4263369 = phi ptr [ %call424, %cond.end425.if.then428_crit_edge ], [ %call419, %if.then416.if.then428_crit_edge ]
  %44 = ptrtoint ptr %frontend412 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %frontend412, align 4
  %call431 = tail call ptr %cond4263369(ptr noundef %45, i32 noundef 96, ptr noundef null, i32 noundef 1) #7
  %cmp432 = icmp eq ptr %call431, null
  br i1 %cmp432, label %if.then433, label %if.then428.sw.epilog_crit_edge

if.then428.sw.epilog_crit_edge:                   ; preds = %if.then428
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then433:                                       ; preds = %if.then428
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end438:                                        ; preds = %cond.end425
  call void @__sanitizer_cov_trace_pc() #9
  %call440 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

if.end446:                                        ; preds = %do.end406, %if.then401
  %frontend4123364 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %frontend4123364 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %frontend4123364, align 4
  %call449 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool450.not = icmp eq ptr %call449, null
  br i1 %tobool450.not, label %cond.end455, label %if.end446.if.then458_crit_edge

if.end446.if.then458_crit_edge:                   ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then458

cond.end455:                                      ; preds = %if.end446
  %call453 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #7
  %call454 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool457.not = icmp eq ptr %call454, null
  br i1 %tobool457.not, label %do.end467, label %cond.end455.if.then458_crit_edge

cond.end455.if.then458_crit_edge:                 ; preds = %cond.end455
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then458

if.then458:                                       ; preds = %cond.end455.if.then458_crit_edge, %if.end446.if.then458_crit_edge
  %cond4563374 = phi ptr [ %call454, %cond.end455.if.then458_crit_edge ], [ %call449, %if.end446.if.then458_crit_edge ]
  %i2c_adap459 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call460 = tail call ptr %cond4563374(ptr noundef nonnull @dvico_fusionhdtv_plus_v1_1, ptr noundef %i2c_adap459) #7
  %cmp461 = icmp eq ptr %call460, null
  br i1 %cmp461, label %if.then462, label %if.then477

if.then462:                                       ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #7
  br label %if.end470.thread

do.end467:                                        ; preds = %cond.end455
  call void @__sanitizer_cov_trace_pc() #9
  %call469 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %if.end470.thread

if.end470.thread:                                 ; preds = %do.end467, %if.then462
  %47 = ptrtoint ptr %frontend4123364 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %frontend4123364, align 4
  br label %sw.epilog

if.then477:                                       ; preds = %if.then458
  %48 = ptrtoint ptr %frontend4123364 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call460, ptr %frontend4123364, align 4
  %call480 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool481.not = icmp eq ptr %call480, null
  br i1 %tobool481.not, label %cond.end486, label %if.then477.if.then489_crit_edge

if.then477.if.then489_crit_edge:                  ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then489

cond.end486:                                      ; preds = %if.then477
  %call484 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call485 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool488.not = icmp eq ptr %call485, null
  br i1 %tobool488.not, label %do.end499, label %cond.end486.if.then489_crit_edge

cond.end486.if.then489_crit_edge:                 ; preds = %cond.end486
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then489

if.then489:                                       ; preds = %cond.end486.if.then489_crit_edge, %if.then477.if.then489_crit_edge
  %cond4873379 = phi ptr [ %call485, %cond.end486.if.then489_crit_edge ], [ %call480, %if.then477.if.then489_crit_edge ]
  %49 = ptrtoint ptr %frontend4123364 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %frontend4123364, align 4
  %call492 = tail call ptr %cond4873379(ptr noundef %50, i32 noundef 96, ptr noundef null, i32 noundef 1) #7
  %cmp493 = icmp eq ptr %call492, null
  br i1 %cmp493, label %if.then494, label %if.then489.sw.epilog_crit_edge

if.then489.sw.epilog_crit_edge:                   ; preds = %if.then489
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then494:                                       ; preds = %if.then489
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end499:                                        ; preds = %cond.end486
  call void @__sanitizer_cov_trace_pc() #9
  %call501 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

sw.bb508:                                         ; preds = %if.end4
  %call511 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool512.not = icmp eq ptr %call511, null
  br i1 %tobool512.not, label %cond.end517, label %sw.bb508.if.then520_crit_edge

sw.bb508.if.then520_crit_edge:                    ; preds = %sw.bb508
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then520

cond.end517:                                      ; preds = %sw.bb508
  %call515 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.66) #7
  %call516 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool519.not = icmp eq ptr %call516, null
  br i1 %tobool519.not, label %do.end529, label %cond.end517.if.then520_crit_edge

cond.end517.if.then520_crit_edge:                 ; preds = %cond.end517
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then520

if.then520:                                       ; preds = %cond.end517.if.then520_crit_edge, %sw.bb508.if.then520_crit_edge
  %cond5183384 = phi ptr [ %call516, %cond.end517.if.then520_crit_edge ], [ %call511, %sw.bb508.if.then520_crit_edge ]
  %i2c_adap521 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call522 = tail call ptr %cond5183384(ptr noundef nonnull @dvico_fusionhdtv_dual, ptr noundef %i2c_adap521) #7
  %cmp523 = icmp eq ptr %call522, null
  br i1 %cmp523, label %if.then524, label %if.then539

if.then524:                                       ; preds = %if.then520
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.65) #7
  br label %if.end569

do.end529:                                        ; preds = %cond.end517
  call void @__sanitizer_cov_trace_pc() #9
  %call531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #10
  br label %if.end569

if.then539:                                       ; preds = %if.then520
  %frontend535 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %frontend535 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call522, ptr %frontend535, align 4
  %call542 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool543.not = icmp eq ptr %call542, null
  br i1 %tobool543.not, label %cond.end548, label %if.then539.if.then551_crit_edge

if.then539.if.then551_crit_edge:                  ; preds = %if.then539
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then551

cond.end548:                                      ; preds = %if.then539
  %call546 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call547 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool550.not = icmp eq ptr %call547, null
  br i1 %tobool550.not, label %do.end561, label %cond.end548.if.then551_crit_edge

cond.end548.if.then551_crit_edge:                 ; preds = %cond.end548
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then551

if.then551:                                       ; preds = %cond.end548.if.then551_crit_edge, %if.then539.if.then551_crit_edge
  %cond5493391 = phi ptr [ %call547, %cond.end548.if.then551_crit_edge ], [ %call542, %if.then539.if.then551_crit_edge ]
  %52 = ptrtoint ptr %frontend535 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %frontend535, align 4
  %call554 = tail call ptr %cond5493391(ptr noundef %53, i32 noundef 97, ptr noundef null, i32 noundef 1) #7
  %cmp555 = icmp eq ptr %call554, null
  br i1 %cmp555, label %if.then556, label %if.then551.sw.epilog_crit_edge

if.then551.sw.epilog_crit_edge:                   ; preds = %if.then551
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then556:                                       ; preds = %if.then551
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end561:                                        ; preds = %cond.end548
  call void @__sanitizer_cov_trace_pc() #9
  %call563 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

if.end569:                                        ; preds = %do.end529, %if.then524
  %frontend5353386 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %frontend5353386 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %frontend5353386, align 4
  %call572 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool573.not = icmp eq ptr %call572, null
  br i1 %tobool573.not, label %cond.end578, label %if.end569.if.then581_crit_edge

if.end569.if.then581_crit_edge:                   ; preds = %if.end569
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then581

cond.end578:                                      ; preds = %if.end569
  %call576 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #7
  %call577 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool580.not = icmp eq ptr %call577, null
  br i1 %tobool580.not, label %do.end590, label %cond.end578.if.then581_crit_edge

cond.end578.if.then581_crit_edge:                 ; preds = %cond.end578
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then581

if.then581:                                       ; preds = %cond.end578.if.then581_crit_edge, %if.end569.if.then581_crit_edge
  %cond5793396 = phi ptr [ %call577, %cond.end578.if.then581_crit_edge ], [ %call572, %if.end569.if.then581_crit_edge ]
  %i2c_adap582 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call583 = tail call ptr %cond5793396(ptr noundef nonnull @dvico_fusionhdtv_plus_v1_1, ptr noundef %i2c_adap582) #7
  %cmp584 = icmp eq ptr %call583, null
  br i1 %cmp584, label %if.then585, label %if.then600

if.then585:                                       ; preds = %if.then581
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #7
  br label %if.end593.thread

do.end590:                                        ; preds = %cond.end578
  call void @__sanitizer_cov_trace_pc() #9
  %call592 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %if.end593.thread

if.end593.thread:                                 ; preds = %do.end590, %if.then585
  %55 = ptrtoint ptr %frontend5353386 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %frontend5353386, align 4
  br label %sw.epilog

if.then600:                                       ; preds = %if.then581
  %56 = ptrtoint ptr %frontend5353386 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call583, ptr %frontend5353386, align 4
  %call603 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool604.not = icmp eq ptr %call603, null
  br i1 %tobool604.not, label %cond.end609, label %if.then600.if.then612_crit_edge

if.then600.if.then612_crit_edge:                  ; preds = %if.then600
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then612

cond.end609:                                      ; preds = %if.then600
  %call607 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call608 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool611.not = icmp eq ptr %call608, null
  br i1 %tobool611.not, label %do.end622, label %cond.end609.if.then612_crit_edge

cond.end609.if.then612_crit_edge:                 ; preds = %cond.end609
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then612

if.then612:                                       ; preds = %cond.end609.if.then612_crit_edge, %if.then600.if.then612_crit_edge
  %cond6103401 = phi ptr [ %call608, %cond.end609.if.then612_crit_edge ], [ %call603, %if.then600.if.then612_crit_edge ]
  %57 = ptrtoint ptr %frontend5353386 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %frontend5353386, align 4
  %call615 = tail call ptr %cond6103401(ptr noundef %58, i32 noundef 97, ptr noundef null, i32 noundef 1) #7
  %cmp616 = icmp eq ptr %call615, null
  br i1 %cmp616, label %if.then617, label %if.then612.sw.epilog_crit_edge

if.then612.sw.epilog_crit_edge:                   ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then617:                                       ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end622:                                        ; preds = %cond.end609
  call void @__sanitizer_cov_trace_pc() #9
  %call624 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

sw.bb631:                                         ; preds = %if.end4
  %call634 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool635.not = icmp eq ptr %call634, null
  br i1 %tobool635.not, label %cond.end640, label %sw.bb631.if.then643_crit_edge

sw.bb631.if.then643_crit_edge:                    ; preds = %sw.bb631
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then643

cond.end640:                                      ; preds = %sw.bb631
  %call638 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.66) #7
  %call639 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool642.not = icmp eq ptr %call639, null
  br i1 %tobool642.not, label %do.end652, label %cond.end640.if.then643_crit_edge

cond.end640.if.then643_crit_edge:                 ; preds = %cond.end640
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then643

if.then643:                                       ; preds = %cond.end640.if.then643_crit_edge, %sw.bb631.if.then643_crit_edge
  %cond6413406 = phi ptr [ %call639, %cond.end640.if.then643_crit_edge ], [ %call634, %sw.bb631.if.then643_crit_edge ]
  %i2c_adap644 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call645 = tail call ptr %cond6413406(ptr noundef nonnull @dvico_fusionhdtv, ptr noundef %i2c_adap644) #7
  %cmp646 = icmp eq ptr %call645, null
  br i1 %cmp646, label %if.then647, label %if.then662

if.then647:                                       ; preds = %if.then643
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.65) #7
  br label %if.end655.thread

do.end652:                                        ; preds = %cond.end640
  call void @__sanitizer_cov_trace_pc() #9
  %call654 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #10
  br label %if.end655.thread

if.end655.thread:                                 ; preds = %do.end652, %if.then647
  %frontend6583408 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %frontend6583408 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %frontend6583408, align 4
  br label %sw.epilog

if.then662:                                       ; preds = %if.then643
  %frontend658 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %frontend658 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call645, ptr %frontend658, align 4
  %call665 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool666.not = icmp eq ptr %call665, null
  br i1 %tobool666.not, label %cond.end671, label %if.then662.if.then674_crit_edge

if.then662.if.then674_crit_edge:                  ; preds = %if.then662
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then674

cond.end671:                                      ; preds = %if.then662
  %call669 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call670 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool673.not = icmp eq ptr %call670, null
  br i1 %tobool673.not, label %do.end684, label %cond.end671.if.then674_crit_edge

cond.end671.if.then674_crit_edge:                 ; preds = %cond.end671
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then674

if.then674:                                       ; preds = %cond.end671.if.then674_crit_edge, %if.then662.if.then674_crit_edge
  %cond6723412 = phi ptr [ %call670, %cond.end671.if.then674_crit_edge ], [ %call665, %if.then662.if.then674_crit_edge ]
  %61 = ptrtoint ptr %frontend658 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %frontend658, align 4
  %call677 = tail call ptr %cond6723412(ptr noundef %62, i32 noundef 97, ptr noundef null, i32 noundef 3) #7
  %cmp678 = icmp eq ptr %call677, null
  br i1 %cmp678, label %if.then679, label %if.then674.sw.epilog_crit_edge

if.then674.sw.epilog_crit_edge:                   ; preds = %if.then674
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then679:                                       ; preds = %if.then674
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end684:                                        ; preds = %cond.end671
  call void @__sanitizer_cov_trace_pc() #9
  %call686 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

sw.bb693:                                         ; preds = %if.end4.sw.bb693_crit_edge, %if.end4.sw.bb693_crit_edge3733, %if.end4.sw.bb693_crit_edge3734
  %call696 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool697.not = icmp eq ptr %call696, null
  br i1 %tobool697.not, label %cond.end702, label %sw.bb693.if.then705_crit_edge

sw.bb693.if.then705_crit_edge:                    ; preds = %sw.bb693
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then705

cond.end702:                                      ; preds = %sw.bb693
  %call700 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.66) #7
  %call701 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool704.not = icmp eq ptr %call701, null
  br i1 %tobool704.not, label %do.end714, label %cond.end702.if.then705_crit_edge

cond.end702.if.then705_crit_edge:                 ; preds = %cond.end702
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then705

if.then705:                                       ; preds = %cond.end702.if.then705_crit_edge, %sw.bb693.if.then705_crit_edge
  %cond7033417 = phi ptr [ %call701, %cond.end702.if.then705_crit_edge ], [ %call696, %sw.bb693.if.then705_crit_edge ]
  %i2c_adap706 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call707 = tail call ptr %cond7033417(ptr noundef nonnull @dntv_live_dvbt_config, ptr noundef %i2c_adap706) #7
  %cmp708 = icmp eq ptr %call707, null
  br i1 %cmp708, label %if.then709, label %if.then724

if.then709:                                       ; preds = %if.then705
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.65) #7
  br label %if.end717.thread

do.end714:                                        ; preds = %cond.end702
  call void @__sanitizer_cov_trace_pc() #9
  %call716 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #10
  br label %if.end717.thread

if.end717.thread:                                 ; preds = %do.end714, %if.then709
  %frontend7203419 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %frontend7203419 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %frontend7203419, align 4
  br label %sw.epilog

if.then724:                                       ; preds = %if.then705
  %frontend720 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %frontend720 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call707, ptr %frontend720, align 4
  %call727 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool728.not = icmp eq ptr %call727, null
  br i1 %tobool728.not, label %cond.end733, label %if.then724.if.then736_crit_edge

if.then724.if.then736_crit_edge:                  ; preds = %if.then724
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then736

cond.end733:                                      ; preds = %if.then724
  %call731 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call732 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool735.not = icmp eq ptr %call732, null
  br i1 %tobool735.not, label %do.end746, label %cond.end733.if.then736_crit_edge

cond.end733.if.then736_crit_edge:                 ; preds = %cond.end733
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then736

if.then736:                                       ; preds = %cond.end733.if.then736_crit_edge, %if.then724.if.then736_crit_edge
  %cond7343423 = phi ptr [ %call732, %cond.end733.if.then736_crit_edge ], [ %call727, %if.then724.if.then736_crit_edge ]
  %65 = ptrtoint ptr %frontend720 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %frontend720, align 4
  %call739 = tail call ptr %cond7343423(ptr noundef %66, i32 noundef 97, ptr noundef null, i32 noundef 4) #7
  %cmp740 = icmp eq ptr %call739, null
  br i1 %cmp740, label %if.then741, label %if.then736.sw.epilog_crit_edge

if.then736.sw.epilog_crit_edge:                   ; preds = %if.then736
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then741:                                       ; preds = %if.then736
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end746:                                        ; preds = %cond.end733
  call void @__sanitizer_cov_trace_pc() #9
  %call748 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

sw.bb755:                                         ; preds = %if.end4
  %call758 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool759.not = icmp eq ptr %call758, null
  br i1 %tobool759.not, label %cond.end764, label %sw.bb755.if.then767_crit_edge

sw.bb755.if.then767_crit_edge:                    ; preds = %sw.bb755
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then767

cond.end764:                                      ; preds = %sw.bb755
  %call762 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.66) #7
  %call763 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool766.not = icmp eq ptr %call763, null
  br i1 %tobool766.not, label %do.end775, label %cond.end764.if.then767_crit_edge

cond.end764.if.then767_crit_edge:                 ; preds = %cond.end764
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then767

if.then767:                                       ; preds = %cond.end764.if.then767_crit_edge, %sw.bb755.if.then767_crit_edge
  %cond7653428 = phi ptr [ %call763, %cond.end764.if.then767_crit_edge ], [ %call758, %sw.bb755.if.then767_crit_edge ]
  %vp3054 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 15
  %67 = ptrtoint ptr %vp3054 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vp3054, align 4
  %call768 = tail call ptr %cond7653428(ptr noundef nonnull @dntv_live_dvbt_pro_config, ptr noundef %68) #7
  %cmp769 = icmp eq ptr %call768, null
  br i1 %cmp769, label %if.then770, label %if.then785

if.then770:                                       ; preds = %if.then767
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.65) #7
  br label %if.end778.thread

do.end775:                                        ; preds = %cond.end764
  call void @__sanitizer_cov_trace_pc() #9
  %call777 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #10
  br label %if.end778.thread

if.end778.thread:                                 ; preds = %do.end775, %if.then770
  %frontend7813430 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %frontend7813430 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %frontend7813430, align 4
  br label %sw.epilog

if.then785:                                       ; preds = %if.then767
  %frontend781 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %frontend781 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call768, ptr %frontend781, align 4
  %call788 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool789.not = icmp eq ptr %call788, null
  br i1 %tobool789.not, label %cond.end794, label %if.then785.if.then797_crit_edge

if.then785.if.then797_crit_edge:                  ; preds = %if.then785
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then797

cond.end794:                                      ; preds = %if.then785
  %call792 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call793 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool796.not = icmp eq ptr %call793, null
  br i1 %tobool796.not, label %do.end808, label %cond.end794.if.then797_crit_edge

cond.end794.if.then797_crit_edge:                 ; preds = %cond.end794
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then797

if.then797:                                       ; preds = %cond.end794.if.then797_crit_edge, %if.then785.if.then797_crit_edge
  %cond7953434 = phi ptr [ %call793, %cond.end794.if.then797_crit_edge ], [ %call788, %if.then785.if.then797_crit_edge ]
  %71 = ptrtoint ptr %frontend781 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %frontend781, align 4
  %i2c_adap800 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call801 = tail call ptr %cond7953434(ptr noundef %72, ptr noundef %i2c_adap800, i8 noundef zeroext 97, i32 noundef 63) #7
  %cmp802 = icmp eq ptr %call801, null
  br i1 %cmp802, label %if.then803, label %if.then797.sw.epilog_crit_edge

if.then797.sw.epilog_crit_edge:                   ; preds = %if.then797
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then803:                                       ; preds = %if.then797
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end808:                                        ; preds = %cond.end794
  call void @__sanitizer_cov_trace_pc() #9
  %call810 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb817:                                         ; preds = %if.end4
  %call820 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool821.not = icmp eq ptr %call820, null
  br i1 %tobool821.not, label %cond.end826, label %sw.bb817.if.then829_crit_edge

sw.bb817.if.then829_crit_edge:                    ; preds = %sw.bb817
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then829

cond.end826:                                      ; preds = %sw.bb817
  %call824 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #7
  %call825 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool828.not = icmp eq ptr %call825, null
  br i1 %tobool828.not, label %do.end838, label %cond.end826.if.then829_crit_edge

cond.end826.if.then829_crit_edge:                 ; preds = %cond.end826
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then829

if.then829:                                       ; preds = %cond.end826.if.then829_crit_edge, %sw.bb817.if.then829_crit_edge
  %cond8273439 = phi ptr [ %call825, %cond.end826.if.then829_crit_edge ], [ %call820, %sw.bb817.if.then829_crit_edge ]
  %i2c_adap830 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call831 = tail call ptr %cond8273439(ptr noundef nonnull @dvico_fusionhdtv_hybrid, ptr noundef %i2c_adap830) #7
  %cmp832 = icmp eq ptr %call831, null
  br i1 %cmp832, label %if.then833, label %if.then848

if.then833:                                       ; preds = %if.then829
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #7
  br label %if.end841.thread

do.end838:                                        ; preds = %cond.end826
  call void @__sanitizer_cov_trace_pc() #9
  %call840 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %if.end841.thread

if.end841.thread:                                 ; preds = %do.end838, %if.then833
  %frontend8443441 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %frontend8443441 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %frontend8443441, align 4
  br label %sw.epilog

if.then848:                                       ; preds = %if.then829
  %frontend844 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %frontend844 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call831, ptr %frontend844, align 4
  %call851 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool852.not = icmp eq ptr %call851, null
  br i1 %tobool852.not, label %cond.end857, label %if.then848.if.then860_crit_edge

if.then848.if.then860_crit_edge:                  ; preds = %if.then848
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then860

cond.end857:                                      ; preds = %if.then848
  %call855 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call856 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool859.not = icmp eq ptr %call856, null
  br i1 %tobool859.not, label %do.end871, label %cond.end857.if.then860_crit_edge

cond.end857.if.then860_crit_edge:                 ; preds = %cond.end857
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then860

if.then860:                                       ; preds = %cond.end857.if.then860_crit_edge, %if.then848.if.then860_crit_edge
  %cond8583445 = phi ptr [ %call856, %cond.end857.if.then860_crit_edge ], [ %call851, %if.then848.if.then860_crit_edge ]
  %75 = ptrtoint ptr %frontend844 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %frontend844, align 4
  %call864 = tail call ptr %cond8583445(ptr noundef %76, ptr noundef %i2c_adap830, i8 noundef zeroext 97, i32 noundef 72) #7
  %cmp865 = icmp eq ptr %call864, null
  br i1 %cmp865, label %if.then866, label %if.then860.sw.epilog_crit_edge

if.then860.sw.epilog_crit_edge:                   ; preds = %if.then860
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then866:                                       ; preds = %if.then860
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end871:                                        ; preds = %cond.end857
  call void @__sanitizer_cov_trace_pc() #9
  %call873 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb880:                                         ; preds = %if.end4
  %call883 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool884.not = icmp eq ptr %call883, null
  br i1 %tobool884.not, label %cond.end889, label %sw.bb880.if.then892_crit_edge

sw.bb880.if.then892_crit_edge:                    ; preds = %sw.bb880
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then892

cond.end889:                                      ; preds = %sw.bb880
  %call887 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #7
  %call888 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool891.not = icmp eq ptr %call888, null
  br i1 %tobool891.not, label %do.end901, label %cond.end889.if.then892_crit_edge

cond.end889.if.then892_crit_edge:                 ; preds = %cond.end889
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then892

if.then892:                                       ; preds = %cond.end889.if.then892_crit_edge, %sw.bb880.if.then892_crit_edge
  %cond8903450 = phi ptr [ %call888, %cond.end889.if.then892_crit_edge ], [ %call883, %sw.bb880.if.then892_crit_edge ]
  %i2c_adap893 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call894 = tail call ptr %cond8903450(ptr noundef nonnull @dvico_fusionhdtv_xc3028, ptr noundef %i2c_adap893) #7
  %cmp895 = icmp eq ptr %call894, null
  br i1 %cmp895, label %if.then896, label %if.end939.thread

if.then896:                                       ; preds = %if.then892
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #7
  br label %if.then911

do.end901:                                        ; preds = %cond.end889
  call void @__sanitizer_cov_trace_pc() #9
  %call903 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %if.then911

if.end939.thread:                                 ; preds = %if.then892
  call void @__sanitizer_cov_trace_pc() #9
  %frontend907 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %frontend907 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call894, ptr %frontend907, align 4
  br label %if.then943

if.then911:                                       ; preds = %do.end901, %if.then896
  %frontend9073452 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %frontend9073452 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %frontend9073452, align 4
  %call914 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool915.not = icmp eq ptr %call914, null
  br i1 %tobool915.not, label %cond.end920, label %if.then911.if.then923_crit_edge

if.then911.if.then923_crit_edge:                  ; preds = %if.then911
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then923

cond.end920:                                      ; preds = %if.then911
  %call918 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.66) #7
  %call919 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #7
  %tobool922.not = icmp eq ptr %call919, null
  br i1 %tobool922.not, label %do.end932, label %cond.end920.if.then923_crit_edge

cond.end920.if.then923_crit_edge:                 ; preds = %cond.end920
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then923

if.then923:                                       ; preds = %cond.end920.if.then923_crit_edge, %if.then911.if.then923_crit_edge
  %cond9213458 = phi ptr [ %call919, %cond.end920.if.then923_crit_edge ], [ %call914, %if.then911.if.then923_crit_edge ]
  %i2c_adap924 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call925 = tail call ptr %cond9213458(ptr noundef nonnull @dvico_fusionhdtv_mt352_xc3028, ptr noundef %i2c_adap924) #7
  %cmp926 = icmp eq ptr %call925, null
  br i1 %cmp926, label %if.then927, label %if.end939

if.then927:                                       ; preds = %if.then923
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.65) #7
  br label %if.end946

do.end932:                                        ; preds = %cond.end920
  call void @__sanitizer_cov_trace_pc() #9
  %call934 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #10
  br label %if.end946

if.end939:                                        ; preds = %if.then923
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %frontend9073452 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call925, ptr %frontend9073452, align 4
  br label %if.then943

if.then943:                                       ; preds = %if.end939, %if.end939.thread
  %80 = phi ptr [ %call894, %if.end939.thread ], [ %call925, %if.end939 ]
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %80, i32 0, i32 1, i32 28
  br label %if.end946

if.end946:                                        ; preds = %if.then943, %do.end932, %if.then927
  %frontend9073452.sink = phi ptr [ %i2c_gate_ctrl, %if.then943 ], [ %frontend9073452, %if.then927 ], [ %frontend9073452, %do.end932 ]
  %81 = ptrtoint ptr %frontend9073452.sink to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %frontend9073452.sink, align 4
  %call947 = tail call fastcc i32 @attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call947)
  %cmp948 = icmp slt i32 %call947, 0
  br i1 %cmp948, label %if.end946.frontend_detach_crit_edge, label %if.end946.sw.epilog_crit_edge

if.end946.sw.epilog_crit_edge:                    ; preds = %if.end946
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end946.frontend_detach_crit_edge:              ; preds = %if.end946
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

sw.bb951:                                         ; preds = %if.end4
  %call954 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.107) #7
  %tobool955.not = icmp eq ptr %call954, null
  br i1 %tobool955.not, label %cond.end960, label %sw.bb951.if.then963_crit_edge

sw.bb951.if.then963_crit_edge:                    ; preds = %sw.bb951
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then963

cond.end960:                                      ; preds = %sw.bb951
  %call958 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.108) #7
  %call959 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.107) #7
  %tobool962.not = icmp eq ptr %call959, null
  br i1 %tobool962.not, label %do.end972, label %cond.end960.if.then963_crit_edge

cond.end960.if.then963_crit_edge:                 ; preds = %cond.end960
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then963

if.then963:                                       ; preds = %cond.end960.if.then963_crit_edge, %sw.bb951.if.then963_crit_edge
  %cond9613466 = phi ptr [ %call959, %cond.end960.if.then963_crit_edge ], [ %call954, %sw.bb951.if.then963_crit_edge ]
  %i2c_adap964 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call965 = tail call ptr %cond9613466(ptr noundef nonnull @pchdtv_hd3000, ptr noundef %i2c_adap964) #7
  %cmp966 = icmp eq ptr %call965, null
  br i1 %cmp966, label %if.then967, label %if.then982

if.then967:                                       ; preds = %if.then963
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.107) #7
  br label %if.end975.thread

do.end972:                                        ; preds = %cond.end960
  call void @__sanitizer_cov_trace_pc() #9
  %call974 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #10
  br label %if.end975.thread

if.end975.thread:                                 ; preds = %do.end972, %if.then967
  %frontend9783468 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %frontend9783468 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %frontend9783468, align 4
  br label %sw.epilog

if.then982:                                       ; preds = %if.then963
  %frontend978 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %frontend978 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call965, ptr %frontend978, align 4
  %call985 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool986.not = icmp eq ptr %call985, null
  br i1 %tobool986.not, label %cond.end991, label %if.then982.if.then994_crit_edge

if.then982.if.then994_crit_edge:                  ; preds = %if.then982
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then994

cond.end991:                                      ; preds = %if.then982
  %call989 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call990 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool993.not = icmp eq ptr %call990, null
  br i1 %tobool993.not, label %do.end1005, label %cond.end991.if.then994_crit_edge

cond.end991.if.then994_crit_edge:                 ; preds = %cond.end991
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then994

if.then994:                                       ; preds = %cond.end991.if.then994_crit_edge, %if.then982.if.then994_crit_edge
  %cond9923472 = phi ptr [ %call990, %cond.end991.if.then994_crit_edge ], [ %call985, %if.then982.if.then994_crit_edge ]
  %84 = ptrtoint ptr %frontend978 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %frontend978, align 4
  %call998 = tail call ptr %cond9923472(ptr noundef %85, ptr noundef %i2c_adap964, i8 noundef zeroext 97, i32 noundef 60) #7
  %cmp999 = icmp eq ptr %call998, null
  br i1 %cmp999, label %if.then1000, label %if.then994.sw.epilog_crit_edge

if.then994.sw.epilog_crit_edge:                   ; preds = %if.then994
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1000:                                      ; preds = %if.then994
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end1005:                                       ; preds = %cond.end991
  call void @__sanitizer_cov_trace_pc() #9
  %call1007 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb1014:                                        ; preds = %if.end4
  %ts_gen_cntrl = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 16
  %86 = ptrtoint ptr %ts_gen_cntrl to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 8, ptr %ts_gen_cntrl, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !656
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %87 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %88, i32 868356
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !657
  %90 = and i32 %89, -16777217
  %91 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio, align 4
  %add.ptr1023 = getelementptr i32, ptr %92, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1023, i32 %90) #7, !srcloc !636
  tail call void @msleep(i32 noundef 100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !658
  tail call void @arm_heavy_mb() #7
  %93 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lmmio, align 4
  %add.ptr1030 = getelementptr i32, ptr %94, i32 868356
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1030) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !659
  %96 = or i32 %95, 16777216
  %97 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lmmio, align 4
  %add.ptr1037 = getelementptr i32, ptr %98, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1037, i32 %96) #7, !srcloc !636
  tail call void @msleep(i32 noundef 200) #7
  store ptr @lgdt330x_pll_rf_set, ptr getelementptr inbounds (%struct.lgdt330x_config, ptr @fusionhdtv_3_gold, i32 0, i32 2), align 4
  %call1040 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.114) #7
  %tobool1041.not = icmp eq ptr %call1040, null
  br i1 %tobool1041.not, label %cond.end1046, label %sw.bb1014.if.then1049_crit_edge

sw.bb1014.if.then1049_crit_edge:                  ; preds = %sw.bb1014
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1049

cond.end1046:                                     ; preds = %sw.bb1014
  %call1044 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.115) #7
  %call1045 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.114) #7
  %tobool1048.not = icmp eq ptr %call1045, null
  br i1 %tobool1048.not, label %do.end1058, label %cond.end1046.if.then1049_crit_edge

cond.end1046.if.then1049_crit_edge:               ; preds = %cond.end1046
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1049

if.then1049:                                      ; preds = %cond.end1046.if.then1049_crit_edge, %sw.bb1014.if.then1049_crit_edge
  %cond10473477 = phi ptr [ %call1045, %cond.end1046.if.then1049_crit_edge ], [ %call1040, %sw.bb1014.if.then1049_crit_edge ]
  %i2c_adap1050 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1051 = tail call ptr %cond10473477(ptr noundef nonnull @fusionhdtv_3_gold, i8 noundef zeroext 14, ptr noundef %i2c_adap1050) #7
  %cmp1052 = icmp eq ptr %call1051, null
  br i1 %cmp1052, label %if.then1053, label %if.then1068

if.then1053:                                      ; preds = %if.then1049
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.114) #7
  br label %if.end1061.thread

do.end1058:                                       ; preds = %cond.end1046
  call void @__sanitizer_cov_trace_pc() #9
  %call1060 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #10
  br label %if.end1061.thread

if.end1061.thread:                                ; preds = %do.end1058, %if.then1053
  %frontend10643479 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %99 = ptrtoint ptr %frontend10643479 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %frontend10643479, align 4
  br label %sw.epilog

if.then1068:                                      ; preds = %if.then1049
  %frontend1064 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %frontend1064 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call1051, ptr %frontend1064, align 4
  %call1071 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1072.not = icmp eq ptr %call1071, null
  br i1 %tobool1072.not, label %cond.end1077, label %if.then1068.if.then1080_crit_edge

if.then1068.if.then1080_crit_edge:                ; preds = %if.then1068
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1080

cond.end1077:                                     ; preds = %if.then1068
  %call1075 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call1076 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1079.not = icmp eq ptr %call1076, null
  br i1 %tobool1079.not, label %do.end1091, label %cond.end1077.if.then1080_crit_edge

cond.end1077.if.then1080_crit_edge:               ; preds = %cond.end1077
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1080

if.then1080:                                      ; preds = %cond.end1077.if.then1080_crit_edge, %if.then1068.if.then1080_crit_edge
  %cond10783483 = phi ptr [ %call1076, %cond.end1077.if.then1080_crit_edge ], [ %call1071, %if.then1068.if.then1080_crit_edge ]
  %101 = ptrtoint ptr %frontend1064 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %frontend1064, align 4
  %call1084 = tail call ptr %cond10783483(ptr noundef %102, ptr noundef %i2c_adap1050, i8 noundef zeroext 97, i32 noundef 49) #7
  %cmp1085 = icmp eq ptr %call1084, null
  br i1 %cmp1085, label %if.then1086, label %if.then1080.sw.epilog_crit_edge

if.then1080.sw.epilog_crit_edge:                  ; preds = %if.then1080
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1086:                                      ; preds = %if.then1080
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end1091:                                       ; preds = %cond.end1077
  call void @__sanitizer_cov_trace_pc() #9
  %call1093 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb1100:                                        ; preds = %if.end4
  %ts_gen_cntrl1101 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 16
  %103 = ptrtoint ptr %ts_gen_cntrl1101 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 8, ptr %ts_gen_cntrl1101, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !660
  tail call void @arm_heavy_mb() #7
  %lmmio1107 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %104 = ptrtoint ptr %lmmio1107 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lmmio1107, align 4
  %add.ptr1108 = getelementptr i32, ptr %105, i32 868356
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1108) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !661
  %107 = and i32 %106, -16777217
  %108 = ptrtoint ptr %lmmio1107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lmmio1107, align 4
  %add.ptr1115 = getelementptr i32, ptr %109, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1115, i32 %107) #7, !srcloc !636
  tail call void @msleep(i32 noundef 100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !662
  tail call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %lmmio1107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lmmio1107, align 4
  %add.ptr1122 = getelementptr i32, ptr %111, i32 868356
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1122) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !663
  %113 = or i32 %112, 150994944
  %114 = ptrtoint ptr %lmmio1107 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %lmmio1107, align 4
  %add.ptr1129 = getelementptr i32, ptr %115, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1129, i32 %113) #7, !srcloc !636
  tail call void @msleep(i32 noundef 200) #7
  %call1132 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.114) #7
  %tobool1133.not = icmp eq ptr %call1132, null
  br i1 %tobool1133.not, label %cond.end1138, label %sw.bb1100.if.then1141_crit_edge

sw.bb1100.if.then1141_crit_edge:                  ; preds = %sw.bb1100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1141

cond.end1138:                                     ; preds = %sw.bb1100
  %call1136 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.115) #7
  %call1137 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.114) #7
  %tobool1140.not = icmp eq ptr %call1137, null
  br i1 %tobool1140.not, label %do.end1150, label %cond.end1138.if.then1141_crit_edge

cond.end1138.if.then1141_crit_edge:               ; preds = %cond.end1138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1141

if.then1141:                                      ; preds = %cond.end1138.if.then1141_crit_edge, %sw.bb1100.if.then1141_crit_edge
  %cond11393488 = phi ptr [ %call1137, %cond.end1138.if.then1141_crit_edge ], [ %call1132, %sw.bb1100.if.then1141_crit_edge ]
  %i2c_adap1142 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1143 = tail call ptr %cond11393488(ptr noundef nonnull @fusionhdtv_3_gold, i8 noundef zeroext 14, ptr noundef %i2c_adap1142) #7
  %cmp1144 = icmp eq ptr %call1143, null
  br i1 %cmp1144, label %if.then1145, label %if.then1160

if.then1145:                                      ; preds = %if.then1141
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.114) #7
  br label %if.end1153.thread

do.end1150:                                       ; preds = %cond.end1138
  call void @__sanitizer_cov_trace_pc() #9
  %call1152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #10
  br label %if.end1153.thread

if.end1153.thread:                                ; preds = %do.end1150, %if.then1145
  %frontend11563490 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %frontend11563490 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %frontend11563490, align 4
  br label %sw.epilog

if.then1160:                                      ; preds = %if.then1141
  %frontend1156 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %117 = ptrtoint ptr %frontend1156 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call1143, ptr %frontend1156, align 4
  %call1163 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1164.not = icmp eq ptr %call1163, null
  br i1 %tobool1164.not, label %cond.end1169, label %if.then1160.if.then1172_crit_edge

if.then1160.if.then1172_crit_edge:                ; preds = %if.then1160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1172

cond.end1169:                                     ; preds = %if.then1160
  %call1167 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call1168 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1171.not = icmp eq ptr %call1168, null
  br i1 %tobool1171.not, label %do.end1183, label %cond.end1169.if.then1172_crit_edge

cond.end1169.if.then1172_crit_edge:               ; preds = %cond.end1169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1172

if.then1172:                                      ; preds = %cond.end1169.if.then1172_crit_edge, %if.then1160.if.then1172_crit_edge
  %cond11703494 = phi ptr [ %call1168, %cond.end1169.if.then1172_crit_edge ], [ %call1163, %if.then1160.if.then1172_crit_edge ]
  %118 = ptrtoint ptr %frontend1156 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %frontend1156, align 4
  %call1176 = tail call ptr %cond11703494(ptr noundef %119, ptr noundef %i2c_adap1142, i8 noundef zeroext 97, i32 noundef 60) #7
  %cmp1177 = icmp eq ptr %call1176, null
  br i1 %cmp1177, label %if.then1178, label %if.then1172.sw.epilog_crit_edge

if.then1172.sw.epilog_crit_edge:                  ; preds = %if.then1172
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1178:                                      ; preds = %if.then1172
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end1183:                                       ; preds = %cond.end1169
  call void @__sanitizer_cov_trace_pc() #9
  %call1185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb1192:                                        ; preds = %if.end4
  %ts_gen_cntrl1193 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 16
  %120 = ptrtoint ptr %ts_gen_cntrl1193 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 8, ptr %ts_gen_cntrl1193, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !664
  tail call void @arm_heavy_mb() #7
  %lmmio1199 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %121 = ptrtoint ptr %lmmio1199 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lmmio1199, align 4
  %add.ptr1200 = getelementptr i32, ptr %122, i32 868356
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1200) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !665
  %124 = and i32 %123, -16777217
  %125 = ptrtoint ptr %lmmio1199 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lmmio1199, align 4
  %add.ptr1207 = getelementptr i32, ptr %126, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1207, i32 %124) #7, !srcloc !636
  tail call void @msleep(i32 noundef 100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !666
  tail call void @arm_heavy_mb() #7
  %127 = ptrtoint ptr %lmmio1199 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %lmmio1199, align 4
  %add.ptr1214 = getelementptr i32, ptr %128, i32 868356
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1214) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !667
  %130 = or i32 %129, 16777216
  %131 = ptrtoint ptr %lmmio1199 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %lmmio1199, align 4
  %add.ptr1221 = getelementptr i32, ptr %132, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1221, i32 %130) #7, !srcloc !636
  tail call void @msleep(i32 noundef 200) #7
  %call1224 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.114) #7
  %tobool1225.not = icmp eq ptr %call1224, null
  br i1 %tobool1225.not, label %cond.end1230, label %sw.bb1192.if.then1233_crit_edge

sw.bb1192.if.then1233_crit_edge:                  ; preds = %sw.bb1192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1233

cond.end1230:                                     ; preds = %sw.bb1192
  %call1228 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.115) #7
  %call1229 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.114) #7
  %tobool1232.not = icmp eq ptr %call1229, null
  br i1 %tobool1232.not, label %do.end1242, label %cond.end1230.if.then1233_crit_edge

cond.end1230.if.then1233_crit_edge:               ; preds = %cond.end1230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1233

if.then1233:                                      ; preds = %cond.end1230.if.then1233_crit_edge, %sw.bb1192.if.then1233_crit_edge
  %cond12313499 = phi ptr [ %call1229, %cond.end1230.if.then1233_crit_edge ], [ %call1224, %sw.bb1192.if.then1233_crit_edge ]
  %i2c_adap1234 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1235 = tail call ptr %cond12313499(ptr noundef nonnull @fusionhdtv_5_gold, i8 noundef zeroext 14, ptr noundef %i2c_adap1234) #7
  %cmp1236 = icmp eq ptr %call1235, null
  br i1 %cmp1236, label %if.then1237, label %if.then1252

if.then1237:                                      ; preds = %if.then1233
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.114) #7
  br label %if.end1245.thread

do.end1242:                                       ; preds = %cond.end1230
  call void @__sanitizer_cov_trace_pc() #9
  %call1244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #10
  br label %if.end1245.thread

if.end1245.thread:                                ; preds = %do.end1242, %if.then1237
  %frontend12483501 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %133 = ptrtoint ptr %frontend12483501 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %frontend12483501, align 4
  br label %sw.epilog

if.then1252:                                      ; preds = %if.then1233
  %frontend1248 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %134 = ptrtoint ptr %frontend1248 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call1235, ptr %frontend1248, align 4
  %call1255 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1256.not = icmp eq ptr %call1255, null
  br i1 %tobool1256.not, label %cond.end1261, label %if.then1252.if.then1264_crit_edge

if.then1252.if.then1264_crit_edge:                ; preds = %if.then1252
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1264

cond.end1261:                                     ; preds = %if.then1252
  %call1259 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call1260 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1263.not = icmp eq ptr %call1260, null
  br i1 %tobool1263.not, label %do.end1275, label %cond.end1261.if.then1264_crit_edge

cond.end1261.if.then1264_crit_edge:               ; preds = %cond.end1261
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1264

if.then1264:                                      ; preds = %cond.end1261.if.then1264_crit_edge, %if.then1252.if.then1264_crit_edge
  %cond12623505 = phi ptr [ %call1260, %cond.end1261.if.then1264_crit_edge ], [ %call1255, %if.then1252.if.then1264_crit_edge ]
  %135 = ptrtoint ptr %frontend1248 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %frontend1248, align 4
  %call1268 = tail call ptr %cond12623505(ptr noundef %136, ptr noundef %i2c_adap1234, i8 noundef zeroext 97, i32 noundef 64) #7
  %cmp1269 = icmp eq ptr %call1268, null
  br i1 %cmp1269, label %if.then1270, label %if.end1282

if.then1270:                                      ; preds = %if.then1264
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end1275:                                       ; preds = %cond.end1261
  call void @__sanitizer_cov_trace_pc() #9
  %call1277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

if.end1282:                                       ; preds = %if.then1264
  %call1285 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.129) #7
  %tobool1286.not = icmp eq ptr %call1285, null
  br i1 %tobool1286.not, label %cond.end1291, label %if.end1282.if.then1294_crit_edge

if.end1282.if.then1294_crit_edge:                 ; preds = %if.end1282
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1294

cond.end1291:                                     ; preds = %if.end1282
  %call1289 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.130) #7
  %call1290 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.129) #7
  %tobool1293.not = icmp eq ptr %call1290, null
  br i1 %tobool1293.not, label %do.end1305, label %cond.end1291.if.then1294_crit_edge

cond.end1291.if.then1294_crit_edge:               ; preds = %cond.end1291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1294

if.then1294:                                      ; preds = %cond.end1291.if.then1294_crit_edge, %if.end1282.if.then1294_crit_edge
  %cond12923510 = phi ptr [ %call1290, %cond.end1291.if.then1294_crit_edge ], [ %call1285, %if.end1282.if.then1294_crit_edge ]
  %137 = ptrtoint ptr %frontend1248 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %frontend1248, align 4
  %call1298 = tail call ptr %cond12923510(ptr noundef %138, ptr noundef %i2c_adap1234, i8 noundef zeroext 67) #7
  %cmp1299 = icmp eq ptr %call1298, null
  br i1 %cmp1299, label %if.then1300, label %if.then1294.sw.epilog_crit_edge

if.then1294.sw.epilog_crit_edge:                  ; preds = %if.then1294
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1300:                                      ; preds = %if.then1294
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.129) #7
  br label %frontend_detach

do.end1305:                                       ; preds = %cond.end1291
  call void @__sanitizer_cov_trace_pc() #9
  %call1307 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #10
  br label %frontend_detach

sw.bb1314:                                        ; preds = %if.end4
  %ts_gen_cntrl1315 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 16
  %139 = ptrtoint ptr %ts_gen_cntrl1315 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 8, ptr %ts_gen_cntrl1315, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !668
  tail call void @arm_heavy_mb() #7
  %lmmio1321 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %140 = ptrtoint ptr %lmmio1321 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %lmmio1321, align 4
  %add.ptr1322 = getelementptr i32, ptr %141, i32 868356
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1322) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !669
  %143 = and i32 %142, -16777217
  %144 = ptrtoint ptr %lmmio1321 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %lmmio1321, align 4
  %add.ptr1329 = getelementptr i32, ptr %145, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1329, i32 %143) #7, !srcloc !636
  tail call void @msleep(i32 noundef 100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !670
  tail call void @arm_heavy_mb() #7
  %146 = ptrtoint ptr %lmmio1321 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %lmmio1321, align 4
  %add.ptr1336 = getelementptr i32, ptr %147, i32 868356
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1336) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !671
  %149 = or i32 %148, 16777216
  %150 = ptrtoint ptr %lmmio1321 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %lmmio1321, align 4
  %add.ptr1343 = getelementptr i32, ptr %151, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1343, i32 %149) #7, !srcloc !636
  tail call void @msleep(i32 noundef 200) #7
  %call1346 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.114) #7
  %tobool1347.not = icmp eq ptr %call1346, null
  br i1 %tobool1347.not, label %cond.end1352, label %sw.bb1314.if.then1355_crit_edge

sw.bb1314.if.then1355_crit_edge:                  ; preds = %sw.bb1314
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1355

cond.end1352:                                     ; preds = %sw.bb1314
  %call1350 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.115) #7
  %call1351 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.114) #7
  %tobool1354.not = icmp eq ptr %call1351, null
  br i1 %tobool1354.not, label %do.end1364, label %cond.end1352.if.then1355_crit_edge

cond.end1352.if.then1355_crit_edge:               ; preds = %cond.end1352
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1355

if.then1355:                                      ; preds = %cond.end1352.if.then1355_crit_edge, %sw.bb1314.if.then1355_crit_edge
  %cond13533515 = phi ptr [ %call1351, %cond.end1352.if.then1355_crit_edge ], [ %call1346, %sw.bb1314.if.then1355_crit_edge ]
  %i2c_adap1356 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1357 = tail call ptr %cond13533515(ptr noundef nonnull @pchdtv_hd5500, i8 noundef zeroext 89, ptr noundef %i2c_adap1356) #7
  %cmp1358 = icmp eq ptr %call1357, null
  br i1 %cmp1358, label %if.then1359, label %if.then1374

if.then1359:                                      ; preds = %if.then1355
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.114) #7
  br label %if.end1367.thread

do.end1364:                                       ; preds = %cond.end1352
  call void @__sanitizer_cov_trace_pc() #9
  %call1366 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #10
  br label %if.end1367.thread

if.end1367.thread:                                ; preds = %do.end1364, %if.then1359
  %frontend13703517 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %152 = ptrtoint ptr %frontend13703517 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %frontend13703517, align 4
  br label %sw.epilog

if.then1374:                                      ; preds = %if.then1355
  %frontend1370 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %153 = ptrtoint ptr %frontend1370 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call1357, ptr %frontend1370, align 4
  %call1377 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1378.not = icmp eq ptr %call1377, null
  br i1 %tobool1378.not, label %cond.end1383, label %if.then1374.if.then1386_crit_edge

if.then1374.if.then1386_crit_edge:                ; preds = %if.then1374
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1386

cond.end1383:                                     ; preds = %if.then1374
  %call1381 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call1382 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1385.not = icmp eq ptr %call1382, null
  br i1 %tobool1385.not, label %do.end1397, label %cond.end1383.if.then1386_crit_edge

cond.end1383.if.then1386_crit_edge:               ; preds = %cond.end1383
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1386

if.then1386:                                      ; preds = %cond.end1383.if.then1386_crit_edge, %if.then1374.if.then1386_crit_edge
  %cond13843521 = phi ptr [ %call1382, %cond.end1383.if.then1386_crit_edge ], [ %call1377, %if.then1374.if.then1386_crit_edge ]
  %154 = ptrtoint ptr %frontend1370 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %frontend1370, align 4
  %call1390 = tail call ptr %cond13843521(ptr noundef %155, ptr noundef %i2c_adap1356, i8 noundef zeroext 97, i32 noundef 64) #7
  %cmp1391 = icmp eq ptr %call1390, null
  br i1 %cmp1391, label %if.then1392, label %if.end1404

if.then1392:                                      ; preds = %if.then1386
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end1397:                                       ; preds = %cond.end1383
  call void @__sanitizer_cov_trace_pc() #9
  %call1399 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

if.end1404:                                       ; preds = %if.then1386
  %call1407 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.129) #7
  %tobool1408.not = icmp eq ptr %call1407, null
  br i1 %tobool1408.not, label %cond.end1413, label %if.end1404.if.then1416_crit_edge

if.end1404.if.then1416_crit_edge:                 ; preds = %if.end1404
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1416

cond.end1413:                                     ; preds = %if.end1404
  %call1411 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.130) #7
  %call1412 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.129) #7
  %tobool1415.not = icmp eq ptr %call1412, null
  br i1 %tobool1415.not, label %do.end1427, label %cond.end1413.if.then1416_crit_edge

cond.end1413.if.then1416_crit_edge:               ; preds = %cond.end1413
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1416

if.then1416:                                      ; preds = %cond.end1413.if.then1416_crit_edge, %if.end1404.if.then1416_crit_edge
  %cond14143526 = phi ptr [ %call1412, %cond.end1413.if.then1416_crit_edge ], [ %call1407, %if.end1404.if.then1416_crit_edge ]
  %156 = ptrtoint ptr %frontend1370 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %frontend1370, align 4
  %call1420 = tail call ptr %cond14143526(ptr noundef %157, ptr noundef %i2c_adap1356, i8 noundef zeroext 67) #7
  %cmp1421 = icmp eq ptr %call1420, null
  br i1 %cmp1421, label %if.then1422, label %if.then1416.sw.epilog_crit_edge

if.then1416.sw.epilog_crit_edge:                  ; preds = %if.then1416
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1422:                                      ; preds = %if.then1416
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.129) #7
  br label %frontend_detach

do.end1427:                                       ; preds = %cond.end1413
  call void @__sanitizer_cov_trace_pc() #9
  %call1429 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #10
  br label %frontend_detach

sw.bb1436:                                        ; preds = %if.end4
  %call1439 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.140) #7
  %tobool1440.not = icmp eq ptr %call1439, null
  br i1 %tobool1440.not, label %cond.end1445, label %sw.bb1436.if.then1448_crit_edge

sw.bb1436.if.then1448_crit_edge:                  ; preds = %sw.bb1436
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1448

cond.end1445:                                     ; preds = %sw.bb1436
  %call1443 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.141) #7
  %call1444 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.140) #7
  %tobool1447.not = icmp eq ptr %call1444, null
  br i1 %tobool1447.not, label %do.end1457, label %cond.end1445.if.then1448_crit_edge

cond.end1445.if.then1448_crit_edge:               ; preds = %cond.end1445
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1448

if.then1448:                                      ; preds = %cond.end1445.if.then1448_crit_edge, %sw.bb1436.if.then1448_crit_edge
  %cond14463531 = phi ptr [ %call1444, %cond.end1445.if.then1448_crit_edge ], [ %call1439, %sw.bb1436.if.then1448_crit_edge ]
  %i2c_adap1449 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1450 = tail call ptr %cond14463531(ptr noundef nonnull @ati_hdtvwonder, ptr noundef %i2c_adap1449) #7
  %cmp1451 = icmp eq ptr %call1450, null
  br i1 %cmp1451, label %if.then1452, label %if.then1467

if.then1452:                                      ; preds = %if.then1448
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.140) #7
  br label %if.end1460.thread

do.end1457:                                       ; preds = %cond.end1445
  call void @__sanitizer_cov_trace_pc() #9
  %call1459 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #10
  br label %if.end1460.thread

if.end1460.thread:                                ; preds = %do.end1457, %if.then1452
  %frontend14633533 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %158 = ptrtoint ptr %frontend14633533 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %frontend14633533, align 4
  br label %sw.epilog

if.then1467:                                      ; preds = %if.then1448
  %frontend1463 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %159 = ptrtoint ptr %frontend1463 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call1450, ptr %frontend1463, align 4
  %call1470 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1471.not = icmp eq ptr %call1470, null
  br i1 %tobool1471.not, label %cond.end1476, label %if.then1467.if.then1479_crit_edge

if.then1467.if.then1479_crit_edge:                ; preds = %if.then1467
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1479

cond.end1476:                                     ; preds = %if.then1467
  %call1474 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call1475 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool1478.not = icmp eq ptr %call1475, null
  br i1 %tobool1478.not, label %do.end1490, label %cond.end1476.if.then1479_crit_edge

cond.end1476.if.then1479_crit_edge:               ; preds = %cond.end1476
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1479

if.then1479:                                      ; preds = %cond.end1476.if.then1479_crit_edge, %if.then1467.if.then1479_crit_edge
  %cond14773537 = phi ptr [ %call1475, %cond.end1476.if.then1479_crit_edge ], [ %call1470, %if.then1467.if.then1479_crit_edge ]
  %160 = ptrtoint ptr %frontend1463 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %frontend1463, align 4
  %call1483 = tail call ptr %cond14773537(ptr noundef %161, ptr noundef %i2c_adap1449, i8 noundef zeroext 97, i32 noundef 68) #7
  %cmp1484 = icmp eq ptr %call1483, null
  br i1 %cmp1484, label %if.then1485, label %if.then1479.sw.epilog_crit_edge

if.then1479.sw.epilog_crit_edge:                  ; preds = %if.then1479
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1485:                                      ; preds = %if.then1479
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end1490:                                       ; preds = %cond.end1476
  call void @__sanitizer_cov_trace_pc() #9
  %call1492 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb1499:                                        ; preds = %if.end4.sw.bb1499_crit_edge, %if.end4.sw.bb1499_crit_edge3735
  %call1502 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool1503.not = icmp eq ptr %call1502, null
  br i1 %tobool1503.not, label %cond.end1508, label %sw.bb1499.if.then1511_crit_edge

sw.bb1499.if.then1511_crit_edge:                  ; preds = %sw.bb1499
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1511

cond.end1508:                                     ; preds = %sw.bb1499
  %call1506 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #7
  %call1507 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool1510.not = icmp eq ptr %call1507, null
  br i1 %tobool1510.not, label %do.end1520, label %cond.end1508.if.then1511_crit_edge

cond.end1508.if.then1511_crit_edge:               ; preds = %cond.end1508
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1511

if.then1511:                                      ; preds = %cond.end1508.if.then1511_crit_edge, %sw.bb1499.if.then1511_crit_edge
  %cond15093542 = phi ptr [ %call1507, %cond.end1508.if.then1511_crit_edge ], [ %call1502, %sw.bb1499.if.then1511_crit_edge ]
  %i2c_adap1512 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1513 = tail call ptr %cond15093542(ptr noundef nonnull @hauppauge_novas_config, ptr noundef %i2c_adap1512) #7
  %cmp1514 = icmp eq ptr %call1513, null
  br i1 %cmp1514, label %if.then1515, label %if.then1530

if.then1515:                                      ; preds = %if.then1511
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #7
  br label %if.end1523.thread

do.end1520:                                       ; preds = %cond.end1508
  call void @__sanitizer_cov_trace_pc() #9
  %call1522 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #10
  br label %if.end1523.thread

if.end1523.thread:                                ; preds = %do.end1520, %if.then1515
  %frontend15263544 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %162 = ptrtoint ptr %frontend15263544 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %frontend15263544, align 4
  br label %sw.epilog

if.then1530:                                      ; preds = %if.then1511
  %frontend1526 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %163 = ptrtoint ptr %frontend1526 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call1513, ptr %frontend1526, align 4
  %model = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 4
  %164 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %model, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 92001, i32 %165)
  %cmp1531 = icmp eq i32 %165, 92001
  %call1537 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool1538.not = icmp eq ptr %call1537, null
  br i1 %tobool1538.not, label %cond.end1543, label %if.then1530.if.then1546_crit_edge

if.then1530.if.then1546_crit_edge:                ; preds = %if.then1530
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1546

cond.end1543:                                     ; preds = %if.then1530
  %call1541 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #7
  %call1542 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool1545.not = icmp eq ptr %call1542, null
  br i1 %tobool1545.not, label %do.end1558, label %cond.end1543.if.then1546_crit_edge

cond.end1543.if.then1546_crit_edge:               ; preds = %cond.end1543
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1546

if.then1546:                                      ; preds = %cond.end1543.if.then1546_crit_edge, %if.then1530.if.then1546_crit_edge
  %cond15443548 = phi ptr [ %call1542, %cond.end1543.if.then1546_crit_edge ], [ %call1537, %if.then1530.if.then1546_crit_edge ]
  %166 = ptrtoint ptr %frontend1526 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %frontend1526, align 4
  %call1551 = tail call ptr %cond15443548(ptr noundef %167, ptr noundef %i2c_adap1512, i8 noundef zeroext 8, i8 noundef zeroext 64, i8 noundef zeroext 0, i1 noundef zeroext %cmp1531) #7
  %cmp1552 = icmp eq ptr %call1551, null
  br i1 %cmp1552, label %if.then1553, label %if.then1546.sw.epilog_crit_edge

if.then1546.sw.epilog_crit_edge:                  ; preds = %if.then1546
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1553:                                      ; preds = %if.then1546
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #7
  br label %frontend_detach

do.end1558:                                       ; preds = %cond.end1543
  call void @__sanitizer_cov_trace_pc() #9
  %call1560 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #10
  br label %frontend_detach

sw.bb1567:                                        ; preds = %if.end4
  %call1570 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool1571.not = icmp eq ptr %call1570, null
  br i1 %tobool1571.not, label %cond.end1576, label %sw.bb1567.if.then1579_crit_edge

sw.bb1567.if.then1579_crit_edge:                  ; preds = %sw.bb1567
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1579

cond.end1576:                                     ; preds = %sw.bb1567
  %call1574 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #7
  %call1575 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool1578.not = icmp eq ptr %call1575, null
  br i1 %tobool1578.not, label %do.end1588, label %cond.end1576.if.then1579_crit_edge

cond.end1576.if.then1579_crit_edge:               ; preds = %cond.end1576
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1579

if.then1579:                                      ; preds = %cond.end1576.if.then1579_crit_edge, %sw.bb1567.if.then1579_crit_edge
  %cond15773553 = phi ptr [ %call1575, %cond.end1576.if.then1579_crit_edge ], [ %call1570, %sw.bb1567.if.then1579_crit_edge ]
  %i2c_adap1580 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1581 = tail call ptr %cond15773553(ptr noundef nonnull @kworld_dvbs_100_config, ptr noundef %i2c_adap1580) #7
  %cmp1582 = icmp eq ptr %call1581, null
  br i1 %cmp1582, label %if.then1583, label %if.then1598

if.then1583:                                      ; preds = %if.then1579
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #7
  br label %if.end1591.thread

do.end1588:                                       ; preds = %cond.end1576
  call void @__sanitizer_cov_trace_pc() #9
  %call1590 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #10
  br label %if.end1591.thread

if.end1591.thread:                                ; preds = %do.end1588, %if.then1583
  %frontend15943555 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %168 = ptrtoint ptr %frontend15943555 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %frontend15943555, align 4
  br label %sw.epilog

if.then1598:                                      ; preds = %if.then1579
  call void @__sanitizer_cov_trace_pc() #9
  %frontend1594 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %169 = ptrtoint ptr %frontend1594 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call1581, ptr %frontend1594, align 4
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %call1581, i32 0, i32 1, i32 25
  %170 = ptrtoint ptr %set_voltage to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %set_voltage, align 4
  %prev_set_voltage = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 25
  %172 = ptrtoint ptr %prev_set_voltage to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %171, ptr %prev_set_voltage, align 8
  %173 = load ptr, ptr %frontend1594, align 4
  %set_voltage1605 = getelementptr inbounds %struct.dvb_frontend, ptr %173, i32 0, i32 1, i32 25
  %174 = ptrtoint ptr %set_voltage1605 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @kworld_dvbs_100_set_voltage, ptr %set_voltage1605, align 4
  br label %sw.epilog

sw.bb1607:                                        ; preds = %if.end4
  %call1610 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool1611.not = icmp eq ptr %call1610, null
  br i1 %tobool1611.not, label %cond.end1616, label %sw.bb1607.if.then1619_crit_edge

sw.bb1607.if.then1619_crit_edge:                  ; preds = %sw.bb1607
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1619

cond.end1616:                                     ; preds = %sw.bb1607
  %call1614 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #7
  %call1615 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #7
  %tobool1618.not = icmp eq ptr %call1615, null
  br i1 %tobool1618.not, label %do.end1628, label %cond.end1616.if.then1619_crit_edge

cond.end1616.if.then1619_crit_edge:               ; preds = %cond.end1616
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1619

if.then1619:                                      ; preds = %cond.end1616.if.then1619_crit_edge, %sw.bb1607.if.then1619_crit_edge
  %cond16173559 = phi ptr [ %call1615, %cond.end1616.if.then1619_crit_edge ], [ %call1610, %sw.bb1607.if.then1619_crit_edge ]
  %i2c_adap1620 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1621 = tail call ptr %cond16173559(ptr noundef nonnull @geniatech_dvbs_config, ptr noundef %i2c_adap1620) #7
  %cmp1622 = icmp eq ptr %call1621, null
  br i1 %cmp1622, label %if.then1623, label %if.then1638

if.then1623:                                      ; preds = %if.then1619
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #7
  br label %if.end1631.thread

do.end1628:                                       ; preds = %cond.end1616
  call void @__sanitizer_cov_trace_pc() #9
  %call1630 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #10
  br label %if.end1631.thread

if.end1631.thread:                                ; preds = %do.end1628, %if.then1623
  %frontend16343561 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %175 = ptrtoint ptr %frontend16343561 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %frontend16343561, align 4
  br label %sw.epilog

if.then1638:                                      ; preds = %if.then1619
  call void @__sanitizer_cov_trace_pc() #9
  %frontend1634 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %176 = ptrtoint ptr %frontend1634 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call1621, ptr %frontend1634, align 4
  %set_voltage1642 = getelementptr inbounds %struct.dvb_frontend, ptr %call1621, i32 0, i32 1, i32 25
  %177 = ptrtoint ptr %set_voltage1642 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %set_voltage1642, align 4
  %prev_set_voltage1643 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 25
  %179 = ptrtoint ptr %prev_set_voltage1643 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %prev_set_voltage1643, align 8
  %180 = load ptr, ptr %frontend1634, align 4
  %set_voltage1647 = getelementptr inbounds %struct.dvb_frontend, ptr %180, i32 0, i32 1, i32 25
  %181 = ptrtoint ptr %set_voltage1647 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @geniatech_dvbs_set_voltage, ptr %set_voltage1647, align 4
  br label %sw.epilog

sw.bb1649:                                        ; preds = %if.end4
  %call1652 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.155) #7
  %tobool1653.not = icmp eq ptr %call1652, null
  br i1 %tobool1653.not, label %cond.end1658, label %sw.bb1649.if.then1661_crit_edge

sw.bb1649.if.then1661_crit_edge:                  ; preds = %sw.bb1649
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1661

cond.end1658:                                     ; preds = %sw.bb1649
  %call1656 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.156) #7
  %call1657 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.155) #7
  %tobool1660.not = icmp eq ptr %call1657, null
  br i1 %tobool1660.not, label %do.end1670, label %cond.end1658.if.then1661_crit_edge

cond.end1658.if.then1661_crit_edge:               ; preds = %cond.end1658
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1661

if.then1661:                                      ; preds = %cond.end1658.if.then1661_crit_edge, %sw.bb1649.if.then1661_crit_edge
  %cond16593565 = phi ptr [ %call1657, %cond.end1658.if.then1661_crit_edge ], [ %call1652, %sw.bb1649.if.then1661_crit_edge ]
  %i2c_adap1662 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1663 = tail call ptr %cond16593565(ptr noundef nonnull @pinnacle_pctv_hd_800i_config, ptr noundef %i2c_adap1662) #7
  %cmp1664 = icmp eq ptr %call1663, null
  br i1 %cmp1664, label %if.then1665, label %if.then1680

if.then1665:                                      ; preds = %if.then1661
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.155) #7
  br label %if.end1673.thread

do.end1670:                                       ; preds = %cond.end1658
  call void @__sanitizer_cov_trace_pc() #9
  %call1672 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #10
  br label %if.end1673.thread

if.end1673.thread:                                ; preds = %do.end1670, %if.then1665
  %frontend16763567 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %182 = ptrtoint ptr %frontend16763567 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %frontend16763567, align 4
  br label %sw.epilog

if.then1680:                                      ; preds = %if.then1661
  %frontend1676 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %183 = ptrtoint ptr %frontend1676 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call1663, ptr %frontend1676, align 4
  %call1683 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #7
  %tobool1684.not = icmp eq ptr %call1683, null
  br i1 %tobool1684.not, label %cond.end1689, label %if.then1680.if.then1692_crit_edge

if.then1680.if.then1692_crit_edge:                ; preds = %if.then1680
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1692

cond.end1689:                                     ; preds = %if.then1680
  %call1687 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.161) #7
  %call1688 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #7
  %tobool1691.not = icmp eq ptr %call1688, null
  br i1 %tobool1691.not, label %do.end1703, label %cond.end1689.if.then1692_crit_edge

cond.end1689.if.then1692_crit_edge:               ; preds = %cond.end1689
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1692

if.then1692:                                      ; preds = %cond.end1689.if.then1692_crit_edge, %if.then1680.if.then1692_crit_edge
  %cond16903571 = phi ptr [ %call1688, %cond.end1689.if.then1692_crit_edge ], [ %call1683, %if.then1680.if.then1692_crit_edge ]
  %184 = ptrtoint ptr %frontend1676 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %frontend1676, align 4
  %call1696 = tail call ptr %cond16903571(ptr noundef %185, ptr noundef %i2c_adap1662, ptr noundef nonnull @pinnacle_pctv_hd_800i_tuner_config) #7
  %cmp1697 = icmp eq ptr %call1696, null
  br i1 %cmp1697, label %if.then1698, label %if.then1692.sw.epilog_crit_edge

if.then1692.sw.epilog_crit_edge:                  ; preds = %if.then1692
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1698:                                      ; preds = %if.then1692
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.160) #7
  br label %frontend_detach

do.end1703:                                       ; preds = %cond.end1689
  call void @__sanitizer_cov_trace_pc() #9
  %call1705 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #10
  br label %frontend_detach

sw.bb1712:                                        ; preds = %if.end4
  %call1715 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.155) #7
  %tobool1716.not = icmp eq ptr %call1715, null
  br i1 %tobool1716.not, label %cond.end1721, label %sw.bb1712.if.then1724_crit_edge

sw.bb1712.if.then1724_crit_edge:                  ; preds = %sw.bb1712
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1724

cond.end1721:                                     ; preds = %sw.bb1712
  %call1719 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.156) #7
  %call1720 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.155) #7
  %tobool1723.not = icmp eq ptr %call1720, null
  br i1 %tobool1723.not, label %do.end1733, label %cond.end1721.if.then1724_crit_edge

cond.end1721.if.then1724_crit_edge:               ; preds = %cond.end1721
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1724

if.then1724:                                      ; preds = %cond.end1721.if.then1724_crit_edge, %sw.bb1712.if.then1724_crit_edge
  %cond17223576 = phi ptr [ %call1720, %cond.end1721.if.then1724_crit_edge ], [ %call1715, %sw.bb1712.if.then1724_crit_edge ]
  %i2c_adap1725 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1726 = tail call ptr %cond17223576(ptr noundef nonnull @dvico_hdtv5_pci_nano_config, ptr noundef %i2c_adap1725) #7
  %cmp1727 = icmp eq ptr %call1726, null
  br i1 %cmp1727, label %if.then1728, label %if.then1743

if.then1728:                                      ; preds = %if.then1724
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.155) #7
  br label %if.end1736.thread

do.end1733:                                       ; preds = %cond.end1721
  call void @__sanitizer_cov_trace_pc() #9
  %call1735 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #10
  br label %if.end1736.thread

if.end1736.thread:                                ; preds = %do.end1733, %if.then1728
  %frontend17393578 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %186 = ptrtoint ptr %frontend17393578 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %frontend17393578, align 4
  br label %sw.epilog

if.then1743:                                      ; preds = %if.then1724
  %frontend1739 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %187 = ptrtoint ptr %frontend1739 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call1726, ptr %frontend1739, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #7
  %188 = getelementptr inbounds i8, ptr %cfg, i32 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %188, align 4
  %190 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %i2c_adap1725, ptr %cfg, align 4
  %i2c_addr = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  %191 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 97, ptr %i2c_addr, align 4
  %ctrl = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 2
  %192 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %ctrl, align 4
  %call1748 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #7
  %tobool1749.not = icmp eq ptr %call1748, null
  br i1 %tobool1749.not, label %cond.end1754, label %if.then1743.if.then1757_crit_edge

if.then1743.if.then1757_crit_edge:                ; preds = %if.then1743
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1757

cond.end1754:                                     ; preds = %if.then1743
  %call1752 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #7
  %call1753 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #7
  %tobool1756.not = icmp eq ptr %call1753, null
  br i1 %tobool1756.not, label %do.end1767, label %cond.end1754.if.then1757_crit_edge

cond.end1754.if.then1757_crit_edge:               ; preds = %cond.end1754
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1757

if.then1757:                                      ; preds = %cond.end1754.if.then1757_crit_edge, %if.then1743.if.then1757_crit_edge
  %cond17553582 = phi ptr [ %call1753, %cond.end1754.if.then1757_crit_edge ], [ %call1748, %if.then1743.if.then1757_crit_edge ]
  %193 = ptrtoint ptr %frontend1739 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %frontend1739, align 4
  %call1760 = call ptr %cond17553582(ptr noundef %194, ptr noundef nonnull %cfg) #7
  %cmp1761 = icmp eq ptr %call1760, null
  br i1 %cmp1761, label %if.then1762, label %land.lhs.true

if.then1762:                                      ; preds = %if.then1757
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.168) #7
  br label %if.end1780

do.end1767:                                       ; preds = %cond.end1754
  call void @__sanitizer_cov_trace_pc() #9
  %call1769 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #10
  br label %if.end1780

land.lhs.true:                                    ; preds = %if.then1757
  %set_config = getelementptr inbounds %struct.dvb_frontend, ptr %call1760, i32 0, i32 1, i32 32, i32 8
  %195 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %set_config, align 4
  %tobool1774.not = icmp eq ptr %196, null
  br i1 %tobool1774.not, label %land.lhs.true.if.end1780_crit_edge, label %if.then1775

land.lhs.true.if.end1780_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1780

if.then1775:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call1779 = call i32 %196(ptr noundef nonnull %call1760, ptr noundef nonnull @dvb_register.ctl) #7
  br label %if.end1780

if.end1780:                                       ; preds = %if.then1775, %land.lhs.true.if.end1780_crit_edge, %do.end1767, %if.then1762
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #7
  br label %sw.epilog

sw.bb1782:                                        ; preds = %if.end4.sw.bb1782_crit_edge, %if.end4.sw.bb1782_crit_edge3736, %if.end4.sw.bb1782_crit_edge3737
  %call1785 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool1786.not = icmp eq ptr %call1785, null
  br i1 %tobool1786.not, label %cond.end1791, label %sw.bb1782.if.then1794_crit_edge

sw.bb1782.if.then1794_crit_edge:                  ; preds = %sw.bb1782
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1794

cond.end1791:                                     ; preds = %sw.bb1782
  %call1789 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #7
  %call1790 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool1793.not = icmp eq ptr %call1790, null
  br i1 %tobool1793.not, label %do.end1803, label %cond.end1791.if.then1794_crit_edge

cond.end1791.if.then1794_crit_edge:               ; preds = %cond.end1791
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1794

if.then1794:                                      ; preds = %cond.end1791.if.then1794_crit_edge, %sw.bb1782.if.then1794_crit_edge
  %cond17923587 = phi ptr [ %call1790, %cond.end1791.if.then1794_crit_edge ], [ %call1785, %sw.bb1782.if.then1794_crit_edge ]
  %i2c_adap1795 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1796 = tail call ptr %cond17923587(ptr noundef nonnull @cx88_pinnacle_hybrid_pctv, ptr noundef %i2c_adap1795) #7
  %cmp1797 = icmp eq ptr %call1796, null
  br i1 %cmp1797, label %if.then1798, label %if.then1813

if.then1798:                                      ; preds = %if.then1794
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #7
  br label %if.end1806.thread

do.end1803:                                       ; preds = %cond.end1791
  call void @__sanitizer_cov_trace_pc() #9
  %call1805 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %if.end1806.thread

if.end1806.thread:                                ; preds = %do.end1803, %if.then1798
  %frontend18093589 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %197 = ptrtoint ptr %frontend18093589 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr null, ptr %frontend18093589, align 4
  br label %sw.epilog

if.then1813:                                      ; preds = %if.then1794
  %frontend1809 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %198 = ptrtoint ptr %frontend1809 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call1796, ptr %frontend1809, align 4
  %i2c_gate_ctrl1817 = getelementptr inbounds %struct.dvb_frontend, ptr %call1796, i32 0, i32 1, i32 28
  %199 = ptrtoint ptr %i2c_gate_ctrl1817 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr null, ptr %i2c_gate_ctrl1817, align 4
  %call1818 = tail call fastcc i32 @attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1818)
  %cmp1819 = icmp slt i32 %call1818, 0
  br i1 %cmp1819, label %if.then1813.frontend_detach_crit_edge, label %if.then1813.sw.epilog_crit_edge

if.then1813.sw.epilog_crit_edge:                  ; preds = %if.then1813
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1813.frontend_detach_crit_edge:            ; preds = %if.then1813
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

sw.bb1823:                                        ; preds = %if.end4.sw.bb1823_crit_edge, %if.end4.sw.bb1823_crit_edge3738
  %call1826 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool1827.not = icmp eq ptr %call1826, null
  br i1 %tobool1827.not, label %cond.end1832, label %sw.bb1823.if.then1835_crit_edge

sw.bb1823.if.then1835_crit_edge:                  ; preds = %sw.bb1823
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1835

cond.end1832:                                     ; preds = %sw.bb1823
  %call1830 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #7
  %call1831 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool1834.not = icmp eq ptr %call1831, null
  br i1 %tobool1834.not, label %do.end1844, label %cond.end1832.if.then1835_crit_edge

cond.end1832.if.then1835_crit_edge:               ; preds = %cond.end1832
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1835

if.then1835:                                      ; preds = %cond.end1832.if.then1835_crit_edge, %sw.bb1823.if.then1835_crit_edge
  %cond18333593 = phi ptr [ %call1831, %cond.end1832.if.then1835_crit_edge ], [ %call1826, %sw.bb1823.if.then1835_crit_edge ]
  %i2c_adap1836 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1837 = tail call ptr %cond18333593(ptr noundef nonnull @cx88_pinnacle_hybrid_pctv, ptr noundef %i2c_adap1836) #7
  %cmp1838 = icmp eq ptr %call1837, null
  br i1 %cmp1838, label %if.then1839, label %if.then1854

if.then1839:                                      ; preds = %if.then1835
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #7
  br label %if.end1847.thread

do.end1844:                                       ; preds = %cond.end1832
  call void @__sanitizer_cov_trace_pc() #9
  %call1846 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %if.end1847.thread

if.end1847.thread:                                ; preds = %do.end1844, %if.then1839
  %frontend18503595 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %200 = ptrtoint ptr %frontend18503595 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %frontend18503595, align 4
  br label %sw.epilog

if.then1854:                                      ; preds = %if.then1835
  %frontend1850 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %201 = ptrtoint ptr %frontend1850 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call1837, ptr %frontend1850, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg1855) #7
  %202 = ptrtoint ptr %cfg1855 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 6989733960532103632, ptr %cfg1855, align 8
  %i2c_gate_ctrl1859 = getelementptr inbounds %struct.dvb_frontend, ptr %call1837, i32 0, i32 1, i32 28
  %203 = ptrtoint ptr %i2c_gate_ctrl1859 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %i2c_gate_ctrl1859, align 4
  %call1860 = call fastcc i32 @attach_xc4000(ptr noundef %dev, ptr noundef nonnull %cfg1855)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1860)
  %cmp1861 = icmp slt i32 %call1860, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg1855) #7
  br i1 %cmp1861, label %if.then1854.frontend_detach_crit_edge, label %if.then1854.sw.epilog_crit_edge

if.then1854.sw.epilog_crit_edge:                  ; preds = %if.then1854
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1854.frontend_detach_crit_edge:            ; preds = %if.then1854
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

sw.bb1868:                                        ; preds = %if.end4
  %ts_gen_cntrl1869 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 16
  %204 = ptrtoint ptr %ts_gen_cntrl1869 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %ts_gen_cntrl1869, align 8
  %call1872 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool1873.not = icmp eq ptr %call1872, null
  br i1 %tobool1873.not, label %cond.end1878, label %sw.bb1868.if.then1881_crit_edge

sw.bb1868.if.then1881_crit_edge:                  ; preds = %sw.bb1868
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1881

cond.end1878:                                     ; preds = %sw.bb1868
  %call1876 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #7
  %call1877 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool1880.not = icmp eq ptr %call1877, null
  br i1 %tobool1880.not, label %do.end1890, label %cond.end1878.if.then1881_crit_edge

cond.end1878.if.then1881_crit_edge:               ; preds = %cond.end1878
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1881

if.then1881:                                      ; preds = %cond.end1878.if.then1881_crit_edge, %sw.bb1868.if.then1881_crit_edge
  %cond18793599 = phi ptr [ %call1877, %cond.end1878.if.then1881_crit_edge ], [ %call1872, %sw.bb1868.if.then1881_crit_edge ]
  %i2c_adap1882 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1883 = tail call ptr %cond18793599(ptr noundef nonnull @cx88_geniatech_x8000_mt, ptr noundef %i2c_adap1882) #7
  %cmp1884 = icmp eq ptr %call1883, null
  br i1 %cmp1884, label %if.then1885, label %if.then1881.if.end1893_crit_edge

if.then1881.if.end1893_crit_edge:                 ; preds = %if.then1881
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1893

if.then1885:                                      ; preds = %if.then1881
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #7
  br label %if.end1893

do.end1890:                                       ; preds = %cond.end1878
  call void @__sanitizer_cov_trace_pc() #9
  %call1892 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %if.end1893

if.end1893:                                       ; preds = %do.end1890, %if.then1885, %if.then1881.if.end1893_crit_edge
  %__r1870.0 = phi ptr [ null, %if.then1885 ], [ %call1883, %if.then1881.if.end1893_crit_edge ], [ null, %do.end1890 ]
  %frontend1896 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %205 = ptrtoint ptr %frontend1896 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %__r1870.0, ptr %frontend1896, align 4
  %call1897 = tail call fastcc i32 @attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1897)
  %cmp1898 = icmp slt i32 %call1897, 0
  br i1 %cmp1898, label %if.end1893.frontend_detach_crit_edge, label %if.end1893.sw.epilog_crit_edge

if.end1893.sw.epilog_crit_edge:                   ; preds = %if.end1893
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end1893.frontend_detach_crit_edge:             ; preds = %if.end1893
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

sw.bb1901:                                        ; preds = %if.end4
  %call1904 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.155) #7
  %tobool1905.not = icmp eq ptr %call1904, null
  br i1 %tobool1905.not, label %cond.end1910, label %sw.bb1901.if.then1913_crit_edge

sw.bb1901.if.then1913_crit_edge:                  ; preds = %sw.bb1901
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1913

cond.end1910:                                     ; preds = %sw.bb1901
  %call1908 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.156) #7
  %call1909 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.155) #7
  %tobool1912.not = icmp eq ptr %call1909, null
  br i1 %tobool1912.not, label %do.end1922, label %cond.end1910.if.then1913_crit_edge

cond.end1910.if.then1913_crit_edge:               ; preds = %cond.end1910
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1913

if.then1913:                                      ; preds = %cond.end1910.if.then1913_crit_edge, %sw.bb1901.if.then1913_crit_edge
  %cond19113602 = phi ptr [ %call1909, %cond.end1910.if.then1913_crit_edge ], [ %call1904, %sw.bb1901.if.then1913_crit_edge ]
  %i2c_adap1914 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1915 = tail call ptr %cond19113602(ptr noundef nonnull @kworld_atsc_120_config, ptr noundef %i2c_adap1914) #7
  %cmp1916 = icmp eq ptr %call1915, null
  br i1 %cmp1916, label %if.then1917, label %if.then1913.if.end1925_crit_edge

if.then1913.if.end1925_crit_edge:                 ; preds = %if.then1913
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1925

if.then1917:                                      ; preds = %if.then1913
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.155) #7
  br label %if.end1925

do.end1922:                                       ; preds = %cond.end1910
  call void @__sanitizer_cov_trace_pc() #9
  %call1924 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #10
  br label %if.end1925

if.end1925:                                       ; preds = %do.end1922, %if.then1917, %if.then1913.if.end1925_crit_edge
  %__r1902.0 = phi ptr [ null, %if.then1917 ], [ %call1915, %if.then1913.if.end1925_crit_edge ], [ null, %do.end1922 ]
  %frontend1928 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %206 = ptrtoint ptr %frontend1928 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %__r1902.0, ptr %frontend1928, align 4
  %call1929 = tail call fastcc i32 @attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1929)
  %cmp1930 = icmp slt i32 %call1929, 0
  br i1 %cmp1930, label %if.end1925.frontend_detach_crit_edge, label %if.end1925.sw.epilog_crit_edge

if.end1925.sw.epilog_crit_edge:                   ; preds = %if.end1925
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end1925.frontend_detach_crit_edge:             ; preds = %if.end1925
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

sw.bb1933:                                        ; preds = %if.end4
  %call1936 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.182) #7
  %tobool1937.not = icmp eq ptr %call1936, null
  br i1 %tobool1937.not, label %cond.end1942, label %sw.bb1933.if.then1945_crit_edge

sw.bb1933.if.then1945_crit_edge:                  ; preds = %sw.bb1933
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1945

cond.end1942:                                     ; preds = %sw.bb1933
  %call1940 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.183) #7
  %call1941 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.182) #7
  %tobool1944.not = icmp eq ptr %call1941, null
  br i1 %tobool1944.not, label %do.end1954, label %cond.end1942.if.then1945_crit_edge

cond.end1942.if.then1945_crit_edge:               ; preds = %cond.end1942
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1945

if.then1945:                                      ; preds = %cond.end1942.if.then1945_crit_edge, %sw.bb1933.if.then1945_crit_edge
  %cond19433605 = phi ptr [ %call1941, %cond.end1942.if.then1945_crit_edge ], [ %call1936, %sw.bb1933.if.then1945_crit_edge ]
  %i2c_adap1946 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call1947 = tail call ptr %cond19433605(ptr noundef nonnull @dvico_fusionhdtv7_config, ptr noundef %i2c_adap1946) #7
  %cmp1948 = icmp eq ptr %call1947, null
  br i1 %cmp1948, label %if.then1949, label %if.then1964

if.then1949:                                      ; preds = %if.then1945
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.182) #7
  br label %if.end1957.thread

do.end1954:                                       ; preds = %cond.end1942
  call void @__sanitizer_cov_trace_pc() #9
  %call1956 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #10
  br label %if.end1957.thread

if.end1957.thread:                                ; preds = %do.end1954, %if.then1949
  %frontend19603607 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %207 = ptrtoint ptr %frontend19603607 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr null, ptr %frontend19603607, align 4
  br label %sw.epilog

if.then1964:                                      ; preds = %if.then1945
  %frontend1960 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %208 = ptrtoint ptr %frontend1960 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call1947, ptr %frontend1960, align 4
  %call1967 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #7
  %tobool1968.not = icmp eq ptr %call1967, null
  br i1 %tobool1968.not, label %cond.end1973, label %if.then1964.if.then1976_crit_edge

if.then1964.if.then1976_crit_edge:                ; preds = %if.then1964
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1976

cond.end1973:                                     ; preds = %if.then1964
  %call1971 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.161) #7
  %call1972 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #7
  %tobool1975.not = icmp eq ptr %call1972, null
  br i1 %tobool1975.not, label %do.end1987, label %cond.end1973.if.then1976_crit_edge

cond.end1973.if.then1976_crit_edge:               ; preds = %cond.end1973
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1976

if.then1976:                                      ; preds = %cond.end1973.if.then1976_crit_edge, %if.then1964.if.then1976_crit_edge
  %cond19743611 = phi ptr [ %call1972, %cond.end1973.if.then1976_crit_edge ], [ %call1967, %if.then1964.if.then1976_crit_edge ]
  %209 = ptrtoint ptr %frontend1960 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %frontend1960, align 4
  %call1980 = tail call ptr %cond19743611(ptr noundef %210, ptr noundef %i2c_adap1946, ptr noundef nonnull @dvico_fusionhdtv7_tuner_config) #7
  %cmp1981 = icmp eq ptr %call1980, null
  br i1 %cmp1981, label %if.then1982, label %if.then1976.sw.epilog_crit_edge

if.then1976.sw.epilog_crit_edge:                  ; preds = %if.then1976
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1982:                                      ; preds = %if.then1976
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.160) #7
  br label %frontend_detach

do.end1987:                                       ; preds = %cond.end1973
  call void @__sanitizer_cov_trace_pc() #9
  %call1989 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #10
  br label %frontend_detach

sw.bb1996:                                        ; preds = %if.end4
  %211 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 2, ptr %gate, align 8
  %call2001 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.189) #7
  %tobool2002.not = icmp eq ptr %call2001, null
  br i1 %tobool2002.not, label %cond.end2007, label %sw.bb1996.if.then2010_crit_edge

sw.bb1996.if.then2010_crit_edge:                  ; preds = %sw.bb1996
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2010

cond.end2007:                                     ; preds = %sw.bb1996
  %call2005 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.190) #7
  %call2006 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.189) #7
  %tobool2009.not = icmp eq ptr %call2006, null
  br i1 %tobool2009.not, label %do.end2020, label %cond.end2007.if.then2010_crit_edge

cond.end2007.if.then2010_crit_edge:               ; preds = %cond.end2007
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2010

if.then2010:                                      ; preds = %cond.end2007.if.then2010_crit_edge, %sw.bb1996.if.then2010_crit_edge
  %cond20083616 = phi ptr [ %call2006, %cond.end2007.if.then2010_crit_edge ], [ %call2001, %sw.bb1996.if.then2010_crit_edge ]
  %212 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev, align 8
  %i2c_adap2012 = getelementptr inbounds %struct.cx88_core, ptr %213, i32 0, i32 11
  %call2013 = tail call ptr %cond20083616(ptr noundef nonnull @hauppauge_hvr4000_config, ptr noundef %i2c_adap2012) #7
  %cmp2014 = icmp eq ptr %call2013, null
  br i1 %cmp2014, label %if.then2015, label %if.then2030

if.then2015:                                      ; preds = %if.then2010
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.189) #7
  br label %if.end2023.thread

do.end2020:                                       ; preds = %cond.end2007
  call void @__sanitizer_cov_trace_pc() #9
  %call2022 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #10
  br label %if.end2023.thread

if.end2023.thread:                                ; preds = %do.end2020, %if.then2015
  %frontend20263618 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %214 = ptrtoint ptr %frontend20263618 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %frontend20263618, align 4
  br label %if.end2062

if.then2030:                                      ; preds = %if.then2010
  %frontend2026 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %215 = ptrtoint ptr %frontend2026 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call2013, ptr %frontend2026, align 4
  %call2033 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool2034.not = icmp eq ptr %call2033, null
  br i1 %tobool2034.not, label %cond.end2039, label %if.then2030.if.then2042_crit_edge

if.then2030.if.then2042_crit_edge:                ; preds = %if.then2030
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2042

cond.end2039:                                     ; preds = %if.then2030
  %call2037 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #7
  %call2038 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool2041.not = icmp eq ptr %call2038, null
  br i1 %tobool2041.not, label %do.end2054, label %cond.end2039.if.then2042_crit_edge

cond.end2039.if.then2042_crit_edge:               ; preds = %cond.end2039
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2042

if.then2042:                                      ; preds = %cond.end2039.if.then2042_crit_edge, %if.then2030.if.then2042_crit_edge
  %cond20403622 = phi ptr [ %call2038, %cond.end2039.if.then2042_crit_edge ], [ %call2033, %if.then2030.if.then2042_crit_edge ]
  %216 = ptrtoint ptr %frontend2026 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %frontend2026, align 4
  %218 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev, align 8
  %i2c_adap2046 = getelementptr inbounds %struct.cx88_core, ptr %219, i32 0, i32 11
  %call2047 = tail call ptr %cond20403622(ptr noundef %217, ptr noundef %i2c_adap2046, i8 noundef zeroext 8, i8 noundef zeroext 64, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  %cmp2048 = icmp eq ptr %call2047, null
  br i1 %cmp2048, label %if.then2049, label %if.then2042.if.end2062_crit_edge

if.then2042.if.end2062_crit_edge:                 ; preds = %if.then2042
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2062

if.then2049:                                      ; preds = %if.then2042
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #7
  br label %frontend_detach

do.end2054:                                       ; preds = %cond.end2039
  call void @__sanitizer_cov_trace_pc() #9
  %call2056 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #10
  br label %frontend_detach

if.end2062:                                       ; preds = %if.then2042.if.end2062_crit_edge, %if.end2023.thread
  %call2064 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 2) #7
  %tobool2065.not = icmp eq ptr %call2064, null
  br i1 %tobool2065.not, label %if.end2062.frontend_detach_crit_edge, label %if.end2067

if.end2062.frontend_detach_crit_edge:             ; preds = %if.end2062
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2067:                                       ; preds = %if.end2062
  %call2070 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool2071.not = icmp eq ptr %call2070, null
  br i1 %tobool2071.not, label %cond.end2076, label %if.end2067.if.then2079_crit_edge

if.end2067.if.then2079_crit_edge:                 ; preds = %if.end2067
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2079

cond.end2076:                                     ; preds = %if.end2067
  %call2074 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #7
  %call2075 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #7
  %tobool2078.not = icmp eq ptr %call2075, null
  br i1 %tobool2078.not, label %do.end2089, label %cond.end2076.if.then2079_crit_edge

cond.end2076.if.then2079_crit_edge:               ; preds = %cond.end2076
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2079

if.then2079:                                      ; preds = %cond.end2076.if.then2079_crit_edge, %if.end2067.if.then2079_crit_edge
  %cond20773627 = phi ptr [ %call2075, %cond.end2076.if.then2079_crit_edge ], [ %call2070, %if.end2067.if.then2079_crit_edge ]
  %220 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev, align 8
  %i2c_adap2081 = getelementptr inbounds %struct.cx88_core, ptr %221, i32 0, i32 11
  %call2082 = tail call ptr %cond20773627(ptr noundef nonnull @hauppauge_hvr_config, ptr noundef %i2c_adap2081) #7
  %cmp2083 = icmp eq ptr %call2082, null
  br i1 %cmp2083, label %if.then2084, label %if.then2099

if.then2084:                                      ; preds = %if.then2079
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #7
  br label %if.end2092.thread

do.end2089:                                       ; preds = %cond.end2076
  call void @__sanitizer_cov_trace_pc() #9
  %call2091 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end2092.thread

if.end2092.thread:                                ; preds = %do.end2089, %if.then2084
  %frontend20953629 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2064, i32 0, i32 2, i32 1
  %222 = ptrtoint ptr %frontend20953629 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %frontend20953629, align 4
  br label %sw.epilog

if.then2099:                                      ; preds = %if.then2079
  %frontend2095 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2064, i32 0, i32 2, i32 1
  %223 = ptrtoint ptr %frontend2095 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call2082, ptr %frontend2095, align 4
  %id2102 = getelementptr inbounds %struct.dvb_frontend, ptr %call2082, i32 0, i32 10
  %224 = ptrtoint ptr %id2102 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %id2102, align 4
  %call2105 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool2106.not = icmp eq ptr %call2105, null
  br i1 %tobool2106.not, label %cond.end2111, label %if.then2099.if.then2114_crit_edge

if.then2099.if.then2114_crit_edge:                ; preds = %if.then2099
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2114

cond.end2111:                                     ; preds = %if.then2099
  %call2109 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #7
  %call2110 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #7
  %tobool2113.not = icmp eq ptr %call2110, null
  br i1 %tobool2113.not, label %do.end2126, label %cond.end2111.if.then2114_crit_edge

cond.end2111.if.then2114_crit_edge:               ; preds = %cond.end2111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2114

if.then2114:                                      ; preds = %cond.end2111.if.then2114_crit_edge, %if.then2099.if.then2114_crit_edge
  %cond21123633 = phi ptr [ %call2110, %cond.end2111.if.then2114_crit_edge ], [ %call2105, %if.then2099.if.then2114_crit_edge ]
  %225 = ptrtoint ptr %frontend2095 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %frontend2095, align 4
  %227 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev, align 8
  %i2c_adap2118 = getelementptr inbounds %struct.cx88_core, ptr %228, i32 0, i32 11
  %call2119 = tail call ptr %cond21123633(ptr noundef %226, ptr noundef %i2c_adap2118, i8 noundef zeroext 97, i32 noundef 63) #7
  %cmp2120 = icmp eq ptr %call2119, null
  br i1 %cmp2120, label %if.then2121, label %if.then2114.sw.epilog_crit_edge

if.then2114.sw.epilog_crit_edge:                  ; preds = %if.then2114
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then2121:                                      ; preds = %if.then2114
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #7
  br label %frontend_detach

do.end2126:                                       ; preds = %cond.end2111
  call void @__sanitizer_cov_trace_pc() #9
  %call2128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %frontend_detach

sw.bb2135:                                        ; preds = %if.end4
  %call2138 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.189) #7
  %tobool2139.not = icmp eq ptr %call2138, null
  br i1 %tobool2139.not, label %cond.end2144, label %sw.bb2135.if.then2147_crit_edge

sw.bb2135.if.then2147_crit_edge:                  ; preds = %sw.bb2135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2147

cond.end2144:                                     ; preds = %sw.bb2135
  %call2142 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.190) #7
  %call2143 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.189) #7
  %tobool2146.not = icmp eq ptr %call2143, null
  br i1 %tobool2146.not, label %do.end2157, label %cond.end2144.if.then2147_crit_edge

cond.end2144.if.then2147_crit_edge:               ; preds = %cond.end2144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2147

if.then2147:                                      ; preds = %cond.end2144.if.then2147_crit_edge, %sw.bb2135.if.then2147_crit_edge
  %cond21453638 = phi ptr [ %call2143, %cond.end2144.if.then2147_crit_edge ], [ %call2138, %sw.bb2135.if.then2147_crit_edge ]
  %229 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev, align 8
  %i2c_adap2149 = getelementptr inbounds %struct.cx88_core, ptr %230, i32 0, i32 11
  %call2150 = tail call ptr %cond21453638(ptr noundef nonnull @hauppauge_hvr4000_config, ptr noundef %i2c_adap2149) #7
  %cmp2151 = icmp eq ptr %call2150, null
  br i1 %cmp2151, label %if.then2152, label %if.then2167

if.then2152:                                      ; preds = %if.then2147
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.189) #7
  br label %if.end2160.thread

do.end2157:                                       ; preds = %cond.end2144
  call void @__sanitizer_cov_trace_pc() #9
  %call2159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #10
  br label %if.end2160.thread

if.end2160.thread:                                ; preds = %do.end2157, %if.then2152
  %frontend21633640 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %231 = ptrtoint ptr %frontend21633640 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %frontend21633640, align 4
  br label %sw.epilog

if.then2167:                                      ; preds = %if.then2147
  %frontend2163 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %232 = ptrtoint ptr %frontend2163 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call2150, ptr %frontend2163, align 4
  %call2170 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool2171.not = icmp eq ptr %call2170, null
  br i1 %tobool2171.not, label %cond.end2176, label %if.then2167.if.then2179_crit_edge

if.then2167.if.then2179_crit_edge:                ; preds = %if.then2167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2179

cond.end2176:                                     ; preds = %if.then2167
  %call2174 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #7
  %call2175 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #7
  %tobool2178.not = icmp eq ptr %call2175, null
  br i1 %tobool2178.not, label %do.end2191, label %cond.end2176.if.then2179_crit_edge

cond.end2176.if.then2179_crit_edge:               ; preds = %cond.end2176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2179

if.then2179:                                      ; preds = %cond.end2176.if.then2179_crit_edge, %if.then2167.if.then2179_crit_edge
  %cond21773644 = phi ptr [ %call2175, %cond.end2176.if.then2179_crit_edge ], [ %call2170, %if.then2167.if.then2179_crit_edge ]
  %233 = ptrtoint ptr %frontend2163 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %frontend2163, align 4
  %235 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev, align 8
  %i2c_adap2183 = getelementptr inbounds %struct.cx88_core, ptr %236, i32 0, i32 11
  %call2184 = tail call ptr %cond21773644(ptr noundef %234, ptr noundef %i2c_adap2183, i8 noundef zeroext 8, i8 noundef zeroext 64, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  %cmp2185 = icmp eq ptr %call2184, null
  br i1 %cmp2185, label %if.then2186, label %if.then2179.sw.epilog_crit_edge

if.then2179.sw.epilog_crit_edge:                  ; preds = %if.then2179
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then2186:                                      ; preds = %if.then2179
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #7
  br label %frontend_detach

do.end2191:                                       ; preds = %cond.end2176
  call void @__sanitizer_cov_trace_pc() #9
  %call2193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #10
  br label %frontend_detach

sw.bb2200:                                        ; preds = %if.end4.sw.bb2200_crit_edge, %if.end4.sw.bb2200_crit_edge3739, %if.end4.sw.bb2200_crit_edge3740
  %call2203 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.204) #7
  %tobool2204.not = icmp eq ptr %call2203, null
  br i1 %tobool2204.not, label %cond.end2209, label %sw.bb2200.if.then2212_crit_edge

sw.bb2200.if.then2212_crit_edge:                  ; preds = %sw.bb2200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2212

cond.end2209:                                     ; preds = %sw.bb2200
  %call2207 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.205) #7
  %call2208 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.204) #7
  %tobool2211.not = icmp eq ptr %call2208, null
  br i1 %tobool2211.not, label %do.end2221, label %cond.end2209.if.then2212_crit_edge

cond.end2209.if.then2212_crit_edge:               ; preds = %cond.end2209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2212

if.then2212:                                      ; preds = %cond.end2209.if.then2212_crit_edge, %sw.bb2200.if.then2212_crit_edge
  %cond22103649 = phi ptr [ %call2208, %cond.end2209.if.then2212_crit_edge ], [ %call2203, %sw.bb2200.if.then2212_crit_edge ]
  %i2c_adap2213 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call2214 = tail call ptr %cond22103649(ptr noundef nonnull @tevii_tuner_sharp_config, ptr noundef %i2c_adap2213) #7
  %cmp2215 = icmp eq ptr %call2214, null
  br i1 %cmp2215, label %if.then2216, label %if.then2231

if.then2216:                                      ; preds = %if.then2212
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.204) #7
  br label %if.else2271

do.end2221:                                       ; preds = %cond.end2209
  call void @__sanitizer_cov_trace_pc() #9
  %call2223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207) #10
  br label %if.else2271

if.then2231:                                      ; preds = %if.then2212
  %frontend2227 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %237 = ptrtoint ptr %frontend2227 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call2214, ptr %frontend2227, align 4
  %call2234 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool2235.not = icmp eq ptr %call2234, null
  br i1 %tobool2235.not, label %cond.end2240, label %if.then2231.if.then2243_crit_edge

if.then2231.if.then2243_crit_edge:                ; preds = %if.then2231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2243

cond.end2240:                                     ; preds = %if.then2231
  %call2238 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.32) #7
  %call2239 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.31) #7
  %tobool2242.not = icmp eq ptr %call2239, null
  br i1 %tobool2242.not, label %do.end2254, label %cond.end2240.if.then2243_crit_edge

cond.end2240.if.then2243_crit_edge:               ; preds = %cond.end2240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2243

if.then2243:                                      ; preds = %cond.end2240.if.then2243_crit_edge, %if.then2231.if.then2243_crit_edge
  %cond22413656 = phi ptr [ %call2239, %cond.end2240.if.then2243_crit_edge ], [ %call2234, %if.then2231.if.then2243_crit_edge ]
  %238 = ptrtoint ptr %frontend2227 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %frontend2227, align 4
  %call2247 = tail call ptr %cond22413656(ptr noundef %239, i32 noundef 96, ptr noundef %i2c_adap2213, i32 noundef 13) #7
  %cmp2248 = icmp eq ptr %call2247, null
  br i1 %cmp2248, label %if.then2249, label %if.end2261

if.then2249:                                      ; preds = %if.then2243
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.31) #7
  br label %frontend_detach

do.end2254:                                       ; preds = %cond.end2240
  call void @__sanitizer_cov_trace_pc() #9
  %call2256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %frontend_detach

if.end2261:                                       ; preds = %if.then2243
  call void @__sanitizer_cov_trace_pc() #9
  %240 = ptrtoint ptr %frontend2227 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %frontend2227, align 4
  %set_voltage2265 = getelementptr inbounds %struct.dvb_frontend, ptr %241, i32 0, i32 1, i32 25
  %242 = ptrtoint ptr %set_voltage2265 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %set_voltage2265, align 4
  %prev_set_voltage2266 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 25
  %244 = ptrtoint ptr %prev_set_voltage2266 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %243, ptr %prev_set_voltage2266, align 8
  %245 = load ptr, ptr %frontend2227, align 4
  %set_voltage2270 = getelementptr inbounds %struct.dvb_frontend, ptr %245, i32 0, i32 1, i32 25
  %246 = ptrtoint ptr %set_voltage2270 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @tevii_dvbs_set_voltage, ptr %set_voltage2270, align 4
  br label %sw.epilog

if.else2271:                                      ; preds = %do.end2221, %if.then2216
  %frontend22273651 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %247 = ptrtoint ptr %frontend22273651 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr null, ptr %frontend22273651, align 4
  %call2274 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.211) #7
  %tobool2275.not = icmp eq ptr %call2274, null
  br i1 %tobool2275.not, label %cond.end2280, label %if.else2271.if.then2283_crit_edge

if.else2271.if.then2283_crit_edge:                ; preds = %if.else2271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2283

cond.end2280:                                     ; preds = %if.else2271
  %call2278 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.212) #7
  %call2279 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.211) #7
  %tobool2282.not = icmp eq ptr %call2279, null
  br i1 %tobool2282.not, label %do.end2292, label %cond.end2280.if.then2283_crit_edge

cond.end2280.if.then2283_crit_edge:               ; preds = %cond.end2280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2283

if.then2283:                                      ; preds = %cond.end2280.if.then2283_crit_edge, %if.else2271.if.then2283_crit_edge
  %cond22813661 = phi ptr [ %call2279, %cond.end2280.if.then2283_crit_edge ], [ %call2274, %if.else2271.if.then2283_crit_edge ]
  %i2c_adap2284 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call2285 = tail call ptr %cond22813661(ptr noundef nonnull @tevii_tuner_earda_config, ptr noundef %i2c_adap2284) #7
  %cmp2286 = icmp eq ptr %call2285, null
  br i1 %cmp2286, label %if.then2287, label %if.then2302

if.then2287:                                      ; preds = %if.then2283
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.211) #7
  br label %if.end2295.thread

do.end2292:                                       ; preds = %cond.end2280
  call void @__sanitizer_cov_trace_pc() #9
  %call2294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214) #10
  br label %if.end2295.thread

if.end2295.thread:                                ; preds = %do.end2292, %if.then2287
  %248 = ptrtoint ptr %frontend22273651 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr null, ptr %frontend22273651, align 4
  br label %sw.epilog

if.then2302:                                      ; preds = %if.then2283
  %249 = ptrtoint ptr %frontend22273651 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call2285, ptr %frontend22273651, align 4
  %call2305 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.216) #7
  %tobool2306.not = icmp eq ptr %call2305, null
  br i1 %tobool2306.not, label %cond.end2311, label %if.then2302.if.then2314_crit_edge

if.then2302.if.then2314_crit_edge:                ; preds = %if.then2302
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2314

cond.end2311:                                     ; preds = %if.then2302
  %call2309 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.217) #7
  %call2310 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.216) #7
  %tobool2313.not = icmp eq ptr %call2310, null
  br i1 %tobool2313.not, label %do.end2325, label %cond.end2311.if.then2314_crit_edge

cond.end2311.if.then2314_crit_edge:               ; preds = %cond.end2311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2314

if.then2314:                                      ; preds = %cond.end2311.if.then2314_crit_edge, %if.then2302.if.then2314_crit_edge
  %cond23123666 = phi ptr [ %call2310, %cond.end2311.if.then2314_crit_edge ], [ %call2305, %if.then2302.if.then2314_crit_edge ]
  %250 = ptrtoint ptr %frontend22273651 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %frontend22273651, align 4
  %call2318 = tail call ptr %cond23123666(ptr noundef %251, i32 noundef 97, ptr noundef %i2c_adap2284) #7
  %cmp2319 = icmp eq ptr %call2318, null
  br i1 %cmp2319, label %if.then2320, label %if.end2332

if.then2320:                                      ; preds = %if.then2314
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.216) #7
  br label %frontend_detach

do.end2325:                                       ; preds = %cond.end2311
  call void @__sanitizer_cov_trace_pc() #9
  %call2327 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219) #10
  br label %frontend_detach

if.end2332:                                       ; preds = %if.then2314
  call void @__sanitizer_cov_trace_pc() #9
  %252 = ptrtoint ptr %frontend22273651 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %frontend22273651, align 4
  %set_voltage2336 = getelementptr inbounds %struct.dvb_frontend, ptr %253, i32 0, i32 1, i32 25
  %254 = ptrtoint ptr %set_voltage2336 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %set_voltage2336, align 4
  %prev_set_voltage2337 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 25
  %256 = ptrtoint ptr %prev_set_voltage2337 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %255, ptr %prev_set_voltage2337, align 8
  %257 = load ptr, ptr %frontend22273651, align 4
  %set_voltage2341 = getelementptr inbounds %struct.dvb_frontend, ptr %257, i32 0, i32 1, i32 25
  %258 = ptrtoint ptr %set_voltage2341 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @tevii_dvbs_set_voltage, ptr %set_voltage2341, align 4
  br label %sw.epilog

sw.bb2344:                                        ; preds = %if.end4
  %call2347 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.189) #7
  %tobool2348.not = icmp eq ptr %call2347, null
  br i1 %tobool2348.not, label %cond.end2353, label %sw.bb2344.if.then2356_crit_edge

sw.bb2344.if.then2356_crit_edge:                  ; preds = %sw.bb2344
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2356

cond.end2353:                                     ; preds = %sw.bb2344
  %call2351 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.190) #7
  %call2352 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.189) #7
  %tobool2355.not = icmp eq ptr %call2352, null
  br i1 %tobool2355.not, label %do.end2365, label %cond.end2353.if.then2356_crit_edge

cond.end2353.if.then2356_crit_edge:               ; preds = %cond.end2353
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2356

if.then2356:                                      ; preds = %cond.end2353.if.then2356_crit_edge, %sw.bb2344.if.then2356_crit_edge
  %cond23543671 = phi ptr [ %call2352, %cond.end2353.if.then2356_crit_edge ], [ %call2347, %sw.bb2344.if.then2356_crit_edge ]
  %i2c_adap2357 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call2358 = tail call ptr %cond23543671(ptr noundef nonnull @tevii_s460_config, ptr noundef %i2c_adap2357) #7
  %cmp2359 = icmp eq ptr %call2358, null
  br i1 %cmp2359, label %if.then2360, label %if.then2375

if.then2360:                                      ; preds = %if.then2356
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.189) #7
  br label %if.end2368.thread

do.end2365:                                       ; preds = %cond.end2353
  call void @__sanitizer_cov_trace_pc() #9
  %call2367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #10
  br label %if.end2368.thread

if.end2368.thread:                                ; preds = %do.end2365, %if.then2360
  %frontend23713673 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %259 = ptrtoint ptr %frontend23713673 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr null, ptr %frontend23713673, align 4
  br label %sw.epilog

if.then2375:                                      ; preds = %if.then2356
  call void @__sanitizer_cov_trace_pc() #9
  %frontend2371 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %260 = ptrtoint ptr %frontend2371 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %call2358, ptr %frontend2371, align 4
  %set_voltage2379 = getelementptr inbounds %struct.dvb_frontend, ptr %call2358, i32 0, i32 1, i32 25
  %261 = ptrtoint ptr %set_voltage2379 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @tevii_dvbs_set_voltage, ptr %set_voltage2379, align 4
  br label %sw.epilog

sw.bb2381:                                        ; preds = %if.end4
  %call2384 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.223) #7
  %tobool2385.not = icmp eq ptr %call2384, null
  br i1 %tobool2385.not, label %cond.end2390, label %sw.bb2381.if.then2393_crit_edge

sw.bb2381.if.then2393_crit_edge:                  ; preds = %sw.bb2381
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2393

cond.end2390:                                     ; preds = %sw.bb2381
  %call2388 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.224) #7
  %call2389 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.223) #7
  %tobool2392.not = icmp eq ptr %call2389, null
  br i1 %tobool2392.not, label %do.end2402, label %cond.end2390.if.then2393_crit_edge

cond.end2390.if.then2393_crit_edge:               ; preds = %cond.end2390
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2393

if.then2393:                                      ; preds = %cond.end2390.if.then2393_crit_edge, %sw.bb2381.if.then2393_crit_edge
  %cond23913677 = phi ptr [ %call2389, %cond.end2390.if.then2393_crit_edge ], [ %call2384, %sw.bb2381.if.then2393_crit_edge ]
  %i2c_adap2394 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call2395 = tail call ptr %cond23913677(ptr noundef nonnull @tevii_ds3000_config, ptr noundef %i2c_adap2394) #7
  %cmp2396 = icmp eq ptr %call2395, null
  br i1 %cmp2396, label %if.then2397, label %if.then2412

if.then2397:                                      ; preds = %if.then2393
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.223) #7
  br label %if.end2405.thread

do.end2402:                                       ; preds = %cond.end2390
  call void @__sanitizer_cov_trace_pc() #9
  %call2404 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226) #10
  br label %if.end2405.thread

if.end2405.thread:                                ; preds = %do.end2402, %if.then2397
  %frontend24083679 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %262 = ptrtoint ptr %frontend24083679 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr null, ptr %frontend24083679, align 4
  br label %sw.epilog

if.then2412:                                      ; preds = %if.then2393
  %frontend2408 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %263 = ptrtoint ptr %frontend2408 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call2395, ptr %frontend2408, align 4
  %call2415 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.228) #7
  %tobool2416.not = icmp eq ptr %call2415, null
  br i1 %tobool2416.not, label %cond.end2421, label %if.then2412.if.then2424_crit_edge

if.then2412.if.then2424_crit_edge:                ; preds = %if.then2412
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2424

cond.end2421:                                     ; preds = %if.then2412
  %call2419 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.229) #7
  %call2420 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.228) #7
  %tobool2423.not = icmp eq ptr %call2420, null
  br i1 %tobool2423.not, label %do.end2435, label %cond.end2421.if.then2424_crit_edge

cond.end2421.if.then2424_crit_edge:               ; preds = %cond.end2421
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2424

if.then2424:                                      ; preds = %cond.end2421.if.then2424_crit_edge, %if.then2412.if.then2424_crit_edge
  %cond24223683 = phi ptr [ %call2420, %cond.end2421.if.then2424_crit_edge ], [ %call2415, %if.then2412.if.then2424_crit_edge ]
  %264 = ptrtoint ptr %frontend2408 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %frontend2408, align 4
  %call2428 = tail call ptr %cond24223683(ptr noundef %265, ptr noundef nonnull @tevii_ts2020_config, ptr noundef %i2c_adap2394) #7
  %cmp2429 = icmp eq ptr %call2428, null
  br i1 %cmp2429, label %if.then2430, label %if.then2424.if.end2438_crit_edge

if.then2424.if.end2438_crit_edge:                 ; preds = %if.then2424
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2438

if.then2430:                                      ; preds = %if.then2424
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.228) #7
  br label %if.end2438

do.end2435:                                       ; preds = %cond.end2421
  call void @__sanitizer_cov_trace_pc() #9
  %call2437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231) #10
  br label %if.end2438

if.end2438:                                       ; preds = %do.end2435, %if.then2430, %if.then2424.if.end2438_crit_edge
  %266 = ptrtoint ptr %frontend2408 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %frontend2408, align 4
  %set_voltage2443 = getelementptr inbounds %struct.dvb_frontend, ptr %267, i32 0, i32 1, i32 25
  %268 = ptrtoint ptr %set_voltage2443 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @tevii_dvbs_set_voltage, ptr %set_voltage2443, align 4
  br label %sw.epilog

sw.bb2445:                                        ; preds = %if.end4.sw.bb2445_crit_edge, %if.end4.sw.bb2445_crit_edge3741, %if.end4.sw.bb2445_crit_edge3742, %if.end4.sw.bb2445_crit_edge3743
  %call2448 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.189) #7
  %tobool2449.not = icmp eq ptr %call2448, null
  br i1 %tobool2449.not, label %cond.end2454, label %sw.bb2445.if.then2457_crit_edge

sw.bb2445.if.then2457_crit_edge:                  ; preds = %sw.bb2445
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2457

cond.end2454:                                     ; preds = %sw.bb2445
  %call2452 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.190) #7
  %call2453 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.189) #7
  %tobool2456.not = icmp eq ptr %call2453, null
  br i1 %tobool2456.not, label %do.end2466, label %cond.end2454.if.then2457_crit_edge

cond.end2454.if.then2457_crit_edge:               ; preds = %cond.end2454
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2457

if.then2457:                                      ; preds = %cond.end2454.if.then2457_crit_edge, %sw.bb2445.if.then2457_crit_edge
  %cond24553686 = phi ptr [ %call2453, %cond.end2454.if.then2457_crit_edge ], [ %call2448, %sw.bb2445.if.then2457_crit_edge ]
  %i2c_adap2458 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call2459 = tail call ptr %cond24553686(ptr noundef nonnull @hauppauge_hvr4000_config, ptr noundef %i2c_adap2458) #7
  %cmp2460 = icmp eq ptr %call2459, null
  br i1 %cmp2460, label %if.then2461, label %if.then2476

if.then2461:                                      ; preds = %if.then2457
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.189) #7
  br label %if.end2469.thread

do.end2466:                                       ; preds = %cond.end2454
  call void @__sanitizer_cov_trace_pc() #9
  %call2468 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #10
  br label %if.end2469.thread

if.end2469.thread:                                ; preds = %do.end2466, %if.then2461
  %frontend24723688 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %269 = ptrtoint ptr %frontend24723688 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr null, ptr %frontend24723688, align 4
  br label %sw.epilog

if.then2476:                                      ; preds = %if.then2457
  call void @__sanitizer_cov_trace_pc() #9
  %frontend2472 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %270 = ptrtoint ptr %frontend2472 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %call2459, ptr %frontend2472, align 4
  %set_voltage2480 = getelementptr inbounds %struct.dvb_frontend, ptr %call2459, i32 0, i32 1, i32 25
  %271 = ptrtoint ptr %set_voltage2480 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr @tevii_dvbs_set_voltage, ptr %set_voltage2480, align 4
  br label %sw.epilog

sw.bb2482:                                        ; preds = %if.end4
  %call2485 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool2486.not = icmp eq ptr %call2485, null
  br i1 %tobool2486.not, label %cond.end2491, label %sw.bb2482.if.then2494_crit_edge

sw.bb2482.if.then2494_crit_edge:                  ; preds = %sw.bb2482
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2494

cond.end2491:                                     ; preds = %sw.bb2482
  %call2489 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #7
  %call2490 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.72) #7
  %tobool2493.not = icmp eq ptr %call2490, null
  br i1 %tobool2493.not, label %do.end2503, label %cond.end2491.if.then2494_crit_edge

cond.end2491.if.then2494_crit_edge:               ; preds = %cond.end2491
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2494

if.then2494:                                      ; preds = %cond.end2491.if.then2494_crit_edge, %sw.bb2482.if.then2494_crit_edge
  %cond24923692 = phi ptr [ %call2490, %cond.end2491.if.then2494_crit_edge ], [ %call2485, %sw.bb2482.if.then2494_crit_edge ]
  %i2c_adap2495 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call2496 = tail call ptr %cond24923692(ptr noundef nonnull @cx88_terratec_cinergy_ht_pci_mkii_config, ptr noundef %i2c_adap2495) #7
  %cmp2497 = icmp eq ptr %call2496, null
  br i1 %cmp2497, label %if.then2498, label %if.then2513

if.then2498:                                      ; preds = %if.then2494
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.72) #7
  br label %if.end2506.thread

do.end2503:                                       ; preds = %cond.end2491
  call void @__sanitizer_cov_trace_pc() #9
  %call2505 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %if.end2506.thread

if.end2506.thread:                                ; preds = %do.end2503, %if.then2498
  %frontend25093694 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %272 = ptrtoint ptr %frontend25093694 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr null, ptr %frontend25093694, align 4
  br label %sw.epilog

if.then2513:                                      ; preds = %if.then2494
  %frontend2509 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %273 = ptrtoint ptr %frontend2509 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call2496, ptr %frontend2509, align 4
  %i2c_gate_ctrl2517 = getelementptr inbounds %struct.dvb_frontend, ptr %call2496, i32 0, i32 1, i32 28
  %274 = ptrtoint ptr %i2c_gate_ctrl2517 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %i2c_gate_ctrl2517, align 4
  %call2518 = tail call fastcc i32 @attach_xc3028(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2518)
  %cmp2519 = icmp slt i32 %call2518, 0
  br i1 %cmp2519, label %if.then2513.frontend_detach_crit_edge, label %if.then2513.sw.epilog_crit_edge

if.then2513.sw.epilog_crit_edge:                  ; preds = %if.then2513
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then2513.frontend_detach_crit_edge:            ; preds = %if.then2513
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

sw.bb2523:                                        ; preds = %if.end4
  %call2527 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.237) #7
  %tobool2528.not = icmp eq ptr %call2527, null
  br i1 %tobool2528.not, label %cond.end2533, label %sw.bb2523.if.then2536_crit_edge

sw.bb2523.if.then2536_crit_edge:                  ; preds = %sw.bb2523
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2536

cond.end2533:                                     ; preds = %sw.bb2523
  %call2531 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.238) #7
  %call2532 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.237) #7
  %tobool2535.not = icmp eq ptr %call2532, null
  br i1 %tobool2535.not, label %do.end2545, label %cond.end2533.if.then2536_crit_edge

cond.end2533.if.then2536_crit_edge:               ; preds = %cond.end2533
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2536

if.then2536:                                      ; preds = %cond.end2533.if.then2536_crit_edge, %sw.bb2523.if.then2536_crit_edge
  %cond25343698 = phi ptr [ %call2532, %cond.end2533.if.then2536_crit_edge ], [ %call2527, %sw.bb2523.if.then2536_crit_edge ]
  %i2c_adap2537 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call2538 = tail call ptr %cond25343698(ptr noundef nonnull @prof_7301_stv0900_config, ptr noundef %i2c_adap2537, i32 noundef 0) #7
  %cmp2539 = icmp eq ptr %call2538, null
  br i1 %cmp2539, label %if.then2540, label %if.then2555

if.then2540:                                      ; preds = %if.then2536
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.237) #7
  br label %if.end2548.thread

do.end2545:                                       ; preds = %cond.end2533
  call void @__sanitizer_cov_trace_pc() #9
  %call2547 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240) #10
  br label %if.end2548.thread

if.end2548.thread:                                ; preds = %do.end2545, %if.then2540
  %frontend25513700 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %275 = ptrtoint ptr %frontend25513700 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %frontend25513700, align 4
  br label %sw.epilog

if.then2555:                                      ; preds = %if.then2536
  %frontend2551 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %276 = ptrtoint ptr %frontend2551 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %call2538, ptr %frontend2551, align 4
  %call2558 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.242) #7
  %tobool2559.not = icmp eq ptr %call2558, null
  br i1 %tobool2559.not, label %cond.end2564, label %if.then2555.if.then2567_crit_edge

if.then2555.if.then2567_crit_edge:                ; preds = %if.then2555
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2567

cond.end2564:                                     ; preds = %if.then2555
  %call2562 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.243) #7
  %call2563 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.242) #7
  %tobool2566.not = icmp eq ptr %call2563, null
  br i1 %tobool2566.not, label %do.end2578, label %cond.end2564.if.then2567_crit_edge

cond.end2564.if.then2567_crit_edge:               ; preds = %cond.end2564
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2567

if.then2567:                                      ; preds = %cond.end2564.if.then2567_crit_edge, %if.then2555.if.then2567_crit_edge
  %cond25653704 = phi ptr [ %call2563, %cond.end2564.if.then2567_crit_edge ], [ %call2558, %if.then2555.if.then2567_crit_edge ]
  %277 = ptrtoint ptr %frontend2551 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %frontend2551, align 4
  %call2571 = tail call ptr %cond25653704(ptr noundef %278, ptr noundef nonnull @prof_7301_stb6100_config, ptr noundef %i2c_adap2537) #7
  %cmp2572 = icmp eq ptr %call2571, null
  br i1 %cmp2572, label %if.then2573, label %if.end2585

if.then2573:                                      ; preds = %if.then2567
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.242) #7
  br label %frontend_detach

do.end2578:                                       ; preds = %cond.end2564
  call void @__sanitizer_cov_trace_pc() #9
  %call2580 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245) #10
  br label %frontend_detach

if.end2585:                                       ; preds = %if.then2567
  call void @__sanitizer_cov_trace_pc() #9
  %279 = ptrtoint ptr %frontend2551 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %frontend2551, align 4
  %set_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %280, i32 0, i32 1, i32 32, i32 16
  %281 = ptrtoint ptr %set_frequency to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @stb6100_set_freq, ptr %set_frequency, align 4
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %280, i32 0, i32 1, i32 32, i32 9
  %282 = ptrtoint ptr %get_frequency to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr @stb6100_get_freq, ptr %get_frequency, align 4
  %set_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %280, i32 0, i32 1, i32 32, i32 17
  %283 = ptrtoint ptr %set_bandwidth to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @stb6100_set_bandw, ptr %set_bandwidth, align 4
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %280, i32 0, i32 1, i32 32, i32 10
  %284 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr @stb6100_get_bandw, ptr %get_bandwidth, align 4
  %285 = load ptr, ptr %frontend2551, align 4
  %set_voltage2593 = getelementptr inbounds %struct.dvb_frontend, ptr %285, i32 0, i32 1, i32 25
  %286 = ptrtoint ptr %set_voltage2593 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %set_voltage2593, align 4
  %prev_set_voltage2594 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 25
  %288 = ptrtoint ptr %prev_set_voltage2594 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %287, ptr %prev_set_voltage2594, align 8
  %289 = load ptr, ptr %frontend2551, align 4
  %set_voltage2598 = getelementptr inbounds %struct.dvb_frontend, ptr %289, i32 0, i32 1, i32 25
  %290 = ptrtoint ptr %set_voltage2598 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr @tevii_dvbs_set_voltage, ptr %set_voltage2598, align 4
  br label %sw.epilog

sw.bb2602:                                        ; preds = %if.end4
  %ts_gen_cntrl2603 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 16
  %291 = ptrtoint ptr %ts_gen_cntrl2603 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 8, ptr %ts_gen_cntrl2603, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !672
  tail call void @arm_heavy_mb() #7
  %lmmio2609 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %292 = ptrtoint ptr %lmmio2609 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %lmmio2609, align 4
  %add.ptr2610 = getelementptr i32, ptr %293, i32 868356
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2610) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !673
  %295 = or i32 %294, 16842752
  %296 = ptrtoint ptr %lmmio2609 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %lmmio2609, align 4
  %add.ptr2617 = getelementptr i32, ptr %297, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2617, i32 %295) #7, !srcloc !636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !674
  tail call void @arm_heavy_mb() #7
  %298 = ptrtoint ptr %lmmio2609 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %lmmio2609, align 4
  %add.ptr2624 = getelementptr i32, ptr %299, i32 868356
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2624) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !675
  %301 = and i32 %300, -16777217
  %302 = ptrtoint ptr %lmmio2609 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %lmmio2609, align 4
  %add.ptr2631 = getelementptr i32, ptr %303, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2631, i32 %301) #7, !srcloc !636
  tail call void @msleep(i32 noundef 100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !676
  tail call void @arm_heavy_mb() #7
  %304 = ptrtoint ptr %lmmio2609 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %lmmio2609, align 4
  %add.ptr2638 = getelementptr i32, ptr %305, i32 868356
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2638) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !677
  %307 = or i32 %306, 16777216
  %308 = ptrtoint ptr %lmmio2609 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %lmmio2609, align 4
  %add.ptr2645 = getelementptr i32, ptr %309, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2645, i32 %307) #7, !srcloc !636
  tail call void @msleep(i32 noundef 200) #7
  %call2648 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.204) #7
  %tobool2649.not = icmp eq ptr %call2648, null
  br i1 %tobool2649.not, label %cond.end2654, label %sw.bb2602.if.then2657_crit_edge

sw.bb2602.if.then2657_crit_edge:                  ; preds = %sw.bb2602
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2657

cond.end2654:                                     ; preds = %sw.bb2602
  %call2652 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.205) #7
  %call2653 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.204) #7
  %tobool2656.not = icmp eq ptr %call2653, null
  br i1 %tobool2656.not, label %do.end2667, label %cond.end2654.if.then2657_crit_edge

cond.end2654.if.then2657_crit_edge:               ; preds = %cond.end2654
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2657

if.then2657:                                      ; preds = %cond.end2654.if.then2657_crit_edge, %sw.bb2602.if.then2657_crit_edge
  %cond26553712 = phi ptr [ %call2653, %cond.end2654.if.then2657_crit_edge ], [ %call2648, %sw.bb2602.if.then2657_crit_edge ]
  %310 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev, align 8
  %i2c_adap2659 = getelementptr inbounds %struct.cx88_core, ptr %311, i32 0, i32 11
  %call2660 = tail call ptr %cond26553712(ptr noundef nonnull @samsung_stv0299_config, ptr noundef %i2c_adap2659) #7
  %cmp2661 = icmp eq ptr %call2660, null
  br i1 %cmp2661, label %if.then2662, label %if.then2677

if.then2662:                                      ; preds = %if.then2657
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.204) #7
  br label %if.end2670.thread

do.end2667:                                       ; preds = %cond.end2654
  call void @__sanitizer_cov_trace_pc() #9
  %call2669 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207) #10
  br label %if.end2670.thread

if.end2670.thread:                                ; preds = %do.end2667, %if.then2662
  %frontend26733714 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %312 = ptrtoint ptr %frontend26733714 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr null, ptr %frontend26733714, align 4
  br label %sw.epilog

if.then2677:                                      ; preds = %if.then2657
  call void @__sanitizer_cov_trace_pc() #9
  %frontend2673 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %313 = ptrtoint ptr %frontend2673 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call2660, ptr %frontend2673, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %call2660, i32 0, i32 1, i32 32, i32 6
  %314 = ptrtoint ptr %set_params to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr @samsung_smt_7020_tuner_set_params, ptr %set_params, align 4
  %315 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev, align 8
  %i2c_adap2683 = getelementptr inbounds %struct.cx88_core, ptr %316, i32 0, i32 11
  %317 = load ptr, ptr %frontend2673, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %317, i32 0, i32 4
  %318 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %i2c_adap2683, ptr %tuner_priv, align 4
  %319 = load ptr, ptr %frontend2673, align 4
  %set_voltage2689 = getelementptr inbounds %struct.dvb_frontend, ptr %319, i32 0, i32 1, i32 25
  %320 = ptrtoint ptr %set_voltage2689 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr @samsung_smt_7020_set_voltage, ptr %set_voltage2689, align 4
  %321 = load ptr, ptr %frontend2673, align 4
  %set_tone = getelementptr inbounds %struct.dvb_frontend, ptr %321, i32 0, i32 1, i32 24
  %322 = ptrtoint ptr %set_tone to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr @samsung_smt_7020_set_tone, ptr %set_tone, align 4
  br label %sw.epilog

sw.bb2694:                                        ; preds = %if.end4
  %ts_gen_cntrl2695 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 16
  %323 = ptrtoint ptr %ts_gen_cntrl2695 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 0, ptr %ts_gen_cntrl2695, align 8
  %call2698 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.249) #7
  %tobool2699.not = icmp eq ptr %call2698, null
  br i1 %tobool2699.not, label %cond.end2704, label %sw.bb2694.if.then2707_crit_edge

sw.bb2694.if.then2707_crit_edge:                  ; preds = %sw.bb2694
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2707

cond.end2704:                                     ; preds = %sw.bb2694
  %call2702 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.250) #7
  %call2703 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.249) #7
  %tobool2706.not = icmp eq ptr %call2703, null
  br i1 %tobool2706.not, label %do.end2716, label %cond.end2704.if.then2707_crit_edge

cond.end2704.if.then2707_crit_edge:               ; preds = %cond.end2704
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2707

if.then2707:                                      ; preds = %cond.end2704.if.then2707_crit_edge, %sw.bb2694.if.then2707_crit_edge
  %cond27053718 = phi ptr [ %call2703, %cond.end2704.if.then2707_crit_edge ], [ %call2698, %sw.bb2694.if.then2707_crit_edge ]
  %i2c_adap2708 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 11
  %call2709 = tail call ptr %cond27053718(ptr noundef nonnull @twinhan_vp1027, ptr noundef %i2c_adap2708) #7
  %cmp2710 = icmp eq ptr %call2709, null
  br i1 %cmp2710, label %if.then2711, label %if.then2726

if.then2711:                                      ; preds = %if.then2707
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.249) #7
  br label %if.end2719.thread

do.end2716:                                       ; preds = %cond.end2704
  call void @__sanitizer_cov_trace_pc() #9
  %call2718 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252) #10
  br label %if.end2719.thread

if.end2719.thread:                                ; preds = %do.end2716, %if.then2711
  %frontend27223720 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %324 = ptrtoint ptr %frontend27223720 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr null, ptr %frontend27223720, align 4
  br label %sw.epilog

if.then2726:                                      ; preds = %if.then2707
  call void @__sanitizer_cov_trace_pc() #9
  %frontend2722 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %325 = ptrtoint ptr %frontend2722 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call2709, ptr %frontend2722, align 4
  %set_voltage2730 = getelementptr inbounds %struct.dvb_frontend, ptr %call2709, i32 0, i32 1, i32 25
  %326 = ptrtoint ptr %set_voltage2730 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %set_voltage2730, align 4
  %prev_set_voltage2731 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 25
  %328 = ptrtoint ptr %prev_set_voltage2731 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %327, ptr %prev_set_voltage2731, align 8
  %329 = load ptr, ptr %frontend2722, align 4
  %set_voltage2735 = getelementptr inbounds %struct.dvb_frontend, ptr %329, i32 0, i32 1, i32 25
  %330 = ptrtoint ptr %set_voltage2735 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr @vp1027_set_voltage, ptr %set_voltage2735, align 4
  br label %sw.epilog

do.end2739:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call2741 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end2739, %if.then2726, %if.end2719.thread, %if.then2677, %if.end2670.thread, %if.end2585, %if.end2548.thread, %if.then2513.sw.epilog_crit_edge, %if.end2506.thread, %if.then2476, %if.end2469.thread, %if.end2438, %if.end2405.thread, %if.then2375, %if.end2368.thread, %if.end2332, %if.end2295.thread, %if.end2261, %if.then2179.sw.epilog_crit_edge, %if.end2160.thread, %if.then2114.sw.epilog_crit_edge, %if.end2092.thread, %if.then1976.sw.epilog_crit_edge, %if.end1957.thread, %if.end1925.sw.epilog_crit_edge, %if.end1893.sw.epilog_crit_edge, %if.then1854.sw.epilog_crit_edge, %if.end1847.thread, %if.then1813.sw.epilog_crit_edge, %if.end1806.thread, %if.end1780, %if.end1736.thread, %if.then1692.sw.epilog_crit_edge, %if.end1673.thread, %if.then1638, %if.end1631.thread, %if.then1598, %if.end1591.thread, %if.then1546.sw.epilog_crit_edge, %if.end1523.thread, %if.then1479.sw.epilog_crit_edge, %if.end1460.thread, %if.then1416.sw.epilog_crit_edge, %if.end1367.thread, %if.then1294.sw.epilog_crit_edge, %if.end1245.thread, %if.then1172.sw.epilog_crit_edge, %if.end1153.thread, %if.then1080.sw.epilog_crit_edge, %if.end1061.thread, %if.then994.sw.epilog_crit_edge, %if.end975.thread, %if.end946.sw.epilog_crit_edge, %if.then860.sw.epilog_crit_edge, %if.end841.thread, %if.then797.sw.epilog_crit_edge, %if.end778.thread, %if.then736.sw.epilog_crit_edge, %if.end717.thread, %if.then674.sw.epilog_crit_edge, %if.end655.thread, %if.then612.sw.epilog_crit_edge, %if.end593.thread, %if.then551.sw.epilog_crit_edge, %if.then489.sw.epilog_crit_edge, %if.end470.thread, %if.then428.sw.epilog_crit_edge, %if.then364.sw.epilog_crit_edge, %if.end343.thread, %if.then227.sw.epilog_crit_edge, %if.end208.thread, %if.then164.sw.epilog_crit_edge, %if.end145.thread, %if.then101.sw.epilog_crit_edge, %if.end82.thread, %if.then38.sw.epilog_crit_edge, %if.end21.thread
  %mfe_shared.0 = phi i32 [ 0, %do.end2739 ], [ 0, %if.then2726 ], [ 0, %if.then2677 ], [ 0, %if.then2513.sw.epilog_crit_edge ], [ 0, %if.then2476 ], [ 0, %if.end2438 ], [ 0, %if.then2375 ], [ 0, %if.end2261 ], [ 0, %if.end2332 ], [ 0, %if.end1925.sw.epilog_crit_edge ], [ 0, %if.end1893.sw.epilog_crit_edge ], [ 0, %if.then1854.sw.epilog_crit_edge ], [ 0, %if.then1813.sw.epilog_crit_edge ], [ 0, %if.end1780 ], [ 0, %if.then1638 ], [ 0, %if.then1598 ], [ 0, %if.end946.sw.epilog_crit_edge ], [ 0, %if.end21.thread ], [ 0, %if.then38.sw.epilog_crit_edge ], [ 0, %if.end82.thread ], [ 0, %if.then101.sw.epilog_crit_edge ], [ 0, %if.end145.thread ], [ 0, %if.then164.sw.epilog_crit_edge ], [ 0, %if.end208.thread ], [ 0, %if.then227.sw.epilog_crit_edge ], [ 1, %if.end343.thread ], [ 1, %if.then364.sw.epilog_crit_edge ], [ 0, %if.then428.sw.epilog_crit_edge ], [ 0, %if.end470.thread ], [ 0, %if.then489.sw.epilog_crit_edge ], [ 0, %if.then551.sw.epilog_crit_edge ], [ 0, %if.end593.thread ], [ 0, %if.then612.sw.epilog_crit_edge ], [ 0, %if.end655.thread ], [ 0, %if.then674.sw.epilog_crit_edge ], [ 0, %if.end717.thread ], [ 0, %if.then736.sw.epilog_crit_edge ], [ 0, %if.end778.thread ], [ 0, %if.then797.sw.epilog_crit_edge ], [ 0, %if.end841.thread ], [ 0, %if.then860.sw.epilog_crit_edge ], [ 0, %if.end975.thread ], [ 0, %if.then994.sw.epilog_crit_edge ], [ 0, %if.end1061.thread ], [ 0, %if.then1080.sw.epilog_crit_edge ], [ 0, %if.end1153.thread ], [ 0, %if.then1172.sw.epilog_crit_edge ], [ 0, %if.end1245.thread ], [ 0, %if.then1294.sw.epilog_crit_edge ], [ 0, %if.end1367.thread ], [ 0, %if.then1416.sw.epilog_crit_edge ], [ 0, %if.end1460.thread ], [ 0, %if.then1479.sw.epilog_crit_edge ], [ 0, %if.end1523.thread ], [ 0, %if.then1546.sw.epilog_crit_edge ], [ 0, %if.end1591.thread ], [ 0, %if.end1631.thread ], [ 0, %if.end1673.thread ], [ 0, %if.then1692.sw.epilog_crit_edge ], [ 0, %if.end1736.thread ], [ 0, %if.end1806.thread ], [ 0, %if.end1847.thread ], [ 0, %if.end1957.thread ], [ 0, %if.then1976.sw.epilog_crit_edge ], [ 1, %if.end2092.thread ], [ 1, %if.then2114.sw.epilog_crit_edge ], [ 0, %if.end2160.thread ], [ 0, %if.then2179.sw.epilog_crit_edge ], [ 0, %if.end2295.thread ], [ 0, %if.end2368.thread ], [ 0, %if.end2405.thread ], [ 0, %if.end2469.thread ], [ 0, %if.end2506.thread ], [ 0, %if.end2670.thread ], [ 0, %if.end2719.thread ], [ 0, %if.end2585 ], [ 0, %if.end2548.thread ]
  %fe1.0 = phi ptr [ null, %do.end2739 ], [ null, %if.then2726 ], [ null, %if.then2677 ], [ null, %if.then2513.sw.epilog_crit_edge ], [ null, %if.then2476 ], [ null, %if.end2438 ], [ null, %if.then2375 ], [ null, %if.end2261 ], [ null, %if.end2332 ], [ null, %if.end1925.sw.epilog_crit_edge ], [ null, %if.end1893.sw.epilog_crit_edge ], [ null, %if.then1854.sw.epilog_crit_edge ], [ null, %if.then1813.sw.epilog_crit_edge ], [ null, %if.end1780 ], [ null, %if.then1638 ], [ null, %if.then1598 ], [ null, %if.end946.sw.epilog_crit_edge ], [ null, %if.end21.thread ], [ null, %if.then38.sw.epilog_crit_edge ], [ null, %if.end82.thread ], [ null, %if.then101.sw.epilog_crit_edge ], [ null, %if.end145.thread ], [ null, %if.then164.sw.epilog_crit_edge ], [ null, %if.end208.thread ], [ null, %if.then227.sw.epilog_crit_edge ], [ %call315, %if.end343.thread ], [ %call315, %if.then364.sw.epilog_crit_edge ], [ null, %if.then428.sw.epilog_crit_edge ], [ null, %if.end470.thread ], [ null, %if.then489.sw.epilog_crit_edge ], [ null, %if.then551.sw.epilog_crit_edge ], [ null, %if.end593.thread ], [ null, %if.then612.sw.epilog_crit_edge ], [ null, %if.end655.thread ], [ null, %if.then674.sw.epilog_crit_edge ], [ null, %if.end717.thread ], [ null, %if.then736.sw.epilog_crit_edge ], [ null, %if.end778.thread ], [ null, %if.then797.sw.epilog_crit_edge ], [ null, %if.end841.thread ], [ null, %if.then860.sw.epilog_crit_edge ], [ null, %if.end975.thread ], [ null, %if.then994.sw.epilog_crit_edge ], [ null, %if.end1061.thread ], [ null, %if.then1080.sw.epilog_crit_edge ], [ null, %if.end1153.thread ], [ null, %if.then1172.sw.epilog_crit_edge ], [ null, %if.end1245.thread ], [ null, %if.then1294.sw.epilog_crit_edge ], [ null, %if.end1367.thread ], [ null, %if.then1416.sw.epilog_crit_edge ], [ null, %if.end1460.thread ], [ null, %if.then1479.sw.epilog_crit_edge ], [ null, %if.end1523.thread ], [ null, %if.then1546.sw.epilog_crit_edge ], [ null, %if.end1591.thread ], [ null, %if.end1631.thread ], [ null, %if.end1673.thread ], [ null, %if.then1692.sw.epilog_crit_edge ], [ null, %if.end1736.thread ], [ null, %if.end1806.thread ], [ null, %if.end1847.thread ], [ null, %if.end1957.thread ], [ null, %if.then1976.sw.epilog_crit_edge ], [ %call2064, %if.end2092.thread ], [ %call2064, %if.then2114.sw.epilog_crit_edge ], [ null, %if.end2160.thread ], [ null, %if.then2179.sw.epilog_crit_edge ], [ null, %if.end2295.thread ], [ null, %if.end2368.thread ], [ null, %if.end2405.thread ], [ null, %if.end2469.thread ], [ null, %if.end2506.thread ], [ null, %if.end2670.thread ], [ null, %if.end2719.thread ], [ null, %if.end2585 ], [ null, %if.end2548.thread ]
  %frontend2743 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %331 = ptrtoint ptr %frontend2743 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %frontend2743, align 4
  %cmp2744 = icmp eq ptr %332, null
  br i1 %cmp2744, label %sw.epilog.do.end2753_crit_edge, label %lor.lhs.false

sw.epilog.do.end2753_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2753

lor.lhs.false:                                    ; preds = %sw.epilog
  %tobool2745.not = icmp eq ptr %fe1.0, null
  br i1 %tobool2745.not, label %do.body2769.critedge, label %land.lhs.true2746

land.lhs.true2746:                                ; preds = %lor.lhs.false
  %frontend2748 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %fe1.0, i32 0, i32 2, i32 1
  %333 = ptrtoint ptr %frontend2748 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %frontend2748, align 4
  %cmp2749 = icmp eq ptr %334, null
  br i1 %cmp2749, label %land.lhs.true2746.do.end2753_crit_edge, label %if.then2763.critedge

land.lhs.true2746.do.end2753_crit_edge:           ; preds = %land.lhs.true2746
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2753

do.end2753:                                       ; preds = %land.lhs.true2746.do.end2753_crit_edge, %sw.epilog.do.end2753_crit_edge
  %call2755 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258) #10
  br label %frontend_detach

if.then2763.critedge:                             ; preds = %land.lhs.true2746
  call void @__sanitizer_cov_trace_pc() #9
  %callback.c = getelementptr inbounds %struct.dvb_frontend, ptr %332, i32 0, i32 9
  %335 = ptrtoint ptr %callback.c to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr @cx88_tuner_callback, ptr %callback.c, align 4
  %336 = ptrtoint ptr %frontend2743 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %frontend2743, align 4
  %ts_bus_ctrl.c = getelementptr inbounds %struct.dvb_frontend, ptr %337, i32 0, i32 1, i32 29
  %338 = ptrtoint ptr %ts_bus_ctrl.c to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr @cx88_dvb_bus_ctrl, ptr %ts_bus_ctrl.c, align 4
  br label %do.body2769

do.body2769.critedge:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %callback.c3292 = getelementptr inbounds %struct.dvb_frontend, ptr %332, i32 0, i32 9
  %339 = ptrtoint ptr %callback.c3292 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr @cx88_tuner_callback, ptr %callback.c3292, align 4
  br label %do.body2769

do.body2769:                                      ; preds = %do.body2769.critedge, %if.then2763.critedge
  %frontend2743.sink = phi ptr [ %frontend2743, %do.body2769.critedge ], [ %frontend2748, %if.then2763.critedge ]
  %340 = ptrtoint ptr %frontend2743.sink to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %frontend2743.sink, align 4
  %ts_bus_ctrl.c3293 = getelementptr inbounds %struct.dvb_frontend, ptr %341, i32 0, i32 1, i32 29
  %342 = ptrtoint ptr %ts_bus_ctrl.c3293 to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr @cx88_dvb_bus_ctrl, ptr %ts_bus_ctrl.c3293, align 4
  %343 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool2771.not = icmp eq i32 %344, 0
  br i1 %tobool2771.not, label %if.then2772, label %do.body2769.do.end2813_crit_edge

do.body2769.do.end2813_crit_edge:                 ; preds = %do.body2769
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2813

if.then2772:                                      ; preds = %do.body2769
  %345 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %gate_ctrl, align 4
  %tobool2774.not = icmp eq ptr %346, null
  br i1 %tobool2774.not, label %if.then2772.do.body2778_crit_edge, label %if.then2775

if.then2772.do.body2778_crit_edge:                ; preds = %if.then2772
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2778

if.then2775:                                      ; preds = %if.then2772
  call void @__sanitizer_cov_trace_pc() #9
  call void %346(ptr noundef %1, i32 noundef 1) #7
  br label %do.body2778

do.body2778:                                      ; preds = %if.then2775, %if.then2772.do.body2778_crit_edge
  %subdevs = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 16, i32 2
  %347 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %347)
  %.pn3722 = load ptr, ptr %subdevs, align 4
  %cmp2784.not3724 = icmp eq ptr %.pn3722, %subdevs
  br i1 %cmp2784.not3724, label %do.body2778.do.end2803_crit_edge, label %do.body2778.for.body_crit_edge

do.body2778.for.body_crit_edge:                   ; preds = %do.body2778
  br label %for.body

do.body2778.do.end2803_crit_edge:                 ; preds = %do.body2778
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2803

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body2778.for.body_crit_edge
  %.pn3725 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn3722, %do.body2778.for.body_crit_edge ]
  %__sd.03726 = getelementptr i8, ptr %.pn3725, i32 -80
  %ops2785 = getelementptr i8, ptr %.pn3725, i32 24
  %348 = ptrtoint ptr %ops2785 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %ops2785, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %tuner, align 4
  %tobool2786.not = icmp eq ptr %351, null
  br i1 %tobool2786.not, label %for.body.for.inc_crit_edge, label %land.lhs.true2787

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true2787:                                ; preds = %for.body
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 4
  %tobool2790.not = icmp eq ptr %353, null
  br i1 %tobool2790.not, label %land.lhs.true2787.for.inc_crit_edge, label %if.then2791

land.lhs.true2787.for.inc_crit_edge:              ; preds = %land.lhs.true2787
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then2791:                                      ; preds = %land.lhs.true2787
  call void @__sanitizer_cov_trace_pc() #9
  %call2795 = call i32 %353(ptr noundef %__sd.03726) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then2791, %land.lhs.true2787.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %354 = ptrtoint ptr %.pn3725 to i32
  call void @__asan_load4_noabort(i32 %354)
  %.pn = load ptr, ptr %.pn3725, align 4
  %cmp2784.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp2784.not, label %for.inc.do.end2803_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end2803_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2803

do.end2803:                                       ; preds = %for.inc.do.end2803_crit_edge, %do.body2778.do.end2803_crit_edge
  %355 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %gate_ctrl, align 4
  %tobool2807.not = icmp eq ptr %356, null
  br i1 %tobool2807.not, label %do.end2803.do.end2813_crit_edge, label %if.then2808

do.end2803.do.end2813_crit_edge:                  ; preds = %do.end2803
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2813

if.then2808:                                      ; preds = %do.end2803
  call void @__sanitizer_cov_trace_pc() #9
  call void %356(ptr noundef %1, i32 noundef 0) #7
  br label %do.end2813

do.end2813:                                       ; preds = %if.then2808, %do.end2803.do.end2813_crit_edge, %do.body2769.do.end2813_crit_edge
  %pci = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 2
  %357 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %pci, align 8
  %dev2815 = getelementptr inbounds %struct.pci_dev, ptr %358, i32 0, i32 44
  %call2816 = call i32 @vb2_dvb_register_bus(ptr noundef %frontends, ptr noundef null, ptr noundef %dev, ptr noundef %dev2815, ptr noundef null, ptr noundef nonnull @adapter_nr, i32 noundef %mfe_shared.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2816)
  %tobool2817.not = icmp eq i32 %call2816, 0
  br i1 %tobool2817.not, label %do.end2813.cleanup2822_crit_edge, label %do.end2813.frontend_detach_crit_edge

do.end2813.frontend_detach_crit_edge:             ; preds = %do.end2813
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

do.end2813.cleanup2822_crit_edge:                 ; preds = %do.end2813
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2822

frontend_detach:                                  ; preds = %do.end2813.frontend_detach_crit_edge, %do.end2753, %do.end2578, %if.then2573, %if.then2513.frontend_detach_crit_edge, %do.end2325, %if.then2320, %do.end2254, %if.then2249, %do.end2191, %if.then2186, %do.end2126, %if.then2121, %if.end2062.frontend_detach_crit_edge, %do.end2054, %if.then2049, %do.end1987, %if.then1982, %if.end1925.frontend_detach_crit_edge, %if.end1893.frontend_detach_crit_edge, %if.then1854.frontend_detach_crit_edge, %if.then1813.frontend_detach_crit_edge, %do.end1703, %if.then1698, %do.end1558, %if.then1553, %do.end1490, %if.then1485, %do.end1427, %if.then1422, %do.end1397, %if.then1392, %do.end1305, %if.then1300, %do.end1275, %if.then1270, %do.end1183, %if.then1178, %do.end1091, %if.then1086, %do.end1005, %if.then1000, %if.end946.frontend_detach_crit_edge, %do.end871, %if.then866, %do.end808, %if.then803, %do.end746, %if.then741, %do.end684, %if.then679, %do.end622, %if.then617, %do.end561, %if.then556, %do.end499, %if.then494, %do.end438, %if.then433, %do.end376, %if.then371, %if.end313.frontend_detach_crit_edge, %do.end305, %if.then300, %do.end238, %if.then233, %do.end175, %if.then170, %do.end112, %if.then107, %do.end49, %if.then44, %if.end.frontend_detach_crit_edge, %do.end
  %res.0 = phi i32 [ -22, %do.end ], [ -22, %do.end2753 ], [ %call2816, %do.end2813.frontend_detach_crit_edge ], [ -22, %if.then2513.frontend_detach_crit_edge ], [ -22, %if.end2062.frontend_detach_crit_edge ], [ -22, %if.end1925.frontend_detach_crit_edge ], [ -22, %if.end1893.frontend_detach_crit_edge ], [ -22, %if.then1854.frontend_detach_crit_edge ], [ -22, %if.then1813.frontend_detach_crit_edge ], [ -22, %if.end946.frontend_detach_crit_edge ], [ -22, %if.end313.frontend_detach_crit_edge ], [ -22, %if.end.frontend_detach_crit_edge ], [ -22, %if.then44 ], [ -22, %do.end49 ], [ -22, %if.then107 ], [ -22, %do.end112 ], [ -22, %if.then170 ], [ -22, %do.end175 ], [ -22, %if.then233 ], [ -22, %do.end238 ], [ -22, %if.then300 ], [ -22, %do.end305 ], [ -22, %if.then371 ], [ -22, %do.end376 ], [ -22, %if.then433 ], [ -22, %do.end438 ], [ -22, %if.then494 ], [ -22, %do.end499 ], [ -22, %if.then556 ], [ -22, %do.end561 ], [ -22, %if.then617 ], [ -22, %do.end622 ], [ -22, %if.then679 ], [ -22, %do.end684 ], [ -22, %if.then741 ], [ -22, %do.end746 ], [ -22, %if.then803 ], [ -22, %do.end808 ], [ -22, %if.then866 ], [ -22, %do.end871 ], [ -22, %if.then1000 ], [ -22, %do.end1005 ], [ -22, %if.then1086 ], [ -22, %do.end1091 ], [ -22, %if.then1178 ], [ -22, %do.end1183 ], [ -22, %if.then1270 ], [ -22, %do.end1275 ], [ -22, %if.then1300 ], [ -22, %do.end1305 ], [ -22, %if.then1392 ], [ -22, %do.end1397 ], [ -22, %if.then1422 ], [ -22, %do.end1427 ], [ -22, %if.then1485 ], [ -22, %do.end1490 ], [ -22, %if.then1553 ], [ -22, %do.end1558 ], [ -22, %if.then1698 ], [ -22, %do.end1703 ], [ -22, %if.then1982 ], [ -22, %do.end1987 ], [ -22, %if.then2049 ], [ -22, %do.end2054 ], [ -22, %if.then2121 ], [ -22, %do.end2126 ], [ -22, %if.then2186 ], [ -22, %do.end2191 ], [ -22, %if.then2249 ], [ -22, %do.end2254 ], [ -22, %if.then2320 ], [ -22, %do.end2325 ], [ -22, %if.then2573 ], [ -22, %do.end2578 ]
  %gate_ctrl2820 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 26
  %359 = ptrtoint ptr %gate_ctrl2820 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr null, ptr %gate_ctrl2820, align 4
  %frontends2821 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 14
  call void @vb2_dvb_dealloc_frontends(ptr noundef %frontends2821) #7
  br label %cleanup2822

cleanup2822:                                      ; preds = %frontend_detach, %do.end2813.cleanup2822_crit_edge
  %retval.0 = phi i32 [ %res.0, %frontend_detach ], [ 0, %do.end2813.cleanup2822_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_dvb_dealloc_frontends(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_alloc_frontend(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
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
  %ts_packet_size = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 752, ptr %ts_packet_size, align 4
  %4 = load i32, ptr @dvb_buf_tscnt, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ts_packet_count, align 8
  %mul = mul i32 %4, 752
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %sizes, align 4
  %7 = load i32, ptr @dvb_buf_tscnt, align 4
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_buffers, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #2 align 64 {
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
  %call = tail call i32 @cx8802_buf_prepare(ptr noundef %1, ptr noundef %3, ptr noundef %vb) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %risc4 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %cpu = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv, align 4
  %pci = getelementptr inbounds %struct.cx8802_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %risc4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %risc4, align 4
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef %9, ptr noundef nonnull %1, i32 noundef %11, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = call ptr @memset(ptr %risc4, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %mpegq = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpegq, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %call = tail call i32 @cx8802_start_dma(ptr noundef %1, ptr noundef %mpegq, ptr noundef %add.ptr) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %mpegq = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 5
  tail call void @cx8802_cancel_buffers(ptr noundef %1) #7
  %slock = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %2 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not14 = icmp eq ptr %3, %mpegq
  br i1 %cmp.i.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #7
  %13 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not = icmp eq ptr %14, %mpegq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #2 align 64 {
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
  tail call void @cx8802_buf_queue(ptr noundef %3, ptr noundef %vb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8802_buf_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8802_start_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx8802_cancel_buffers(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx8802_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx88_dvb_gate_ctrl(ptr nocapture noundef readonly %core, i32 noundef %open) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvbdev = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 45
  %0 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvbdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frontends = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 14
  %tobool2.not = icmp eq ptr %frontends, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %gate = getelementptr inbounds %struct.cx8802_dev, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gate, align 4
  %4 = call i32 @llvm.smax.i32(i32 %3, i32 1)
  %call7 = tail call ptr @vb2_dvb_get_frontend(ptr noundef nonnull %frontends, i32 noundef %4) #7
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call7, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frontend, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %land.lhs.true11.cleanup_crit_edge, label %if.then15

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 %8(ptr noundef nonnull %6, i32 noundef %open) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @attach_xc3028(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %ctl = alloca %struct.xc2028_ctrl, align 4
  %cfg = alloca %struct.xc2028_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctl) #7
  %0 = call ptr @memset(ptr %ctl, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #7
  %1 = getelementptr inbounds i8, ptr %cfg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %i2c_adap1 = getelementptr inbounds %struct.cx88_core, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i2c_adap1, ptr %cfg, align 4
  %i2c_addr = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 97, ptr %i2c_addr, align 4
  %ctrl = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ctl, ptr %ctrl, align 4
  %frontends = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 14
  %call = call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frontend, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  call void @cx88_setup_xc3028(ptr noundef %11, ptr noundef nonnull %ctl) #7
  %call7 = call ptr @__symbol_get(ptr noundef nonnull @.str.168) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %cond.end, label %if.end5.if.then12_crit_edge

if.end5.if.then12_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

cond.end:                                         ; preds = %if.end5
  %call9 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #7
  %call10 = call ptr @__symbol_get(ptr noundef nonnull @.str.168) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end20, label %cond.end.if.then12_crit_edge

cond.end.if.then12_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %cond.end.if.then12_crit_edge, %if.end5.if.then12_crit_edge
  %cond3 = phi ptr [ %call10, %cond.end.if.then12_crit_edge ], [ %call7, %if.end5.if.then12_crit_edge ]
  %12 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frontend, align 4
  %call15 = call ptr %cond3(ptr noundef %13, ptr noundef nonnull %cfg) #7
  %cmp = icmp eq ptr %call15, null
  br i1 %cmp, label %if.then16, label %do.end42

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.168) #7
  br label %do.end29

do.end20:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #10
  br label %do.end29

do.end29:                                         ; preds = %do.end20, %if.then16
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265) #10
  %14 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frontend, align 4
  call void @dvb_frontend_detach(ptr noundef %15) #7
  %16 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %frontend, align 4
  %call36 = call i32 @dvb_unregister_frontend(ptr noundef %17) #7
  %18 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %frontend, align 4
  br label %cleanup

do.end42:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end42 ], [ -22, %do.end29 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgdt330x_pll_rf_set(ptr nocapture noundef readonly %fe, i32 noundef %index) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.271, i32 noundef %index) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp5 = icmp eq i32 %index, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %8, i32 868356
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp5, label %do.body7, label %do.body15

do.body7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %10 = and i32 %9, -134217729
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr14 = getelementptr i32, ptr %12, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %10) #7, !srcloc !636
  br label %if.end29

do.body15:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i32 %9, 134217728
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr28 = getelementptr i32, ptr %15, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %13) #7, !srcloc !636
  br label %if.end29

if.end29:                                         ; preds = %do.body15, %do.body7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kworld_dvbs_100_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage)
  %cmp = icmp eq i32 %voltage, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 868356
  br i1 %cmp, label %do.body, label %do.body2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -83492864) #7, !srcloc !636
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -117047296) #7, !srcloc !636
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  %prev_set_voltage = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %prev_set_voltage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev_set_voltage, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %9(ptr noundef %fe, i32 noundef %voltage) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geniatech_dvbs_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage)
  %cmp = icmp eq i32 %voltage, 2
  br i1 %cmp, label %do.body, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %do.body.do.body7_crit_edge, label %do.end

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.273) #10
  br label %do.body7

do.body7:                                         ; preds = %do.end, %do.body.do.body7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !678
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %8, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1114112) #7, !srcloc !636
  br label %if.end10

if.end10:                                         ; preds = %do.body7, %entry.if.end10_crit_edge
  %prev_set_voltage = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 25
  %9 = ptrtoint ptr %prev_set_voltage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev_set_voltage, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.then11

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %10(ptr noundef %fe, i32 noundef %voltage) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then11 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @attach_xc4000(ptr noundef %dev, ptr noundef %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frontends = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 14
  %call = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.276) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cond.end, label %if.end4.if.then10_crit_edge

if.end4.if.then10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

cond.end:                                         ; preds = %if.end4
  %call7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.277) #7
  %call8 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.276) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end18, label %cond.end.if.then10_crit_edge

cond.end.if.then10_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %cond.end.if.then10_crit_edge, %if.end4.if.then10_crit_edge
  %cond54 = phi ptr [ %call8, %cond.end.if.then10_crit_edge ], [ %call5, %if.end4.if.then10_crit_edge ]
  %2 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frontend, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %i2c_adap = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 11
  %call13 = tail call ptr %cond54(ptr noundef %3, ptr noundef %i2c_adap, ptr noundef %cfg) #7
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %if.then14, label %do.end40

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.276) #7
  br label %do.end27

do.end18:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279) #10
  br label %do.end27

do.end27:                                         ; preds = %do.end18, %if.then14
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282) #10
  %6 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frontend, align 4
  tail call void @dvb_frontend_detach(ptr noundef %7) #7
  %8 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frontend, align 4
  %call34 = tail call i32 @dvb_unregister_frontend(ptr noundef %9) #7
  %10 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %frontend, align 4
  br label %cleanup

do.end40:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.end27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end40 ], [ -22, %do.end27 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tevii_dvbs_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !679
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 868356
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !680
  %9 = or i32 %8, 1080033280
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %11, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #7, !srcloc !636
  %12 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %voltage, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body5
    i32 1, label %do.body20
    i32 2, label %do.body35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !681
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %14, i32 868356
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !682
  %16 = and i32 %15, -536870913
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %18, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %16) #7, !srcloc !636
  br label %sw.epilog

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !683
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %20, i32 868356
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !684
  %22 = or i32 %21, 536870912
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr33 = getelementptr i32, ptr %24, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %22) #7, !srcloc !636
  br label %sw.epilog

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !685
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr41 = getelementptr i32, ptr %26, i32 868356
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !686
  %28 = and i32 %27, -536870913
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr48 = getelementptr i32, ptr %30, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %28) #7, !srcloc !636
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body35, %do.body20, %do.body5, %entry.sw.epilog_crit_edge
  %prev_set_voltage = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 25
  %31 = ptrtoint ptr %prev_set_voltage to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev_set_voltage, align 8
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 %32(ptr noundef %fe, i32 noundef %voltage) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_freq(ptr noundef %fe, i32 noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %frequency, ptr %dtv_property_cache, align 4
  store i32 0, ptr %bandwidth_hz, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %6(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %call8 = tail call i32 %8(ptr noundef %fe) #7
  %9 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.289) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 %11(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_freq(ptr noundef %fe, ptr noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %0 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_frequency, align 4
  %call6 = tail call i32 %5(ptr noundef %fe, ptr noundef %frequency) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.291) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 %7(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_bandw(ptr noundef %fe, i32 noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bandwidth, ptr %bandwidth_hz, align 4
  store i32 0, ptr %dtv_property_cache, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %6(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %call7 = tail call i32 %8(ptr noundef %fe) #7
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.293) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 %11(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandw(ptr noundef %fe, ptr noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 10
  %0 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_bandwidth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_bandwidth, align 4
  %call6 = tail call i32 %5(ptr noundef %fe, ptr noundef %bandwidth) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.294) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 %7(ptr noundef %fe, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_smt_7020_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
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
  %div2 = udiv i32 %14, 125
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %buf, align 1
  %conv4 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -124, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %14)
  %cmp = icmp ult i32 %14, 1500000
  %spec.store.select = select i1 %cmp, i8 16, i8 0
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.store.select, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then13

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 %21(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %entry.if.end16_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %i2c_adap = getelementptr inbounds %struct.cx88_core, ptr %23, i32 0, i32 11
  %call17 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 1
  %. = select i1 %cmp18.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_smt_7020_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %data = alloca i8, align 1
  %msg = alloca %struct.i2c_msg, align 4
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %data, align 1, !annotation !687
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !688
  call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %14, i32 868356
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !634
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  %16 = or i32 %15, 8388608
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %18, i32 868356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %16) #7, !srcloc !636
  %19 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %voltage, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %data, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !690
  call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %22, i32 868356
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !634
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !691
  %24 = and i32 %23, 2147483647
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %26, i32 868356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %24) #7, !srcloc !636
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 14, ptr %data, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %29, i32 868356
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !634
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !693
  %31 = and i32 %30, 2147483647
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %add.ptr33 = getelementptr i32, ptr %33, i32 868356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %31) #7, !srcloc !636
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb, %entry.sw.epilog_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %i2c_adap = getelementptr inbounds %struct.cx88_core, ptr %35, i32 0, i32 11
  %call35 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35)
  %cmp = icmp eq i32 %call35, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_smt_7020_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !694
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 868356
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !695
  %9 = or i32 %8, 524288
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %11, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #7, !srcloc !636
  %12 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 0, label %do.body5
    i32 1, label %do.body20
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !696
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %14, i32 868356
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !697
  %16 = or i32 %15, 134217728
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %18, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %16) #7, !srcloc !636
  br label %cleanup

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !698
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %20, i32 868356
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !699
  %22 = and i32 %21, -134217729
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr33 = getelementptr i32, ptr %24, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %22) #7, !srcloc !636
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %do.body5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body20 ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp1027_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %voltage, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body9
    i32 2, label %do.body26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.do.body5_crit_edge, label %do.end

do.body.do.body5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.296) #10
  br label %do.body5

do.body5:                                         ; preds = %do.end, %do.body.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !700
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %9, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 538050560) #7, !srcloc !636
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10.not = icmp eq i32 %10, 0
  br i1 %cmp10.not, label %do.body9.do.body20_crit_edge, label %do.end14

do.body9.do.body20_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.296) #10
  br label %do.body20

do.body20:                                        ; preds = %do.end14, %do.body9.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !701
  tail call void @arm_heavy_mb() #7
  %lmmio23 = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %lmmio23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio23, align 4
  %add.ptr24 = getelementptr i32, ptr %12, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 571604992) #7, !srcloc !636
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27.not = icmp eq i32 %13, 0
  br i1 %cmp27.not, label %do.body26.do.body37_crit_edge, label %do.end31

do.body26.do.body37_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.296) #10
  br label %do.body37

do.body37:                                        ; preds = %do.end31, %do.body26.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !702
  tail call void @arm_heavy_mb() #7
  %lmmio40 = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %lmmio40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio40, align 4
  %add.ptr41 = getelementptr i32, ptr %15, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 806486016) #7, !srcloc !636
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body37, %do.body20, %do.body5, %entry.sw.epilog_crit_edge
  %prev_set_voltage = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 25
  %16 = ptrtoint ptr %prev_set_voltage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev_set_voltage, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then42

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 %17(ptr noundef %fe, i32 noundef %voltage) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %if.then42 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx88_dvb_bus_ctrl(ptr noundef %fe, i32 noundef %acquire) #2 align 64 {
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
  %frontends = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 14
  %call = tail call i32 @vb2_dvb_find_frontend(ptr noundef %frontends, ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef nonnull @.str.303) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %lock = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call2 = tail call ptr @cx8802_get_driver(ptr noundef %3, i32 noundef 1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool5.not = icmp eq i32 %acquire, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %active_fe_id = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 14, i32 3
  %6 = ptrtoint ptr %active_fe_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %active_fe_id, align 4
  %request_acquire = getelementptr inbounds %struct.cx8802_driver, ptr %call2, i32 0, i32 10
  %7 = ptrtoint ptr %request_acquire to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_acquire, align 4
  %call8 = tail call i32 %8(ptr noundef nonnull %call2) #7
  br label %if.end13

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %request_release = getelementptr inbounds %struct.cx8802_driver, ptr %call2, i32 0, i32 11
  %9 = ptrtoint ptr %request_release to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %request_release, align 4
  %call9 = tail call i32 %10(ptr noundef nonnull %call2) #7
  %active_fe_id11 = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 14, i32 3
  %11 = ptrtoint ptr %active_fe_id11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %active_fe_id11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6, %if.end.if.end13_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then6 ], [ %call9, %if.else ], [ 0, %if.end.if.end13_crit_edge ]
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %lock15 = getelementptr inbounds %struct.cx88_core, ptr %13, i32 0, i32 43
  tail call void @mutex_unlock(ptr noundef %lock15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end
  %retval.0 = phi i32 [ %ret.0, %if.end13 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dvb_register_bus(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24123_set_ts_param(ptr nocapture noundef readonly %fe, i32 noundef %is_punctured) #5 align 64 {
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
  %ts_gen_cntrl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ts_gen_cntrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %ts_gen_cntrl, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvico_fusionhdtv_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @dvico_fusionhdtv_demod_init.clock_config, i32 noundef 3) #7
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 42949600) #7
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i12 = icmp eq ptr %4, null
  br i1 %tobool.not.i12, label %mt352_write.exit.mt352_write.exit35_crit_edge, label %mt352_write.exit15

mt352_write.exit.mt352_write.exit35_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit15:                               ; preds = %mt352_write.exit
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @dvico_fusionhdtv_demod_init.reset, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit35_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @dvico_fusionhdtv_demod_init.adc_ctl_1_cfg, i32 noundef 2) #7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit35_crit_edge, label %mt352_write.exit25

mt352_write.exit20.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit25:                               ; preds = %mt352_write.exit20
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @dvico_fusionhdtv_demod_init.agc_cfg, i32 noundef 3) #7
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr39.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %.pr39.pr, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %.pr39.pr(ptr noundef %fe, ptr noundef nonnull @dvico_fusionhdtv_demod_init.gpp_ctl_cfg, i32 noundef 2) #7
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr41 = load ptr, ptr %write.i, align 4
  %tobool.not.i32 = icmp eq ptr %.pr41, null
  br i1 %tobool.not.i32, label %mt352_write.exit30.mt352_write.exit35_crit_edge, label %if.then.i34

mt352_write.exit30.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

if.then.i34:                                      ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i33 = tail call i32 %.pr41(ptr noundef %fe, ptr noundef nonnull @dvico_fusionhdtv_demod_init.capt_range_cfg, i32 noundef 2) #7
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge, %mt352_write.exit20.mt352_write.exit35_crit_edge, %mt352_write.exit15.mt352_write.exit35_crit_edge, %mt352_write.exit.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvico_dual_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @dvico_dual_demod_init.clock_config, i32 noundef 3) #7
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 42949600) #7
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i12 = icmp eq ptr %4, null
  br i1 %tobool.not.i12, label %mt352_write.exit.mt352_write.exit35_crit_edge, label %mt352_write.exit15

mt352_write.exit.mt352_write.exit35_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit15:                               ; preds = %mt352_write.exit
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @dvico_dual_demod_init.reset, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit35_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @dvico_dual_demod_init.adc_ctl_1_cfg, i32 noundef 2) #7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit35_crit_edge, label %mt352_write.exit25

mt352_write.exit20.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit25:                               ; preds = %mt352_write.exit20
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @dvico_dual_demod_init.agc_cfg, i32 noundef 3) #7
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr39.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %.pr39.pr, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %.pr39.pr(ptr noundef %fe, ptr noundef nonnull @dvico_dual_demod_init.gpp_ctl_cfg, i32 noundef 2) #7
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr41 = load ptr, ptr %write.i, align 4
  %tobool.not.i32 = icmp eq ptr %.pr41, null
  br i1 %tobool.not.i32, label %mt352_write.exit30.mt352_write.exit35_crit_edge, label %if.then.i34

mt352_write.exit30.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

if.then.i34:                                      ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i33 = tail call i32 %.pr41(ptr noundef %fe, ptr noundef nonnull @dvico_dual_demod_init.capt_range_cfg, i32 noundef 2) #7
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge, %mt352_write.exit20.mt352_write.exit35_crit_edge, %mt352_write.exit15.mt352_write.exit35_crit_edge, %mt352_write.exit.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dntv_live_dvbt_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_demod_init.clock_config, i32 noundef 3) #7
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496000) #7
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i12 = icmp eq ptr %4, null
  br i1 %tobool.not.i12, label %mt352_write.exit.mt352_write.exit25_crit_edge, label %mt352_write.exit15

mt352_write.exit.mt352_write.exit25_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit25

mt352_write.exit15:                               ; preds = %mt352_write.exit
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_demod_init.reset, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit25_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit25_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit25

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_demod_init.adc_ctl_1_cfg, i32 noundef 2) #7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit25_crit_edge, label %if.then.i24

mt352_write.exit20.mt352_write.exit25_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit25

if.then.i24:                                      ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_demod_init.agc_cfg, i32 noundef 11) #7
  br label %mt352_write.exit25

mt352_write.exit25:                               ; preds = %if.then.i24, %mt352_write.exit20.mt352_write.exit25_crit_edge, %mt352_write.exit15.mt352_write.exit25_crit_edge, %mt352_write.exit.mt352_write.exit25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496000) #7
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %9, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %9(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_demod_init.dntv_extra, i32 noundef 2) #7
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr39 = load ptr, ptr %write.i, align 4
  %tobool.not.i32 = icmp eq ptr %.pr39, null
  br i1 %tobool.not.i32, label %mt352_write.exit30.mt352_write.exit35_crit_edge, label %if.then.i34

mt352_write.exit30.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

if.then.i34:                                      ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i33 = tail call i32 %.pr39(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_demod_init.capt_range_cfg, i32 noundef 2) #7
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dntv_live_dvbt_pro_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_pro_demod_init.clock_config, i32 noundef 3) #7
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496000) #7
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i12 = icmp eq ptr %4, null
  br i1 %tobool.not.i12, label %mt352_write.exit.mt352_write.exit25_crit_edge, label %mt352_write.exit15

mt352_write.exit.mt352_write.exit25_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit25

mt352_write.exit15:                               ; preds = %mt352_write.exit
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_pro_demod_init.reset, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit25_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit25_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit25

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_pro_demod_init.adc_ctl_1_cfg, i32 noundef 2) #7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit25_crit_edge, label %if.then.i24

mt352_write.exit20.mt352_write.exit25_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit25

if.then.i24:                                      ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_pro_demod_init.agc_cfg, i32 noundef 11) #7
  br label %mt352_write.exit25

mt352_write.exit25:                               ; preds = %if.then.i24, %mt352_write.exit20.mt352_write.exit25_crit_edge, %mt352_write.exit15.mt352_write.exit25_crit_edge, %mt352_write.exit.mt352_write.exit25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496000) #7
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %9, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %9(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_pro_demod_init.dntv_extra, i32 noundef 2) #7
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr39 = load ptr, ptr %write.i, align 4
  %tobool.not.i32 = icmp eq ptr %.pr39, null
  br i1 %tobool.not.i32, label %mt352_write.exit30.mt352_write.exit35_crit_edge, label %if.then.i34

mt352_write.exit30.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit35

if.then.i34:                                      ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i33 = tail call i32 %.pr39(ptr noundef %fe, ptr noundef nonnull @dntv_live_dvbt_pro_demod_init.capt_range_cfg, i32 noundef 2) #7
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_setup_xc3028(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @or51132_set_ts_param(ptr nocapture noundef readonly %fe, i32 noundef %is_punctured) #5 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_punctured)
  %tobool.not = icmp eq i32 %is_punctured, 0
  %conv = select i1 %tobool.not, i8 0, i8 4
  %ts_gen_cntrl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ts_gen_cntrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %ts_gen_cntrl, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lgdt330x_set_ts_param(ptr nocapture noundef readonly %fe, i32 noundef %is_punctured) #5 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_punctured)
  %tobool.not = icmp eq i32 %is_punctured, 0
  %ts_gen_cntrl2 = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ts_gen_cntrl2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ts_gen_cntrl2, align 8
  %6 = and i8 %5, -5
  %masksel = select i1 %tobool.not, i8 0, i8 4
  %.sink = or i8 %6, %masksel
  store i8 %.sink, ptr %ts_gen_cntrl2, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nxt200x_set_ts_param(ptr nocapture noundef readonly %fe, i32 noundef %is_punctured) #5 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_punctured)
  %tobool.not = icmp eq i32 %is_punctured, 0
  %conv = select i1 %tobool.not, i8 0, i8 4
  %ts_gen_cntrl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ts_gen_cntrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %ts_gen_cntrl, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24116_set_ts_param(ptr nocapture noundef readonly %fe, i32 noundef %is_punctured) #5 align 64 {
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
  %ts_gen_cntrl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ts_gen_cntrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %ts_gen_cntrl, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_reset_device(ptr nocapture noundef readonly %fe) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !703
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 880663
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !636
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !704
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %9, i32 880663
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #7, !srcloc !636
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_z0194a_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #7
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #7
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #7
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #9
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #7
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #7
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #7
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #7
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #9
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #7
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ds3000_set_ts_param(ptr nocapture noundef readonly %fe, i32 noundef %is_punctured) #5 align 64 {
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
  %ts_gen_cntrl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ts_gen_cntrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %ts_gen_cntrl, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stv0900_set_ts_param(ptr nocapture noundef readonly %fe, i32 noundef %is_punctured) #5 align 64 {
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
  %ts_gen_cntrl = getelementptr inbounds %struct.cx8802_dev, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ts_gen_cntrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ts_gen_cntrl, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_smt_7020_stv0299_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #7
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #7
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #7
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #9
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #7
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #7
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #7
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #7
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #9
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #7
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dvb_find_frontend(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx8802_get_driver(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_dvb_unregister_bus(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp3054_i2c_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx8802_register_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 302)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 302)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !20, !22, !23, !25, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !110, !111, !112, !114, !115, !117, !118, !120, !121, !122, !123, !124, !126, !127, !128, !129, !130, !132, !133, !135, !136, !138, !139, !140, !141, !142, !144, !145, !147, !148, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !200, !201, !202, !204, !205, !207, !208, !209, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !230, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !245, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !266, !267, !268, !270, !271, !272, !273, !274, !276, !277, !279, !281, !283, !284, !285, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !303, !304, !305, !307, !308, !310, !311, !312, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !333, !334, !335, !337, !338, !340, !341, !342, !343, !344, !346, !347, !348, !349, !350, !352, !353, !355, !356, !357, !358, !359, !361, !362, !363, !364, !365, !367, !368, !370, !371, !373, !374, !375, !376, !377, !379, !380, !381, !382, !383, !385, !386, !388, !389, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !473, !474, !475, !477, !478, !480, !481, !482, !484, !485, !486, !488, !490, !491, !492, !493, !495, !497, !499, !501, !503, !505, !507, !508, !509, !510, !512, !514, !516, !518, !520, !521, !522, !523, !525, !526, !527, !528, !529, !531, !532, !533, !535, !536, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !568, !569, !570, !571, !573, !574, !575, !577, !578, !579, !580, !582, !583, !584, !586, !588, !590, !592, !593, !594, !595, !597, !598, !599, !601, !602, !604, !605, !606, !607, !609, !610, !611, !613, !614, !615, !617, !618, !619, !621, !622, !623}
!llvm.module.flags = !{!624, !625, !626, !627, !628, !629, !630, !631}
!llvm.ident = !{!632}

!0 = !{ptr @__UNIQUE_ID_description385, !1, !"__UNIQUE_ID_description385", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_author386, !3, !"__UNIQUE_ID_author386", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 52, i32 1}
!4 = !{ptr @__UNIQUE_ID_author387, !5, !"__UNIQUE_ID_author387", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 53, i32 1}
!6 = !{ptr @__UNIQUE_ID_file388, !7, !"__UNIQUE_ID_file388", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 54, i32 1}
!8 = !{ptr @__UNIQUE_ID_license389, !7, !"__UNIQUE_ID_license389", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_version390, !10, !"__UNIQUE_ID_version390", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 55, i32 1}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__modver_attr, !10, !"__modver_attr", i1 false, i1 false}
!15 = !{ptr @__param_debug, !16, !"__param_debug", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 58, i32 1}
!17 = !{ptr @__UNIQUE_ID_debugtype391, !16, !"__UNIQUE_ID_debugtype391", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_debug392, !19, !"__UNIQUE_ID_debug392", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 59, i32 1}
!20 = !{ptr @__param_dvb_buf_tscnt, !21, !"__param_dvb_buf_tscnt", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 62, i32 1}
!22 = !{ptr @__UNIQUE_ID_dvb_buf_tscnttype393, !21, !"__UNIQUE_ID_dvb_buf_tscnttype393", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_dvb_buf_tscnt394, !24, !"__UNIQUE_ID_dvb_buf_tscnt394", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 63, i32 1}
!25 = !{ptr @__param_adapter_nr, !26, !"__param_adapter_nr", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 65, i32 1}
!27 = !{ptr @__UNIQUE_ID_adapter_nrtype395, !26, !"__UNIQUE_ID_adapter_nrtype395", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_adapter_nr396, !26, !"__UNIQUE_ID_adapter_nr396", i1 false, i1 false}
!29 = !{ptr @__initcall__kmod_cx88_dvb__397_1843_dvb_init6, !30, !"__initcall__kmod_cx88_dvb__397_1843_dvb_init6", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1843, i32 1}
!31 = !{ptr @__exitcall_dvb_fini, !32, !"__exitcall_dvb_fini", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1844, i32 1}
!33 = !{ptr @debug, !34, !"debug", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 57, i32 21}
!35 = !{ptr @__param_str_debug, !16, !"__param_str_debug", i1 false, i1 false}
!36 = !{ptr @__param_str_dvb_buf_tscnt, !21, !"__param_str_dvb_buf_tscnt", i1 false, i1 false}
!37 = !{ptr @dvb_buf_tscnt, !38, !"dvb_buf_tscnt", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 61, i32 21}
!39 = !{ptr @__param_str_adapter_nr, !26, !"__param_str_adapter_nr", i1 false, i1 false}
!40 = !{ptr @__param_arr_adapter_nr, !26, !"__param_arr_adapter_nr", i1 false, i1 false}
!41 = !{ptr @adapter_nr, !26, !"adapter_nr", i1 false, i1 false}
!42 = !{ptr @cx8802_dvb_driver, !43, !"cx8802_dvb_driver", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1823, i32 29}
!44 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1741, i32 2}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cx8802_dvb_probe._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @cx8802_dvb_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1742, i32 2}
!52 = !{ptr @cx8802_dvb_probe._entry.6, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cx8802_dvb_probe._entry_ptr.8, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1758, i32 2}
!56 = !{ptr @cx8802_dvb_probe._entry.9, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cx8802_dvb_probe._entry_ptr.11, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1770, i32 4}
!60 = !{ptr @cx8802_dvb_probe._entry.12, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cx8802_dvb_probe._entry_ptr.14, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1799, i32 3}
!64 = !{ptr @cx8802_dvb_probe._entry.15, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cx8802_dvb_probe._entry_ptr.17, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @cx8802_alloc_frontends.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 785, i32 2}
!68 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 791, i32 2}
!71 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @cx8802_alloc_frontends._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @cx8802_alloc_frontends._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 796, i32 4}
!76 = !{ptr @cx8802_alloc_frontends._entry.21, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cx8802_alloc_frontends._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @dvb_qops, !79, !"dvb_qops", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 150, i32 29}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 996, i32 3}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @dvb_register._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @dvb_register._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1014, i32 23}
!87 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @dvb_register._entry.28, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @dvb_register._entry_ptr.30, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1018, i32 9}
!93 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @dvb_register._entry.33, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @dvb_register._entry_ptr.35, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @dvb_register._entry.36, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1028, i32 23}
!99 = !{ptr @dvb_register._entry_ptr.37, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @dvb_register._entry.38, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1032, i32 9}
!102 = !{ptr @dvb_register._entry_ptr.39, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @dvb_register._entry.40, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1042, i32 23}
!105 = !{ptr @dvb_register._entry_ptr.41, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1046, i32 9}
!108 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dvb_register._entry.44, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @dvb_register._entry_ptr.46, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @dvb_register._entry.47, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1053, i32 23}
!114 = !{ptr @dvb_register._entry_ptr.48, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @dvb_register._entry.49, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1057, i32 9}
!117 = !{ptr @dvb_register._entry_ptr.50, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1068, i32 23}
!120 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @dvb_register._entry.53, !119, !"_entry", i1 false, i1 false}
!123 = !{ptr @dvb_register._entry_ptr.55, !119, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1072, i32 9}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @dvb_register._entry.58, !125, !"_entry", i1 false, i1 false}
!129 = !{ptr @dvb_register._entry_ptr.60, !125, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @dvb_register._entry.61, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1083, i32 23}
!132 = !{ptr @dvb_register._entry_ptr.62, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @dvb_register._entry.63, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1088, i32 9}
!135 = !{ptr @dvb_register._entry_ptr.64, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1096, i32 23}
!138 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @dvb_register._entry.67, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @dvb_register._entry_ptr.69, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @dvb_register._entry.70, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1100, i32 9}
!144 = !{ptr @dvb_register._entry_ptr.71, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1106, i32 23}
!147 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @dvb_register._entry.74, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @dvb_register._entry_ptr.76, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @dvb_register._entry.77, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1110, i32 9}
!153 = !{ptr @dvb_register._entry_ptr.78, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @dvb_register._entry.79, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1120, i32 23}
!156 = !{ptr @dvb_register._entry_ptr.80, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @dvb_register._entry.81, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1124, i32 9}
!159 = !{ptr @dvb_register._entry_ptr.82, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @dvb_register._entry.83, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1130, i32 23}
!162 = !{ptr @dvb_register._entry_ptr.84, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @dvb_register._entry.85, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1134, i32 9}
!165 = !{ptr @dvb_register._entry_ptr.86, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @dvb_register._entry.87, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1140, i32 23}
!168 = !{ptr @dvb_register._entry_ptr.88, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @dvb_register._entry.89, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1144, i32 9}
!171 = !{ptr @dvb_register._entry_ptr.90, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @dvb_register._entry.91, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1152, i32 23}
!174 = !{ptr @dvb_register._entry_ptr.92, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @dvb_register._entry.93, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1156, i32 9}
!177 = !{ptr @dvb_register._entry_ptr.94, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @dvb_register._entry.95, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1164, i32 23}
!180 = !{ptr @dvb_register._entry_ptr.96, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @dvb_register._entry.97, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1168, i32 9}
!183 = !{ptr @dvb_register._entry_ptr.98, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @dvb_register._entry.99, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1178, i32 23}
!186 = !{ptr @dvb_register._entry_ptr.100, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @dvb_register._entry.101, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1182, i32 9}
!189 = !{ptr @dvb_register._entry_ptr.102, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @dvb_register._entry.103, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1189, i32 23}
!192 = !{ptr @dvb_register._entry_ptr.104, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @dvb_register._entry.105, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1193, i32 24}
!195 = !{ptr @dvb_register._entry_ptr.106, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1207, i32 23}
!198 = !{ptr @.str.108, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @dvb_register._entry.109, !197, !"_entry", i1 false, i1 false}
!201 = !{ptr @dvb_register._entry_ptr.111, !197, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @dvb_register._entry.112, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1210, i32 9}
!204 = !{ptr @dvb_register._entry_ptr.113, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.114, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1227, i32 23}
!207 = !{ptr @.str.115, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.117, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @dvb_register._entry.116, !206, !"_entry", i1 false, i1 false}
!210 = !{ptr @dvb_register._entry_ptr.118, !206, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @dvb_register._entry.119, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1232, i32 9}
!213 = !{ptr @dvb_register._entry_ptr.120, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @dvb_register._entry.121, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1246, i32 23}
!216 = !{ptr @dvb_register._entry_ptr.122, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @dvb_register._entry.123, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1251, i32 9}
!219 = !{ptr @dvb_register._entry_ptr.124, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @dvb_register._entry.125, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1265, i32 23}
!222 = !{ptr @dvb_register._entry_ptr.126, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @dvb_register._entry.127, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1270, i32 9}
!225 = !{ptr @dvb_register._entry_ptr.128, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.129, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1274, i32 9}
!228 = !{ptr @.str.130, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.132, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @dvb_register._entry.131, !227, !"_entry", i1 false, i1 false}
!231 = !{ptr @dvb_register._entry_ptr.133, !227, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @dvb_register._entry.134, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1287, i32 23}
!234 = !{ptr @dvb_register._entry_ptr.135, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @dvb_register._entry.136, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1292, i32 9}
!237 = !{ptr @dvb_register._entry_ptr.137, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @dvb_register._entry.138, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1296, i32 9}
!240 = !{ptr @dvb_register._entry_ptr.139, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.140, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1302, i32 23}
!243 = !{ptr @.str.141, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.143, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @dvb_register._entry.142, !242, !"_entry", i1 false, i1 false}
!246 = !{ptr @dvb_register._entry_ptr.144, !242, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @dvb_register._entry.145, !248, !"_entry", i1 false, i1 false}
!248 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1306, i32 9}
!249 = !{ptr @dvb_register._entry_ptr.146, !248, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @dvb_register._entry.147, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1314, i32 23}
!252 = !{ptr @dvb_register._entry_ptr.148, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @dvb_register._entry.149, !254, !"_entry", i1 false, i1 false}
!254 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1325, i32 9}
!255 = !{ptr @dvb_register._entry_ptr.150, !254, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @dvb_register._entry.151, !257, !"_entry", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1332, i32 23}
!258 = !{ptr @dvb_register._entry_ptr.152, !257, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @dvb_register._entry.153, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1341, i32 23}
!261 = !{ptr @dvb_register._entry_ptr.154, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.155, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1350, i32 23}
!264 = !{ptr @.str.156, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.158, !263, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @dvb_register._entry.157, !263, !"_entry", i1 false, i1 false}
!267 = !{ptr @dvb_register._entry_ptr.159, !263, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.160, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1354, i32 9}
!270 = !{ptr @.str.161, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.163, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @dvb_register._entry.162, !269, !"_entry", i1 false, i1 false}
!273 = !{ptr @dvb_register._entry_ptr.164, !269, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @dvb_register._entry.165, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1361, i32 23}
!276 = !{ptr @dvb_register._entry_ptr.166, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.167, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1371, i32 20}
!279 = !{ptr @dvb_register.ctl, !280, !"ctl", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1370, i32 30}
!281 = !{ptr @.str.168, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1376, i32 9}
!283 = !{ptr @.str.169, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.171, !282, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @dvb_register._entry.170, !282, !"_entry", i1 false, i1 false}
!286 = !{ptr @dvb_register._entry_ptr.172, !282, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @dvb_register._entry.173, !288, !"_entry", i1 false, i1 false}
!288 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1385, i32 23}
!289 = !{ptr @dvb_register._entry_ptr.174, !288, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @dvb_register._entry.175, !291, !"_entry", i1 false, i1 false}
!291 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1396, i32 23}
!292 = !{ptr @dvb_register._entry_ptr.176, !291, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @dvb_register._entry.178, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1415, i32 23}
!295 = !{ptr @dvb_register._entry_ptr.179, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @dvb_register._entry.180, !297, !"_entry", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1422, i32 23}
!298 = !{ptr @dvb_register._entry_ptr.181, !297, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.182, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1429, i32 23}
!301 = !{ptr @.str.183, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.185, !300, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @dvb_register._entry.184, !300, !"_entry", i1 false, i1 false}
!304 = !{ptr @dvb_register._entry_ptr.186, !300, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @dvb_register._entry.187, !306, !"_entry", i1 false, i1 false}
!306 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1433, i32 9}
!307 = !{ptr @dvb_register._entry_ptr.188, !306, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.189, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1444, i32 23}
!310 = !{ptr @.str.190, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.192, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @dvb_register._entry.191, !309, !"_entry", i1 false, i1 false}
!313 = !{ptr @dvb_register._entry_ptr.193, !309, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @dvb_register._entry.194, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1448, i32 9}
!316 = !{ptr @dvb_register._entry_ptr.195, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @dvb_register._entry.196, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1459, i32 23}
!319 = !{ptr @dvb_register._entry_ptr.197, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @dvb_register._entry.198, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1464, i32 9}
!322 = !{ptr @dvb_register._entry_ptr.199, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @dvb_register._entry.200, !324, !"_entry", i1 false, i1 false}
!324 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1472, i32 23}
!325 = !{ptr @dvb_register._entry_ptr.201, !324, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @dvb_register._entry.202, !327, !"_entry", i1 false, i1 false}
!327 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1476, i32 9}
!328 = !{ptr @dvb_register._entry_ptr.203, !327, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.204, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1486, i32 23}
!331 = !{ptr @.str.205, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.207, !330, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @dvb_register._entry.206, !330, !"_entry", i1 false, i1 false}
!334 = !{ptr @dvb_register._entry_ptr.208, !330, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @dvb_register._entry.209, !336, !"_entry", i1 false, i1 false}
!336 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1490, i32 9}
!337 = !{ptr @dvb_register._entry_ptr.210, !336, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.211, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1497, i32 24}
!340 = !{ptr @.str.212, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.214, !339, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @dvb_register._entry.213, !339, !"_entry", i1 false, i1 false}
!343 = !{ptr @dvb_register._entry_ptr.215, !339, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.216, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1501, i32 10}
!346 = !{ptr @.str.217, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.219, !345, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @dvb_register._entry.218, !345, !"_entry", i1 false, i1 false}
!349 = !{ptr @dvb_register._entry_ptr.220, !345, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @dvb_register._entry.221, !351, !"_entry", i1 false, i1 false}
!351 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1511, i32 23}
!352 = !{ptr @dvb_register._entry_ptr.222, !351, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.223, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1518, i32 23}
!355 = !{ptr @.str.224, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.226, !354, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @dvb_register._entry.225, !354, !"_entry", i1 false, i1 false}
!358 = !{ptr @dvb_register._entry_ptr.227, !354, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.228, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1522, i32 4}
!361 = !{ptr @.str.229, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.231, !360, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @dvb_register._entry.230, !360, !"_entry", i1 false, i1 false}
!364 = !{ptr @dvb_register._entry_ptr.232, !360, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @dvb_register._entry.233, !366, !"_entry", i1 false, i1 false}
!366 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1532, i32 23}
!367 = !{ptr @dvb_register._entry_ptr.234, !366, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @dvb_register._entry.235, !369, !"_entry", i1 false, i1 false}
!369 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1539, i32 23}
!370 = !{ptr @dvb_register._entry_ptr.236, !369, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.237, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1551, i32 23}
!373 = !{ptr @.str.238, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.240, !372, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @dvb_register._entry.239, !372, !"_entry", i1 false, i1 false}
!376 = !{ptr @dvb_register._entry_ptr.241, !372, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.242, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1555, i32 9}
!379 = !{ptr @.str.243, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.245, !378, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @dvb_register._entry.244, !378, !"_entry", i1 false, i1 false}
!382 = !{ptr @dvb_register._entry_ptr.246, !378, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @dvb_register._entry.247, !384, !"_entry", i1 false, i1 false}
!384 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1583, i32 23}
!385 = !{ptr @dvb_register._entry_ptr.248, !384, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.249, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1600, i32 23}
!388 = !{ptr @.str.250, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.252, !387, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @dvb_register._entry.251, !387, !"_entry", i1 false, i1 false}
!391 = !{ptr @dvb_register._entry_ptr.253, !387, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.255, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1612, i32 3}
!394 = !{ptr @dvb_register._entry.254, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @dvb_register._entry_ptr.256, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.258, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1617, i32 3}
!398 = !{ptr @dvb_register._entry.257, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @dvb_register._entry_ptr.259, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @connexant_refboard_config, !401, !"connexant_refboard_config", i1 false, i1 false}
!401 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 358, i32 36}
!402 = !{ptr @hauppauge_hvr_config, !403, !"hauppauge_hvr_config", i1 false, i1 false}
!403 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 363, i32 36}
!404 = !{ptr @hauppauge_novas_config, !405, !"hauppauge_novas_config", i1 false, i1 false}
!405 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 532, i32 36}
!406 = !{ptr @dvico_fusionhdtv, !407, !"dvico_fusionhdtv", i1 false, i1 false}
!407 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 280, i32 34}
!408 = !{ptr @dvico_fusionhdtv_demod_init.clock_config, !409, !"clock_config", i1 false, i1 false}
!409 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 218, i32 18}
!410 = !{ptr @dvico_fusionhdtv_demod_init.reset, !411, !"reset", i1 false, i1 false}
!411 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 219, i32 18}
!412 = !{ptr @dvico_fusionhdtv_demod_init.adc_ctl_1_cfg, !413, !"adc_ctl_1_cfg", i1 false, i1 false}
!413 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 220, i32 18}
!414 = !{ptr @dvico_fusionhdtv_demod_init.agc_cfg, !415, !"agc_cfg", i1 false, i1 false}
!415 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 221, i32 18}
!416 = !{ptr @dvico_fusionhdtv_demod_init.gpp_ctl_cfg, !417, !"gpp_ctl_cfg", i1 false, i1 false}
!417 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 222, i32 18}
!418 = !{ptr @dvico_fusionhdtv_demod_init.capt_range_cfg, !419, !"capt_range_cfg", i1 false, i1 false}
!419 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 223, i32 18}
!420 = !{ptr @dvico_fusionhdtv_plus_v1_1, !421, !"dvico_fusionhdtv_plus_v1_1", i1 false, i1 false}
!421 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 354, i32 36}
!422 = !{ptr @dvico_fusionhdtv_dual, !423, !"dvico_fusionhdtv_dual", i1 false, i1 false}
!423 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 290, i32 34}
!424 = !{ptr @dvico_dual_demod_init.clock_config, !425, !"clock_config", i1 false, i1 false}
!425 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 238, i32 18}
!426 = !{ptr @dvico_dual_demod_init.reset, !427, !"reset", i1 false, i1 false}
!427 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 239, i32 18}
!428 = !{ptr @dvico_dual_demod_init.adc_ctl_1_cfg, !429, !"adc_ctl_1_cfg", i1 false, i1 false}
!429 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 240, i32 18}
!430 = !{ptr @dvico_dual_demod_init.agc_cfg, !431, !"agc_cfg", i1 false, i1 false}
!431 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 241, i32 18}
!432 = !{ptr @dvico_dual_demod_init.gpp_ctl_cfg, !433, !"gpp_ctl_cfg", i1 false, i1 false}
!433 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 242, i32 18}
!434 = !{ptr @dvico_dual_demod_init.capt_range_cfg, !435, !"capt_range_cfg", i1 false, i1 false}
!435 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 243, i32 18}
!436 = !{ptr @dntv_live_dvbt_config, !437, !"dntv_live_dvbt_config", i1 false, i1 false}
!437 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 285, i32 34}
!438 = !{ptr @dntv_live_dvbt_demod_init.clock_config, !439, !"clock_config", i1 false, i1 false}
!439 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 259, i32 18}
!440 = !{ptr @dntv_live_dvbt_demod_init.reset, !441, !"reset", i1 false, i1 false}
!441 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 260, i32 18}
!442 = !{ptr @dntv_live_dvbt_demod_init.adc_ctl_1_cfg, !443, !"adc_ctl_1_cfg", i1 false, i1 false}
!443 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 261, i32 18}
!444 = !{ptr @dntv_live_dvbt_demod_init.agc_cfg, !445, !"agc_cfg", i1 false, i1 false}
!445 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 262, i32 18}
!446 = !{ptr @dntv_live_dvbt_demod_init.dntv_extra, !447, !"dntv_extra", i1 false, i1 false}
!447 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 264, i32 18}
!448 = !{ptr @dntv_live_dvbt_demod_init.capt_range_cfg, !449, !"capt_range_cfg", i1 false, i1 false}
!449 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 265, i32 18}
!450 = !{ptr @dntv_live_dvbt_pro_config, !451, !"dntv_live_dvbt_pro_config", i1 false, i1 false}
!451 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 329, i32 34}
!452 = !{ptr @dntv_live_dvbt_pro_demod_init.clock_config, !453, !"clock_config", i1 false, i1 false}
!453 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 308, i32 18}
!454 = !{ptr @dntv_live_dvbt_pro_demod_init.reset, !455, !"reset", i1 false, i1 false}
!455 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 309, i32 18}
!456 = !{ptr @dntv_live_dvbt_pro_demod_init.adc_ctl_1_cfg, !457, !"adc_ctl_1_cfg", i1 false, i1 false}
!457 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 310, i32 18}
!458 = !{ptr @dntv_live_dvbt_pro_demod_init.agc_cfg, !459, !"agc_cfg", i1 false, i1 false}
!459 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 311, i32 18}
!460 = !{ptr @dntv_live_dvbt_pro_demod_init.dntv_extra, !461, !"dntv_extra", i1 false, i1 false}
!461 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 313, i32 18}
!462 = !{ptr @dntv_live_dvbt_pro_demod_init.capt_range_cfg, !463, !"capt_range_cfg", i1 false, i1 false}
!463 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 314, i32 18}
!464 = !{ptr @dvico_fusionhdtv_hybrid, !465, !"dvico_fusionhdtv_hybrid", i1 false, i1 false}
!465 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 336, i32 36}
!466 = !{ptr @dvico_fusionhdtv_xc3028, !467, !"dvico_fusionhdtv_xc3028", i1 false, i1 false}
!467 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 341, i32 36}
!468 = !{ptr @dvico_fusionhdtv_mt352_xc3028, !469, !"dvico_fusionhdtv_mt352_xc3028", i1 false, i1 false}
!469 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 347, i32 34}
!470 = !{ptr @.str.260, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 620, i32 3}
!472 = !{ptr @.str.261, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @attach_xc3028._entry, !471, !"_entry", i1 false, i1 false}
!474 = !{ptr @attach_xc3028._entry_ptr, !471, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @attach_xc3028._entry.262, !476, !"_entry", i1 false, i1 false}
!476 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 631, i32 7}
!477 = !{ptr @attach_xc3028._entry_ptr.263, !476, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.265, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 633, i32 3}
!480 = !{ptr @attach_xc3028._entry.264, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @attach_xc3028._entry_ptr.266, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.268, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 640, i32 2}
!484 = !{ptr @attach_xc3028._entry.267, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @attach_xc3028._entry_ptr.269, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @pchdtv_hd3000, !487, !"pchdtv_hd3000", i1 false, i1 false}
!487 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 376, i32 36}
!488 = !{ptr @.str.270, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 386, i32 2}
!490 = !{ptr @.str.271, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @lgdt330x_pll_rf_set._entry, !489, !"_entry", i1 false, i1 false}
!492 = !{ptr @lgdt330x_pll_rf_set._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @fusionhdtv_3_gold, !494, !"fusionhdtv_3_gold", i1 false, i1 false}
!494 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 405, i32 31}
!495 = !{ptr @fusionhdtv_5_gold, !496, !"fusionhdtv_5_gold", i1 false, i1 false}
!496 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 411, i32 37}
!497 = !{ptr @pchdtv_hd5500, !498, !"pchdtv_hd5500", i1 false, i1 false}
!498 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 417, i32 37}
!499 = !{ptr @ati_hdtvwonder, !500, !"ati_hdtvwonder", i1 false, i1 false}
!500 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 431, i32 36}
!501 = !{ptr @kworld_dvbs_100_config, !502, !"kworld_dvbs_100_config", i1 false, i1 false}
!502 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 537, i32 36}
!503 = !{ptr @geniatech_dvbs_config, !504, !"geniatech_dvbs_config", i1 false, i1 false}
!504 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 527, i32 36}
!505 = !{ptr @.str.272, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 468, i32 3}
!507 = !{ptr @.str.273, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @geniatech_dvbs_set_voltage._entry, !506, !"_entry", i1 false, i1 false}
!509 = !{ptr @geniatech_dvbs_set_voltage._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @pinnacle_pctv_hd_800i_config, !511, !"pinnacle_pctv_hd_800i_config", i1 false, i1 false}
!511 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 543, i32 36}
!512 = !{ptr @pinnacle_pctv_hd_800i_tuner_config, !513, !"pinnacle_pctv_hd_800i_tuner_config", i1 false, i1 false}
!513 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 571, i32 35}
!514 = !{ptr @dvico_hdtv5_pci_nano_config, !515, !"dvico_hdtv5_pci_nano_config", i1 false, i1 false}
!515 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 553, i32 36}
!516 = !{ptr @cx88_pinnacle_hybrid_pctv, !517, !"cx88_pinnacle_hybrid_pctv", i1 false, i1 false}
!517 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 576, i32 36}
!518 = !{ptr @.str.274, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 656, i32 3}
!520 = !{ptr @.str.275, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @attach_xc4000._entry, !519, !"_entry", i1 false, i1 false}
!522 = !{ptr @attach_xc4000._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.276, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 660, i32 7}
!525 = !{ptr @.str.277, !524, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @.str.279, !524, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @attach_xc4000._entry.278, !524, !"_entry", i1 false, i1 false}
!528 = !{ptr @attach_xc4000._entry_ptr.280, !524, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.282, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 663, i32 3}
!531 = !{ptr @attach_xc4000._entry.281, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @attach_xc4000._entry_ptr.283, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.285, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 670, i32 2}
!535 = !{ptr @attach_xc4000._entry.284, !534, !"_entry", i1 false, i1 false}
!536 = !{ptr @attach_xc4000._entry_ptr.286, !534, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @cx88_geniatech_x8000_mt, !538, !"cx88_geniatech_x8000_mt", i1 false, i1 false}
!538 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 582, i32 36}
!539 = !{ptr @kworld_atsc_120_config, !540, !"kworld_atsc_120_config", i1 false, i1 false}
!540 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 562, i32 36}
!541 = !{ptr @dvico_fusionhdtv7_config, !542, !"dvico_fusionhdtv7_config", i1 false, i1 false}
!542 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 588, i32 36}
!543 = !{ptr @dvico_fusionhdtv7_tuner_config, !544, !"dvico_fusionhdtv7_tuner_config", i1 false, i1 false}
!544 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 598, i32 35}
!545 = !{ptr @hauppauge_hvr4000_config, !546, !"hauppauge_hvr4000_config", i1 false, i1 false}
!546 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 711, i32 36}
!547 = !{ptr @tevii_tuner_sharp_config, !548, !"tevii_tuner_sharp_config", i1 false, i1 false}
!548 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 760, i32 36}
!549 = !{ptr @sharp_z0194a_inittab, !550, !"sharp_z0194a_inittab", i1 false, i1 false}
!550 = !{!"../drivers/media/dvb-frontends/z0194a.h", i32 40, i32 11}
!551 = !{ptr @tevii_tuner_earda_config, !552, !"tevii_tuner_earda_config", i1 false, i1 false}
!552 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 773, i32 36}
!553 = !{ptr @tevii_s460_config, !554, !"tevii_s460_config", i1 false, i1 false}
!554 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 717, i32 36}
!555 = !{ptr @tevii_ds3000_config, !556, !"tevii_ds3000_config", i1 false, i1 false}
!556 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 733, i32 29}
!557 = !{ptr @tevii_ts2020_config, !558, !"tevii_ts2020_config", i1 false, i1 false}
!558 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 738, i32 29}
!559 = !{ptr @cx88_terratec_cinergy_ht_pci_mkii_config, !560, !"cx88_terratec_cinergy_ht_pci_mkii_config", i1 false, i1 false}
!560 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 295, i32 36}
!561 = !{ptr @prof_7301_stv0900_config, !562, !"prof_7301_stv0900_config", i1 false, i1 false}
!562 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 743, i32 36}
!563 = !{ptr @prof_7301_stb6100_config, !564, !"prof_7301_stb6100_config", i1 false, i1 false}
!564 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 755, i32 36}
!565 = !{ptr @.str.288, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/media/dvb-frontends/stb6100_proc.h", i32 52, i32 4}
!567 = !{ptr @.str.289, !566, !"<string literal>", i1 false, i1 false}
!568 = !{ptr @.str.290, !566, !"<string literal>", i1 false, i1 false}
!569 = !{ptr @stb6100_set_freq._entry, !566, !"_entry", i1 false, i1 false}
!570 = !{ptr @stb6100_set_freq._entry_ptr, !566, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.291, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/media/dvb-frontends/stb6100_proc.h", i32 23, i32 4}
!573 = !{ptr @stb6100_get_freq._entry, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @stb6100_get_freq._entry_ptr, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.292, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/media/dvb-frontends/stb6100_proc.h", i32 105, i32 4}
!577 = !{ptr @.str.293, !576, !"<string literal>", i1 false, i1 false}
!578 = !{ptr @stb6100_set_bandw._entry, !576, !"_entry", i1 false, i1 false}
!579 = !{ptr @stb6100_set_bandw._entry_ptr, !576, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @.str.294, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/media/dvb-frontends/stb6100_proc.h", i32 76, i32 4}
!582 = !{ptr @stb6100_get_bandw._entry, !581, !"_entry", i1 false, i1 false}
!583 = !{ptr @stb6100_get_bandw._entry_ptr, !581, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @samsung_stv0299_config, !585, !"samsung_stv0299_config", i1 false, i1 false}
!585 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 976, i32 36}
!586 = !{ptr @samsung_smt_7020_inittab, !587, !"samsung_smt_7020_inittab", i1 false, i1 false}
!587 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 804, i32 17}
!588 = !{ptr @twinhan_vp1027, !589, !"twinhan_vp1027", i1 false, i1 false}
!589 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 301, i32 36}
!590 = !{ptr @.str.295, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 509, i32 3}
!592 = !{ptr @.str.296, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @vp1027_set_voltage._entry, !591, !"_entry", i1 false, i1 false}
!594 = !{ptr @vp1027_set_voltage._entry_ptr, !591, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.298, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 513, i32 3}
!597 = !{ptr @vp1027_set_voltage._entry.297, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @vp1027_set_voltage._entry_ptr.299, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @vp1027_set_voltage._entry.300, !600, !"_entry", i1 false, i1 false}
!600 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 517, i32 3}
!601 = !{ptr @vp1027_set_voltage._entry_ptr.301, !600, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @.str.302, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 172, i32 3}
!604 = !{ptr @.str.303, !603, !"<string literal>", i1 false, i1 false}
!605 = !{ptr @cx88_dvb_bus_ctrl._entry, !603, !"_entry", i1 false, i1 false}
!606 = !{ptr @cx88_dvb_bus_ctrl._entry_ptr, !603, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @.str.304, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1812, i32 2}
!609 = !{ptr @cx8802_dvb_remove._entry, !608, !"_entry", i1 false, i1 false}
!610 = !{ptr @cx8802_dvb_remove._entry_ptr, !608, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.305, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1653, i32 2}
!613 = !{ptr @cx8802_dvb_advise_acquire._entry, !612, !"_entry", i1 false, i1 false}
!614 = !{ptr @cx8802_dvb_advise_acquire._entry_ptr, !612, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.306, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1718, i32 2}
!617 = !{ptr @cx8802_dvb_advise_release._entry, !616, !"_entry", i1 false, i1 false}
!618 = !{ptr @cx8802_dvb_advise_release._entry_ptr, !616, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.307, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/media/pci/cx88/cx88-dvb.c", i32 1834, i32 2}
!621 = !{ptr @.str.308, !620, !"<string literal>", i1 false, i1 false}
!622 = !{ptr @dvb_init._entry, !620, !"_entry", i1 false, i1 false}
!623 = !{ptr @dvb_init._entry_ptr, !620, !"_entry_ptr", i1 false, i1 false}
!624 = !{i32 1, !"wchar_size", i32 2}
!625 = !{i32 1, !"min_enum_size", i32 4}
!626 = !{i32 8, !"branch-target-enforcement", i32 0}
!627 = !{i32 8, !"sign-return-address", i32 0}
!628 = !{i32 8, !"sign-return-address-all", i32 0}
!629 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!630 = !{i32 7, !"uwtable", i32 1}
!631 = !{i32 7, !"frame-pointer", i32 2}
!632 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!633 = !{i64 2159062927}
!634 = !{i64 5049926}
!635 = !{i64 2159064046}
!636 = !{i64 5049508}
!637 = !{i64 2159066021}
!638 = !{i64 2159067114}
!639 = !{i64 2159069105}
!640 = !{i64 2159070224}
!641 = !{i64 2159072199}
!642 = !{i64 2159073292}
!643 = !{i64 2159075301}
!644 = !{i64 2159076420}
!645 = !{i64 2159078395}
!646 = !{i64 2159079488}
!647 = !{i64 2159081479}
!648 = !{i64 2159082598}
!649 = !{i64 2159084614}
!650 = !{i64 2159085733}
!651 = !{i64 2159086110}
!652 = !{i64 2159086603}
!653 = !{i64 2159088140}
!654 = !{i64 2159089233}
!655 = !{i64 2159090164}
!656 = !{i64 2158908823}
!657 = !{i64 2158909880}
!658 = !{i64 2158911239}
!659 = !{i64 2158912304}
!660 = !{i64 2158918799}
!661 = !{i64 2158919856}
!662 = !{i64 2158921215}
!663 = !{i64 2158922280}
!664 = !{i64 2158928775}
!665 = !{i64 2158929832}
!666 = !{i64 2158931191}
!667 = !{i64 2158932256}
!668 = !{i64 2158941237}
!669 = !{i64 2158942294}
!670 = !{i64 2158943653}
!671 = !{i64 2158944718}
!672 = !{i64 2159040534}
!673 = !{i64 2159041629}
!674 = !{i64 2159043008}
!675 = !{i64 2159044077}
!676 = !{i64 2159045466}
!677 = !{i64 2159046549}
!678 = !{i64 2158769004}
!679 = !{i64 2158770577}
!680 = !{i64 2158771672}
!681 = !{i64 2158773051}
!682 = !{i64 2158774120}
!683 = !{i64 2158775509}
!684 = !{i64 2158776592}
!685 = !{i64 2158777965}
!686 = !{i64 2158779034}
!687 = !{!"auto-init"}
!688 = !{i64 2158814631}
!689 = !{i64 2158815726}
!690 = !{i64 2158817115}
!691 = !{i64 2158818184}
!692 = !{i64 2158819565}
!693 = !{i64 2158820634}
!694 = !{i64 2158807201}
!695 = !{i64 2158808296}
!696 = !{i64 2158809698}
!697 = !{i64 2158810781}
!698 = !{i64 2158812154}
!699 = !{i64 2158813223}
!700 = !{i64 2158781195}
!701 = !{i64 2158783524}
!702 = !{i64 2158785829}
!703 = !{i64 2158801493}
!704 = !{i64 2158801986}
